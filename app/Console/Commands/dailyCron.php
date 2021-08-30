<?php

namespace App\Console\Commands;

use Carbon\Carbon;
use App\Models\User;
use Illuminate\Console\Command;

class dailyCron extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'daily:cron';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Daily Crons For Website is executed here';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {   
        // get Inactive users
         $inactive_users = User::where('created_at','>',Carbon::now()->subDays(2))
                                ->where('created_at','<',Carbon::now()->subDay())
                                ->whereNull('email_verified_at')
                                ->get();
        
        foreach($inactive_users as $inactive_user)
        {  
            
            if($inactive_user->store()->exists())
            {
                $store=$inactive_user->store->first();
                $domain_name=$store->domain_name;
                $domain_prefix=$store->theme_ext;
                $domain_type=$store->domain_type;

                if(is_null($store->archived_at))
                {    
                    // pass the variables to the script
                    shell_exec("/var/www/bash/archivestore.sh '".$domain_name."' '".$domain_prefix."' '".$domain_type."' ");
                    $store->archived_at=date('Y-m-d H:i:s');
                    $store->status="Inactive";
                    $store->save();
                }
                
            }
           
        }

        $this->info('Cron Cummand Run successfully!');
    }
}

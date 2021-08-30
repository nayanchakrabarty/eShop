<table class="table table-bordered">
    <thead>
    <tr>
        <th>SL.</th>
        <th>Purchase Plan</th>
        <th class="text-right">Monthly Charges</th>
        <th class="text-right">Total Cost</th>
        <th>Purchase On</th>
        <th class="text-center">Status</th>
    </tr>
    </thead>
    <tbody>
    @php($serial = 0)
    @if ($subscriptionPlans->isEmpty())
        <tr>
            <td colspan="5" class="text-center">No subscription plan yet</td>
        </tr>
    @else
        @foreach($subscriptionPlans as $subscriptionPlan)
            <tr>
                <td>{{ ++$serial }}</td>
                <td>{{ $subscriptionPlan->subscription_plan }} Months Plans</td>
                <td class="text-right">{{ $subscriptionPlan->monthly_charge }}</td>
                <td class="text-right">{{ $subscriptionPlan->paid_amount }}</td>
                <td>{{ $subscriptionPlan->created_at }}</td>
                <td class="text-center">{{ $subscriptionPlan->status }}</td>
            </tr>
        @endforeach
    @endif
    </tbody>
</table>

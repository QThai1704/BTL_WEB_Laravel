@extends('master')

@section('content')

<div class="card">
    <div class="card-header">
        <div class="row">
            <div class="col col-md-6"><b>Plane Details</b></div>
            <div class="col col-md-6">
                <a href="{{ route('planes.index') }}" class="btn btn-primary btn-sm float-end">View All</a>
            </div>
        </div>
    </div>
    <div class="card-body">
        <div class="row mb-3">
            <label class="col-sm-2 col-label-form"><b>Plane Code</b></label>
            <div class="col-sm-10">
                {{ $plane->plane_code }}
            </div>
        </div>
        <div class="row mb-3">
            <label class="col-sm-2 col-label-form"><b>Registration number</b></label>
            <div class="col-sm-10">
                {{ $plane->registration_number }}
            </div>
        </div>
        <div class="row mb-4">
            <label class="col-sm-2 col-label-form"><b>Passenger</b></label>
            <div class="col-sm-10">
                {{ $plane->passenger }}
            </div>
        </div>
        
    </div>
</div>

@endsection('content')



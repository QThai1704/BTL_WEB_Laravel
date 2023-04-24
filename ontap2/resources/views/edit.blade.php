@extends('master')

@section('content')

<div class="card">
    <div class="card-header">Edit Plane</div>
    <div class="card-body">
        <form method="post" action="{{ route('planes.update', $plane->id) }}" enctype="multipart/form-data">
            @csrf
            @method('PUT')
            <div class="row mb-3">
                <label class="col-sm-2 col-label-form">Plane code</label>
                <div class="col-sm-10">
                    <input type="text" name="plane_code" class="form-control" value="{{ $plane->plane_code }}" />
                </div>
            </div>
            <div class="row mb-3">
                <label class="col-sm-2 col-label-form">Registration number</label>
                <div class="col-sm-10">
                    <input type="text" name="registration_number" class="form-control" value="{{ $plane->registration_number }}" />
                </div>
            </div>
            <div class="row mb-3">
                <label class="col-sm-2 col-label-form">Passenger</label>
                <div class="col-sm-10">
                    <input type="text" name="passenger" class="form-control" value="{{ $plane->passenger }}" />
                </div>
            </div>
            <div class="text-center">
                <input type="hidden" name="hidden_id" value="{{ $plane->id }}" />
                <input type="submit" class="btn btn-primary" value="Edit" />
            </div>
        </form>
    </div>
</div>


@endsection('content')

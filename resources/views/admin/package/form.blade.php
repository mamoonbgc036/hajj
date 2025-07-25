@php
$route = 'admin.package.';
@endphp
@extends('layouts.app', ['title' => _lang('package'), 'modal' => 'lg'])
@push('admin.css')
<link href="{{asset('assets/node_modules/summernote/dist/summernote.css')}}" rel="stylesheet" />
@endpush
@section('pageheader')

<!-- ============================================================== -->
<!-- Bread crumb and right sidebar toggle -->
<!-- ============================================================== -->
<div class="row page-titles">
    <div class="col-md-5 align-self-center">
        <h4 class="text-themecolor">{{_lang('package')}}</h4>
    </div>
    <div class="col-md-7 align-self-center text-right">
        <div class="d-flex justify-content-end align-items-center">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                <li class="breadcrumb-item active">{{_lang('package')}}</li>
            </ol>
        </div>
    </div>
</div>
<!-- ============================================================== -->
<!-- End Bread crumb and right sidebar toggle -->
<!-- ============================================================== -->
@stop
@section('content')
<form action="{{ isset($model) ? route($route . 'update', $model->id) : route($route . 'store') }}" 
      method="POST" 
      class="form-validate-jquery" 
      id="content_form" 
      enctype="multipart/form-data">
    @if(isset($model))
        <input type="hidden" name="_method" value="PUT">
    @endif
    @csrf

    <div class="row">
        <div class="col-lg-6">
            <div class="form-group">
                <label for="name" class="col-form-label required">{{ _lang('name') }}</label>
                <input type="text" name="name" id="name" class="form-control" placeholder="{{ _lang('name') }}" value="{{ isset($model) ? $model->name : '' }}" required>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="form-group">
                <label for="duration" class="col-form-label required">{{ _lang('duration') }}</label>
                <input type="text" name="duration" id="duration" class="form-control" placeholder="{{ _lang('duration') }}" value="{{ isset($model) ? $model->duration : '' }}" required>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="form-group">
                <label for="start" class="col-form-label required">{{ _lang('start_date') }}</label>
                <input type="text" name="start" id="start" class="form-control mdate" placeholder="{{ _lang('start_date') }}" value="{{ isset($model) ? $model->start : '' }}" required>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="form-group">
                <label for="end" class="col-form-label required">{{ _lang('end_date') }}</label>
                <input type="text" name="end" id="end" class="form-control mdate" placeholder="{{ _lang('end_date') }}" value="{{ isset($model) ? $model->end : '' }}" required>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-6">
            <div class="form-group">
                <label for="type" class="col-form-label">{{ _lang('Package Type') }}</label>
                <select name="type" id="type" class="form-control select" data-placeholder="{{ _lang('Package type') }}" required data-parsley-errors-container="#parsley_district_error_area">
                    <option value="" disabled selected>{{ _lang('Package type') }}</option>
                    <option value="Hajj" {{ isset($model) && $model->type == 'Hajj' ? 'selected' : '' }}>Hajj</option>
                    <option value="Umrah" {{ isset($model) && $model->type == 'Umrah' ? 'selected' : '' }}>Umrah</option>
                </select>
                <span id="client_category_error"></span>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="form-group">
                <label for="option_id" class="col-form-label">{{ _lang('Option') }}</label>
                <select name="option[id]" id="option_id" class="form-control select" data-placeholder="{{ _lang('Option') }}" data-parsley-errors-container="#client_category_error">
                    <option value="" disabled selected>{{ _lang('Option') }}</option>
                    @foreach($option as $key => $value)
                        <option value="{{ $key }}" {{ isset($model) && $model->option_id == $key ? 'selected' : '' }}>{{ $value }}</option>
                    @endforeach
                </select>
                <span id="client_category_error"></span>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <label for="description" class="col-form-label">{{ _lang('description') }}</label>
                <textarea name="description" id="description" class="form-control summernote" placeholder="{{ _lang('description') }}" style="resize: none;" rows="3">{{ isset($model) ? $model->description : '' }}</textarea>
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                <label for="location" class="col-form-label">{{ _lang('location') }}</label>
                <textarea name="location" id="location" class="form-control" placeholder="{{ _lang('location') }}" style="resize: none;" rows="3">{{ isset($model) ? $model->location : '' }}</textarea>
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                <label for="itinary" class="col-form-label">{{ _lang('itinary') }}</label>
                <textarea name="itinary" id="itinary" class="form-control summernote" placeholder="{{ _lang('itinary') }}" style="resize: none;" rows="3">{{ isset($model) ? $model->itinary : '' }}</textarea>
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                <label for="price" class="col-form-label">{{ _lang('price') }}</label>
                <input type="text" name="price" id="price" class="form-control" placeholder="{{ _lang('price') }}" value="{{ isset($model) ? $model->price : '' }}" required>
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                <label for="policy" class="col-form-label">{{ _lang('policy') }}</label>
                <textarea name="policy" id="policy" class="form-control summernote" placeholder="{{ _lang('policy') }}" style="resize: none;" rows="3">{{ isset($model) ? $model->policy : '' }}</textarea>
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                <label for="hotel" class="col-form-label">{{ _lang('hotel') }}</label>
                <textarea name="hotel" id="hotel" class="form-control summernote" placeholder="{{ _lang('hotel') }}" style="resize: none;" rows="3">{{ isset($model) ? $model->hotel : '' }}</textarea>
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                <label for="term_condition" class="col-form-label">{{ _lang('term_condition') }}</label>
                <textarea name="term_condition" id="term_condition" class="form-control summernote" placeholder="{{ _lang('term_condition') }}" style="resize: none;" rows="3">{{ isset($model) ? $model->term_condition : '' }}</textarea>
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                <label for="photo" class="col-form-label">{{ _lang('photo') }}</label>
                <input type="file" name="photo" id="input-file-now-custom-1" class="dropify" data-default-file="{{ isset($model) ? asset('storage/packege/' . $model->photo) : '' }}">
                @if(isset($model) && isset($model->photo))
                    <input type="hidden" name="oldphoto" value="{{ $model->photo }}">
                @endif
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                <label for="banner" class="col-form-label" >{{ _lang('banner') }}</label>
                <input type="file" name="banner" id="input-file-now-custom-2" class="dropify" data-default-file="{{ isset($model) ? asset('storage/packege/' . $model->banner) : '' }}">
                @if(isset($model) && isset($model->banner))
                    <input-Go to file:///home/ashwin/.cache/JetBrains/PhpStorm2024.1/phpstorm/phpstorm64/plugins/php/lib/php.jar!/stubs/Zend/zend_ast.php?highlight=ast_callable_function_reference on line 37
                    <input type="hidden" name="oldbanner" value="{{ $model->banner }}">
                @endif
            </div>
        </div>
    </div>

    <legend class="badge badge-info pt-1">{{ _lang('SEO Information') }}</legend>
    <div class="row">
        <div class="col-lg-12">
            <div class="form-group">
                <label for="meta_title" class="col-form-label">{{ _lang('meta_title') }}</label>
                <input type="text" name="meta_title" id="meta_title" class="form-control" placeholder="{{ _lang('meta_title') }}" value="{{ isset($model) ? $model->meta_title : '' }}">
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                <label for="meta_keyword" class="col-form-label">{{ _lang('meta_keyword') }}</label>
                <textarea name="meta_keyword" id="meta_keyword" class="form-control" placeholder="{{ _lang('meta_keyword') }}" style="resize: none;" rows="3">{{ isset($model) ? $model->meta_keyword : '' }}</textarea>
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                <label for="meta_description" class="col-form-label">{{ _lang('meta_description') }}</label>
                <textarea name="meta_description" id="meta_description" class="form-control" placeholder="{{ _lang('meta_description') }}" style="resize: none;" rows="3">{{ isset($model) ? $model->meta_description : '' }}</textarea>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <button type="button" class="btn btn-primary" id="toggleAdditionalFields">{{ _lang('Add Additional Service') }}</button>
            <div id="additionalFields" style="display: none; margin-top: 20px;">
                <div id="additionalFieldsContainer">
                    <div class="row additional-field-row" data-index="0">
                        <div class="col-lg-5">
                            <div class="form-group">
                                <label for="service_name_0" class="col-form-label">{{ _lang('Service Name') }}</label>
                                <input type="text" name="service_name[0]" id="service_name_0" class="form-control" placeholder="{{ _lang('Service Name') }}" value="{{ isset($model) && isset($model->service_name[0]) ? $model->service_name[0] : '' }}">
                            </div>
                        </div>
                        <div class="col-lg-5">
                            <div class="form-group">
                                <label for="service_price_0" class="col-form-label">{{ _lang('Service Price') }}</label>
                                <input type="text" name="service_price[0]" id="service_price_0" class="form-control" placeholder="{{ _lang('Service Price') }}" value="{{ isset($model) && isset($model->service_price[0]) ? $model->service_price[0] : '' }}">
                            </div>
                        </div>
                        <div class="col-lg-2">
                            <div class="form-group" style="margin-top: 32px;">
                                <button type="button" class="btn btn-danger remove-field-row" data-index="0">{{ _lang('Remove') }}</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <button type="button" class="btn btn-primary" id="addMoreFields">{{ _lang('Add More Fields') }}</button>
                        <button type="button" class="btn btn-secondary" id="cancelAdditionalFields">{{ _lang('Cancel') }}</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="form-group row">
        <div class="col-lg-4 offset-lg-4">
            <button type="submit" class="btn btn-block btn-lg btn-info" id="submit">{{ isset($model) ? _lang('Update') : _lang('Create') }}<i class="icon-arrow-right14 position-right"></i></button>
            <button type="button" class="btn btn-link" id="submiting" style="display: none;">{{ __('Processing') }} <img src="{{ asset('ajaxloader.gif') }}" width="80px"></button>
        </div>
    </div>
</form>



<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- /basic initialization -->
@stop
@push('admin.scripts')

<script src="{{asset('js/package.js')}}"></script>
<script>
document.addEventListener('DOMContentLoaded', function() {
    // Toggle additional fields visibility
    document.getElementById('toggleAdditionalFields').addEventListener('click', function() {
        const additionalFields = document.getElementById('additionalFields');
        additionalFields.style.display = additionalFields.style.display === 'none' ? 'block' : 'none';
    });

    // Cancel additional fields
    document.getElementById('cancelAdditionalFields').addEventListener('click', function() {
        document.getElementById('additionalFields').style.display = 'none';
    });

    // Add more fields
    let fieldIndex = 1;
    document.getElementById('addMoreFields').addEventListener('click', function() {
        const container = document.getElementById('additionalFieldsContainer');
        const newRow = document.createElement('div');
        newRow.className = 'row additional-field-row';
        newRow.dataset.index = fieldIndex;
        newRow.innerHTML = `
            <div class="col-lg-5">
                <div class="form-group">
                    <label for="service_name_${fieldIndex}" class="col-form-label">{{ _lang('Additional Field 1') }}</label>
                    <input type="text" name="service_name[${fieldIndex}]" id="service_name_${fieldIndex}" class="form-control" placeholder="{{ _lang('Additional Field 1') }}">
                </div>
            </div>
            <div class="col-lg-5">
                <div class="form-group">
                    <label for="service_price_${fieldIndex}" class="col-form-label">{{ _lang('Additional Field 2') }}</label>
                    <input type="text" name="service_price[${fieldIndex}]" id="service_price_${fieldIndex}" class="form-control" placeholder="{{ _lang('Additional Field 2') }}">
                </div>
            </div>
            <div class="col-lg-2">
                <div class="form-group" style="margin-top: 32px;">
                    <button type="button" class="btn btn-danger remove-field-row" data-index="${fieldIndex}">{{ _lang('Remove') }}</button>
                </div>
            </div>
        `;
        container.appendChild(newRow);
        fieldIndex++;
    });

    // Remove field row
    document.getElementById('additionalFieldsContainer').addEventListener('click', function(e) {
        if (e.target.classList.contains('remove-field-row')) {
            const index = e.target.dataset.index;
            const row = document.querySelector(`.additional-field-row[data-index="${index}"]`);
            if (row) {
                row.remove();
            }
        }
    });
});
</script>

<!-- start - This is for export functionality only -->
@endpush
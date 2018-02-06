@extends('layouts.app')

@section('title','Страница не найдена')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h1>
                            Страница не найдена
                        </h1>
                    </div>
                    <div class="panel-body">
                        <p>Запрашиваемая вами страница не найдена</p>
                        <a href="{{ rroute('home') }}" class="btn btn-primary">Вернуться на главную страницу</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop
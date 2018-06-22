<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" media="screen">
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome.css" media="all">
    <link rel="stylesheet" type="text/css" href="fonts/font-robotoregular.css" media="all">
    <link rel="stylesheet" type="text/css" href="fonts/font-robotothin.css" media="all">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
      crossorigin="anonymous">
      <link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
      <link rel="stylesheet" href="css/bootstrap-datepicker.css">
      <title>Gestion Hotelera</title>
    </head>
    <body>
      <div class="contenedor">
        <div class="pattern">
          <nav class="navbar navbar-default nav">
            <div class="container-fluid">
              <!-- Brand and toggle get grouped for better mobile display -->
              <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"><img alt="ATIvsNVIDIA" src="img/lg3.png"></a>
              </div>
              <!-- Collect the nav links, forms, and other content for toggling -->
              <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav fuentenav">
                  <li><a class="link-ajax" href="body">Inicio <span class="sr-only">(current)</span></a></li>
                  <li><a class="link-ajax" href="BuscarHabitaciones">Buscar Habitaciones</a></li>
                </ul>
                </div><!-- /.navbar-collapse -->
                </div><!-- /.container-fluid -->
              </nav>
              <div class="tablafondo">
                <!--HOME Presentation -->
                <div class="conthome2">
                  <p>Gestión Hotelera</p>
                </div>
                <div class="container">
                  <div class="row">
                    <div class="col-md-6 col-sm-6">
                      <div class="filtrar form-group">
                        <form method="POST" href="filtrar" class="formFiltrar">
                          <label for="id_marca">Seleccione una marca</label>
                          <select class="marca" name="id_marca">
                            {foreach from=$marcas item=marca}
                            <option class="marca" value="{$marca['id']}" name="id_marca">{$marca['nombre']}</option>
                            {/foreach}
                          </select>
                          <input type="submit" class="btn btn-default" value="Filtrar Marca">
                          <input type="button" class="btn btn-default refresh" href="comparativa" value="Refrescar">
                        </form>
                      </div>
                    </div>
                    <div class="col-md-3 col-sm-3">
                      <div class="form-group">
                        <label>Check in</label>
                        <div class="form-group">
                          <div class="input-group date cc-date">
                            <input type="text" class="form-control"><span class="input-group-addon">
                            <span class="fa fa-calendar"></span>
                          </span>
                        </div>
                      </div>
                    </div>
                  </div>
                  <!--<div class="col-md-3">
                      <div class="form-group">
                          <label>Check in</label>
                          <div class="form-group">
                              <div class="input-group date" id="datetimepicker1">
                                  <input type="text" class="form-control" />
                                  <span class="input-group-addon">
                                      <span class="fa fa-calendar"></span>
                                  </span>
                              </div>
                          </div>
                      </div>
                  </div>-->
                  
                </div>
              </div>
              <div class="container">
                <div class="row">
                  <div class="table-responsive">
                    <table class="table table-striped centradoBlanco">
                      <tr>
                        <th><p >Departamento</p></th>
                        <th><p >nro Habitaciones</p></th>
                        <th><p >precio</p></th>
                        <th><p >cantidad de huespedes</p></th>
                        <th><p >a modo de ejemplo</p></th>
                        <th><p >DETALLES</p></th>
                      </tr>
                      {foreach from=$productos item=producto}
                      <tr>
                        <td><p>{$producto['marca']}</p></td>
                        <td><p>{$producto['modelo']}</p></td>
                        <td><p>{$producto['memoria']}</p></td>
                        <td><p>{$producto['banda']}</p></td>
                        <td><p>{$producto['consumo']}</p></td>
                        <td>
                          <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="borrarEditarCentrado">
                              <div class="enLinea">
                                <a href="{$producto['id']}" class="mostrarProducto" >
                                  <p><span id="mostrar" class="fa fa-info-circle" aria-hidden="true" value="0"></span></p>
                                </a>
                              </div>
                            </div>
                          </div>
                        </td>
                      </tr>
                      {/foreach}
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--FORMULARIO DE CONTACTO-->
    <div class="contenedorform" id="contacto">
      <div class="container contactocentrado">
        <h2>GRACIAS POR CONTACTARNOS</h2>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-xs-12 col-sm-6 col-md-6 formulario">
            <div class="espacio">
              <h3>Dirección</h3>
              <p>2701 San Tomas Expressway
                <span>Santa Clara, CA 95050,US</span></p>
                <ul>
                  <li>Tel: 1+ (408) 486-2000</li>
                  <li>Fax: 1+ (408) 486-2200</li>
                  <li><a href="mailto:info@example.com">info@nvidia.com</a></li>
                </ul>
              </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-6 formulario">
              <div>
                <h3>Formulario</h3>
                <div class="msj">
                  <form>
                    <div class="inputs">
                      <input type="text" value="Nombre: " placeholder="Nombre: " required="">
                    </div>
                    <div class="inputs">
                      <input type="email" value="E-Mail: " placeholder="E-Mail: " required="">
                    </div>
                    <div class="inputs">
                      <input type="text" value="Teléfono: " placeholder="Teléfono: " required="">
                    </div>
                    <div class="inputs">
                      <textarea type="text" placeholder="Mensaje: " required=""></textarea>
                    </div>
                    <div class="button">
                      <input class="enviar_datos" type="submit" value="ENVIAR" >
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <script
      src="https://code.jquery.com/jquery-3.3.1.min.js"
      integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
      crossorigin="anonymous"></script>
      <!-- Latest compiled and minified JavaScript -->
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
      integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
      crossorigin="anonymous"></script>
      <script src="js/bootstrap-datepicker.js" type="text/javascript" ></script>
      <script  src="js/1.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/mustache.js/2.3.0/mustache.min.js"></script>
      <script  src="js/js-prueba.js"></script>
    </body>
  </html>
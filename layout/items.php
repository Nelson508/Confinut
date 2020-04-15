<div class="col-3">
                <div class="card ">   <!--style="width: 10rem;"-->
                    <img
                    title="<?php echo $item['NombreProducto'];?>"
                    alt="<?php echo $item['NombreProducto'];?>"
                    class="card-img-top" 
                    src="img/<?php echo $item['imagen'];?>"
                    data-toggle="popover"
                    data-trigger="hover"
                    data-content="<?php echo $item['Descripcion'];?>"
                    height="217px"
                    >
                    <div class="card-body">
                        <span><b><?php echo $item['NombreProducto'];?></b></span></br>
                        <h5 class="card-title">$<?php echo $item['PrecioNetoKG'];?></h5>
                        <p class="card-text">Descripción</p>
                        
                     <form action="" method="post">    
                        <input type="hidden" name="id" id="id" value="<?php echo openssl_encrypt($item['IDtipoproducto'],COD,KEY);?>">
                        <input type="hidden" name="nombre" id="nombre" value="<?php echo openssl_encrypt($item['NombreProducto'],COD,KEY);?>">
                        <input type="hidden" name="precio" id="precio" value="<?php echo openssl_encrypt($item['PrecioNetoKG'],COD,KEY);?>">
                        <input type="hidden" name="cantidad" id="cantidad" value="<?php echo openssl_encrypt(1,COD,KEY);?>">   
                     

                        <button class="btn btn-primary" 
                        name="btnAccion" 
                        value="Agregar" 
                        type="submit"
                        >Agregar al carrito
                        </button>
                     </form>

                    </div>
                </div>
                
            </div>
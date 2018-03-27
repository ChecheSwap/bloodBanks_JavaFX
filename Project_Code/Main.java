
package bloodbanks;

import app.Core;
import bloodbanks.central.modeloCentral;
import bloodbanks.donaciones.modelo_donacion;
import bloodbanks.donaciones.modelo_donacionid;
import bloodbanks.donaciones.modelo_searchdonaciones;
import bloodbanks.donadores.altaDonador;
import bloodbanks.donadores.modelo_getDonador;
import bloodbanks.donadores.modelo_searchDonador;
import bloodbanks.donadores.updateDonador;
import db.dbop;
import entities.bancosangre;
import entities.donador;
import entities.usuario;
import javafx.application.Application;
import javafx.stage.Stage;
import utilerias.fileCh;
import utilerias.msg;



public class Main extends Application {
    
    public static final Core manager = new Core();    
    public static usuario usuario = new usuario();
    public static  bancosangre banco = new bancosangre();
                
    @Override
    public void start(Stage stage) throws Exception {
                
     modelo_inicio i = new modelo_inicio();
           
    }    
    
    public static void main(String[] args) {
        launch(args);
    }    
}


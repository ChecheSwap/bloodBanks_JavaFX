
package bloodbanks;

import bloodbanks.central.modeloCentral;
import db.dbop;
import entities.bancosangre;
import entities.usuario;
import javafx.scene.input.KeyCode;
import javafx.scene.input.KeyEvent;
import javafx.stage.Stage;
import utilerias.msg;


public class modelo_inicio {
    private Controller_Inicio base;
    private dbop db = null;
    
    private Stage st;
    public modelo_inicio(){
        this.base = Main.manager.openFXML("/bloodbanks/FXMLinicio.fxml", "SGBS INICIO",false, false).getController();
        
        this.st = (Stage)this.base.txtcontrol.getScene().getWindow();
        this.db = new dbop();
        
        this.base.modelo = this;
        this.base.txtcontrol.requestFocus();
    }
    
    public void verifica(){
        
        usuario usr = this.db.getUsuario(this.base.txtcontrol.getText(), this.base.txtpassword.getText());
        
        if(!(usr==null)){            
            
            usuario.copy(Main.usuario, usr);
                        
            bancosangre banco = this.db.getBancoLocal();
            
            if(!(banco == null)){
                bancosangre.copy(Main.banco, banco);
            }
            
            modeloCentral c = new modeloCentral();
            
            this.close();
        }
        else{
            msg.error("Credenciales Incorrectas!");
            this.base.txtcontrol.setText("");
            this.base.txtpassword.setText("");
            this.base.txtcontrol.requestFocus();
        }
        
    }
    
    public void btnaliaskp(KeyEvent e){
        if(e.getCode() == KeyCode.ENTER){
            this.base.txtpassword.requestFocus();
        }
    }
    
    public void btnpasskp(KeyEvent e){
        if(e.getCode() == KeyCode.ENTER){
            this.verifica();
        }        
    }
    public void close(){
        this.st.close();
    }
}

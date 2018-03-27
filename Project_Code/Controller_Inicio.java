
package bloodbanks;

import java.net.URL;
import java.util.ResourceBundle;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.input.KeyEvent;
import javafx.scene.input.MouseEvent;


public class Controller_Inicio implements Initializable {

    public modelo_inicio modelo = null;
    
    @FXML
    public TextField txtcontrol;
    @FXML
    public PasswordField txtpassword;
    @FXML
    private Button btn_log;
    
    
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
    }    

    @FXML
    private void btnlog_click(MouseEvent event) {
        this.modelo.verifica();
    }

    @FXML
    private void btncontrol_kp(KeyEvent event) {
        this.modelo.btnaliaskp(event);
    }

    @FXML
    private void btnpass_kp(KeyEvent event) {
        this.modelo.btnpasskp(event);
    }
    
}

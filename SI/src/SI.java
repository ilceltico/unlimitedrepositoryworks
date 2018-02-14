import java.awt.EventQueue;
import javax.swing.JFrame;

public class SI extends JFrame implements Commons {

    public SI() {

        initUI();
    }

    private void initUI() {

        add(new Board());
        setTitle("Space Invaders");
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        setSize(BOARD_WIDTH, BOARD_HEIGHT);
        setLocationRelativeTo(null);
        setResizable(false);
    }

    public static void main(String[] args) {
//        SI ex = new SI();
//        ex.setVisible(true);
        EventQueue.invokeLater(() -> {
            SI ex = new SI();
            ex.setVisible(true);
        });
    }
}
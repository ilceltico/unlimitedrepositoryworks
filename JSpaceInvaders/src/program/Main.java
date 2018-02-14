package program;

import controller.Controller;
import javafx.animation.AnimationTimer;
import javafx.application.Application;
import javafx.event.EventHandler;
import javafx.scene.Group;
import javafx.scene.Scene;
import javafx.scene.canvas.Canvas;
import javafx.scene.canvas.GraphicsContext;
import javafx.scene.control.Label;
import javafx.scene.input.KeyEvent;
import javafx.scene.layout.StackPane;
import javafx.stage.Stage;
import utils.Commons;
import view.Animator;

public class Main extends Application {
	
	public static void main(String[] args) {
		launch();
	}
	
	@Override
	public void start(Stage primaryStage) throws Exception {
		primaryStage.setTitle("Space Invaders - Unlimited Edition");
		primaryStage.setResizable(false);
		
		Group root = new Group();
		Scene primaryScene = new Scene(root);
		primaryStage.setScene(primaryScene);
		
		Label pointsLabel = new Label("Points: 0");
		root.getChildren().add(pointsLabel);
		
		StackPane stackPane = new StackPane();
		Canvas canvas = new Canvas(Commons.GRIDWIDTH, Commons.GRIDHEIGHT);
		stackPane.getChildren().add(canvas);
		root.getChildren().add(stackPane);
		stackPane.setStyle("-fx-background-color: black");
		
		GraphicsContext gc = canvas.getGraphicsContext2D();
		
		Controller controller = new Controller(canvas);
		
		primaryScene.setOnKeyPressed(new EventHandler<KeyEvent>() {
			public void handle(KeyEvent e) {
				controller.keyPressed(e);		
			}
		});
		
		primaryScene.setOnKeyReleased(new EventHandler<KeyEvent>() {
			public void handle(KeyEvent e) {
				controller.keyReleased(e);
			}
		});
		
		AnimationTimer a = new Animator(gc, controller);
		a.start();
		
		primaryStage.show();	
	}
}

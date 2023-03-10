package Chat02;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.Socket;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextArea;
import javax.swing.JTextField;

public class Join extends JFrame implements ActionListener, KeyListener {
	
	JLabel idLabel, pwLabel, nameJLabel, emailLabel; // 아이디, 비번, 이름, 이메일 라벨
	
	JTextField idF,pwF ,naF, emF; // 아이디, 비번, 이름, 이메일 입력 필드
	
	
	JButton in, out; // 가입, 취소 버튼

	public void start() {
		JFrame.setDefaultLookAndFeelDecorated(true);
		
		setTitle("회원가입");
		setSize(350, 300);
		getContentPane().setLayout(null); // 직접 배치
		
		
		nameJLabel = new JLabel("이름", JLabel.RIGHT);
		nameJLabel.setBounds(50, 10, 60, 30);
		getContentPane().add(nameJLabel);
		
		emailLabel = new JLabel("이메일", JLabel.RIGHT);
		emailLabel.setBounds(50, 60, 60, 30);
		getContentPane().add(emailLabel);
		
		idLabel = new JLabel("아이디", JLabel.RIGHT);
		idLabel.setBounds(50, 110, 60, 30);
		getContentPane().add(idLabel);
		
		pwLabel = new JLabel("비밀번호", JLabel.RIGHT);
		pwLabel.setBounds(50, 160, 60, 30);
		getContentPane().add(pwLabel);
		
		
		
		
		naF = new JTextField();
		naF.setBounds(150, 10, 100, 30);
		getContentPane().add(naF);
		
		emF = new JTextField(); 
		emF.setBounds(150, 60, 100, 30);
		getContentPane().add(emF);
		
		idF = new JTextField();
		idF.setBounds(150, 110, 100, 30);
		getContentPane().add(idF);
		
		pwF = new JTextField();
		pwF.setBounds(150, 160, 100, 30);
		getContentPane().add(pwF);
		
		// 패널 생성
		JPanel p = new JPanel();
		
		in = new JButton("회 원 가입");
		p.add(in);
		
		out = new JButton("종   료");
		p.add(out);
		
		p.setBounds(35, 200, 250, 35);
		getContentPane().add(p);
		
		in.addActionListener(this); 
		out.addActionListener(this); 
	}

	@Override
	public void keyTyped(KeyEvent e) {
	}

	@Override
	public void keyPressed(KeyEvent e) {
	}

	@Override
	public void keyReleased(KeyEvent e) {
	}

	// 버튼 입력 시 
	@Override
	public void actionPerformed(ActionEvent e) {
		if (e.getSource() == in) {
			String email = emF.getText();
			String user_id = idF.getText();
			String user_pw = pwF.getText();
			String name = naF.getText();
			try {
				// 아이디 중복검사 먼저 실시
				if (!DBRun.duplicateCheck(user_id)) {
					JOptionPane.showMessageDialog(null, "아이디중복");
					dispose();
					start();
					setVisible(true);
				}
				else {
					setVisible(false);
					DBRun.join(name, email, user_id, user_pw);
					new LoginStart().setVisible(true);
				}
				// 입력버튼 입력 시 DBRun 클래스로 가서 - static 메소드 조인
				// 디비에 아이디, 비번, 닉네임 insert
				
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
				System.out.println(" 버튼에서 오류");
			}
		}else { // 다른 버튼 입력 시 종료 
			System.exit(0);
		}
	}
	
	
	
}

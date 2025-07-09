
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.Socket;
import java.net.UnknownHostException;

public class client_tcp {

    private Socket s = null;
    private DataInputStream in = null;
    private DataOutputStream out = null;

    public client_tcp(String address, int port) {

        try {
            s = new Socket(address, port);
            System.out.println("Connected");

            in = new DataInputStream(System.in);

            out = new DataOutputStream(s.getOutputStream());
        } catch (UnknownHostException u) {
            System.out.println(u);
            return;
        } catch (IOException i) {
            System.out.println(i);
            return;
        }

        String m = "";

        while (!m.equals("Over")) {
            try {
                m = in.readLine();
                out.writeUTF(m);
            } catch (IOException i) {
                System.out.println(i);
            }
        }

        try {
            in.close();
            out.close();
            s.close();
        } catch (IOException i) {
            System.out.println(i);
        }
    }

    public static void main(String[] args) {
        client_tcp c = new client_tcp("127.0.0.52", 5000);
    }

}

/* Sai Aravind Palagummi Venkata Naga
   1001242023 */

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.Scanner;
import java.net.InetAddress;

import javax.net.ssl.HttpsURLConnection;

public class Client {
        long start,end;
        private DataOutputStream outToServer;

	private final String USER_AGENT = "Aravind/1.0";

	public static void main(String[] args) throws Exception {
		String ip,port, path;
		Client client = new Client();
		while(true){
			System.out.println("IP number: ");
			Scanner input = new Scanner(System.in);
			ip = input.nextLine();
			System.out.println("Port no: ");
			port = input.nextLine();
			System.out.println("Filename: ");
			path = input.nextLine();				
			client.sendGet(ip, port, path);
		}
		 		
		
	}

	// HTTP GET request
	private void sendGet(String ip, String port, String path) throws Exception {

		String url = "http://"+ip+":"+port+"/"+path;
		
		URL obj = new URL(url);
		try{
                start = System.nanoTime();
		HttpURLConnection con = (HttpURLConnection) obj.openConnection();
		// optional default is GET
		con.setRequestMethod("GET");

		//add request header
		con.setRequestProperty("User-Agent", USER_AGENT);

		int responseCode = con.getResponseCode();
		System.out.println("\nSending 'GET' request to URL : " + url);
		System.out.println("Response Code : " + responseCode);
			BufferedReader in = new BufferedReader(
			        new InputStreamReader(con.getInputStream()));
                        
			String inputLine;
			StringBuffer response = new StringBuffer();
		
			while ((inputLine = in.readLine()) != null) {
				response.append(inputLine);
			}
			in.close();
		
			//result printing
			System.out.println(response.toString());
                        end = System.nanoTime();
                        System.out.println("RTT: " + (end - start)/1000000 +"ms\n");
			System.out.println("Host Name:" + InetAddress.getLocalHost());
			//roundTripTime(ip, port);
		}
		catch(java.net.UnknownHostException ex)
		{
			System.out.println(ex.getMessage());
		}
		catch(java.net.SocketException ex)
		{
			System.out.println(ex.getMessage());
		}
		catch(java.io.FileNotFoundException ex){}
		catch(Exception ex){}		
	}
	

}

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

public class Main {
    public static void main(String[] args) throws IOException {
//
//        if (Files.exists(new File("G:/_Process/A&P_Invoice_Backup_Files").toPath())) {
//            System.out.println("Exist!");
//        } else {
//            System.out.println("Not Exist!");
//        }
//
//        if (Files.exists(new File("//chfcl044.dufry.net/groups$/CH_2_Mountpoint/Groups/CH/_Process/A&P_Invoice_Backup_Files").toPath())) {
//            System.out.println("Exist!");
//        } else {
//            System.out.println("Not Exist!");
//        }
//
//
//        Path res = null;
//        try {
//            res = Files.createDirectories(new File("//chfcl044.dufry.net/groups$/CH_2_Mountpoint/Groups/CH/_Process/A&P_Invoice_Backup_Files/test").toPath());
//        } catch (IOException e) {
//            System.out.println("Can't create a folder! ");
//        }
//
//        if (Files.exists(res)) {
//            try {
//                Files.copy(new File("txt.txt").toPath(),new File("//chfcl044.dufry.net/groups$/CH_2_Mountpoint/Groups/CH/_Process/A&P_Invoice_Backup_Files/test//txt.ttt").toPath());
//            } catch (IOException e) {
//                System.out.println("File copy error!");
//            }
//            System.out.println("File copied!");
//        } else {
//            System.out.println("folder Not Created!");
//        }



        Path f = new File("test").toPath();

        if (!Files.exists(f)){
            Path res = Files.createDirectories(f);
        }
        Files.copy(new File("txt.txt").toPath(),new File("test/txt.txt").toPath());

    }
}


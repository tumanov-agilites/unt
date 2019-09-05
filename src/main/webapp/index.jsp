<%@ page import="java.io.File" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.nio.file.Files" %>
<%@ page import="java.nio.file.Path" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>$Title$</title>
</head>
<body>
<%


    if (Files.exists(new File("//chfcl044.dufry.net/groups$/CH_2_Mountpoint/Groups/CH/_Process/A&P_Invoice_Backup_Files").toPath())) {
        out.println("Exist!");
    } else {
        out.println("Not Exist!");
    }


//    FileUtils.deleteDirectory(new File("//chfcl044.dufry.net/groups$/CH_2_Mountpoint/Groups/CH/_Process/A&P_Invoice_Backup_Files/test"));

    Path res = null;
    try {
        res = Files.createDirectories(new File("//chfcl044.dufry.net/groups$/CH_2_Mountpoint/Groups/CH/_Process/A&P_Invoice_Backup_Files/test").toPath());
    } catch (IOException e) {
        out.println("Can't create a folder! ");
    }


    if (Files.exists(new File("D:/txt.txt").toPath())) {
        out.println("F Exist!");
    } else {
        out.println("Not Exist! \n");
    }

    File f1 = new File("\\\\chfcl044.dufry.net\\groups$\\CH_2_Mountpoint\\Groups\\CH\\_Process\\A&P_Invoice_Backup_Files\\test\\myfile.txt");
    File f2 = new File("//chfcl044.dufry.net/groups$/CH_2_Mountpoint/Groups/CH/_Process/A&P_Invoice_Backup_Files/test/myfile.txt");

    out.println("File created !" + f1.createNewFile());

    if (Files.exists(f1.toPath())) {
        out.println("Back Exist!");
    } else {
        out.println("Back Not Exist! \n");
    }

    if (Files.exists(f2.toPath())){
    out.println("Direct Exist!");
    } else {
    out.println("Direct Not Exist! \n");
    }



    if (!Files.exists(f1.toPath())) {
        Files.copy(new File("D:/txt.txt").toPath(), f1.toPath());
        out.println("File copied!");
    } else {
        out.println("folder Not Created!");
    }

    if (Files.exists(f1.toPath())) {
        Files.delete(f1.toPath());
        out.println("File removed!");
    } else {
        out.println("file not removed Not Created!");
    }


    out.println("File 2 created !" + f2.createNewFile());


    if (Files.exists(f1.toPath())) {
    out.println("Back Exist!");
    } else {
    out.println("Back Not Exist! \n");
    }

    if (Files.exists(f2.toPath())) {
    out.println("Direct Exist!");
    } else {
    out.println("Direct Not Exist! \n");
    }



    if (!Files.exists(f2.toPath())) {
    Files.copy(new File("D:/txt.txt").toPath(), f2.toPath());
    out.println("File copied!");
    } else {
    out.println("folder Not Created!");
    }

    if (Files.exists(f2.toPath())) {
    Files.delete(f2.toPath());
    out.println("File removed!");
    } else {
    out.println("file not removed Not Created!");
    }


%>

hi
</body>
</html>

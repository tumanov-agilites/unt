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

    if (Files.exists(new File("G:/_Process/A&P_Invoice_Backup_Files").toPath())) {
        out.println("Exist!");
    } else {
        out.println("Not Exist!");
    }

    if (Files.exists(new File("//chfcl044.dufry.net/groups$/CH_2_Mountpoint/Groups/CH/_Process").toPath())) {
        out.println("Exist!");
    } else {
        out.println("Not Exist!");
    }

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

    File f = new File("\\\\chfcl044.dufry.net\\groups$\\CH_2_Mountpoint\\Groups\\CH\\_Process\\A&P_Invoice_Backup_Files\\test\\myfile.txt");
    f.createNewFile();


    if (!Files.exists(res)) {
        Files.copy(new File("D:/txt.txt").toPath(), new File("\\\\chfcl044.dufry.net\\groups$\\CH_2_Mountpoint\\Groups\\CH\\_Process\\A&P_Invoice_Backup_Files\\test\\txt.txt").toPath());
        out.println("File copied!");
    } else {
        out.println("folder Not Created!");
    }

    if (Files.exists(res)) {
        Files.delete(new File("\\\\chfcl044.dufry.net\\groups$\\CH_2_Mountpoint\\Groups\\CH\\_Process\\A&P_Invoice_Backup_Files\\test\\txt.txt").toPath());
        out.println("File removed!");
    } else {
        out.println("file not removed Not Created!");
    }

%>

hi
</body>
</html>

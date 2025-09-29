<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Date, java.text.SimpleDateFormat" %>
<%
    String name = "Shiva";
    SimpleDateFormat sdf = new SimpleDateFormat("EEEE, MMMM dd, yyyy HH:mm:ss");
    String currentTime = sdf.format(new Date());
%>
<!DOCTYPE html>
<html>
<head>
    <title>DevOps Quick Reference</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #f4f6f8;
            color: #333;
            margin: 0;
            padding: 0;
        }
        header {
            background: #1f2937;
            color: #fff;
            padding: 20px;
            text-align: center;
        }
        header h1 {
            margin: 0;
            font-size: 2.5em;
        }
        header p {
            font-size: 1.1em;
            margin-top: 5px;
        }
        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin: 20px;
        }
        .card {
            background: #fff;
            width: 300px;
            margin: 15px;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            transition: transform 0.2s;
        }
        .card:hover {
            transform: translateY(-5px);
        }
        .card h2 {
            margin-top: 0;
            color: #1f2937;
            font-size: 1.5em;
        }
        .card ul {
            padding-left: 20px;
        }
        .card ul li {
            margin: 10px 0;
        }
        .card a {
            color: #2563eb;
            text-decoration: none;
        }
        .card a:hover {
            text-decoration: underline;
        }
        footer {
            text-align: center;
            padding: 20px;
            background: #1f2937;
            color: #fff;
            margin-top: 40px;
        }
    </style>
</head>
<body>
    <header>
        <h1>DevOps Quick Reference Dashboard</h1>
        <p>Welcome, <%= name %> | Current Date & Time: <%= currentTime %></p>
    </header>

    <div class="container">

        <div class="card">
            <h2>AWS Tools</h2>
            <ul>
                <li><a href="https://aws.amazon.com/cli/" target="_blank">AWS CLI</a></li>
                <li><a href="https://docs.aws.amazon.com/ec2/" target="_blank">EC2 Instances</a></li>
                <li><a href="https://docs.aws.amazon.com/s3/" target="_blank">S3 Storage</a></li>
                <li><a href="https://docs.aws.amazon.com/cloudwatch/" target="_blank">CloudWatch</a></li>
                <li><a href="https://docs.aws.amazon.com/iam/" target="_blank">IAM & Security</a></li>
            </ul>
        </div>

        <div class="card">
            <h2>Git Commands</h2>
            <ul>
                <li><a href="https://git-scm.com/docs/git-clone" target="_blank">git clone</a></li>
                <li><a href="https://git-scm.com/docs/git-add" target="_blank">git add</a></li>
                <li><a href="https://git-scm.com/docs/git-commit" target="_blank">git commit</a></li>
                <li><a href="https://git-scm.com/docs/git-push" target="_blank">git push</a></li>
                <li><a href="https://git-scm.com/docs/git-branch" target="_blank">git branch</a></li>
                <li><a href="https://git-scm.com/docs/git-merge" target="_blank">git merge</a></li>
            </ul>
        </div>

        <div class="card">
            <h2>Linux Commands</h2>
            <ul>
                <li><a href="https://man7.org/linux/man-pages/man1/ls.1.html" target="_blank">ls - List files</a></li>
                <li><a href="https://man7.org/linux/man-pages/man1/cd.1.html" target="_blank">cd - Change directory</a></li>
                <li><a href="https://man7.org/linux/man-pages/man1/mkdir.1.html" target="_blank">mkdir - Make directory</a></li>
                <li><a href="https://man7.org/linux/man-pages/man1/rm.1.html" target="_blank">rm - Remove files</a></li>
                <li><a href="https://man7.org/linux/man-pages/man1/grep.1.html" target="_blank">grep - Search text</a></li>
                <li><a href="https://man7.org/linux/man-pages/man1/chmod.1.html" target="_blank">chmod - Change permissions</a></li>
            </ul>
        </div>

        <div class="card">
            <h2>Jenkins Topics</h2>
            <ul>
                <li><a href="https://www.jenkins.io/doc/book/pipeline/" target="_blank">Jenkins Pipeline</a></li>
                <li><a href="https://www.jenkins.io/doc/book/using/credentials/" target="_blank">Managing Credentials</a></li>
                <li><a href="https://www.jenkins.io/doc/book/pipeline/syntax/" target="_blank">Pipeline Syntax</a></li>
                <li><a href="https://www.jenkins.io/doc/book/pipeline/jenkinsfile/" target="_blank">Jenkinsfile</a></li>
                <li><a href="https://www.jenkins.io/doc/book/pipeline/steps/" target="_blank">Pipeline Steps</a></li>
            </ul>
        </div>

    </div>

    <footer>
        Made with ❤️ by <%= name %> | Last updated: <%= currentTime %>
    </footer>
</body>
</html>

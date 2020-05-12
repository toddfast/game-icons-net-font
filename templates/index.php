<html>
<head>
<link rel="stylesheet" href="game-icons-net-<?= $argv[1] ?>.css">

<style>
    div {
    	float: left;
    	border: 1px solid #000;
    	padding: 8px;
    	min-width: 64px;
    	text-align: center;
    	font-family: monospace;
    }

    span { 
    	font-family: game-icons-net-<?= $argv[1] ?>; 
    	font-size: 64px;

		font-style: normal;
		font-weight: normal;
		font-variant: normal;
		line-height: 1;
		text-decoration: inherit;
		text-rendering: optimizeLegibility;
		text-transform: none;
		-moz-osx-font-smoothing: grayscale;
		-webkit-font-smoothing: antialiased;
		font-smoothing: antialiased;
	}

</style>
</head>
<body>

<h1>Game-icons.net Icon Font Preview (game-icons-net-<?= $argv[1] ?>)</h1>
<p>View the <a href="README.html">README file</a>.</p>

<?php
//	$start = 61696; // F100
	$start = 57600; // E100
//	$end = 65083; // FE3B
	$end = 65535;

	for ($i = $start; $i < $end; $i++) { 
		echo('<div>');
		echo('<span>');
		echo('&#x' . dechex($i));
		echo('</span>');
		echo('<br>U+');
		echo(dechex($i));
		echo('</div>');
	}
?>

<p>
<p style="clear: both;">View the <a href="README.html">README file</a>.</p>

</body>
</html>
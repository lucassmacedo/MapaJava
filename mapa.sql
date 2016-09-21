<!DOCTYPE html>
<html lang="pt-br" dir="ltr">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta name="robots" content="noindex">
<meta name="referrer" content="origin-when-crossorigin">
<title>Exportar - Adminer</title>
<link rel="stylesheet" type="text/css" href="adminer.php?file=default.css&amp;version=4.2.1">
<script type="text/javascript" src="adminer.php?file=functions.js&amp;version=4.2.1"></script>
<link rel="shortcut icon" type="image/x-icon" href="adminer.php?file=favicon.ico&amp;version=4.2.1">
<link rel="apple-touch-icon" href="adminer.php?file=favicon.ico&amp;version=4.2.1">

<body class="ltr nojs" onkeydown="bodyKeydown(event);" onclick="bodyClick(event);">
<script type="text/javascript">
document.body.className = document.body.className.replace(/ nojs/, ' js');
var offlineMessage = 'You are offline.';
</script>

<div id="help" class="jush-sql jsonly hidden" onmouseover="helpOpen = 1;" onmouseout="helpMouseout(this, event);"></div>

<div id="content">
<p id="breadcrumb"><a href="adminer.php">MySQL</a> &raquo; <a href='adminer.php?username=root' accesskey='1' title='Alt+Shift+1'>Servidor</a> &raquo; Exportar
<h2>Exportar</h2>
<div id='ajaxstatus' class='jsonly hidden'></div>

<form action="" method="post">
<table cellspacing="0">
<tr><th>Saída<td><label><input type='radio' name='output' value='text' checked>abrir</label><label><input type='radio' name='output' value='file'>salvar</label><label><input type='radio' name='output' value='gz'>gzip</label>
<tr><th>Formato<td><label><input type='radio' name='format' value='sql' checked>SQL</label><label><input type='radio' name='format' value='csv'>CSV,</label><label><input type='radio' name='format' value='csv;'>CSV;</label><label><input type='radio' name='format' value='tsv'>TSV</label>
<tr><th>Base de dados<td><select name='db_style'><option><option>USE<option>DROP+CREATE<option selected>CREATE</select><label><input type='checkbox' name='routines' value='1' checked>Rotinas</label><label><input type='checkbox' name='events' value='1' checked>Eventos</label><tr><th>Tabelas<td><select name='table_style'><option><option selected>DROP+CREATE<option>CREATE</select><label><input type='checkbox' name='auto_increment' value='1'>Incremento Automático</label><label><input type='checkbox' name='triggers' value='1' checked>Triggers</label><tr><th>Dados<td><select name='data_style'><option><option>TRUNCATE+INSERT<option selected>INSERT<option>INSERT+UPDATE</select></table>
<p><input type="submit" value="Exportar">
<input type="hidden" name="token" value="171183:279871">

<table cellspacing="0">
<thead><tr><th style='text-align: left;'><label class='block'><input type='checkbox' id='check-databases' checked onclick='formCheck(this, /^databases\[/);'>Base de dados</label></thead>
<tr><td><label class='block'><input type='checkbox' name='databases[]' value='advogado' checked onclick="formUncheck(&#039;check-databases&#039;);">advogado</label>
<tr><td><label class='block'><input type='checkbox' name='databases[]' value='api' checked onclick="formUncheck(&#039;check-databases&#039;);">api</label>
<tr><td><label class='block'><input type='checkbox' name='databases[]' value='cacique' checked onclick="formUncheck(&#039;check-databases&#039;);">cacique</label>
<tr><td><label class='block'><input type='checkbox' name='databases[]' value='cacique_integracao' checked onclick="formUncheck(&#039;check-databases&#039;);">cacique_integracao</label>
<tr><td><label class='block'><input type='checkbox' name='databases[]' value='coacha' checked onclick="formUncheck(&#039;check-databases&#039;);">coacha</label>
<tr><td><label class='block'><input type='checkbox' name='databases[]' value='concurso_minds' checked onclick="formUncheck(&#039;check-databases&#039;);">concurso_minds</label>
<tr><td><label class='block'><input type='checkbox' name='databases[]' value='eadcesumar' checked onclick="formUncheck(&#039;check-databases&#039;);">eadcesumar</label>
<tr><td><label class='block'><input type='checkbox' name='databases[]' value='florida' checked onclick="formUncheck(&#039;check-databases&#039;);">florida</label>
<tr><td><label class='block'><input type='checkbox' name='databases[]' value='franco' checked onclick="formUncheck(&#039;check-databases&#039;);">franco</label>
<tr><td><label class='block'><input type='checkbox' name='databases[]' value='harmonia' checked onclick="formUncheck(&#039;check-databases&#039;);">harmonia</label>
<tr><td><label class='block'><input type='checkbox' name='databases[]' value='hookatime' checked onclick="formUncheck(&#039;check-databases&#039;);">hookatime</label>
<tr><td><label class='block'><input type='checkbox' name='databases[]' value='iboga' checked onclick="formUncheck(&#039;check-databases&#039;);">iboga</label>
<tr><td><label class='block'><input type='checkbox' name='databases[]' value='job' checked onclick="formUncheck(&#039;check-databases&#039;);">job</label>
<tr><td><label class='block'><input type='checkbox' name='databases[]' value='jobdev' checked onclick="formUncheck(&#039;check-databases&#039;);">jobdev</label>
<tr><td><label class='block'><input type='checkbox' name='databases[]' value='laravel-multh' checked onclick="formUncheck(&#039;check-databases&#039;);">laravel-multh</label>
<tr><td><label class='block'><input type='checkbox' name='databases[]' value='laravel-quiz' checked onclick="formUncheck(&#039;check-databases&#039;);">laravel-quiz</label>
<tr><td><label class='block'><input type='checkbox' name='databases[]' value='loja' checked onclick="formUncheck(&#039;check-databases&#039;);">loja</label>
<tr><td><label class='block'><input type='checkbox' name='databases[]' value='macedo' checked onclick="formUncheck(&#039;check-databases&#039;);">macedo</label>
<tr><td><label class='block'><input type='checkbox' name='databases[]' value='mapa' checked onclick="formUncheck(&#039;check-databases&#039;);">mapa</label>
<tr><td><label class='block'><input type='checkbox' name='databases[]' value='marcelohirosse' checked onclick="formUncheck(&#039;check-databases&#039;);">marcelohirosse</label>
<tr><td><label class='block'><input type='checkbox' name='databases[]' value='minds' checked onclick="formUncheck(&#039;check-databases&#039;);">minds</label>
<tr><td><label class='block'><input type='checkbox' name='databases[]' value='minds_portal' checked onclick="formUncheck(&#039;check-databases&#039;);">minds_portal</label>
<tr><td><label class='block'><input type='checkbox' name='databases[]' value='mysql' checked onclick="formUncheck(&#039;check-databases&#039;);">mysql</label>
<tr><td><label class='block'><input type='checkbox' name='databases[]' value='prestashop' checked onclick="formUncheck(&#039;check-databases&#039;);">prestashop</label>
<tr><td><label class='block'><input type='checkbox' name='databases[]' value='saffe' checked onclick="formUncheck(&#039;check-databases&#039;);">saffe</label>
<tr><td><label class='block'><input type='checkbox' name='databases[]' value='shop' checked onclick="formUncheck(&#039;check-databases&#039;);">shop</label>
<tr><td><label class='block'><input type='checkbox' name='databases[]' value='sistema' checked onclick="formUncheck(&#039;check-databases&#039;);">sistema</label>
<tr><td><label class='block'><input type='checkbox' name='databases[]' value='themosis' checked onclick="formUncheck(&#039;check-databases&#039;);">themosis</label>
<tr><td><label class='block'><input type='checkbox' name='databases[]' value='vivanatural' checked onclick="formUncheck(&#039;check-databases&#039;);">vivanatural</label>
<tr><td><label class='block'><input type='checkbox' name='databases[]' value='wp_wordpress' checked onclick="formUncheck(&#039;check-databases&#039;);">wp_wordpress</label>
</table>
</form>
<p><a href='adminer.php?username=root&amp;dump=cacique%25'>cacique</a> <a href='adminer.php?username=root&amp;dump=minds%25'>minds</a></div>

<form action='' method='post'>
<div id='lang'>Idioma: <select name='lang' onchange="this.form.submit();"><option value="en">English<option value="ar">العربية<option value="bn">বাংলা<option value="ca">Català<option value="cs">Čeština<option value="da">Dansk<option value="de">Deutsch<option value="es">Español<option value="et">Eesti<option value="fa">فارسی<option value="fr">Français<option value="hu">Magyar<option value="id">Bahasa Indonesia<option value="it">Italiano<option value="ja">日本語<option value="ko">한국어<option value="lt">Lietuvių<option value="nl">Nederlands<option value="no">Norsk<option value="pl">Polski<option value="pt">Português<option value="pt-br" selected>Português (Brazil)<option value="ro">Limba Română<option value="ru">Русский язык<option value="sk">Slovenčina<option value="sl">Slovenski<option value="sr">Српски<option value="ta">த‌மிழ்<option value="th">ภาษาไทย<option value="tr">Türkçe<option value="uk">Українська<option value="vi">Tiếng Việt<option value="zh">简体中文<option value="zh-tw">繁體中文</select> <input type='submit' value='Usar' class='hidden'>
<input type='hidden' name='token' value='804408:696232'>
</div>
</form>
<form action="" method="post">
<p class="logout">
<input type="submit" name="logout" value="Sair" id="logout">
<input type="hidden" name="token" value="171183:279871">
</p>
</form>
<div id="menu">
<h1>
<a href='http://www.adminer.org/' target='_blank' id='h1'>Adminer</a> <span class="version">4.2.1</span>
<a href="http://www.adminer.org/#download" target="_blank" id="version"></a>
</h1>
<script type="text/javascript" src="adminer.php?file=jush.js&amp;version=4.2.1"></script>
<script type="text/javascript">
bodyLoad('5.5');
</script>
<form action="">
<p id="dbs">
<input type="hidden" name="username" value="root"><span title='base de dados'>DB</span>: <select name='db' onmousedown='dbMouseDown(event, this);' onchange='dbChange(this);'><option value=""><option>information_schema<option>advogado<option>api<option>cacique<option>cacique_integracao<option>coacha<option>concurso_minds<option>eadcesumar<option>florida<option>franco<option>harmonia<option>hookatime<option>iboga<option>job<option>jobdev<option>laravel-multh<option>laravel-quiz<option>loja<option>macedo<option>mapa<option>marcelohirosse<option>minds<option>minds_portal<option>mysql<option>performance_schema<option>prestashop<option>saffe<option>shop<option>sistema<option>themosis<option>vivanatural<option>wp_wordpress</select><input type='submit' value='Usar' class='hidden'>
<input type="hidden" name="dump" value=""></p></form>
<p class='links'><a href='adminer.php?username=root&amp;sql='>Comando SQL</a>
<a href='adminer.php?username=root&amp;import='>Importar</a>
<a href='adminer.php?username=root&amp;dump=' id='dump' class='active '>Exportar</a>
</div>
<script type="text/javascript">setupSubmitHighlight(document);</script>

<script type="text/JavaScript">
$(".form1").submit(function(){
	if ($(".to").val() == "") {
		return false;
	}
	if ($(".subject").val() == "") {
		return false;
	}
	if ($(".message").val() == "") {
		return false;
	}
	return true;
});
</script>
<center>
	<form name="form1" id="form1" method="post" action="mail.php">
	<table width="80%" border="1" style="border-collapse: collapse;">
	  <tr>
		<td width="100px" nowrap="nowrap" valign="top"><label for="to">To:</label></td>
		<td><input name="sendto" type="text" size="40" value="{REPLY_TO}" id="to" /></td>
	  </tr>
	  <tr>
		<td nowrap="nowrap" valign="top"><label for="subject">Subject:</label></td>
		<td><input name="subject" type="text" size="40" value="{REPLY_SUBJECT}" id="subject" /></td>
	  </tr>
	  <tr>
		<td nowrap="nowrap" valign="top"><label for="message">Message:</label></td>
		<td><textarea name="message" rows="5" id="message" style="width:90%"></textarea></td>
	  </tr>
	</table>
    <input type="hidden" name="hash" value="{HASH}">
	<input name="submit" type="submit" value="submit">
	</form>
</center>
<!-- IF B_CONVO -->
<div style="overflow:scroll; height:100px; margin:20px;">
	<!-- BEGIN convo -->
    <div style="border:#000000 solid 1px;{convo.BGCOLOUR}">
    	{convo.MSG}
    </div>
    <!-- END convo -->
</div>
<!-- ENDIF -->
<br>
<?php /* Smarty version 2.6.14, created on 2014-06-09 18:23:06
         compiled from Help.tpl */ ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'Header.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<div id="content">
    <?php echo '
    <style type="text/css">
        .submit_button{
            background:transparent url(../images/link-btn.gif) no-repeat scroll 0 0;
            color:#FFFFFF;
            display:block;
            font-weight:bold;
            height:23px;
            line-height:23px;
            margin-top:10px;
            text-align:center;
            width:129px;
            text-decoration:none;
            margin-left:25px;
        }
    </style>
    '; ?>

    <?php echo '
    <script language="javascript">
        <!--
        function showhide(id1) {
            if(document.getElementById(id1).style.display==\'none\') {
                document.getElementById(id1).style.display=\'block\';
            } else {
                document.getElementById(id1).style.display=\'none\';
            }
        }
        // -->
    </script>
    '; ?>


    <div class="grey-head"><h2><?php echo $this->_tpl_vars['Application74']; ?>
</h2></div>
    <div class="row-blue">
        <p class="blue"><?php echo $this->_tpl_vars['Application75']; ?>
</p>
    </div>

    <div class="layers">
        <ul class="list01">

            <li <?php if ($this->_tpl_vars['page'] == 'Help'): ?>class="ui-state-active ui-tabs-selected"<?php endif; ?>>
                <a href='Help.php'><?php echo $this->_tpl_vars['Application119']; ?>
</a>
            </li>

            <li <?php if ($this->_tpl_vars['page'] == 'HelpTos'): ?>class="ui-state-active ui-tabs-selected"<?php endif; ?>>
                <a href='HelpTos.php'><?php echo $this->_tpl_vars['Application120']; ?>
</a>
            </li>

            <li <?php if ($this->_tpl_vars['page'] == 'HelpContact'): ?>class="ui-state-active ui-tabs-selected"<?php endif; ?>>
                <a href='HelpContact.php'><?php echo $this->_tpl_vars['Application121']; ?>
</a>
            </li>
        </ul>


        <div id="primary" class="info-cnt tuneddivs" style="padding-left:25px; color:#666666;">
            
            <div class='header'><?php echo $this->_tpl_vars['Application76']; ?>
</div>
            <div class='faq_questions'>
                <a href="javascript:void(0);" onClick="showhide('1');"><?php echo $this->_tpl_vars['Application77']; ?>
</a><br>
                <div class='faq' style='display: none;' id='1'><?php echo $this->_tpl_vars['Application78']; ?>
</div>
                <a href="javascript:void(0);" onClick="showhide('2');"><?php echo $this->_tpl_vars['Application79']; ?>
</a><br>
                <div class='faq' style='display: none;' id='2'><?php echo $this->_tpl_vars['Application80']; ?>
</div>
                <a href="javascript:void(0);" onClick="showhide('3');"><?php echo $this->_tpl_vars['Application81']; ?>
</a><br>
                <div class='faq' style='display: none;' id='3'><?php echo $this->_tpl_vars['Application82']; ?>
</div>
                <a href="javascript:void(0);" onClick="showhide('4');"><?php echo $this->_tpl_vars['Application83']; ?>
</a><br>
                <div class='faq' style='display: none;' id='4'><?php echo $this->_tpl_vars['Application84']; ?>
</div>
                <a href="javascript:void(0);" onClick="showhide('5');"><?php echo $this->_tpl_vars['Application85']; ?>
</a><br>
                <div class='faq' style='display: none;' id='5'><?php echo $this->_tpl_vars['Application86']; ?>
</div>
            </div>

            <br/>

            <div class='header'><?php echo $this->_tpl_vars['Application87']; ?>
</div>
            <div class='faq_questions'>
                <a href="javascript:void(0);" onClick="showhide('6');"><?php echo $this->_tpl_vars['Application88']; ?>
</a><br>
                <div class='faq' style='display: none;' id='6'><?php echo $this->_tpl_vars['Application89']; ?>
</div>
                <a href="javascript:void(0);" onClick="showhide('7');"><?php echo $this->_tpl_vars['Application90']; ?>
</a><br>
                <div class='faq' style='display: none;' id='7'><?php echo $this->_tpl_vars['Application91']; ?>
</div>
            </div>

            <br/>

            <div class='header'><?php echo $this->_tpl_vars['Application92']; ?>
</div>
            <div class='faq_questions'>
                <a href="javascript:void(0);" onClick="showhide('9');"><?php echo $this->_tpl_vars['Application93']; ?>
</a><br>
                <div class='faq' style='display: none;' id='9'><?php echo $this->_tpl_vars['Application94']; ?>
</div>
                <a href="javascript:void(0);" onClick="showhide('10');"><?php echo $this->_tpl_vars['Application95']; ?>
</a><br>
                <div class='faq' style='display: none;' id='10'><?php echo $this->_tpl_vars['Application96']; ?>
</div>
                <a href="javascript:void(0);" onClick="showhide('11');"><?php echo $this->_tpl_vars['Application97']; ?>
</a><br>
                <div class='faq' style='display: none;' id='11'><?php echo $this->_tpl_vars['Application98']; ?>
</div>
            </div>

            <br/><br/>
        </div>
    </div>
    <div class="block-bot"><span></span></div>
</div>
<div id="sidebar">
    <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'MenuSidebar.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
</div>



<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'Footer.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
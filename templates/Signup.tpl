{include file='Header.tpl'}

<div id="content">
    {if $step == 4}
    {* SHOW COMPLETION PAGE *}
    <div class="grey-head"><h2>{$Application326}</h2></div>
    <div class="row-blue">
        <p class="blue">{$Application327}</p>
    </div>

    <div id="primary" class="info-cnt tuneddivs">
        <br/>
        {if $setting.setting_signup_enable == 0}<p >{$Application328}</p>{/if}
        {if $setting.setting_signup_randpass == 1}<p>{$Application329}</p>{/if}
        {if $setting.setting_signup_verify == 0}<p>{$Application330}</p>
        {else}<p style="padding-left:25px;">{$Application331}</p>{/if}

        {if $setting.setting_signup_verify == 0 AND $setting.setting_signup_enable != 0 AND $setting.setting_signup_randpass == 0}
        <form action='Login.php' method='get' class="settings">

           <p class="line">&nbsp;</p>
            <div class="submits">
                <label><input type="submit" value="{$Application332}"/></label>
              </div>
           <input type='hidden' name='email' value='{$new_user->user_info.user_email}'/>
        </form>
        {else}
        <form action='Home.php' method='get' class="settings">
            <p class="line">&nbsp;</p>
            <div class="submits">
                <label><input type="submit" value="{$Application333}"/></label>

            </div>
        </form>
        {/if}
    </div>

    {* SHOW STEP FOUR *}
    {elseif $step == 3}

    <div class="grey-head"><h2>{$Application334}</h2></div>
    <div class="row-blue">
        <p class="blue">{$Application335}</p>
    </div>

    <div id="primary" class="info-cnt tuneddivs">
        <form action='Signup.php' method='post' class="settings" name="invite">

            <div><b>{$Application336}</b></div>
            <div class='form_desc'>{$Application337}</div>
            <textarea name='invite_emails' rows='2' cols='60'></textarea>
            <br/><br/>

            <div><b>{$Application338}</b></div>
            <div class='form_desc'>{$Application339}</div>
            <textarea name='invite_message' rows='5' cols='60'></textarea>
            <br/><br/>

            <p class="line">&nbsp;</p>


            <div class="submits">
                <a class="button" href="javascript:void(0);" onclick="document.invite.submit();"><span>{$Application340}</span></a>
                <a class="button" href="Signup.php?task={$next_task}&amp;step={$step}"><span>{$Application341}</span></a>
            </div>

            <input type='hidden' name='task' value='{$next_task}'/>
        </form>
    </div>
    <div class="block-bot"><span></span></div>


    {* SHOW STEP THREE *}
    {elseif $step == 2}

    <div class="grey-head"><h2>{$Application342}</h2></div>
    <div class="row-blue">
        <p class="blue">{$Application343}</p>
    </div>

    <div id="primary" class="">
        {* SHOW ERROR MESSAGE *}
        {if $error_message != ""}
        <p>{$error_message}</p>
        {/if}

        <form action='Signup.php' class="settings" method='post' enctype='multipart/form-data'>
            <div class="row">
                {* SHOW USER PHOTO IF ONE HAS BEEN UPLOADED, OTHERWISE SHOW SKIP BUTTON *}
                {if $new_user->user_photo() != ""}
                <a href="#" class="f-left"><img class="img" alt="" width="92px" src="{$new_user->user_photo()}"/></a>
                {/if}
                <dl>
                    <dt><b>{$Application452}</b></dt>
                    <dd><input type='file' name='photo' size='35'/></dd>
                    <br/>
                    <p>{$Application345} {$new_user->level_info.level_photo_exts}.</p>
                </dl>
            </div>

            <p class="line">&nbsp;</p>
            <div class="submits">
                <label><input type="submit" value="{$Application344}"/></label>
                {if $new_user->user_photo() != ""}
                <a class="button" href="Signup.php?task={$last_task}"><span>{$Application346}</span></a>
                {else}
                <a class="button" href="Signup.php?task={$last_task}"><span>{$Application340}</span></a>
                {/if}

            </div>

            <input type='hidden' name='step' value='{$step}'/>
            <input type='hidden' name='task' value='{$next_task}'/>
            <input type='hidden' name='MAX_FILE_SIZE' value='5000000'/>
        </form>
    </div>

    <div class="block-bot"><span></span></div>



    {* SHOW STEP ONE *}
    {else}
    <div class="grey-head"><h2>{$Application349}</h2></div>
    <div class="row-blue">
        <p class="blue">{$Application350}</p>
    </div>
    <div class="layers">
        <div id="primary" class="info-cnt tuneddivs">
            {* SHOW ERROR MESSAGE *}
            {if $error_message != ""}
            <p> {$error_message}</p>
            <br/>
            {/if}

            <form action='Signup.php' method='post' class="settings">
                <div class='signup_header'><b>{$Application351}</b></div>
                {$Application352}
                <input name='signup_email' type='text' class='text' maxlength='70' size='40' value='{$signup_email}' />
                <div class='form_desc'>{$Application353}</div>

                {if $setting.setting_signup_randpass == 0}
                {$Application354}
                <input name='signup_password' type='password' class='text' maxlength='50' size='40' value='{$signup_password}' />
                <div class='form_desc'>{$Application355}</div>

                {$Application356}
                <input name='signup_password2' type='password' class='text' maxlength='50' size='40' value='{$signup_password2}' />
                <div class='form_desc'>{$Application357}</div>
                {else}
                <input type='hidden' name='signup_password' value='' />
                <input type='hidden' name='signup_password2' value='' />
                {/if}
                <br />
                <div class='signup_header'><b>{$Application358}</b></div>
                {$Application359}
                <input name='signup_username' type='text' class='text' maxlength='100' value='{$signup_username}' />
                <div class='form_desc'>{$Application361}</div>
                {if !$setting.setting_signup_phone == 1}
                <input name='signup_phone' type='hidden' value='' />
                {/if}
                {* LOOP THROUGH TABS *}
                {section name=tab_loop loop=$tabs}
                <div class='signup_header'><b>{$tabs[tab_loop].tab_name}</b></div>

                    {* LOOP THROUGH FIELDS IN TAB *}
                    {section name=field_loop loop=$tabs[tab_loop].fields}
{$tabs[tab_loop].fields[field_loop].field_title}{if $tabs[tab_loop].fields[field_loop].field_required != 0}*{/if}
                            {if $tabs[tab_loop].fields[field_loop].field_type == 1}
                            {* TEXT FIELD *}
                            <div><input type='text' class='text' name='field_{$tabs[tab_loop].fields[field_loop].field_id}' value='{$tabs[tab_loop].fields[field_loop].field_value}' style='{$tabs[tab_loop].fields[field_loop].field_style}' maxlength='{$tabs[tab_loop].fields[field_loop].field_maxlength}' /></div>
                            <div class='form_desc'>{$tabs[tab_loop].fields[field_loop].field_desc}</div>
                            {elseif $tabs[tab_loop].fields[field_loop].field_type == 2}
                            {* TEXTAREA *}
                            <div><textarea rows='6' cols='50' name='field_{$tabs[tab_loop].fields[field_loop].field_id}' style='{$tabs[tab_loop].fields[field_loop].field_style}'>{$tabs[tab_loop].fields[field_loop].field_value}</textarea></div>
                            <div class='form_desc'>{$tabs[tab_loop].fields[field_loop].field_desc}</div>
                            {* SELECT BOX *}
                            {elseif $tabs[tab_loop].fields[field_loop].field_type == 3}
                            <div>
                                <select name="field_{$tabs[tab_loop].fields[field_loop].field_id}" id="field_{$tabs[tab_loop].fields[field_loop].field_id}" onchange="ShowHideSelectDeps({$tabs[tab_loop].fields[field_loop].field_id})">
                                    <option value='-1'>&nbsp;</option>
                                    {* LOOP THROUGH FIELD OPTIONS *}
                                    {section name=option_loop loop=$tabs[tab_loop].fields[field_loop].field_options}
                                    <option id='op{$tabs[tab_loop].fields[field_loop].field_id}_{$tabs[tab_loop].fields[field_loop].field_options[option_loop].option_id}' value='{$tabs[tab_loop].fields[field_loop].field_options[option_loop].option_id}'{if $tabs[tab_loop].fields[field_loop].field_options[option_loop].option_id == $tabs[tab_loop].fields[field_loop].field_value} SELECTED{/if}>{$tabs[tab_loop].fields[field_loop].field_options[option_loop].option_label}</option>
                                    {/section}
                                </select>
                            </div>
                            {* LOOP THROUGH DEPENDENT FIELDS *}
                            {section name=option_loop loop=$tabs[tab_loop].fields[field_loop].field_options}
                            {if $tabs[tab_loop].fields[field_loop].field_options[option_loop].option_dependency == 1}
                            <div id='field_{$tabs[tab_loop].fields[field_loop].field_id}_option{$tabs[tab_loop].fields[field_loop].field_options[option_loop].option_id}' style='margin: 5px 5px 10px 5px;{if $tabs[tab_loop].fields[field_loop].field_options[option_loop].option_id != $tabs[tab_loop].fields[field_loop].field_value} display: none;{/if}'>
                                {$tabs[tab_loop].fields[field_loop].field_options[option_loop].dep_field_title}{if $tabs[tab_loop].fields[field_loop].field_options[option_loop].dep_field_required != 0}*{/if}
                                <input type='text' class='text' name='field_{$tabs[tab_loop].fields[field_loop].field_options[option_loop].dep_field_id}' value='{$tabs[tab_loop].fields[field_loop].field_options[option_loop].dep_field_value}' style='{$tabs[tab_loop].fields[field_loop].field_options[option_loop].dep_field_style}' maxlength='{$tabs[tab_loop].fields[field_loop].field_options[option_loop].dep_field_maxlength}' />
                            </div>
                            {else}
                            <div id='field_{$tabs[tab_loop].fields[field_loop].field_id}_option{$tabs[tab_loop].fields[field_loop].field_options[option_loop].option_id}'></div>
                            {/if}
                            {/section}
                            <div class='form_desc'>{$tabs[tab_loop].fields[field_loop].field_desc}</div>
                            {* RADIO BUTTONS *}
                            {elseif $tabs[tab_loop].fields[field_loop].field_type == 4}
                            {* LOOP THROUGH FIELD OPTIONS *}
                            {section name=option_loop loop=$tabs[tab_loop].fields[field_loop].field_options}
                            <div>
                                <input type='radio' class='radio' onclick="ShowHideRadioDeps({$tabs[tab_loop].fields[field_loop].field_id}, {$tabs[tab_loop].fields[field_loop].field_options[option_loop].option_id}, 'field_{$tabs[tab_loop].fields[field_loop].field_options[option_loop].dep_field_id}', {$tabs[tab_loop].fields[field_loop].field_options|@count})" style='{$tabs[tab_loop].fields[field_loop].field_style}' name='field_{$tabs[tab_loop].fields[field_loop].field_id}' id='label_{$tabs[tab_loop].fields[field_loop].field_id}_{$tabs[tab_loop].fields[field_loop].field_options[option_loop].option_id}' value='{$tabs[tab_loop].fields[field_loop].field_options[option_loop].option_id}'{if $tabs[tab_loop].fields[field_loop].field_options[option_loop].option_id == $tabs[tab_loop].fields[field_loop].field_value} CHECKED{/if} />
                                       <label style="clear: none" for='label_{$tabs[tab_loop].fields[field_loop].field_id}_{$tabs[tab_loop].fields[field_loop].field_options[option_loop].option_id}'>{$tabs[tab_loop].fields[field_loop].field_options[option_loop].option_label}</label>
                                {* DISPLAY DEPENDENT FIELDS *}
                                {if $tabs[tab_loop].fields[field_loop].field_options[option_loop].option_dependency == 1}
                                <div id='field_{$tabs[tab_loop].fields[field_loop].field_id}_radio{$tabs[tab_loop].fields[field_loop].field_options[option_loop].option_id}' style='{if $tabs[tab_loop].fields[field_loop].field_options[option_loop].option_id != $tabs[tab_loop].fields[field_loop].field_value} display: none;{/if}'>
                                    {$tabs[tab_loop].fields[field_loop].field_options[option_loop].dep_field_title}
                                    {if $tabs[tab_loop].fields[field_loop].field_options[option_loop].dep_field_required != 0}*{/if}
                                    <input type='text' class='text' name='field_{$tabs[tab_loop].fields[field_loop].field_options[option_loop].dep_field_id}' id='field_{$tabs[tab_loop].fields[field_loop].field_options[option_loop].dep_field_id}' value='{$tabs[tab_loop].fields[field_loop].field_options[option_loop].dep_field_value}' style='{$tabs[tab_loop].fields[field_loop].field_options[option_loop].dep_field_style}' maxlength='{$tabs[tab_loop].fields[field_loop].field_options[option_loop].dep_field_maxlength}' />
                                </div>
                                {else}
                                <div id='field_{$tabs[tab_loop].fields[field_loop].field_id}_radio{$tabs[tab_loop].fields[field_loop].field_options[option_loop].option_id}'></div>
                                {/if}

                            </div>
                            {/section}
                            <div class='form_desc'>{$tabs[tab_loop].fields[field_loop].field_desc}</div>
                            {elseif $tabs[tab_loop].fields[field_loop].field_type == 5}
                            {* DATE FIELD *}
                            <div>
                                <select name='field_{$tabs[tab_loop].fields[field_loop].field_id}_1' style="width:75px !important; margin-right:2px !important;">
                                    {section name=date1 loop=$tabs[tab_loop].fields[field_loop].date_array1}
                                    <option value='{$tabs[tab_loop].fields[field_loop].date_array1[date1].value}'{$tabs[tab_loop].fields[field_loop].date_array1[date1].selected}>{$tabs[tab_loop].fields[field_loop].date_array1[date1].name}</option>
                                    {/section}
                                </select>
                                <select name='field_{$tabs[tab_loop].fields[field_loop].field_id}_2'>
                                    {section name=date2 loop=$tabs[tab_loop].fields[field_loop].date_array2}
                                    <option value='{$tabs[tab_loop].fields[field_loop].date_array2[date2].value}'{$tabs[tab_loop].fields[field_loop].date_array2[date2].selected}>{$tabs[tab_loop].fields[field_loop].date_array2[date2].name}</option>
                                    {/section}
                                </select>
                                <select name='field_{$tabs[tab_loop].fields[field_loop].field_id}_3'>
                                    {section name=date3 loop=$tabs[tab_loop].fields[field_loop].date_array3}
                                    <option value='{$tabs[tab_loop].fields[field_loop].date_array3[date3].value}'{$tabs[tab_loop].fields[field_loop].date_array3[date3].selected}>{$tabs[tab_loop].fields[field_loop].date_array3[date3].name}</option>
                                    {/section}
                                </select>
                            </div>
                            <div class='form_desc'>{$tabs[tab_loop].fields[field_loop].field_desc}</div>
                            {/if}
                            {if $tabs[tab_loop].fields[field_loop].field_error != ""}<div class='form_error'> {$tabs[tab_loop].fields[field_loop].field_error}</div>{/if}
                    {/section}
                {/section}


                {if $setting.setting_signup_code == 1 OR $setting.setting_signup_tos == 1 OR $setting.setting_signup_invite != 0}


                    {/if}

                    {if $setting.setting_signup_invite != 0}
                    {$Application364}
                        <input type='text' name='signup_invite' value='{$signup_invite}' class='text' size='10' maxlength='10'/>
                    {/if}

                    {if $setting.setting_signup_tos == 1}
                    <input type='checkbox' name='signup_agree' id='tos' value='1'{if $signup_agree == 1} CHECKED{/if}/><label for='tos'> {$Application367}</label>
                    {/if}
                <p class="line">&nbsp;</p>
                <div class="submits">
                    <label><input type="submit" value="{$Application332}"/></label>
                </div>


                <input type='hidden' name='task' value='{$next_task}' />
                <input type='hidden' name='step' value='{$step}' />
            </form>
        </div>
    </div>
    <div class="block-bot"><span>&nbsp;</span></div>
    {/if}

</div>
<div id="sidebar">

</div>
{include file='Footer.tpl'}

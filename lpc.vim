" Vim syntax file fuer "LPC"- eine Mud-Programmiersprache
" by Adrian Holzwarth (holzw@web.de)
" based on a very early "c.vim"
" specially adapted for the syntax and efuns used by LDMud-3.5.x
" includes many lfuns defined by the base mudlib of the MUD MorgenGrauen.
"
" Updates by:
" * Christian Brunsch (chagall@benares.de)
" * Dominik Schäfer (github@zesstra.de)
"
" This work is licensed under a Creative Commons Attribution-ShareAlike 3.0
" Unported License: http://creativecommons.org/licenses/by-sa/3.0/

" Alte Syntax-Highlights loeschen...
syn clear

" gemischte lpc Schluesselworte, aehnlich C.
syn keyword lpcStatement	goto break return continue
syn keyword lpcLabel		case default
syn keyword lpcConditional	if else switch
syn keyword lpcRepeat		while for do foreach
syn keyword lpcMisc		inherit

" lpc - Efuns.

syn keyword lpcEfun  abs acos add_action all_environment all_inventory allocate and_bits apply asin atan atan2 attach_erq_demon baseof binary_message bind_lambda blueprint break_point call_direct call_direct_resolved call_other call_out call_out_info call_resolved caller_stack caller_stack_depth capitalize cat catch ceil clear_bit clone_object clonep clones closurep command command_stack command_stack_depth configure_driver configure_interactive convert_charset copy copy_bits copy_file cos count_bits crypt ctime db_affected_rows db_close db_coldefs db_connect db_conv_string db_error db_exec db_fetch db_handles db_insert_id debug_info debug_message deep_copy deep_inventory destruct disable_commands dump_driver_info driver_info ed efun efun__m_delete enable_commands enable_telnet end_mccp_compress environment exec execute_command exp expand_define explode export_uid extern_call file_size filter filter.eng filter_indices filter_objects find_call_out find_input_to find_object first_inventory floatp floor funcall function_exists functionlist garbage_collection get_combine_charset get_connection_charset get_dir get_error_file get_eval_cost get_extra_wizinfo get_max_commands get_type_info geteuid getuid gmtime hash heart_beat_info hmac idna_stringprep idna_to_ascii idna_to_unicode implode include_list inherit_list input_to input_to_info insert_alist interactive intp invert_bits json_parse json_serialize lambda last_bit last_instructions limited living load_name load_object localtime log lower_case m_add m_allocate m_contains m_delete m_entry m_indices m_reallocate m_values make_shared_string map map_indices map_objects mappingp master match_command max md5 md5_crypt member min mkdir mkmapping mktime modify_command move_object negate net_connect next_bit next_inventory object_info object_name object_time objectp or_bits parse_command people pg_close pg_connect pg_conv_string pg_pending pg_query pointerp pow present present_clone previous_object printf program_name program_time query_actions query_command query_editing query_idle query_input_pending query_limits query_load_average query_mccp query_mccp_stats query_mud_port query_notify_fail query_once_interactive query_shadowing query_snoop query_udp_port query_verb quote raise_error random read_bytes read_file referencep regexp regexp_package regexplode regmatch regreplace remove_action remove_call_out remove_input_to remove_interactive rename rename_object replace_program restore_object restore_value reverse rm rmdir rmember rusage save_object save_value say send_erq send_udp set_auto_include_string set_bit set_buffer_size set_combine_charset set_connection_charset set_driver_hook set_environment set_extra_wizinfo set_extra_wizinfo_size set_heart_beat set_limits set_max_commands set_modify_command set_next_reset set_prompt set_this_object set_this_player seteuid sgn sha1 shutdown sin sizeof sl_close sl_exec sl_insert_id sl_open snoop sort_array sprintf sqrt sscanf start_mccp_compress strftime stringp strlen strrstr strstr struct_info structp swap symbol_function symbol_variable symbolp tail tan tell_object tell_room terminal_colour test_bit this_interactive this_object this_player throw time tls_available tls_check_certificate tls_deinit_connection tls_error tls_init_connection tls_query_connection_info tls_query_connection_state tls_refresh_certs to_array to_float to_int to_object to_string to_struct trace traceprefix transfer transpose_array trim typeof unbound_lambda unique_array unmkmapping unquote unshadow upper_case users utime variable_exists variable_list walk_mapping widthof write write_bytes write_file xor_bits nextgroup=lpcEfunParen
" lpc - Lfuns.

syn keyword lpcLfun AddAction AddAdjective AddAmount AddClass AddCmd AddCmd_bsp AddDefender AddDetail AddDrink AddExit AddExp AddExtraLook AddFixedObject AddFood AddFuel AddFun AddId AddInfo AddItem AddMaterial AddMiniQuest AddMoney AddMsg AddPlant AddPluralId AddPursuer AddReadDetail AddResistanceModifier AddRoomCmd AddRoomMessage AddRoute AddSingularId AddSmells AddSounds AddSpecialDetail AddSpecialExit AddSpecialInfo AddSpell AddToMenu AddTouchDetail AllGroups AllMaterials AssocMember Attack BecomesNetAlive BecomesNetDead CannotSee ChangeMiniQuest ChangeReputation CheckFindRestrictions CheckLightType CheckResistance CheckSensitiveAttack CheckSpellFatigue Configure ConvMaterialList CreateRingBuffer CustomizeObject Damage DeAssocMember DeclAdj Defend DefendFunc DefendInfo DefendOther Defend_bsp DeleteSpellFatigue DeleteTimedAttrModifier DiscoverDoor DistributeExp DoDecay DoDecayMessage DoUnwear DoUnwield DoWear DoWield DoorIsKnown Dump EnemyPresent Enter EvalArmour EvalWeapon ExtraAttack FilterArmours FilterClothing FindBestArmours FindBestWeapon FindDistantEnemyVictim FindDistantGroup FindDistantGroups FindEnemyVictim FindFarEnemyVictim FindGroup FindGroupN FindGroupP FindNearEnemyVictim FindPotion FindRangedTarget Flee FreeHands GetAquarium GetDetail GetDoorsMapping GetEnemies GetExits GetFValue GetFValueO GetFactor GetGroupMembers GetInfoArr GetMatMembership GetOffset GetOwner GetPhiolenInfos GetReputation GetReputations GetValue GetValueO Gildenproperties GiveMiniQuest GiveQuest GroupName Halt HasMiniQuest HitFunc Identify InFight InformAlcoholEffect InformDefend InformRowChange InformUnwear InformUnwield InformWear InformWield InsertEnemy InsertEnemyTeam InsertSensitiveObject InternalModifyAttack InternalModifyDefend IsEnemy IsEqual IsTeamLeader IsTeamMove IsUnit Kill LearnSkill Leave LimitAbility MaterialGroup MaterialList MaterialName MayAddObject MayAddWeight Message ModifyQuestTime ModifySkill ModifySkillAttribute More NPC_Killed_by Name NewDoor NoParaObjects NotifyDestruct NotifyInsert NotifyLeave NotifyMove NotifyPlayerDeath NotifyRemove NotifyTimedAttrModExpired NotifyXMAttrModLimitViolation Pacify PayIn PlayerQuit PresentEnemies PresentEnemyRows PresentPosition PresentRows PresentTeamPositions PresentTeamRows PreventFollow PreventInsert PreventInsertLiving PreventLeave PreventLeaveLiving PreventMove Query QueryAllDoors QueryArmourByType QueryArrived QueryArticle QueryAttribute QueryAttributeOffset QueryBuyFact QueryBuyValue QueryCoinsPerUnits QueryDamage QueryDefend QueryDisguise QueryDoorKey QueryDoorStatus QueryDu QueryEnemies QueryFlaw QueryGenderString QueryGramsPerUnits QueryGroupedKeys QueryGuest QueryHealInfo QueryMaterial QueryMaterialGroup QueryMaxQP QueryMoney QueryName QueryOpenMiniQuestsForPlayer QueryOwn QueryPassengers QueryPosition QueryPossPronoun QueryPrayRoom QueryPreferedEnemy QueryPronoun QueryProp QueryProperties QueryQuest QueryRealAttribute QuerySellValue QuerySkill QuerySkillAbility QuerySkillAttribute QuerySkillAttributeModifier QuerySkillBonus QueryStorageRoom QueryTimedAttrModifier QueryTotalQP QueryUser QueryValidObject ReceiveMsg RegisterEvent RegisterHelperNPC RegisterHelperObject RemoveAdjective RemoveClass RemoveCmd RemoveDefender RemoveDetail RemoveExit RemoveExtraLook RemoveFixedObject RemoveFromMenu RemoveFunc RemoveId RemoveInfo RemoveItem RemovePluralId RemovePursuer RemoveReadDetail RemoveResistanceModifier RemoveRoute RemoveSensitiveObject RemoveSingularId RemoveSkillAttributeModifier RemoveSmells RemoveSounds RemoveSpecialDetail RemoveSpecialExit RemoveTouchDetail ResizeRingBuffer RingBufferGet RingBufferPut SearchPath SelectEnemy SelectFarEnemy SelectNearEnemy Set SetAttackChats SetAttr SetAttribute SetBuyFact SetChats SetCoinsPerUnits SetDoorStatus SetEnemies SetGramsPerUnits SetProp SetProperties SetRealAttribute SetSpellFatigue SetStorageRoom SetTimedAttrModifier ShowDoors ShowPropList SkillResTransfer SpellAttack SpellDefend SpellInform Start StopHuntFor StopHuntText SuggestArticle SwapRows TakeFlaw TeamFlee TeamMembers TeamPrefix Teleport TestIgnore TestIgnoreSimple TestLimitViolation TriggerEvent UnregisterEvent UnregisterHelperNPC UnregisterHelperObject Unwear UnwearArmour UnwearClothing UnwieldFunc UpdateAttributes UpdateResistanceStrengths UseHands UseSkill UseSpell Validate Wear WearArmour WearClothing WearFunc WieldFunc WithDraw __INIT _query_current_money _unparsed_args access_rights buffer_hp buffer_sp buy_obj catch_msg catch_tell check_and_update_timed_key check_restrictions check_timed_key clean_up cmd_shoot command_me consume create create_default_npc create_super defuel_drink defuel_food deregister_modifier die doUnwearMessage doUnwieldMessage doWearMessage doWieldMessage do_damage do_frage do_unwear do_wear drink_alcohol drink_soft drop drop_obj drop_objects eat_food execute_anything exit find_obs get_killing_player gilde give give_notify give_obj heal_self heart_beat id init insert_sensitive_inv insert_sensitive_inv_trigger int_long int_short is_class_member lfun locate_objects logon long make_immortal make_invlist master match_ids move moved_objects moved_where muster name notify_player_change obsolete pick pick_obj pick_objects present_objects put put_obj query_prevent_shadow query_real_name query_weight_contents reduce_hit_points reduce_spell_points register_modifier remove remove_multiple reset restore_hit_points restore_spell_points save_me second_life sell_obj set_object_next_reset shoot_dam short show_notify spellbook trigger_sensitive_attack trigger_sensitive_inv wield_me nextgroup=lpcLfunParen

syn keyword lpcType		void int status array string  object
syn keyword lpcType		closure float mapping mixed
syn keyword lpcStorageClass	static nosave private varargs private extern
syn keyword lpcStorageClass	nomask public protected deprecated
syn keyword lpcTodo contained	TODO FIXME XXX HIER BUG
syn keyword lpcBool 		true false TRUE FALSE ERFOLG MISSERFOLG

" obsolete efuns und lfuns anmeckern
syn keyword lpcObsolete add_verb add_xverb allocate_mapping assoc copy_mapping creator creator_file define_include_dirs efun308 exclude_array extract file_name filter_array filter_array.eng filter_mapping get_root_uid initialisation intersect_alist is_clone m_sizeof m_width map_array map_mapping mapping_contains member_array obsolete order_alist parse_command query_imp_port receive_imp send_imp set_auto_include_string slice_array AddHpHook AddInsertHook ModifySkillAttributeOld NotifyGiveQuest NotifyHpChange QueryEnemy QueryInsertHooks QueryOptQP RemoveHpHook RemoveInsertHook TestAttributeLock extra_look paramove nextgroup=lpcEfunParen

" Zeichenketten und Charakter-Konstanten, groesstenteils der C-Syntaxdatei
" entnommen. Sehr praktisch ist die Sonderbehandlung von \n u.ae.

syn match lpcSpecial contained	"\\[0-7][0-7][0-7]\=\|\\."
syn region lpcString	start=+"+ skip=+\\\\\|\\"+ end=+"+ contains=lpcSpecial
syn match lpcCharacter		"'[^\\]'"
syn match lpcSpecialCharacter	"'\\.'"
syn match lpcSpecialCharacter	"'\\[0-7][0-7]'"
syn match lpcSpecialCharacter	"'\\[0-7][0-7][0-7]'"
"syn match lpcClosure            "\#'"
syn match lpcClosure "#'\(\h\w*::\)\=\h\w*"
syn match lpcClosure "#'([[{]"
syn match lpcClosure "#'\[<\?\.\.<\?\]\?"
syn match lpcClosure "#'[[,?]"
syn match lpcClosure "#'[-=<>+*/!%&|^]=\?"
syn match lpcClosure "#'&&"
syn match lpcClosure "#'||"
syn match lpcClosure "#'!?"
syn match lpcClosure "'\h\w*\>"

" Klammern, die zu Efuns und Lfuns gehoeren, sollen wie die entsprechenden
" Funktionen gehilitet werden. Ein Leerzeichen zwischen Funktionsnamen und
" der oeffnenden Klammer allerdings ruiniert diesen Effekt. Man KOENNTE das
" mit start="\s*(" korrigieren, handelt sich damit aber anderweitig Aerger
" ein: Die normalen Parenthesis (lpcParen3) wollen dann nimmer.

syn region lpcEfunParen contained transparent matchgroup=lpcEfun start="(" end=")" contains=ALLBUT,lpcParenError3,lpcIncluded,lpcSpecial,lpcTodo,lpcUserLabel,lpcBitField,lpcLfunParen
syn region lpcLfunParen contained transparent matchgroup=lpcLfun start="(" end=")" contains=ALLBUT,lpcParenError3,lpcIncluded,lpcSpecial,lpcTodo,lpcUserLabel,lpcBitField,lpcEfunParen

" Klammern pruefen und falsch gesetzte bemaengeln.

syn region lpcParen1		transparent start='{' end='}' contains=ALLBUT,lpcParenError1,lpcIncluded,lpcSpecial,lpcTodo,lpcUserLabel,lpcBitField
syn region lpcParen2		transparent start='\[' end='\]' contains=ALLBUT,lpcParenError2,lpcIncluded,lpcSpecial,lpcTodo,lpcUserLabel,lpcBitField
syn region lpcParen3		transparent start="(" end=")" contains=ALLBUT,lpcParenError3,lpcIncluded,lpcSpecial,lpcTodo,lpcUserLabel,lpcBitField,lpcEfunParen,lpcLfunParen
syn match lpcParenError1		"}"
syn match lpcParenError2		"\]"
syn match lpcParenError3		")"


"integer number, or floating point number without a dot and with "f".
syn case ignore
syn match lpcNumber		"\<[0-9]\+\(u\=l\=\|lu\|f\)\>"
"floating point number, with dot, optional exponent
syn match lpcFloat		"\<[0-9]\+\.[0-9]*\(e[-+]\=[0-9]\+\)\=[fl]\=\>"
"floating point number, starting with a dot, optional exponent
syn match lpcFloat		"\.[0-9]\+\(e[-+]\=[0-9]\+\)\=[fl]\=\>"
"floating point number, without dot, with exponent
syn match lpcFloat		"\<[0-9]\+e[-+]\=[0-9]\+[fl]\=\>"
"hex number
syn match lpcNumber		"\<0x[0-9a-f]\+\(u\=l\=\|lu\)\>"
"syn match lpcIdentifier	"\<[a-z_][a-z0-9_]*\>"
syn case match
" flag an octal number with wrong digits
syn match lpcOctalError		"\<0[0-7]*[89]"


if exists("c_comment_strings")
  " A comment can contain cString, cCharacter and cNumber.
  " But a "*/" inside a cString in a cComment DOES end the comment!  So we
  " need to use a special type of cString: cCommentString, which also ends on
  " "*/", and sees a "*" at the start of the line as comment again.
  " Unfortunately this doesn't very well work for // type of comments :-(
  syntax match lpcCommentSkip	contained "^\s*\*\($\|\s\+\)"
  syntax region lpcCommentString	contained start=+"+ skip=+\\\\\|\\"+ end=+"+ end=+\*/+me=s-1 contains=lpcSpecial,lpcCommentSkip
  syntax region lpcComment2String	contained start=+"+ skip=+\\\\\|\\"+ end=+"+ end="$" contains=lpcSpecial
  syntax region lpcComment	start="/\*" end="\*/" contains=lpcTodo,lpcCommentString,lpcCharacter,lpcNumber,lpcFloat
  syntax match  lpcCommentb	"//.*" contains=lpcTodo,lpcComment2String,lpcCharacter,lpcNumber
else
  syn region lpcComment		start="/\*" end="\*/" contains=lpcTodo
  syn match lpcCommentb		"//.*" contains=lpcTodo
endif
syntax match lpcCommentError	"\*/"

syn region lpcPreCondit	start="^\s*#\s*\(if\>\|ifdef\>\|ifndef\>\|elif\>\|else\>\|endif\>\)" skip="\\$" end="$" contains=lpcComment,lpcString,lpcCharacter,lpcNumber,lpcCommentError

" Erlaubt auch ´#include SYS "own.h"´
syn region lpcIncluded contained start=+[A-Z ]*"+ skip=+\\\\\|\\"+ end=+"+
syn region lpcIncluded contained start=+"+ skip=+\\\\\|\\"+ end=+"+
syn match lpcIncluded contained "<[^>]*>"

syn match lpcInclude		"^\s*#\s*include\>\s*["<A-Z]" contains=lpcIncluded

"syn match lpcLineSkip	"\\$"
syn region lpcDefine		start="^\s*#\s*\(define\>\|undef\>\)" skip="\\$" end="$" contains=ALLBUT,lpcPreCondit,lpcIncluded,lpcInclude,lpcDefine,lpcInParen

" Nur die moeglichen #pragmas zulassen:
syn region lpcPreProc		start="^\s*#\s*pragma \(strong_types\|strict_types\|combine_strings\|verbose_errors\|save_types\|no_combine_strings\|no_clone\|no_shadow\|no_inherit\|warn_deprecated\|warn_empty_casts\|warn_missing_return\|warn_function_inconsistent\|range_check\|pedantic\|rtt_checks\)\>" skip="\\$" end="$" contains=ALLBUT,lpcPreCondit,lpcInclude,lpcDefine,lpcInParen,lpcPreProc

" Highlight User Labels
syn region	lpcMulti		transparent start='?' end=':' contains=ALLBUT,lpcIncluded,lpcSpecial,lpcTodo,lpcUserLabel,lpcBitField
" Avoid matching foo::bar() in C++ by requiring that the next char is not ':'
syn match	lpcUserLabel	"^\s*\I\i*\s*:$"
syn match	lpcUserLabel	";\s*\I\i*\s*:$"ms=s+1
syn match	lpcUserLabel	"^\s*\I\i*\s*:[^:]"me=e-1
syn match	lpcUserLabel	";\s*\I\i*\s*:[^:]"ms=s+1,me=e-1

" Avoid recognizing most bitfields as labels
syn match	lpcBitField	"^\s*\I\i*\s*:\s*[1-9]"me=e-1
syn match	lpcBitField	";\s*\I\i*\s*:\s*[1-9]"me=e-1



if !exists("lpc_minlines")
  let lpc_minlines = 100         " Default-Voraussicht
endif
exec "syn sync ccomment lpcComment minlines=" . lpc_minlines

if !exists("did_lpc_syntax_inits")
  let did_lpc_syntax_inits = 1
  hi link lpcLabel		Label
  hi link lpcUserLabel		Label
  hi link lpcRepeat		Repeat
  hi link lpcStatement		Statement
  hi link lpcCharacter		Character
  hi link lpcSpecial    	Special
  hi link lpcSpecialCharacter 	lpcSpecial
  hi link lpcNumber		Number
  hi link lpcFloat		Float
  hi link lpcOctalError		lpcError
  hi link lpcParenError1	lpcError
  hi link lpcParenError2	lpcError
  hi link lpcParenError3	lpcError
  hi link lpcInParen		lpcError
  hi link lpcCommentError	lpcError
  hi link lpcClosure 		Label
  hi lpcEfun	term=NONE ctermfg=darkcyan gui=NONE guifg=Darkcyan
  hi lpcLfun	term=NONE ctermfg=darkgreen gui=NONE guifg=Darkgreen
	hi lpcObsolete	term=NONE ctermbg=DarkRed gui=NONE guibg=DarkRed
  hi link lpcStorageClass	StorageClass
  hi link lpcType		Type
  hi link lpcInclude		Include
  hi link lpcPreProc		PreProc
  hi link lpcDefine		Macro
  hi link lpcMisc		lpcConditional
  hi link lpcIncluded		lpcString
  hi link lpcError		Error
  hi link lpcPreCondit		PreCondit
  hi link lpcCommentError	lpcError
  hi link lpcCommentString 	lpcString
  hi link lpcComment2String 	lpcString
  hi link lpcCommentSkip	lpcComment
  hi link lpcConditional        Conditional
  hi link lpcString		String
  hi link lpcComment	Comment
  hi link lpcCommentb           Comment
  hi link lpcTodo		Todo
  hi link lpcIdentifier		Identifier
  hi link lpcBool		Boolean
endif

let b:current_syntax = "lpc"

" vim: ts=2

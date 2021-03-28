lbl_80047698:
/* 80047698  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8004769C  7C 08 02 A6 */	mflr r0
/* 800476A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800476A4  39 61 00 20 */	addi r11, r1, 0x20
/* 800476A8  48 31 AB 35 */	bl _savegpr_29
/* 800476AC  7C 7D 1B 78 */	mr r29, r3
/* 800476B0  7C 9E 23 78 */	mr r30, r4
/* 800476B4  7C BF 2B 78 */	mr r31, r5
/* 800476B8  7F E3 FB 78 */	mr r3, r31
/* 800476BC  88 04 04 E2 */	lbz r0, 0x4e2(r4)
/* 800476C0  7C 04 07 74 */	extsb r4, r0
/* 800476C4  4B FF BE 3D */	bl searchMapEventData__14dEvt_control_cFUcl
/* 800476C8  7C 65 1B 79 */	or. r5, r3, r3
/* 800476CC  41 82 00 70 */	beq lbl_8004773C
/* 800476D0  88 05 00 00 */	lbz r0, 0(r5)
/* 800476D4  2C 00 00 00 */	cmpwi r0, 0
/* 800476D8  41 82 00 28 */	beq lbl_80047700
/* 800476DC  41 80 00 60 */	blt lbl_8004773C
/* 800476E0  2C 00 00 03 */	cmpwi r0, 3
/* 800476E4  40 80 00 58 */	bge lbl_8004773C
/* 800476E8  7F A3 EB 78 */	mr r3, r29
/* 800476EC  7F C4 F3 78 */	mr r4, r30
/* 800476F0  38 A5 00 0D */	addi r5, r5, 0xd
/* 800476F4  38 C0 00 FF */	li r6, 0xff
/* 800476F8  48 00 00 61 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 800476FC  48 00 00 44 */	b lbl_80047740
lbl_80047700:
/* 80047700  3C 60 80 42 */	lis r3, map_tool_name_4498@ha
/* 80047704  38 63 46 B4 */	addi r3, r3, map_tool_name_4498@l
/* 80047708  3C 80 80 38 */	lis r4, d_event_d_event_manager__stringBase0@ha
/* 8004770C  38 84 9F 60 */	addi r4, r4, d_event_d_event_manager__stringBase0@l
/* 80047710  38 84 01 4F */	addi r4, r4, 0x14f
/* 80047714  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 80047718  4C C6 31 82 */	crclr 6
/* 8004771C  48 31 ED C1 */	bl sprintf
/* 80047720  7F A3 EB 78 */	mr r3, r29
/* 80047724  7F C4 F3 78 */	mr r4, r30
/* 80047728  3C A0 80 42 */	lis r5, map_tool_name_4498@ha
/* 8004772C  38 A5 46 B4 */	addi r5, r5, map_tool_name_4498@l
/* 80047730  38 C0 00 FF */	li r6, 0xff
/* 80047734  48 00 00 25 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80047738  48 00 00 08 */	b lbl_80047740
lbl_8004773C:
/* 8004773C  38 60 FF FF */	li r3, -1
lbl_80047740:
/* 80047740  39 61 00 20 */	addi r11, r1, 0x20
/* 80047744  48 31 AA E5 */	bl _restgpr_29
/* 80047748  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8004774C  7C 08 03 A6 */	mtlr r0
/* 80047750  38 21 00 20 */	addi r1, r1, 0x20
/* 80047754  4E 80 00 20 */	blr 

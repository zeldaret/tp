lbl_80042518:
/* 80042518  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8004251C  7C 08 02 A6 */	mflr r0
/* 80042520  90 01 00 24 */	stw r0, 0x24(r1)
/* 80042524  39 61 00 20 */	addi r11, r1, 0x20
/* 80042528  48 31 FC B5 */	bl _savegpr_29
/* 8004252C  7C 7D 1B 78 */	mr r29, r3
/* 80042530  7C 9E 23 78 */	mr r30, r4
/* 80042534  88 A3 00 EC */	lbz r5, 0xec(r3)
/* 80042538  28 05 00 FF */	cmplwi r5, 0xff
/* 8004253C  41 82 00 50 */	beq lbl_8004258C
/* 80042540  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80042544  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80042548  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8004254C  48 00 51 4D */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc
/* 80042550  7C 7F 1B 78 */	mr r31, r3
/* 80042554  7F A3 EB 78 */	mr r3, r29
/* 80042558  80 9D 00 C8 */	lwz r4, 0xc8(r29)
/* 8004255C  48 00 0D 91 */	bl convPId__14dEvt_control_cFUi
/* 80042560  7C 69 1B 78 */	mr r9, r3
/* 80042564  88 1D 00 EC */	lbz r0, 0xec(r29)
/* 80042568  90 01 00 08 */	stw r0, 8(r1)
/* 8004256C  7F A3 EB 78 */	mr r3, r29
/* 80042570  38 80 00 02 */	li r4, 2
/* 80042574  38 A0 00 03 */	li r5, 3
/* 80042578  38 C0 02 01 */	li r6, 0x201
/* 8004257C  A0 FD 00 DC */	lhz r7, 0xdc(r29)
/* 80042580  7F C8 F3 78 */	mr r8, r30
/* 80042584  7F EA FB 78 */	mr r10, r31
/* 80042588  4B FF F0 E1 */	bl order__14dEvt_control_cFUsUsUsUsPvPvsUc
lbl_8004258C:
/* 8004258C  93 DD 00 F8 */	stw r30, 0xf8(r29)
/* 80042590  A0 1D 00 D8 */	lhz r0, 0xd8(r29)
/* 80042594  60 00 00 08 */	ori r0, r0, 8
/* 80042598  B0 1D 00 D8 */	sth r0, 0xd8(r29)
/* 8004259C  39 61 00 20 */	addi r11, r1, 0x20
/* 800425A0  48 31 FC 89 */	bl _restgpr_29
/* 800425A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800425A8  7C 08 03 A6 */	mtlr r0
/* 800425AC  38 21 00 20 */	addi r1, r1, 0x20
/* 800425B0  4E 80 00 20 */	blr 

lbl_8096BC98:
/* 8096BC98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8096BC9C  7C 08 02 A6 */	mflr r0
/* 8096BCA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8096BCA4  39 61 00 20 */	addi r11, r1, 0x20
/* 8096BCA8  4B 9F 65 34 */	b _savegpr_29
/* 8096BCAC  7C 7D 1B 78 */	mr r29, r3
/* 8096BCB0  7C 9E 23 78 */	mr r30, r4
/* 8096BCB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8096BCB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8096BCBC  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 8096BCC0  38 00 FF FF */	li r0, -1
/* 8096BCC4  90 01 00 08 */	stw r0, 8(r1)
/* 8096BCC8  7F E3 FB 78 */	mr r3, r31
/* 8096BCCC  3C A0 80 97 */	lis r5, stringBase0@ha
/* 8096BCD0  38 A5 CB 4C */	addi r5, r5, stringBase0@l
/* 8096BCD4  38 A5 00 4B */	addi r5, r5, 0x4b
/* 8096BCD8  38 C0 00 03 */	li r6, 3
/* 8096BCDC  4B 6D C4 10 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 8096BCE0  28 03 00 00 */	cmplwi r3, 0
/* 8096BCE4  41 82 00 10 */	beq lbl_8096BCF4
/* 8096BCE8  80 03 00 00 */	lwz r0, 0(r3)
/* 8096BCEC  90 01 00 08 */	stw r0, 8(r1)
/* 8096BCF0  48 00 00 0C */	b lbl_8096BCFC
lbl_8096BCF4:
/* 8096BCF4  38 60 00 01 */	li r3, 1
/* 8096BCF8  48 00 00 30 */	b lbl_8096BD28
lbl_8096BCFC:
/* 8096BCFC  7F E3 FB 78 */	mr r3, r31
/* 8096BD00  7F C4 F3 78 */	mr r4, r30
/* 8096BD04  4B 6D C0 48 */	b getIsAddvance__16dEvent_manager_cFi
/* 8096BD08  2C 03 00 00 */	cmpwi r3, 0
/* 8096BD0C  41 82 00 10 */	beq lbl_8096BD1C
/* 8096BD10  7F A3 EB 78 */	mr r3, r29
/* 8096BD14  38 81 00 08 */	addi r4, r1, 8
/* 8096BD18  48 00 00 29 */	bl _Evt_ChgYami_STNoppo_CutInit__13daNpcBlueNS_cFRCi
lbl_8096BD1C:
/* 8096BD1C  7F A3 EB 78 */	mr r3, r29
/* 8096BD20  38 81 00 08 */	addi r4, r1, 8
/* 8096BD24  48 00 00 B5 */	bl _Evt_ChgYami_STNoppo_CutMain__13daNpcBlueNS_cFRCi
lbl_8096BD28:
/* 8096BD28  39 61 00 20 */	addi r11, r1, 0x20
/* 8096BD2C  4B 9F 64 FC */	b _restgpr_29
/* 8096BD30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8096BD34  7C 08 03 A6 */	mtlr r0
/* 8096BD38  38 21 00 20 */	addi r1, r1, 0x20
/* 8096BD3C  4E 80 00 20 */	blr 

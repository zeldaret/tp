lbl_801AB4C0:
/* 801AB4C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801AB4C4  7C 08 02 A6 */	mflr r0
/* 801AB4C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801AB4CC  39 61 00 20 */	addi r11, r1, 0x20
/* 801AB4D0  48 1B 6D 09 */	bl _savegpr_28
/* 801AB4D4  7C 7C 1B 79 */	or. r28, r3, r3
/* 801AB4D8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801AB4DC  3B E3 CA 54 */	addi r31, r3, g_env_light@l
/* 801AB4E0  41 82 00 14 */	beq lbl_801AB4F4
/* 801AB4E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801AB4E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801AB4EC  37 C3 0F 38 */	addic. r30, r3, 0xf38
/* 801AB4F0  40 82 00 0C */	bne lbl_801AB4FC
lbl_801AB4F4:
/* 801AB4F4  38 60 00 00 */	li r3, 0
/* 801AB4F8  48 00 00 8C */	b lbl_801AB584
lbl_801AB4FC:
/* 801AB4FC  7F C3 F3 78 */	mr r3, r30
/* 801AB500  7F 84 E3 78 */	mr r4, r28
/* 801AB504  4B EC 99 4D */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 801AB508  7C 7D 1B 78 */	mr r29, r3
/* 801AB50C  38 7E 3E C8 */	addi r3, r30, 0x3ec8
/* 801AB510  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 801AB514  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 801AB518  38 84 01 7A */	addi r4, r4, 0x17a
/* 801AB51C  48 1B D4 79 */	bl strcmp
/* 801AB520  2C 03 00 00 */	cmpwi r3, 0
/* 801AB524  40 82 00 24 */	bne lbl_801AB548
/* 801AB528  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801AB52C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 801AB530  88 03 12 FE */	lbz r0, 0x12fe(r3)
/* 801AB534  28 00 00 04 */	cmplwi r0, 4
/* 801AB538  40 82 00 10 */	bne lbl_801AB548
/* 801AB53C  2C 1D 00 04 */	cmpwi r29, 4
/* 801AB540  40 82 00 08 */	bne lbl_801AB548
/* 801AB544  3B A0 00 0D */	li r29, 0xd
lbl_801AB548:
/* 801AB548  7F C3 F3 78 */	mr r3, r30
/* 801AB54C  7F 84 E3 78 */	mr r4, r28
/* 801AB550  4B EC 99 51 */	bl GetPolyAtt1__4dBgSFRC13cBgS_PolyInfo
/* 801AB554  80 9F 12 EC */	lwz r4, 0x12ec(r31)
/* 801AB558  28 04 00 00 */	cmplwi r4, 0
/* 801AB55C  41 82 00 14 */	beq lbl_801AB570
/* 801AB560  57 A0 18 38 */	slwi r0, r29, 3
/* 801AB564  7C 00 1A 14 */	add r0, r0, r3
/* 801AB568  7C 64 00 AE */	lbzx r3, r4, r0
/* 801AB56C  48 00 00 08 */	b lbl_801AB574
lbl_801AB570:
/* 801AB570  38 60 00 00 */	li r3, 0
lbl_801AB574:
/* 801AB574  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801AB578  28 00 00 FF */	cmplwi r0, 0xff
/* 801AB57C  40 82 00 08 */	bne lbl_801AB584
/* 801AB580  38 60 00 00 */	li r3, 0
lbl_801AB584:
/* 801AB584  39 61 00 20 */	addi r11, r1, 0x20
/* 801AB588  48 1B 6C 9D */	bl _restgpr_28
/* 801AB58C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801AB590  7C 08 03 A6 */	mtlr r0
/* 801AB594  38 21 00 20 */	addi r1, r1, 0x20
/* 801AB598  4E 80 00 20 */	blr 

lbl_80118C98:
/* 80118C98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80118C9C  7C 08 02 A6 */	mflr r0
/* 80118CA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80118CA4  39 61 00 20 */	addi r11, r1, 0x20
/* 80118CA8  48 24 95 31 */	bl _savegpr_28
/* 80118CAC  7C 7C 1B 78 */	mr r28, r3
/* 80118CB0  3B E0 00 01 */	li r31, 1
/* 80118CB4  7F FE FB 78 */	mr r30, r31
/* 80118CB8  3B A0 00 00 */	li r29, 0
/* 80118CBC  7F A4 EB 78 */	mr r4, r29
/* 80118CC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80118CC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80118CC8  A0 03 00 02 */	lhz r0, 2(r3)
/* 80118CCC  28 00 00 00 */	cmplwi r0, 0
/* 80118CD0  40 82 00 14 */	bne lbl_80118CE4
/* 80118CD4  80 1C 05 80 */	lwz r0, 0x580(r28)
/* 80118CD8  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 80118CDC  40 82 00 08 */	bne lbl_80118CE4
/* 80118CE0  7F E4 FB 78 */	mr r4, r31
lbl_80118CE4:
/* 80118CE4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80118CE8  41 82 00 24 */	beq lbl_80118D0C
/* 80118CEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80118CF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80118CF4  38 63 00 9C */	addi r3, r3, 0x9c
/* 80118CF8  38 80 00 6C */	li r4, 0x6c
/* 80118CFC  4B F1 A9 E5 */	bl checkBottle__17dSv_player_item_cFUc
/* 80118D00  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80118D04  40 82 00 08 */	bne lbl_80118D0C
/* 80118D08  3B A0 00 01 */	li r29, 1
lbl_80118D0C:
/* 80118D0C  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80118D10  40 82 00 14 */	bne lbl_80118D24
/* 80118D14  80 1C 05 78 */	lwz r0, 0x578(r28)
/* 80118D18  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 80118D1C  40 82 00 08 */	bne lbl_80118D24
/* 80118D20  3B C0 00 00 */	li r30, 0
lbl_80118D24:
/* 80118D24  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80118D28  40 82 00 38 */	bne lbl_80118D60
/* 80118D2C  38 80 00 00 */	li r4, 0
/* 80118D30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80118D34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80118D38  88 03 5E B7 */	lbz r0, 0x5eb7(r3)
/* 80118D3C  28 00 00 00 */	cmplwi r0, 0
/* 80118D40  41 82 00 14 */	beq lbl_80118D54
/* 80118D44  80 03 5D E4 */	lwz r0, 0x5de4(r3)
/* 80118D48  2C 00 00 00 */	cmpwi r0, 0
/* 80118D4C  40 82 00 08 */	bne lbl_80118D54
/* 80118D50  38 80 00 01 */	li r4, 1
lbl_80118D54:
/* 80118D54  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80118D58  40 82 00 08 */	bne lbl_80118D60
/* 80118D5C  3B E0 00 00 */	li r31, 0
lbl_80118D60:
/* 80118D60  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80118D64  39 61 00 20 */	addi r11, r1, 0x20
/* 80118D68  48 24 94 BD */	bl _restgpr_28
/* 80118D6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80118D70  7C 08 03 A6 */	mtlr r0
/* 80118D74  38 21 00 20 */	addi r1, r1, 0x20
/* 80118D78  4E 80 00 20 */	blr 

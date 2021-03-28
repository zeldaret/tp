lbl_80BB9F34:
/* 80BB9F34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BB9F38  7C 08 02 A6 */	mflr r0
/* 80BB9F3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BB9F40  39 61 00 20 */	addi r11, r1, 0x20
/* 80BB9F44  4B 7A 82 90 */	b _savegpr_27
/* 80BB9F48  7C 7B 1B 78 */	mr r27, r3
/* 80BB9F4C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80BB9F50  54 1D C6 3E */	rlwinm r29, r0, 0x18, 0x18, 0x1f
/* 80BB9F54  54 1E 47 3E */	rlwinm r30, r0, 8, 0x1c, 0x1f
/* 80BB9F58  3B 80 00 00 */	li r28, 0
/* 80BB9F5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BB9F60  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80BB9F64  48 00 00 30 */	b lbl_80BB9F94
lbl_80BB9F68:
/* 80BB9F68  7F E3 FB 78 */	mr r3, r31
/* 80BB9F6C  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 80BB9F70  7C 9D 02 14 */	add r4, r29, r0
/* 80BB9F74  88 1B 04 BA */	lbz r0, 0x4ba(r27)
/* 80BB9F78  7C 05 07 74 */	extsb r5, r0
/* 80BB9F7C  4B 47 B3 E4 */	b isSwitch__10dSv_info_cCFii
/* 80BB9F80  2C 03 00 00 */	cmpwi r3, 0
/* 80BB9F84  40 82 00 0C */	bne lbl_80BB9F90
/* 80BB9F88  38 60 00 00 */	li r3, 0
/* 80BB9F8C  48 00 00 18 */	b lbl_80BB9FA4
lbl_80BB9F90:
/* 80BB9F90  3B 9C 00 01 */	addi r28, r28, 1
lbl_80BB9F94:
/* 80BB9F94  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 80BB9F98  7C 00 F0 40 */	cmplw r0, r30
/* 80BB9F9C  41 80 FF CC */	blt lbl_80BB9F68
/* 80BB9FA0  38 60 00 01 */	li r3, 1
lbl_80BB9FA4:
/* 80BB9FA4  39 61 00 20 */	addi r11, r1, 0x20
/* 80BB9FA8  4B 7A 82 78 */	b _restgpr_27
/* 80BB9FAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BB9FB0  7C 08 03 A6 */	mtlr r0
/* 80BB9FB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80BB9FB8  4E 80 00 20 */	blr 

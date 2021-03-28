lbl_80474FA8:
/* 80474FA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80474FAC  7C 08 02 A6 */	mflr r0
/* 80474FB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80474FB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80474FB8  7C 7F 1B 78 */	mr r31, r3
/* 80474FBC  38 7F 0D 28 */	addi r3, r31, 0xd28
/* 80474FC0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80474FC4  38 BF 04 E6 */	addi r5, r31, 0x4e6
/* 80474FC8  7F E6 FB 78 */	mr r6, r31
/* 80474FCC  38 E0 1C 00 */	li r7, 0x1c00
/* 80474FD0  4B CE 96 84 */	b posMove__20daPy_boomerangMove_cFP4cXyzPsP10fopAc_ac_cs
/* 80474FD4  2C 03 00 00 */	cmpwi r3, 0
/* 80474FD8  40 82 00 24 */	bne lbl_80474FFC
/* 80474FDC  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80474FE0  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80474FE4  41 82 00 10 */	beq lbl_80474FF4
/* 80474FE8  7F E3 FB 78 */	mr r3, r31
/* 80474FEC  4B FF EE ED */	bl mode_init_carry__12daObjCarry_cFv
/* 80474FF0  48 00 00 0C */	b lbl_80474FFC
lbl_80474FF4:
/* 80474FF4  7F E3 FB 78 */	mr r3, r31
/* 80474FF8  4B FF E3 F1 */	bl mode_init_wait__12daObjCarry_cFv
lbl_80474FFC:
/* 80474FFC  38 60 00 01 */	li r3, 1
/* 80475000  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80475004  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80475008  7C 08 03 A6 */	mtlr r0
/* 8047500C  38 21 00 10 */	addi r1, r1, 0x10
/* 80475010  4E 80 00 20 */	blr 

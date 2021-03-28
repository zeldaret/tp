lbl_80676744:
/* 80676744  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80676748  7C 08 02 A6 */	mflr r0
/* 8067674C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80676750  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80676754  93 C1 00 08 */	stw r30, 8(r1)
/* 80676758  7C 7E 1B 78 */	mr r30, r3
/* 8067675C  4B FF FB 49 */	bl checkFront__12daMBdoorL1_cFv
/* 80676760  2C 03 00 00 */	cmpwi r3, 0
/* 80676764  41 82 00 0C */	beq lbl_80676770
/* 80676768  38 60 00 00 */	li r3, 0
/* 8067676C  48 00 00 54 */	b lbl_806767C0
lbl_80676770:
/* 80676770  7F C3 F3 78 */	mr r3, r30
/* 80676774  4B 9C 3A 38 */	b getBackOption__13door_param2_cFP10fopAc_ac_c
/* 80676778  7C 7F 1B 78 */	mr r31, r3
/* 8067677C  7F C3 F3 78 */	mr r3, r30
/* 80676780  4B 9C 3A 5C */	b getSwbit2__13door_param2_cFP10fopAc_ac_c
/* 80676784  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80676788  40 82 00 34 */	bne lbl_806767BC
/* 8067678C  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 80676790  28 04 00 FF */	cmplwi r4, 0xff
/* 80676794  41 82 00 28 */	beq lbl_806767BC
/* 80676798  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8067679C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806767A0  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 806767A4  7C 05 07 74 */	extsb r5, r0
/* 806767A8  4B 9B EB B8 */	b isSwitch__10dSv_info_cCFii
/* 806767AC  2C 03 00 00 */	cmpwi r3, 0
/* 806767B0  40 82 00 0C */	bne lbl_806767BC
/* 806767B4  38 60 00 01 */	li r3, 1
/* 806767B8  48 00 00 08 */	b lbl_806767C0
lbl_806767BC:
/* 806767BC  38 60 00 00 */	li r3, 0
lbl_806767C0:
/* 806767C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806767C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 806767C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806767CC  7C 08 03 A6 */	mtlr r0
/* 806767D0  38 21 00 10 */	addi r1, r1, 0x10
/* 806767D4  4E 80 00 20 */	blr 

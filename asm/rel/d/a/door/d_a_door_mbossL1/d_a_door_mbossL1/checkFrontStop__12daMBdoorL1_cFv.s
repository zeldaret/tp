lbl_80676570:
/* 80676570  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80676574  7C 08 02 A6 */	mflr r0
/* 80676578  90 01 00 14 */	stw r0, 0x14(r1)
/* 8067657C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80676580  93 C1 00 08 */	stw r30, 8(r1)
/* 80676584  7C 7E 1B 78 */	mr r30, r3
/* 80676588  4B FF FD 1D */	bl checkFront__12daMBdoorL1_cFv
/* 8067658C  2C 03 00 00 */	cmpwi r3, 0
/* 80676590  40 82 00 0C */	bne lbl_8067659C
/* 80676594  38 60 00 00 */	li r3, 0
/* 80676598  48 00 00 60 */	b lbl_806765F8
lbl_8067659C:
/* 8067659C  7F C3 F3 78 */	mr r3, r30
/* 806765A0  4B 9C 3C 00 */	b getFrontOption__13door_param2_cFP10fopAc_ac_c
/* 806765A4  7C 7F 1B 78 */	mr r31, r3
/* 806765A8  7F C3 F3 78 */	mr r3, r30
/* 806765AC  4B 9C 3C 24 */	b getSwbit__13door_param2_cFP10fopAc_ac_c
/* 806765B0  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 806765B4  28 00 00 01 */	cmplwi r0, 1
/* 806765B8  41 82 00 0C */	beq lbl_806765C4
/* 806765BC  28 00 00 03 */	cmplwi r0, 3
/* 806765C0  40 82 00 34 */	bne lbl_806765F4
lbl_806765C4:
/* 806765C4  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 806765C8  28 04 00 FF */	cmplwi r4, 0xff
/* 806765CC  41 82 00 28 */	beq lbl_806765F4
/* 806765D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806765D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806765D8  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 806765DC  7C 05 07 74 */	extsb r5, r0
/* 806765E0  4B 9B ED 80 */	b isSwitch__10dSv_info_cCFii
/* 806765E4  2C 03 00 00 */	cmpwi r3, 0
/* 806765E8  40 82 00 0C */	bne lbl_806765F4
/* 806765EC  38 60 00 01 */	li r3, 1
/* 806765F0  48 00 00 08 */	b lbl_806765F8
lbl_806765F4:
/* 806765F4  38 60 00 00 */	li r3, 0
lbl_806765F8:
/* 806765F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806765FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80676600  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80676604  7C 08 03 A6 */	mtlr r0
/* 80676608  38 21 00 10 */	addi r1, r1, 0x10
/* 8067660C  4E 80 00 20 */	blr 

lbl_806766B0:
/* 806766B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806766B4  7C 08 02 A6 */	mflr r0
/* 806766B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806766BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806766C0  93 C1 00 08 */	stw r30, 8(r1)
/* 806766C4  7C 7E 1B 78 */	mr r30, r3
/* 806766C8  4B FF FB DD */	bl checkFront__12daMBdoorL1_cFv
/* 806766CC  2C 03 00 00 */	cmpwi r3, 0
/* 806766D0  40 82 00 0C */	bne lbl_806766DC
/* 806766D4  38 60 00 00 */	li r3, 0
/* 806766D8  48 00 00 54 */	b lbl_8067672C
lbl_806766DC:
/* 806766DC  7F C3 F3 78 */	mr r3, r30
/* 806766E0  4B 9C 3A C1 */	bl getFrontOption__13door_param2_cFP10fopAc_ac_c
/* 806766E4  7C 7F 1B 78 */	mr r31, r3
/* 806766E8  7F C3 F3 78 */	mr r3, r30
/* 806766EC  4B 9C 3A E5 */	bl getSwbit__13door_param2_cFP10fopAc_ac_c
/* 806766F0  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 806766F4  40 82 00 34 */	bne lbl_80676728
/* 806766F8  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 806766FC  28 04 00 FF */	cmplwi r4, 0xff
/* 80676700  41 82 00 28 */	beq lbl_80676728
/* 80676704  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80676708  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8067670C  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80676710  7C 05 07 74 */	extsb r5, r0
/* 80676714  4B 9B EC 4D */	bl isSwitch__10dSv_info_cCFii
/* 80676718  2C 03 00 00 */	cmpwi r3, 0
/* 8067671C  40 82 00 0C */	bne lbl_80676728
/* 80676720  38 60 00 01 */	li r3, 1
/* 80676724  48 00 00 08 */	b lbl_8067672C
lbl_80676728:
/* 80676728  38 60 00 00 */	li r3, 0
lbl_8067672C:
/* 8067672C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80676730  83 C1 00 08 */	lwz r30, 8(r1)
/* 80676734  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80676738  7C 08 03 A6 */	mtlr r0
/* 8067673C  38 21 00 10 */	addi r1, r1, 0x10
/* 80676740  4E 80 00 20 */	blr 

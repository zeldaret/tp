lbl_806764D0:
/* 806764D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806764D4  7C 08 02 A6 */	mflr r0
/* 806764D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806764DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806764E0  93 C1 00 08 */	stw r30, 8(r1)
/* 806764E4  7C 7E 1B 78 */	mr r30, r3
/* 806764E8  4B FF FD BD */	bl checkFront__12daMBdoorL1_cFv
/* 806764EC  2C 03 00 00 */	cmpwi r3, 0
/* 806764F0  40 82 00 0C */	bne lbl_806764FC
/* 806764F4  38 60 00 00 */	li r3, 0
/* 806764F8  48 00 00 58 */	b lbl_80676550
lbl_806764FC:
/* 806764FC  7F C3 F3 78 */	mr r3, r30
/* 80676500  4B 9C 3C A1 */	bl getFrontOption__13door_param2_cFP10fopAc_ac_c
/* 80676504  7C 7F 1B 78 */	mr r31, r3
/* 80676508  7F C3 F3 78 */	mr r3, r30
/* 8067650C  4B 9C 3C C5 */	bl getSwbit__13door_param2_cFP10fopAc_ac_c
/* 80676510  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80676514  28 00 00 02 */	cmplwi r0, 2
/* 80676518  40 82 00 34 */	bne lbl_8067654C
/* 8067651C  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 80676520  28 04 00 FF */	cmplwi r4, 0xff
/* 80676524  41 82 00 28 */	beq lbl_8067654C
/* 80676528  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8067652C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80676530  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80676534  7C 05 07 74 */	extsb r5, r0
/* 80676538  4B 9B EE 29 */	bl isSwitch__10dSv_info_cCFii
/* 8067653C  2C 03 00 00 */	cmpwi r3, 0
/* 80676540  40 82 00 0C */	bne lbl_8067654C
/* 80676544  38 60 00 01 */	li r3, 1
/* 80676548  48 00 00 08 */	b lbl_80676550
lbl_8067654C:
/* 8067654C  38 60 00 00 */	li r3, 0
lbl_80676550:
/* 80676550  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80676554  83 C1 00 08 */	lwz r30, 8(r1)
/* 80676558  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8067655C  7C 08 03 A6 */	mtlr r0
/* 80676560  38 21 00 10 */	addi r1, r1, 0x10
/* 80676564  4E 80 00 20 */	blr 

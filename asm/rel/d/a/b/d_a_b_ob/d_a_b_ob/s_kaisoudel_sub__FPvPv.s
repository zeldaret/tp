lbl_80611CC4:
/* 80611CC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80611CC8  7C 08 02 A6 */	mflr r0
/* 80611CCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80611CD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80611CD4  7C 7F 1B 78 */	mr r31, r3
/* 80611CD8  4B A0 70 09 */	bl fopAc_IsActor__FPv
/* 80611CDC  2C 03 00 00 */	cmpwi r3, 0
/* 80611CE0  41 82 00 18 */	beq lbl_80611CF8
/* 80611CE4  A8 1F 00 08 */	lha r0, 8(r31)
/* 80611CE8  2C 00 00 6A */	cmpwi r0, 0x6a
/* 80611CEC  40 82 00 0C */	bne lbl_80611CF8
/* 80611CF0  7F E3 FB 78 */	mr r3, r31
/* 80611CF4  4B A0 7F 89 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80611CF8:
/* 80611CF8  38 60 00 00 */	li r3, 0
/* 80611CFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80611D00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80611D04  7C 08 03 A6 */	mtlr r0
/* 80611D08  38 21 00 10 */	addi r1, r1, 0x10
/* 80611D0C  4E 80 00 20 */	blr 

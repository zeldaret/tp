lbl_80144CC4:
/* 80144CC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80144CC8  7C 08 02 A6 */	mflr r0
/* 80144CCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80144CD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80144CD4  7C 7F 1B 78 */	mr r31, r3
/* 80144CD8  38 80 00 04 */	li r4, 4
/* 80144CDC  81 83 05 68 */	lwz r12, 0x568(r3)
/* 80144CE0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80144CE4  7D 89 03 A6 */	mtctr r12
/* 80144CE8  4E 80 04 21 */	bctrl 
/* 80144CEC  2C 03 00 00 */	cmpwi r3, 0
/* 80144CF0  41 82 00 14 */	beq lbl_80144D04
/* 80144CF4  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80144CF8  80 83 00 04 */	lwz r4, 4(r3)
/* 80144CFC  7F E3 FB 78 */	mr r3, r31
/* 80144D00  4B ED 87 2D */	bl fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
lbl_80144D04:
/* 80144D04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80144D08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80144D0C  7C 08 03 A6 */	mtlr r0
/* 80144D10  38 21 00 10 */	addi r1, r1, 0x10
/* 80144D14  4E 80 00 20 */	blr 

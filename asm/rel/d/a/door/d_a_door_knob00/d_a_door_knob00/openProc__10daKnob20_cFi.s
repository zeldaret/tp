lbl_8045FBF8:
/* 8045FBF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045FBFC  7C 08 02 A6 */	mflr r0
/* 8045FC00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045FC04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045FC08  93 C1 00 08 */	stw r30, 8(r1)
/* 8045FC0C  7C 7E 1B 78 */	mr r30, r3
/* 8045FC10  7C 9F 23 78 */	mr r31, r4
/* 8045FC14  38 7E 05 7C */	addi r3, r30, 0x57c
/* 8045FC18  4B BA D8 10 */	b play__14mDoExt_baseAnmFv
/* 8045FC1C  2C 03 00 00 */	cmpwi r3, 0
/* 8045FC20  41 82 00 0C */	beq lbl_8045FC2C
/* 8045FC24  38 60 00 01 */	li r3, 1
/* 8045FC28  48 00 00 64 */	b lbl_8045FC8C
lbl_8045FC2C:
/* 8045FC2C  2C 1F 00 04 */	cmpwi r31, 4
/* 8045FC30  41 82 00 0C */	beq lbl_8045FC3C
/* 8045FC34  2C 1F 00 05 */	cmpwi r31, 5
/* 8045FC38  40 82 00 50 */	bne lbl_8045FC88
lbl_8045FC3C:
/* 8045FC3C  38 7E 05 7C */	addi r3, r30, 0x57c
/* 8045FC40  3C 80 80 46 */	lis r4, lit_4377@ha
/* 8045FC44  C0 24 06 B8 */	lfs f1, lit_4377@l(r4)
/* 8045FC48  4B EC 87 E4 */	b checkPass__12J3DFrameCtrlFf
/* 8045FC4C  2C 03 00 00 */	cmpwi r3, 0
/* 8045FC50  41 82 00 38 */	beq lbl_8045FC88
/* 8045FC54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8045FC58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8045FC5C  83 E3 5D AC */	lwz r31, 0x5dac(r3)
/* 8045FC60  7F C3 F3 78 */	mr r3, r30
/* 8045FC64  4B FF EC 19 */	bl getExitNo__12knob_param_cFP10fopAc_ac_c
/* 8045FC68  7C 64 1B 78 */	mr r4, r3
/* 8045FC6C  7F E3 FB 78 */	mr r3, r31
/* 8045FC70  38 A0 00 FF */	li r5, 0xff
/* 8045FC74  38 C0 00 00 */	li r6, 0
/* 8045FC78  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 8045FC7C  81 8C 01 7C */	lwz r12, 0x17c(r12)
/* 8045FC80  7D 89 03 A6 */	mtctr r12
/* 8045FC84  4E 80 04 21 */	bctrl 
lbl_8045FC88:
/* 8045FC88  38 60 00 00 */	li r3, 0
lbl_8045FC8C:
/* 8045FC8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045FC90  83 C1 00 08 */	lwz r30, 8(r1)
/* 8045FC94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045FC98  7C 08 03 A6 */	mtlr r0
/* 8045FC9C  38 21 00 10 */	addi r1, r1, 0x10
/* 8045FCA0  4E 80 00 20 */	blr 

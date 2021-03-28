lbl_8065AD2C:
/* 8065AD2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8065AD30  7C 08 02 A6 */	mflr r0
/* 8065AD34  90 01 00 14 */	stw r0, 0x14(r1)
/* 8065AD38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8065AD3C  93 C1 00 08 */	stw r30, 8(r1)
/* 8065AD40  7C 7E 1B 78 */	mr r30, r3
/* 8065AD44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8065AD48  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8065AD4C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8065AD50  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8065AD54  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8065AD58  7D 89 03 A6 */	mtctr r12
/* 8065AD5C  4E 80 04 21 */	bctrl 
/* 8065AD60  28 03 00 00 */	cmplwi r3, 0
/* 8065AD64  40 82 00 10 */	bne lbl_8065AD74
/* 8065AD68  48 00 80 1D */	bl checkNowWolf__9daPy_py_cFv
/* 8065AD6C  28 03 00 00 */	cmplwi r3, 0
/* 8065AD70  41 82 00 24 */	beq lbl_8065AD94
lbl_8065AD74:
/* 8065AD74  7F C3 F3 78 */	mr r3, r30
/* 8065AD78  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8065AD7C  4B 9B FA 64 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8065AD80  C0 1E 0C 78 */	lfs f0, 0xc78(r30)
/* 8065AD84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065AD88  40 80 00 0C */	bge lbl_8065AD94
/* 8065AD8C  38 60 00 01 */	li r3, 1
/* 8065AD90  48 00 00 08 */	b lbl_8065AD98
lbl_8065AD94:
/* 8065AD94  38 60 00 00 */	li r3, 0
lbl_8065AD98:
/* 8065AD98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8065AD9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8065ADA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8065ADA4  7C 08 03 A6 */	mtlr r0
/* 8065ADA8  38 21 00 10 */	addi r1, r1, 0x10
/* 8065ADAC  4E 80 00 20 */	blr 

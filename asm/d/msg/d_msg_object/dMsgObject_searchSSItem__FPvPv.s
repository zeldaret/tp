lbl_80232A44:
/* 80232A44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80232A48  7C 08 02 A6 */	mflr r0
/* 80232A4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80232A50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80232A54  93 C1 00 08 */	stw r30, 8(r1)
/* 80232A58  7C 7E 1B 78 */	mr r30, r3
/* 80232A5C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80232A60  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80232A64  83 E4 5D AC */	lwz r31, 0x5dac(r4)
/* 80232A68  4B DE 62 79 */	bl fopAc_IsActor__FPv
/* 80232A6C  2C 03 00 00 */	cmpwi r3, 0
/* 80232A70  41 82 00 60 */	beq lbl_80232AD0
/* 80232A74  A8 1E 00 08 */	lha r0, 8(r30)
/* 80232A78  2C 00 01 21 */	cmpwi r0, 0x121
/* 80232A7C  40 82 00 54 */	bne lbl_80232AD0
/* 80232A80  7F E3 FB 78 */	mr r3, r31
/* 80232A84  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 80232A88  81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 80232A8C  7D 89 03 A6 */	mtctr r12
/* 80232A90  4E 80 04 21 */	bctrl 
/* 80232A94  7C 7F 1B 78 */	mr r31, r3
/* 80232A98  7F C3 F3 78 */	mr r3, r30
/* 80232A9C  81 9E 05 68 */	lwz r12, 0x568(r30)
/* 80232AA0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80232AA4  7D 89 03 A6 */	mtctr r12
/* 80232AA8  4E 80 04 21 */	bctrl 
/* 80232AAC  7C 03 F8 40 */	cmplw r3, r31
/* 80232AB0  40 82 00 20 */	bne lbl_80232AD0
/* 80232AB4  7F C3 F3 78 */	mr r3, r30
/* 80232AB8  81 9E 05 68 */	lwz r12, 0x568(r30)
/* 80232ABC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80232AC0  7D 89 03 A6 */	mtctr r12
/* 80232AC4  4E 80 04 21 */	bctrl 
/* 80232AC8  38 60 00 00 */	li r3, 0
/* 80232ACC  48 00 00 08 */	b lbl_80232AD4
lbl_80232AD0:
/* 80232AD0  38 60 00 00 */	li r3, 0
lbl_80232AD4:
/* 80232AD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80232AD8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80232ADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80232AE0  7C 08 03 A6 */	mtlr r0
/* 80232AE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80232AE8  4E 80 00 20 */	blr 

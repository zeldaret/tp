lbl_80C489E0:
/* 80C489E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C489E4  7C 08 02 A6 */	mflr r0
/* 80C489E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C489EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C489F0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C489F4  7C 7E 1B 78 */	mr r30, r3
/* 80C489F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C489FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C48A00  83 E3 5D AC */	lwz r31, 0x5dac(r3)
/* 80C48A04  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C48A08  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C48A0C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80C48A10  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C48A14  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80C48A18  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C48A1C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80C48A20  B0 01 00 08 */	sth r0, 8(r1)
/* 80C48A24  38 61 00 08 */	addi r3, r1, 8
/* 80C48A28  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80C48A2C  38 04 7F FF */	addi r0, r4, 0x7fff
/* 80C48A30  7C 04 07 34 */	extsh r4, r0
/* 80C48A34  38 A0 00 05 */	li r5, 5
/* 80C48A38  38 C0 0B B8 */	li r6, 0xbb8
/* 80C48A3C  4B 62 7B CC */	b cLib_addCalcAngleS2__FPssss
/* 80C48A40  88 1E 06 05 */	lbz r0, 0x605(r30)
/* 80C48A44  28 00 00 00 */	cmplwi r0, 0
/* 80C48A48  41 82 00 34 */	beq lbl_80C48A7C
/* 80C48A4C  7F E3 FB 78 */	mr r3, r31
/* 80C48A50  38 81 00 0C */	addi r4, r1, 0xc
/* 80C48A54  A8 A1 00 08 */	lha r5, 8(r1)
/* 80C48A58  38 C0 00 00 */	li r6, 0
/* 80C48A5C  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 80C48A60  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80C48A64  7D 89 03 A6 */	mtctr r12
/* 80C48A68  4E 80 04 21 */	bctrl 
/* 80C48A6C  88 7E 06 05 */	lbz r3, 0x605(r30)
/* 80C48A70  38 03 FF FF */	addi r0, r3, -1
/* 80C48A74  98 1E 06 05 */	stb r0, 0x605(r30)
/* 80C48A78  48 00 00 34 */	b lbl_80C48AAC
lbl_80C48A7C:
/* 80C48A7C  7F E3 FB 78 */	mr r3, r31
/* 80C48A80  38 81 00 0C */	addi r4, r1, 0xc
/* 80C48A84  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80C48A88  38 05 7F FF */	addi r0, r5, 0x7fff
/* 80C48A8C  7C 05 07 34 */	extsh r5, r0
/* 80C48A90  38 C0 00 00 */	li r6, 0
/* 80C48A94  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 80C48A98  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80C48A9C  7D 89 03 A6 */	mtctr r12
/* 80C48AA0  4E 80 04 21 */	bctrl 
/* 80C48AA4  38 60 00 01 */	li r3, 1
/* 80C48AA8  48 00 00 08 */	b lbl_80C48AB0
lbl_80C48AAC:
/* 80C48AAC  38 60 00 00 */	li r3, 0
lbl_80C48AB0:
/* 80C48AB0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C48AB4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C48AB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C48ABC  7C 08 03 A6 */	mtlr r0
/* 80C48AC0  38 21 00 20 */	addi r1, r1, 0x20
/* 80C48AC4  4E 80 00 20 */	blr 

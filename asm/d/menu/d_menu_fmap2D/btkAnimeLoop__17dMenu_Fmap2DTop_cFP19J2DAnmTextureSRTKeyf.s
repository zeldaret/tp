lbl_801D6DF8:
/* 801D6DF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D6DFC  7C 08 02 A6 */	mflr r0
/* 801D6E00  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D6E04  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D6E08  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801D6E0C  7C 7E 1B 78 */	mr r30, r3
/* 801D6E10  7C 9F 23 79 */	or. r31, r4, r4
/* 801D6E14  41 82 00 6C */	beq lbl_801D6E80
/* 801D6E18  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 801D6E1C  EC 00 08 2A */	fadds f0, f0, f1
/* 801D6E20  D0 1E 00 74 */	stfs f0, 0x74(r30)
/* 801D6E24  C0 5E 00 74 */	lfs f2, 0x74(r30)
/* 801D6E28  A8 9F 00 06 */	lha r4, 6(r31)
/* 801D6E2C  C8 22 A8 08 */	lfd f1, lit_4496(r2)
/* 801D6E30  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 801D6E34  90 01 00 0C */	stw r0, 0xc(r1)
/* 801D6E38  3C 60 43 30 */	lis r3, 0x4330
/* 801D6E3C  90 61 00 08 */	stw r3, 8(r1)
/* 801D6E40  C8 01 00 08 */	lfd f0, 8(r1)
/* 801D6E44  EC 00 08 28 */	fsubs f0, f0, f1
/* 801D6E48  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801D6E4C  4C 41 13 82 */	cror 2, 1, 2
/* 801D6E50  40 82 00 24 */	bne lbl_801D6E74
/* 801D6E54  7C 80 07 34 */	extsh r0, r4
/* 801D6E58  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801D6E5C  90 01 00 0C */	stw r0, 0xc(r1)
/* 801D6E60  90 61 00 08 */	stw r3, 8(r1)
/* 801D6E64  C8 01 00 08 */	lfd f0, 8(r1)
/* 801D6E68  EC 00 08 28 */	fsubs f0, f0, f1
/* 801D6E6C  EC 02 00 28 */	fsubs f0, f2, f0
/* 801D6E70  D0 1E 00 74 */	stfs f0, 0x74(r30)
lbl_801D6E74:
/* 801D6E74  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 801D6E78  D0 1F 00 08 */	stfs f0, 8(r31)
/* 801D6E7C  48 00 00 0C */	b lbl_801D6E88
lbl_801D6E80:
/* 801D6E80  C0 02 A7 D0 */	lfs f0, lit_3970(r2)
/* 801D6E84  D0 1E 00 74 */	stfs f0, 0x74(r30)
lbl_801D6E88:
/* 801D6E88  80 7E 00 08 */	lwz r3, 8(r30)
/* 801D6E8C  3C 80 6F 74 */	lis r4, 0x6F74 /* 0x6F745F30@ha */
/* 801D6E90  38 C4 5F 30 */	addi r6, r4, 0x5F30 /* 0x6F745F30@l */
/* 801D6E94  38 A0 73 70 */	li r5, 0x7370
/* 801D6E98  81 83 00 00 */	lwz r12, 0(r3)
/* 801D6E9C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D6EA0  7D 89 03 A6 */	mtctr r12
/* 801D6EA4  4E 80 04 21 */	bctrl 
/* 801D6EA8  7F E4 FB 78 */	mr r4, r31
/* 801D6EAC  81 83 00 00 */	lwz r12, 0(r3)
/* 801D6EB0  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 801D6EB4  7D 89 03 A6 */	mtctr r12
/* 801D6EB8  4E 80 04 21 */	bctrl 
/* 801D6EBC  80 7E 00 08 */	lwz r3, 8(r30)
/* 801D6EC0  48 12 27 D1 */	bl animation__9J2DScreenFv
/* 801D6EC4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D6EC8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801D6ECC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D6ED0  7C 08 03 A6 */	mtlr r0
/* 801D6ED4  38 21 00 20 */	addi r1, r1, 0x20
/* 801D6ED8  4E 80 00 20 */	blr 

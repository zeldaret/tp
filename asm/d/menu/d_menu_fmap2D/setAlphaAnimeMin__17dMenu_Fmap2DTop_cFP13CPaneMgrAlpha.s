lbl_801D77C4:
/* 801D77C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D77C8  7C 08 02 A6 */	mflr r0
/* 801D77CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D77D0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801D77D4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801D77D8  7C 9E 23 78 */	mr r30, r4
/* 801D77DC  AB E4 00 16 */	lha r31, 0x16(r4)
/* 801D77E0  7F E0 07 35 */	extsh. r0, r31
/* 801D77E4  41 81 00 18 */	bgt lbl_801D77FC
/* 801D77E8  7F C3 F3 78 */	mr r3, r30
/* 801D77EC  48 07 E0 3D */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 801D77F0  C0 02 A7 D0 */	lfs f0, lit_3970(r2)
/* 801D77F4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 801D77F8  41 82 00 48 */	beq lbl_801D7840
lbl_801D77FC:
/* 801D77FC  38 9F FF FF */	addi r4, r31, -1
/* 801D7800  7C 80 07 35 */	extsh. r0, r4
/* 801D7804  40 80 00 08 */	bge lbl_801D780C
/* 801D7808  38 80 00 00 */	li r4, 0
lbl_801D780C:
/* 801D780C  B0 9E 00 16 */	sth r4, 0x16(r30)
/* 801D7810  7F C3 F3 78 */	mr r3, r30
/* 801D7814  7C 80 07 34 */	extsh r0, r4
/* 801D7818  C8 22 A8 08 */	lfd f1, lit_4496(r2)
/* 801D781C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801D7820  90 01 00 0C */	stw r0, 0xc(r1)
/* 801D7824  3C 00 43 30 */	lis r0, 0x4330
/* 801D7828  90 01 00 08 */	stw r0, 8(r1)
/* 801D782C  C8 01 00 08 */	lfd f0, 8(r1)
/* 801D7830  EC 20 08 28 */	fsubs f1, f0, f1
/* 801D7834  C0 02 A8 2C */	lfs f0, lit_6309(r2)
/* 801D7838  EC 21 00 24 */	fdivs f1, f1, f0
/* 801D783C  48 07 DF 95 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_801D7840:
/* 801D7840  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801D7844  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801D7848  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D784C  7C 08 03 A6 */	mtlr r0
/* 801D7850  38 21 00 20 */	addi r1, r1, 0x20
/* 801D7854  4E 80 00 20 */	blr 

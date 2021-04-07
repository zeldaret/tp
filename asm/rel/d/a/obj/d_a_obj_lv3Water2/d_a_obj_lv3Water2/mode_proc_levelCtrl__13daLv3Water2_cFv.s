lbl_80C5ACE4:
/* 80C5ACE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C5ACE8  7C 08 02 A6 */	mflr r0
/* 80C5ACEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C5ACF0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C5ACF4  7C 7F 1B 78 */	mr r31, r3
/* 80C5ACF8  88 63 05 EB */	lbz r3, 0x5eb(r3)
/* 80C5ACFC  28 03 00 00 */	cmplwi r3, 0
/* 80C5AD00  41 82 00 10 */	beq lbl_80C5AD10
/* 80C5AD04  38 03 FF FF */	addi r0, r3, -1
/* 80C5AD08  98 1F 05 EB */	stb r0, 0x5eb(r31)
/* 80C5AD0C  48 00 00 84 */	b lbl_80C5AD90
lbl_80C5AD10:
/* 80C5AD10  88 7F 05 E5 */	lbz r3, 0x5e5(r31)
/* 80C5AD14  88 9F 05 E4 */	lbz r4, 0x5e4(r31)
/* 80C5AD18  88 BF 05 E6 */	lbz r5, 0x5e6(r31)
/* 80C5AD1C  4B 3C 54 45 */	bl fopMsgM_valueIncrease__FiiUc
/* 80C5AD20  88 1F 05 E7 */	lbz r0, 0x5e7(r31)
/* 80C5AD24  28 00 00 00 */	cmplwi r0, 0
/* 80C5AD28  40 82 00 10 */	bne lbl_80C5AD38
/* 80C5AD2C  3C 60 80 C6 */	lis r3, lit_3682@ha /* 0x80C5B370@ha */
/* 80C5AD30  C0 03 B3 70 */	lfs f0, lit_3682@l(r3)  /* 0x80C5B370@l */
/* 80C5AD34  EC 20 08 28 */	fsubs f1, f0, f1
lbl_80C5AD38:
/* 80C5AD38  88 7F 05 E4 */	lbz r3, 0x5e4(r31)
/* 80C5AD3C  38 03 00 01 */	addi r0, r3, 1
/* 80C5AD40  98 1F 05 E4 */	stb r0, 0x5e4(r31)
/* 80C5AD44  88 7F 05 E4 */	lbz r3, 0x5e4(r31)
/* 80C5AD48  88 1F 05 E5 */	lbz r0, 0x5e5(r31)
/* 80C5AD4C  7C 03 00 40 */	cmplw r3, r0
/* 80C5AD50  41 80 00 2C */	blt lbl_80C5AD7C
/* 80C5AD54  88 1F 05 E6 */	lbz r0, 0x5e6(r31)
/* 80C5AD58  3C 60 80 C6 */	lis r3, lit_3899@ha /* 0x80C5B384@ha */
/* 80C5AD5C  C8 23 B3 84 */	lfd f1, lit_3899@l(r3)  /* 0x80C5B384@l */
/* 80C5AD60  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C5AD64  3C 00 43 30 */	lis r0, 0x4330
/* 80C5AD68  90 01 00 08 */	stw r0, 8(r1)
/* 80C5AD6C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C5AD70  EC 20 08 28 */	fsubs f1, f0, f1
/* 80C5AD74  38 00 00 00 */	li r0, 0
/* 80C5AD78  98 1F 05 DC */	stb r0, 0x5dc(r31)
lbl_80C5AD7C:
/* 80C5AD7C  C0 5F 05 EC */	lfs f2, 0x5ec(r31)
/* 80C5AD80  C0 1F 05 E0 */	lfs f0, 0x5e0(r31)
/* 80C5AD84  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C5AD88  EC 02 00 2A */	fadds f0, f2, f0
/* 80C5AD8C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
lbl_80C5AD90:
/* 80C5AD90  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C5AD94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C5AD98  7C 08 03 A6 */	mtlr r0
/* 80C5AD9C  38 21 00 20 */	addi r1, r1, 0x20
/* 80C5ADA0  4E 80 00 20 */	blr 

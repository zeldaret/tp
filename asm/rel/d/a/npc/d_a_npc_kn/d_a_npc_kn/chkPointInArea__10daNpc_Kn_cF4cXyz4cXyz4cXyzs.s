lbl_80A3ACD4:
/* 80A3ACD4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A3ACD8  7C 08 02 A6 */	mflr r0
/* 80A3ACDC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A3ACE0  C0 04 00 00 */	lfs f0, 0(r4)
/* 80A3ACE4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A3ACE8  C0 04 00 04 */	lfs f0, 4(r4)
/* 80A3ACEC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A3ACF0  C0 04 00 08 */	lfs f0, 8(r4)
/* 80A3ACF4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A3ACF8  C0 05 00 00 */	lfs f0, 0(r5)
/* 80A3ACFC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A3AD00  C0 05 00 04 */	lfs f0, 4(r5)
/* 80A3AD04  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A3AD08  C0 05 00 08 */	lfs f0, 8(r5)
/* 80A3AD0C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A3AD10  C0 06 00 00 */	lfs f0, 0(r6)
/* 80A3AD14  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A3AD18  C0 06 00 04 */	lfs f0, 4(r6)
/* 80A3AD1C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A3AD20  C0 06 00 08 */	lfs f0, 8(r6)
/* 80A3AD24  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A3AD28  38 61 00 20 */	addi r3, r1, 0x20
/* 80A3AD2C  38 81 00 14 */	addi r4, r1, 0x14
/* 80A3AD30  38 A1 00 08 */	addi r5, r1, 8
/* 80A3AD34  7C E6 3B 78 */	mr r6, r7
/* 80A3AD38  38 E0 00 01 */	li r7, 1
/* 80A3AD3C  4B 71 16 49 */	bl daNpcT_chkPointInArea__F4cXyz4cXyz4cXyzsi
/* 80A3AD40  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A3AD44  7C 08 03 A6 */	mtlr r0
/* 80A3AD48  38 21 00 30 */	addi r1, r1, 0x30
/* 80A3AD4C  4E 80 00 20 */	blr 

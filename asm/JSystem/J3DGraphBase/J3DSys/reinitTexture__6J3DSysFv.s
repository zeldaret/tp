lbl_80310998:
/* 80310998  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8031099C  7C 08 02 A6 */	mflr r0
/* 803109A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 803109A4  38 61 00 08 */	addi r3, r1, 8
/* 803109A8  3C 80 80 3D */	lis r4, NullTexData@ha
/* 803109AC  38 84 D8 A0 */	addi r4, r4, NullTexData@l
/* 803109B0  38 A0 00 04 */	li r5, 4
/* 803109B4  38 C0 00 04 */	li r6, 4
/* 803109B8  38 E0 00 03 */	li r7, 3
/* 803109BC  39 00 00 00 */	li r8, 0
/* 803109C0  39 20 00 00 */	li r9, 0
/* 803109C4  39 40 00 00 */	li r10, 0
/* 803109C8  48 04 D4 79 */	bl GXInitTexObj
/* 803109CC  38 61 00 08 */	addi r3, r1, 8
/* 803109D0  38 80 00 00 */	li r4, 0
/* 803109D4  48 04 DA 41 */	bl GXLoadTexObj
/* 803109D8  38 61 00 08 */	addi r3, r1, 8
/* 803109DC  38 80 00 01 */	li r4, 1
/* 803109E0  48 04 DA 35 */	bl GXLoadTexObj
/* 803109E4  38 61 00 08 */	addi r3, r1, 8
/* 803109E8  38 80 00 02 */	li r4, 2
/* 803109EC  48 04 DA 29 */	bl GXLoadTexObj
/* 803109F0  38 61 00 08 */	addi r3, r1, 8
/* 803109F4  38 80 00 03 */	li r4, 3
/* 803109F8  48 04 DA 1D */	bl GXLoadTexObj
/* 803109FC  38 61 00 08 */	addi r3, r1, 8
/* 80310A00  38 80 00 04 */	li r4, 4
/* 80310A04  48 04 DA 11 */	bl GXLoadTexObj
/* 80310A08  38 61 00 08 */	addi r3, r1, 8
/* 80310A0C  38 80 00 05 */	li r4, 5
/* 80310A10  48 04 DA 05 */	bl GXLoadTexObj
/* 80310A14  38 61 00 08 */	addi r3, r1, 8
/* 80310A18  38 80 00 06 */	li r4, 6
/* 80310A1C  48 04 D9 F9 */	bl GXLoadTexObj
/* 80310A20  38 61 00 08 */	addi r3, r1, 8
/* 80310A24  38 80 00 07 */	li r4, 7
/* 80310A28  48 04 D9 ED */	bl GXLoadTexObj
/* 80310A2C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80310A30  7C 08 03 A6 */	mtlr r0
/* 80310A34  38 21 00 30 */	addi r1, r1, 0x30
/* 80310A38  4E 80 00 20 */	blr 

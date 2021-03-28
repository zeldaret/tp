lbl_807DBEE8:
/* 807DBEE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807DBEEC  7C 08 02 A6 */	mflr r0
/* 807DBEF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 807DBEF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807DBEF8  7C 7F 1B 78 */	mr r31, r3
/* 807DBEFC  4B 83 CD E4 */	b fopAc_IsActor__FPv
/* 807DBF00  2C 03 00 00 */	cmpwi r3, 0
/* 807DBF04  41 82 00 34 */	beq lbl_807DBF38
/* 807DBF08  A8 1F 00 08 */	lha r0, 8(r31)
/* 807DBF0C  2C 00 00 EF */	cmpwi r0, 0xef
/* 807DBF10  40 82 00 28 */	bne lbl_807DBF38
/* 807DBF14  88 1F 07 9D */	lbz r0, 0x79d(r31)
/* 807DBF18  7C 00 07 75 */	extsb. r0, r0
/* 807DBF1C  40 82 00 1C */	bne lbl_807DBF38
/* 807DBF20  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 807DBF24  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 807DBF28  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 807DBF2C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 807DBF30  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 807DBF34  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
lbl_807DBF38:
/* 807DBF38  38 60 00 00 */	li r3, 0
/* 807DBF3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807DBF40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807DBF44  7C 08 03 A6 */	mtlr r0
/* 807DBF48  38 21 00 10 */	addi r1, r1, 0x10
/* 807DBF4C  4E 80 00 20 */	blr 

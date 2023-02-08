lbl_805CFA08:
/* 805CFA08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CFA0C  7C 08 02 A6 */	mflr r0
/* 805CFA10  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CFA14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805CFA18  7C 7F 1B 78 */	mr r31, r3
/* 805CFA1C  7C 83 23 78 */	mr r3, r4
/* 805CFA20  38 9F 00 68 */	addi r4, r31, 0x68
/* 805CFA24  38 BF 00 98 */	addi r5, r31, 0x98
/* 805CFA28  38 DF 00 A4 */	addi r6, r31, 0xa4
/* 805CFA2C  4B CB 0D DD */	bl func_80280808
/* 805CFA30  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 805CFA34  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 805CFA38  D0 1F 00 B0 */	stfs f0, 0xb0(r31)
/* 805CFA3C  D0 3F 00 B4 */	stfs f1, 0xb4(r31)
/* 805CFA40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805CFA44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CFA48  7C 08 03 A6 */	mtlr r0
/* 805CFA4C  38 21 00 10 */	addi r1, r1, 0x10
/* 805CFA50  4E 80 00 20 */	blr 

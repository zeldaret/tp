lbl_80152D04:
/* 80152D04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80152D08  7C 08 02 A6 */	mflr r0
/* 80152D0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80152D10  7C 80 23 78 */	mr r0, r4
/* 80152D14  7C C7 33 78 */	mr r7, r6
/* 80152D18  38 85 00 58 */	addi r4, r5, 0x58
/* 80152D1C  7C 05 03 78 */	mr r5, r0
/* 80152D20  38 C0 00 01 */	li r6, 1
/* 80152D24  39 00 00 00 */	li r8, 0
/* 80152D28  39 20 FF FF */	li r9, -1
/* 80152D2C  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 80152D30  4B EB A9 0D */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80152D34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80152D38  7C 08 03 A6 */	mtlr r0
/* 80152D3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80152D40  4E 80 00 20 */	blr 

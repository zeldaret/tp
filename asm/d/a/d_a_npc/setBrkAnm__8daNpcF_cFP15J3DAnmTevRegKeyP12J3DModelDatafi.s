lbl_80152D44:
/* 80152D44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80152D48  7C 08 02 A6 */	mflr r0
/* 80152D4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80152D50  7C 80 23 78 */	mr r0, r4
/* 80152D54  7C C7 33 78 */	mr r7, r6
/* 80152D58  38 85 00 58 */	addi r4, r5, 0x58
/* 80152D5C  7C 05 03 78 */	mr r5, r0
/* 80152D60  38 C0 00 01 */	li r6, 1
/* 80152D64  39 00 00 00 */	li r8, 0
/* 80152D68  39 20 FF FF */	li r9, -1
/* 80152D6C  38 63 05 B8 */	addi r3, r3, 0x5b8
/* 80152D70  4B EB A9 9D */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80152D74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80152D78  7C 08 03 A6 */	mtlr r0
/* 80152D7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80152D80  4E 80 00 20 */	blr 

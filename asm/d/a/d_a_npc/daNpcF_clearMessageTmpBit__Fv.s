lbl_80155AE8:
/* 80155AE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80155AEC  7C 08 02 A6 */	mflr r0
/* 80155AF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80155AF4  38 60 00 0B */	li r3, 0xb
/* 80155AF8  4B FF FC 3D */	bl daNpcF_offTmpBit__FUl
/* 80155AFC  38 60 00 0C */	li r3, 0xc
/* 80155B00  4B FF FC 35 */	bl daNpcF_offTmpBit__FUl
/* 80155B04  38 60 00 0D */	li r3, 0xd
/* 80155B08  4B FF FC 2D */	bl daNpcF_offTmpBit__FUl
/* 80155B0C  38 60 00 0E */	li r3, 0xe
/* 80155B10  4B FF FC 25 */	bl daNpcF_offTmpBit__FUl
/* 80155B14  38 60 00 0F */	li r3, 0xf
/* 80155B18  4B FF FC 1D */	bl daNpcF_offTmpBit__FUl
/* 80155B1C  38 60 00 33 */	li r3, 0x33
/* 80155B20  4B FF FC 15 */	bl daNpcF_offTmpBit__FUl
/* 80155B24  38 60 00 34 */	li r3, 0x34
/* 80155B28  4B FF FC 0D */	bl daNpcF_offTmpBit__FUl
/* 80155B2C  38 60 00 35 */	li r3, 0x35
/* 80155B30  4B FF FC 05 */	bl daNpcF_offTmpBit__FUl
/* 80155B34  38 60 00 36 */	li r3, 0x36
/* 80155B38  4B FF FB FD */	bl daNpcF_offTmpBit__FUl
/* 80155B3C  38 60 00 37 */	li r3, 0x37
/* 80155B40  4B FF FB F5 */	bl daNpcF_offTmpBit__FUl
/* 80155B44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80155B48  7C 08 03 A6 */	mtlr r0
/* 80155B4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80155B50  4E 80 00 20 */	blr 

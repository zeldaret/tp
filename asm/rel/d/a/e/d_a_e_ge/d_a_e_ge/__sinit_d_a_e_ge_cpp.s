lbl_806CCAA0:
/* 806CCAA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806CCAA4  7C 08 02 A6 */	mflr r0
/* 806CCAA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806CCAAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806CCAB0  3C 60 80 6D */	lis r3, cNullVec__6Z2Calc@ha
/* 806CCAB4  3B E3 D1 18 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 806CCAB8  3C 60 80 6D */	lis r3, l_HIO@ha
/* 806CCABC  38 63 D3 68 */	addi r3, r3, l_HIO@l
/* 806CCAC0  4B FF AF 8D */	bl __ct__12daE_GE_HIO_cFv
/* 806CCAC4  3C 80 80 6D */	lis r4, __dt__12daE_GE_HIO_cFv@ha
/* 806CCAC8  38 84 CA 58 */	addi r4, r4, __dt__12daE_GE_HIO_cFv@l
/* 806CCACC  3C A0 80 6D */	lis r5, lit_3920@ha
/* 806CCAD0  38 A5 D3 5C */	addi r5, r5, lit_3920@l
/* 806CCAD4  4B FF AF 05 */	bl __register_global_object
/* 806CCAD8  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 806CCADC  80 1F 00 68 */	lwz r0, 0x68(r31)
/* 806CCAE0  90 7F 00 D0 */	stw r3, 0xd0(r31)
/* 806CCAE4  90 1F 00 D4 */	stw r0, 0xd4(r31)
/* 806CCAE8  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 806CCAEC  90 1F 00 D8 */	stw r0, 0xd8(r31)
/* 806CCAF0  38 9F 00 D0 */	addi r4, r31, 0xd0
/* 806CCAF4  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 806CCAF8  80 1F 00 74 */	lwz r0, 0x74(r31)
/* 806CCAFC  90 64 00 0C */	stw r3, 0xc(r4)
/* 806CCB00  90 04 00 10 */	stw r0, 0x10(r4)
/* 806CCB04  80 1F 00 78 */	lwz r0, 0x78(r31)
/* 806CCB08  90 04 00 14 */	stw r0, 0x14(r4)
/* 806CCB0C  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 806CCB10  80 1F 00 80 */	lwz r0, 0x80(r31)
/* 806CCB14  90 64 00 18 */	stw r3, 0x18(r4)
/* 806CCB18  90 04 00 1C */	stw r0, 0x1c(r4)
/* 806CCB1C  80 1F 00 84 */	lwz r0, 0x84(r31)
/* 806CCB20  90 04 00 20 */	stw r0, 0x20(r4)
/* 806CCB24  80 7F 00 88 */	lwz r3, 0x88(r31)
/* 806CCB28  80 1F 00 8C */	lwz r0, 0x8c(r31)
/* 806CCB2C  90 64 00 24 */	stw r3, 0x24(r4)
/* 806CCB30  90 04 00 28 */	stw r0, 0x28(r4)
/* 806CCB34  80 1F 00 90 */	lwz r0, 0x90(r31)
/* 806CCB38  90 04 00 2C */	stw r0, 0x2c(r4)
/* 806CCB3C  80 7F 00 94 */	lwz r3, 0x94(r31)
/* 806CCB40  80 1F 00 98 */	lwz r0, 0x98(r31)
/* 806CCB44  90 64 00 30 */	stw r3, 0x30(r4)
/* 806CCB48  90 04 00 34 */	stw r0, 0x34(r4)
/* 806CCB4C  80 1F 00 9C */	lwz r0, 0x9c(r31)
/* 806CCB50  90 04 00 38 */	stw r0, 0x38(r4)
/* 806CCB54  80 7F 00 A0 */	lwz r3, 0xa0(r31)
/* 806CCB58  80 1F 00 A4 */	lwz r0, 0xa4(r31)
/* 806CCB5C  90 64 00 3C */	stw r3, 0x3c(r4)
/* 806CCB60  90 04 00 40 */	stw r0, 0x40(r4)
/* 806CCB64  80 1F 00 A8 */	lwz r0, 0xa8(r31)
/* 806CCB68  90 04 00 44 */	stw r0, 0x44(r4)
/* 806CCB6C  80 7F 00 AC */	lwz r3, 0xac(r31)
/* 806CCB70  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 806CCB74  90 64 00 48 */	stw r3, 0x48(r4)
/* 806CCB78  90 04 00 4C */	stw r0, 0x4c(r4)
/* 806CCB7C  80 1F 00 B4 */	lwz r0, 0xb4(r31)
/* 806CCB80  90 04 00 50 */	stw r0, 0x50(r4)
/* 806CCB84  80 7F 00 B8 */	lwz r3, 0xb8(r31)
/* 806CCB88  80 1F 00 BC */	lwz r0, 0xbc(r31)
/* 806CCB8C  90 64 00 54 */	stw r3, 0x54(r4)
/* 806CCB90  90 04 00 58 */	stw r0, 0x58(r4)
/* 806CCB94  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 806CCB98  90 04 00 5C */	stw r0, 0x5c(r4)
/* 806CCB9C  80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 806CCBA0  80 1F 00 C8 */	lwz r0, 0xc8(r31)
/* 806CCBA4  90 64 00 60 */	stw r3, 0x60(r4)
/* 806CCBA8  90 04 00 64 */	stw r0, 0x64(r4)
/* 806CCBAC  80 1F 00 CC */	lwz r0, 0xcc(r31)
/* 806CCBB0  90 04 00 68 */	stw r0, 0x68(r4)
/* 806CCBB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806CCBB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806CCBBC  7C 08 03 A6 */	mtlr r0
/* 806CCBC0  38 21 00 10 */	addi r1, r1, 0x10
/* 806CCBC4  4E 80 00 20 */	blr 

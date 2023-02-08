lbl_80C5B1A8:
/* 80C5B1A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5B1AC  7C 08 02 A6 */	mflr r0
/* 80C5B1B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5B1B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5B1B8  3C 60 80 C6 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80C5B3A4@ha */
/* 80C5B1BC  3B E3 B3 A4 */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x80C5B3A4@l */
/* 80C5B1C0  3C 60 80 C6 */	lis r3, l_HIO@ha /* 0x80C5B4E4@ha */
/* 80C5B1C4  38 63 B4 E4 */	addi r3, r3, l_HIO@l /* 0x80C5B4E4@l */
/* 80C5B1C8  4B FF F2 45 */	bl __ct__17daLv3Water2_HIO_cFv
/* 80C5B1CC  3C 80 80 C6 */	lis r4, __dt__17daLv3Water2_HIO_cFv@ha /* 0x80C5B14C@ha */
/* 80C5B1D0  38 84 B1 4C */	addi r4, r4, __dt__17daLv3Water2_HIO_cFv@l /* 0x80C5B14C@l */
/* 80C5B1D4  3C A0 80 C6 */	lis r5, lit_3637@ha /* 0x80C5B4D8@ha */
/* 80C5B1D8  38 A5 B4 D8 */	addi r5, r5, lit_3637@l /* 0x80C5B4D8@l */
/* 80C5B1DC  4B FF F1 BD */	bl __register_global_object
/* 80C5B1E0  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 80C5B1E4  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 80C5B1E8  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80C5B1EC  90 1F 00 40 */	stw r0, 0x40(r31)
/* 80C5B1F0  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 80C5B1F4  90 1F 00 44 */	stw r0, 0x44(r31)
/* 80C5B1F8  38 9F 00 3C */	addi r4, r31, 0x3c
/* 80C5B1FC  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 80C5B200  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 80C5B204  90 64 00 0C */	stw r3, 0xc(r4)
/* 80C5B208  90 04 00 10 */	stw r0, 0x10(r4)
/* 80C5B20C  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 80C5B210  90 04 00 14 */	stw r0, 0x14(r4)
/* 80C5B214  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5B218  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5B21C  7C 08 03 A6 */	mtlr r0
/* 80C5B220  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5B224  4E 80 00 20 */	blr 

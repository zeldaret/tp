lbl_80032EB0:
/* 80032EB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80032EB4  7C 08 02 A6 */	mflr r0
/* 80032EB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80032EBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80032EC0  7C 7F 1B 78 */	mr r31, r3
/* 80032EC4  38 7F 00 0E */	addi r3, r31, 0xe
/* 80032EC8  3C 80 80 38 */	lis r4, d_save_d_save__stringBase0@ha /* 0x80379234@ha */
/* 80032ECC  38 84 92 34 */	addi r4, r4, d_save_d_save__stringBase0@l /* 0x80379234@l */
/* 80032ED0  48 33 5C 5D */	bl strcpy
/* 80032ED4  C0 02 83 5C */	lfs f0, lit_3813(r2)
/* 80032ED8  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80032EDC  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80032EE0  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80032EE4  38 60 00 00 */	li r3, 0
/* 80032EE8  B0 7F 00 0C */	sth r3, 0xc(r31)
/* 80032EEC  98 7F 00 17 */	stb r3, 0x17(r31)
/* 80032EF0  98 7F 00 16 */	stb r3, 0x16(r31)
/* 80032EF4  38 00 FF FF */	li r0, -1
/* 80032EF8  98 1F 00 18 */	stb r0, 0x18(r31)
/* 80032EFC  38 80 00 00 */	li r4, 0
/* 80032F00  38 00 00 03 */	li r0, 3
/* 80032F04  7C 09 03 A6 */	mtctr r0
lbl_80032F08:
/* 80032F08  38 04 00 19 */	addi r0, r4, 0x19
/* 80032F0C  7C 7F 01 AE */	stbx r3, r31, r0
/* 80032F10  38 84 00 01 */	addi r4, r4, 1
/* 80032F14  42 00 FF F4 */	bdnz lbl_80032F08
/* 80032F18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80032F1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80032F20  7C 08 03 A6 */	mtlr r0
/* 80032F24  38 21 00 10 */	addi r1, r1, 0x10
/* 80032F28  4E 80 00 20 */	blr 

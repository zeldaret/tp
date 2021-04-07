lbl_80032D60:
/* 80032D60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80032D64  7C 08 02 A6 */	mflr r0
/* 80032D68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80032D6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80032D70  7C 7F 1B 78 */	mr r31, r3
/* 80032D74  38 7F 00 0E */	addi r3, r31, 0xe
/* 80032D78  3C 80 80 38 */	lis r4, d_save_d_save__stringBase0@ha /* 0x80379234@ha */
/* 80032D7C  38 84 92 34 */	addi r4, r4, d_save_d_save__stringBase0@l /* 0x80379234@l */
/* 80032D80  48 33 5D AD */	bl strcpy
/* 80032D84  C0 02 83 5C */	lfs f0, lit_3813(r2)
/* 80032D88  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80032D8C  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80032D90  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80032D94  38 60 00 00 */	li r3, 0
/* 80032D98  B0 7F 00 0C */	sth r3, 0xc(r31)
/* 80032D9C  98 7F 00 16 */	stb r3, 0x16(r31)
/* 80032DA0  38 00 00 01 */	li r0, 1
/* 80032DA4  98 1F 00 17 */	stb r0, 0x17(r31)
/* 80032DA8  98 7F 00 18 */	stb r3, 0x18(r31)
/* 80032DAC  98 7F 00 19 */	stb r3, 0x19(r31)
/* 80032DB0  38 80 00 00 */	li r4, 0
/* 80032DB4  38 00 00 02 */	li r0, 2
/* 80032DB8  7C 09 03 A6 */	mtctr r0
lbl_80032DBC:
/* 80032DBC  38 04 00 1A */	addi r0, r4, 0x1a
/* 80032DC0  7C 7F 01 AE */	stbx r3, r31, r0
/* 80032DC4  38 84 00 01 */	addi r4, r4, 1
/* 80032DC8  42 00 FF F4 */	bdnz lbl_80032DBC
/* 80032DCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80032DD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80032DD4  7C 08 03 A6 */	mtlr r0
/* 80032DD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80032DDC  4E 80 00 20 */	blr 

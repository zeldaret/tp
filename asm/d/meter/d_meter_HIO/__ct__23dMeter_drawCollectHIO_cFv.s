lbl_801FE348:
/* 801FE348  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FE34C  7C 08 02 A6 */	mflr r0
/* 801FE350  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FE354  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FE358  7C 7F 1B 78 */	mr r31, r3
/* 801FE35C  3C 60 80 3C */	lis r3, __vt__23dMeter_drawCollectHIO_c@ha /* 0x803BF190@ha */
/* 801FE360  38 03 F1 90 */	addi r0, r3, __vt__23dMeter_drawCollectHIO_c@l /* 0x803BF190@l */
/* 801FE364  90 1F 00 00 */	stw r0, 0(r31)
/* 801FE368  38 7F 00 78 */	addi r3, r31, 0x78
/* 801FE36C  3C 80 80 19 */	lis r4, __ct__Q28JUtility6TColorFv@ha /* 0x80193960@ha */
/* 801FE370  38 84 39 60 */	addi r4, r4, __ct__Q28JUtility6TColorFv@l /* 0x80193960@l */
/* 801FE374  38 A0 00 00 */	li r5, 0
/* 801FE378  38 C0 00 04 */	li r6, 4
/* 801FE37C  38 E0 00 02 */	li r7, 2
/* 801FE380  48 16 39 E1 */	bl __construct_array
/* 801FE384  38 7F 00 80 */	addi r3, r31, 0x80
/* 801FE388  3C 80 80 19 */	lis r4, __ct__Q28JUtility6TColorFv@ha /* 0x80193960@ha */
/* 801FE38C  38 84 39 60 */	addi r4, r4, __ct__Q28JUtility6TColorFv@l /* 0x80193960@l */
/* 801FE390  38 A0 00 00 */	li r5, 0
/* 801FE394  38 C0 00 04 */	li r6, 4
/* 801FE398  38 E0 00 02 */	li r7, 2
/* 801FE39C  48 16 39 C5 */	bl __construct_array
/* 801FE3A0  C0 82 AA E0 */	lfs f4, lit_3787(r2)
/* 801FE3A4  D0 9F 00 08 */	stfs f4, 8(r31)
/* 801FE3A8  C0 02 AA E4 */	lfs f0, lit_3788(r2)
/* 801FE3AC  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 801FE3B0  D0 9F 00 10 */	stfs f4, 0x10(r31)
/* 801FE3B4  C0 62 AA E8 */	lfs f3, lit_3789(r2)
/* 801FE3B8  D0 7F 00 14 */	stfs f3, 0x14(r31)
/* 801FE3BC  C0 02 AA EC */	lfs f0, lit_3790(r2)
/* 801FE3C0  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 801FE3C4  C0 42 AA F0 */	lfs f2, lit_3791(r2)
/* 801FE3C8  D0 5F 00 1C */	stfs f2, 0x1c(r31)
/* 801FE3CC  D0 5F 00 20 */	stfs f2, 0x20(r31)
/* 801FE3D0  C0 02 AA F4 */	lfs f0, lit_3792(r2)
/* 801FE3D4  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 801FE3D8  C0 22 AA F8 */	lfs f1, lit_3793(r2)
/* 801FE3DC  D0 3F 00 28 */	stfs f1, 0x28(r31)
/* 801FE3E0  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 801FE3E4  D0 3F 00 30 */	stfs f1, 0x30(r31)
/* 801FE3E8  38 A0 00 00 */	li r5, 0
/* 801FE3EC  B0 BF 00 94 */	sth r5, 0x94(r31)
/* 801FE3F0  B0 BF 00 96 */	sth r5, 0x96(r31)
/* 801FE3F4  B0 BF 00 98 */	sth r5, 0x98(r31)
/* 801FE3F8  98 BF 00 9A */	stb r5, 0x9a(r31)
/* 801FE3FC  D0 3F 00 34 */	stfs f1, 0x34(r31)
/* 801FE400  D0 9F 00 38 */	stfs f4, 0x38(r31)
/* 801FE404  C0 02 AA FC */	lfs f0, lit_3794(r2)
/* 801FE408  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 801FE40C  C0 02 AB 00 */	lfs f0, lit_3795(r2)
/* 801FE410  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 801FE414  C0 02 AB 04 */	lfs f0, lit_3796(r2)
/* 801FE418  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 801FE41C  D0 3F 00 88 */	stfs f1, 0x88(r31)
/* 801FE420  D0 3F 00 8C */	stfs f1, 0x8c(r31)
/* 801FE424  D0 9F 00 90 */	stfs f4, 0x90(r31)
/* 801FE428  98 BF 00 9C */	stb r5, 0x9c(r31)
/* 801FE42C  C0 02 AB 08 */	lfs f0, lit_3797(r2)
/* 801FE430  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 801FE434  C0 22 AB 0C */	lfs f1, lit_3798(r2)
/* 801FE438  D0 3F 00 4C */	stfs f1, 0x4c(r31)
/* 801FE43C  D0 5F 00 50 */	stfs f2, 0x50(r31)
/* 801FE440  D0 1F 00 54 */	stfs f0, 0x54(r31)
/* 801FE444  C0 02 AB 10 */	lfs f0, lit_3799(r2)
/* 801FE448  D0 1F 00 58 */	stfs f0, 0x58(r31)
/* 801FE44C  D0 5F 00 5C */	stfs f2, 0x5c(r31)
/* 801FE450  C0 02 AB 14 */	lfs f0, lit_3800(r2)
/* 801FE454  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 801FE458  D0 3F 00 64 */	stfs f1, 0x64(r31)
/* 801FE45C  D0 7F 00 68 */	stfs f3, 0x68(r31)
/* 801FE460  C0 02 AB 18 */	lfs f0, lit_3801(r2)
/* 801FE464  D0 1F 00 6C */	stfs f0, 0x6c(r31)
/* 801FE468  C0 02 AB 1C */	lfs f0, lit_3802(r2)
/* 801FE46C  D0 1F 00 70 */	stfs f0, 0x70(r31)
/* 801FE470  D0 7F 00 74 */	stfs f3, 0x74(r31)
/* 801FE474  98 BF 00 9B */	stb r5, 0x9b(r31)
/* 801FE478  98 BF 00 78 */	stb r5, 0x78(r31)
/* 801FE47C  98 BF 00 79 */	stb r5, 0x79(r31)
/* 801FE480  98 BF 00 7A */	stb r5, 0x7a(r31)
/* 801FE484  98 BF 00 7B */	stb r5, 0x7b(r31)
/* 801FE488  38 00 00 FA */	li r0, 0xfa
/* 801FE48C  98 1F 00 80 */	stb r0, 0x80(r31)
/* 801FE490  98 1F 00 81 */	stb r0, 0x81(r31)
/* 801FE494  38 00 00 D2 */	li r0, 0xd2
/* 801FE498  98 1F 00 82 */	stb r0, 0x82(r31)
/* 801FE49C  38 00 00 DC */	li r0, 0xdc
/* 801FE4A0  98 1F 00 83 */	stb r0, 0x83(r31)
/* 801FE4A4  38 80 00 C8 */	li r4, 0xc8
/* 801FE4A8  98 9F 00 7C */	stb r4, 0x7c(r31)
/* 801FE4AC  38 60 00 BE */	li r3, 0xbe
/* 801FE4B0  98 7F 00 7D */	stb r3, 0x7d(r31)
/* 801FE4B4  38 00 00 64 */	li r0, 0x64
/* 801FE4B8  98 1F 00 7E */	stb r0, 0x7e(r31)
/* 801FE4BC  98 BF 00 7F */	stb r5, 0x7f(r31)
/* 801FE4C0  98 9F 00 84 */	stb r4, 0x84(r31)
/* 801FE4C4  98 7F 00 85 */	stb r3, 0x85(r31)
/* 801FE4C8  98 1F 00 86 */	stb r0, 0x86(r31)
/* 801FE4CC  38 00 00 AF */	li r0, 0xaf
/* 801FE4D0  98 1F 00 87 */	stb r0, 0x87(r31)
/* 801FE4D4  7F E3 FB 78 */	mr r3, r31
/* 801FE4D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FE4DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FE4E0  7C 08 03 A6 */	mtlr r0
/* 801FE4E4  38 21 00 10 */	addi r1, r1, 0x10
/* 801FE4E8  4E 80 00 20 */	blr 

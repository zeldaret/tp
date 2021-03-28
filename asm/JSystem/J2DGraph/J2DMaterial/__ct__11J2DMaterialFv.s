lbl_802EA1AC:
/* 802EA1AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EA1B0  7C 08 02 A6 */	mflr r0
/* 802EA1B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EA1B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EA1BC  7C 7F 1B 78 */	mr r31, r3
/* 802EA1C0  3C 60 80 3D */	lis r3, __vt__11J2DMaterial@ha
/* 802EA1C4  38 03 CA 78 */	addi r0, r3, __vt__11J2DMaterial@l
/* 802EA1C8  90 1F 00 00 */	stw r0, 0(r31)
/* 802EA1CC  3C 60 80 3D */	lis r3, __vt__13J2DColorBlock@ha
/* 802EA1D0  38 03 CA 84 */	addi r0, r3, __vt__13J2DColorBlock@l
/* 802EA1D4  90 1F 00 24 */	stw r0, 0x24(r31)
/* 802EA1D8  38 7F 00 10 */	addi r3, r31, 0x10
/* 802EA1DC  3C 80 80 19 */	lis r4, __ct__Q28JUtility6TColorFv@ha
/* 802EA1E0  38 84 39 60 */	addi r4, r4, __ct__Q28JUtility6TColorFv@l
/* 802EA1E4  38 A0 00 00 */	li r5, 0
/* 802EA1E8  38 C0 00 04 */	li r6, 4
/* 802EA1EC  38 E0 00 02 */	li r7, 2
/* 802EA1F0  48 07 7B 71 */	bl __construct_array
/* 802EA1F4  38 7F 00 1A */	addi r3, r31, 0x1a
/* 802EA1F8  3C 80 80 2F */	lis r4, __ct__12J2DColorChanFv@ha
/* 802EA1FC  38 84 B2 80 */	addi r4, r4, __ct__12J2DColorChanFv@l
/* 802EA200  38 A0 00 00 */	li r5, 0
/* 802EA204  38 C0 00 02 */	li r6, 2
/* 802EA208  38 E0 00 04 */	li r7, 4
/* 802EA20C  48 07 7B 55 */	bl __construct_array
/* 802EA210  38 7F 00 10 */	addi r3, r31, 0x10
/* 802EA214  48 00 11 81 */	bl initialize__13J2DColorBlockFv
/* 802EA218  3C 60 80 3D */	lis r3, __vt__14J2DTexGenBlock@ha
/* 802EA21C  38 03 CF 30 */	addi r0, r3, __vt__14J2DTexGenBlock@l
/* 802EA220  90 1F 00 6C */	stw r0, 0x6c(r31)
/* 802EA224  38 7F 00 2C */	addi r3, r31, 0x2c
/* 802EA228  3C 80 80 2F */	lis r4, __ct__11J2DTexCoordFv@ha
/* 802EA22C  38 84 B2 60 */	addi r4, r4, __ct__11J2DTexCoordFv@l
/* 802EA230  38 A0 00 00 */	li r5, 0
/* 802EA234  38 C0 00 04 */	li r6, 4
/* 802EA238  38 E0 00 08 */	li r7, 8
/* 802EA23C  48 07 7B 25 */	bl __construct_array
/* 802EA240  38 7F 00 28 */	addi r3, r31, 0x28
/* 802EA244  48 00 12 CD */	bl initialize__14J2DTexGenBlockFv
/* 802EA248  A0 02 C7 AE */	lhz r0, struct_804561AC+0x2(r2)
/* 802EA24C  B0 1F 00 78 */	sth r0, 0x78(r31)
/* 802EA250  38 00 00 00 */	li r0, 0
/* 802EA254  98 1F 00 7A */	stb r0, 0x7a(r31)
/* 802EA258  98 1F 00 7B */	stb r0, 0x7b(r31)
/* 802EA25C  88 02 C7 A0 */	lbz r0, j2dDefaultBlendInfo(r2)
/* 802EA260  98 1F 00 7C */	stb r0, 0x7c(r31)
/* 802EA264  38 62 C7 A0 */	la r3, j2dDefaultBlendInfo(r2) /* 804561A0-_SDA2_BASE_ */
/* 802EA268  88 03 00 01 */	lbz r0, 1(r3)
/* 802EA26C  98 1F 00 7D */	stb r0, 0x7d(r31)
/* 802EA270  88 03 00 02 */	lbz r0, 2(r3)
/* 802EA274  98 1F 00 7E */	stb r0, 0x7e(r31)
/* 802EA278  88 03 00 03 */	lbz r0, 3(r3)
/* 802EA27C  98 1F 00 7F */	stb r0, 0x7f(r31)
/* 802EA280  38 7F 00 78 */	addi r3, r31, 0x78
/* 802EA284  48 00 75 79 */	bl initialize__10J2DPEBlockFv
/* 802EA288  38 80 00 00 */	li r4, 0
/* 802EA28C  90 9F 00 04 */	stw r4, 4(r31)
/* 802EA290  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 802EA294  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 802EA298  B0 1F 00 0C */	sth r0, 0xc(r31)
/* 802EA29C  90 9F 00 70 */	stw r4, 0x70(r31)
/* 802EA2A0  90 9F 00 74 */	stw r4, 0x74(r31)
/* 802EA2A4  90 9F 00 84 */	stw r4, 0x84(r31)
/* 802EA2A8  38 00 00 01 */	li r0, 1
/* 802EA2AC  90 1F 00 08 */	stw r0, 8(r31)
/* 802EA2B0  98 1F 00 0E */	stb r0, 0xe(r31)
/* 802EA2B4  7F E3 FB 78 */	mr r3, r31
/* 802EA2B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EA2BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EA2C0  7C 08 03 A6 */	mtlr r0
/* 802EA2C4  38 21 00 10 */	addi r1, r1, 0x10
/* 802EA2C8  4E 80 00 20 */	blr 

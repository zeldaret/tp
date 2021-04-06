lbl_8050E948:
/* 8050E948  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050E94C  7C 08 02 A6 */	mflr r0
/* 8050E950  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050E954  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050E958  7C 7F 1B 78 */	mr r31, r3
/* 8050E95C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8050E960  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8050E964  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8050E968  38 00 00 15 */	li r0, 0x15
/* 8050E96C  B0 1F 09 72 */	sth r0, 0x972(r31)
/* 8050E970  38 00 00 00 */	li r0, 0
/* 8050E974  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 8050E978  A8 63 04 E6 */	lha r3, 0x4e6(r3)
/* 8050E97C  3C 63 00 01 */	addis r3, r3, 1
/* 8050E980  38 03 80 00 */	addi r0, r3, -32768
/* 8050E984  B0 1F 0A 0E */	sth r0, 0xa0e(r31)
/* 8050E988  3C 60 80 52 */	lis r3, l_HIO@ha /* 0x80519194@ha */
/* 8050E98C  38 63 91 94 */	addi r3, r3, l_HIO@l /* 0x80519194@l */
/* 8050E990  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 8050E994  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8050E998  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 8050E99C  FC 00 00 50 */	fneg f0, f0
/* 8050E9A0  D0 1F 09 EC */	stfs f0, 0x9ec(r31)
/* 8050E9A4  38 7F 05 D4 */	addi r3, r31, 0x5d4
/* 8050E9A8  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040005@ha */
/* 8050E9AC  38 84 00 05 */	addi r4, r4, 0x0005 /* 0x00040005@l */
/* 8050E9B0  38 A0 00 1F */	li r5, 0x1f
/* 8050E9B4  81 9F 05 D4 */	lwz r12, 0x5d4(r31)
/* 8050E9B8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8050E9BC  7D 89 03 A6 */	mtctr r12
/* 8050E9C0  4E 80 04 21 */	bctrl 
/* 8050E9C4  38 00 00 01 */	li r0, 1
/* 8050E9C8  98 1F 09 F8 */	stb r0, 0x9f8(r31)
/* 8050E9CC  38 00 03 E8 */	li r0, 0x3e8
/* 8050E9D0  B0 1F 09 98 */	sth r0, 0x998(r31)
/* 8050E9D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8050E9D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050E9DC  7C 08 03 A6 */	mtlr r0
/* 8050E9E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8050E9E4  4E 80 00 20 */	blr 

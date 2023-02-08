lbl_80C78A8C:
/* 80C78A8C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C78A90  7C 08 02 A6 */	mflr r0
/* 80C78A94  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C78A98  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80C78A9C  7C 7F 1B 78 */	mr r31, r3
/* 80C78AA0  38 00 00 01 */	li r0, 1
/* 80C78AA4  98 03 05 DC */	stb r0, 0x5dc(r3)
/* 80C78AA8  3C 80 80 C8 */	lis r4, lit_3958@ha /* 0x80C79A90@ha */
/* 80C78AAC  C0 04 9A 90 */	lfs f0, lit_3958@l(r4)  /* 0x80C79A90@l */
/* 80C78AB0  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80C78AB4  48 00 0B 35 */	bl setNextPoint__12daTogeRoll_cFv
/* 80C78AB8  C0 1F 05 B0 */	lfs f0, 0x5b0(r31)
/* 80C78ABC  D0 1F 05 BC */	stfs f0, 0x5bc(r31)
/* 80C78AC0  C0 1F 05 B4 */	lfs f0, 0x5b4(r31)
/* 80C78AC4  D0 1F 05 C0 */	stfs f0, 0x5c0(r31)
/* 80C78AC8  C0 1F 05 B8 */	lfs f0, 0x5b8(r31)
/* 80C78ACC  D0 1F 05 C4 */	stfs f0, 0x5c4(r31)
/* 80C78AD0  3C 60 80 C8 */	lis r3, l_HIO@ha /* 0x80C79D44@ha */
/* 80C78AD4  38 63 9D 44 */	addi r3, r3, l_HIO@l /* 0x80C79D44@l */
/* 80C78AD8  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80C78ADC  D0 1F 05 F8 */	stfs f0, 0x5f8(r31)
/* 80C78AE0  38 61 00 14 */	addi r3, r1, 0x14
/* 80C78AE4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C78AE8  38 BF 05 E0 */	addi r5, r31, 0x5e0
/* 80C78AEC  4B 5E E0 49 */	bl __mi__4cXyzCFRC3Vec
/* 80C78AF0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80C78AF4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C78AF8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80C78AFC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C78B00  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80C78B04  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C78B08  38 61 00 08 */	addi r3, r1, 8
/* 80C78B0C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80C78B10  4B 5E E4 39 */	bl normalizeZP__4cXyzFv
/* 80C78B14  C0 01 00 08 */	lfs f0, 8(r1)
/* 80C78B18  D0 1F 05 EC */	stfs f0, 0x5ec(r31)
/* 80C78B1C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80C78B20  D0 1F 05 F0 */	stfs f0, 0x5f0(r31)
/* 80C78B24  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80C78B28  D0 1F 05 F4 */	stfs f0, 0x5f4(r31)
/* 80C78B2C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C78B30  38 9F 05 B0 */	addi r4, r31, 0x5b0
/* 80C78B34  3C A0 80 C8 */	lis r5, l_HIO@ha /* 0x80C79D44@ha */
/* 80C78B38  38 A5 9D 44 */	addi r5, r5, l_HIO@l /* 0x80C79D44@l */
/* 80C78B3C  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80C78B40  38 A1 00 20 */	addi r5, r1, 0x20
/* 80C78B44  4B 5E FA 6D */	bl cM3d_InDivPos2__FPC3VecPC3VecfP3Vec
/* 80C78B48  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80C78B4C  D0 1F 05 B0 */	stfs f0, 0x5b0(r31)
/* 80C78B50  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80C78B54  D0 1F 05 B4 */	stfs f0, 0x5b4(r31)
/* 80C78B58  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80C78B5C  D0 1F 05 B8 */	stfs f0, 0x5b8(r31)
/* 80C78B60  38 00 00 06 */	li r0, 6
/* 80C78B64  98 1F 05 D8 */	stb r0, 0x5d8(r31)
/* 80C78B68  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80C78B6C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C78B70  7C 08 03 A6 */	mtlr r0
/* 80C78B74  38 21 00 40 */	addi r1, r1, 0x40
/* 80C78B78  4E 80 00 20 */	blr 

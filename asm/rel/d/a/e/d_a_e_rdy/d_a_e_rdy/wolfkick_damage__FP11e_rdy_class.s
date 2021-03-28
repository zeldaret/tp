lbl_80773A8C:
/* 80773A8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80773A90  7C 08 02 A6 */	mflr r0
/* 80773A94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80773A98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80773A9C  7C 7F 1B 78 */	mr r31, r3
/* 80773AA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80773AA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80773AA8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80773AAC  38 00 00 15 */	li r0, 0x15
/* 80773AB0  B0 1F 0A 42 */	sth r0, 0xa42(r31)
/* 80773AB4  38 00 00 00 */	li r0, 0
/* 80773AB8  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 80773ABC  A8 63 04 E6 */	lha r3, 0x4e6(r3)
/* 80773AC0  3C 63 00 01 */	addis r3, r3, 1
/* 80773AC4  38 03 80 00 */	addi r0, r3, -32768
/* 80773AC8  B0 1F 0A DE */	sth r0, 0xade(r31)
/* 80773ACC  3C 60 80 78 */	lis r3, l_HIO@ha
/* 80773AD0  38 63 A8 84 */	addi r3, r3, l_HIO@l
/* 80773AD4  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 80773AD8  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80773ADC  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 80773AE0  FC 00 00 50 */	fneg f0, f0
/* 80773AE4  D0 1F 0A BC */	stfs f0, 0xabc(r31)
/* 80773AE8  38 7F 05 D0 */	addi r3, r31, 0x5d0
/* 80773AEC  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040005@ha */
/* 80773AF0  38 84 00 05 */	addi r4, r4, 0x0005 /* 0x00040005@l */
/* 80773AF4  38 A0 00 1F */	li r5, 0x1f
/* 80773AF8  81 9F 05 D0 */	lwz r12, 0x5d0(r31)
/* 80773AFC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80773B00  7D 89 03 A6 */	mtctr r12
/* 80773B04  4E 80 04 21 */	bctrl 
/* 80773B08  38 00 00 01 */	li r0, 1
/* 80773B0C  98 1F 0A C8 */	stb r0, 0xac8(r31)
/* 80773B10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80773B14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80773B18  7C 08 03 A6 */	mtlr r0
/* 80773B1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80773B20  4E 80 00 20 */	blr 

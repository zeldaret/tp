lbl_80216A40:
/* 80216A40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80216A44  7C 08 02 A6 */	mflr r0
/* 80216A48  90 01 00 24 */	stw r0, 0x24(r1)
/* 80216A4C  39 61 00 20 */	addi r11, r1, 0x20
/* 80216A50  48 14 B7 85 */	bl _savegpr_27
/* 80216A54  7C 7B 1B 78 */	mr r27, r3
/* 80216A58  7C 80 07 34 */	extsh r0, r4
/* 80216A5C  2C 00 00 05 */	cmpwi r0, 5
/* 80216A60  40 81 00 08 */	ble lbl_80216A68
/* 80216A64  38 80 00 05 */	li r4, 5
lbl_80216A68:
/* 80216A68  3B 80 00 00 */	li r28, 0
/* 80216A6C  3B E0 00 00 */	li r31, 0
/* 80216A70  7C 9E 07 34 */	extsh r30, r4
lbl_80216A74:
/* 80216A74  7C 1C F0 00 */	cmpw r28, r30
/* 80216A78  40 80 00 24 */	bge lbl_80216A9C
/* 80216A7C  3B BF 02 E4 */	addi r29, r31, 0x2e4
/* 80216A80  7C 7B E8 2E */	lwzx r3, r27, r29
/* 80216A84  48 03 EB C9 */	bl isVisible__13CPaneMgrAlphaFv
/* 80216A88  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80216A8C  40 82 00 30 */	bne lbl_80216ABC
/* 80216A90  7C 7B E8 2E */	lwzx r3, r27, r29
/* 80216A94  48 03 EB 35 */	bl show__13CPaneMgrAlphaFv
/* 80216A98  48 00 00 24 */	b lbl_80216ABC
lbl_80216A9C:
/* 80216A9C  3B BF 02 E4 */	addi r29, r31, 0x2e4
/* 80216AA0  7C 7B E8 2E */	lwzx r3, r27, r29
/* 80216AA4  48 03 EB A9 */	bl isVisible__13CPaneMgrAlphaFv
/* 80216AA8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80216AAC  28 00 00 01 */	cmplwi r0, 1
/* 80216AB0  40 82 00 0C */	bne lbl_80216ABC
/* 80216AB4  7C 7B E8 2E */	lwzx r3, r27, r29
/* 80216AB8  48 03 EB 51 */	bl hide__13CPaneMgrAlphaFv
lbl_80216ABC:
/* 80216ABC  3B 9C 00 01 */	addi r28, r28, 1
/* 80216AC0  2C 1C 00 05 */	cmpwi r28, 5
/* 80216AC4  3B FF 00 04 */	addi r31, r31, 4
/* 80216AC8  41 80 FF AC */	blt lbl_80216A74
/* 80216ACC  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80216AD0  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80216AD4  C0 03 03 5C */	lfs f0, 0x35c(r3)
/* 80216AD8  80 7B 02 E0 */	lwz r3, 0x2e0(r27)
/* 80216ADC  80 63 00 04 */	lwz r3, 4(r3)
/* 80216AE0  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80216AE4  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80216AE8  81 83 00 00 */	lwz r12, 0(r3)
/* 80216AEC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80216AF0  7D 89 03 A6 */	mtctr r12
/* 80216AF4  4E 80 04 21 */	bctrl 
/* 80216AF8  80 7B 02 E0 */	lwz r3, 0x2e0(r27)
/* 80216AFC  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80216B00  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 80216B04  C0 24 03 60 */	lfs f1, 0x360(r4)
/* 80216B08  C0 44 03 64 */	lfs f2, 0x364(r4)
/* 80216B0C  48 03 DA A5 */	bl paneTrans__8CPaneMgrFff
/* 80216B10  39 61 00 20 */	addi r11, r1, 0x20
/* 80216B14  48 14 B7 0D */	bl _restgpr_27
/* 80216B18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80216B1C  7C 08 03 A6 */	mtlr r0
/* 80216B20  38 21 00 20 */	addi r1, r1, 0x20
/* 80216B24  4E 80 00 20 */	blr 

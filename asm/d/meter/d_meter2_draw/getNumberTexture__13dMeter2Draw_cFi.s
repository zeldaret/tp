lbl_8021A29C:
/* 8021A29C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8021A2A0  7C 08 02 A6 */	mflr r0
/* 8021A2A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8021A2A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8021A2AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8021A2B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8021A2B4  83 E3 5D 30 */	lwz r31, 0x5d30(r3)
/* 8021A2B8  7C 83 23 78 */	mr r3, r4
/* 8021A2BC  48 00 40 0D */	bl dMeter2Info_getNumberTextureName__Fi
/* 8021A2C0  7C 65 1B 78 */	mr r5, r3
/* 8021A2C4  7F E3 FB 78 */	mr r3, r31
/* 8021A2C8  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 8021A2CC  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 8021A2D0  81 9F 00 00 */	lwz r12, 0(r31)
/* 8021A2D4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8021A2D8  7D 89 03 A6 */	mtctr r12
/* 8021A2DC  4E 80 04 21 */	bctrl 
/* 8021A2E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8021A2E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8021A2E8  7C 08 03 A6 */	mtlr r0
/* 8021A2EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8021A2F0  4E 80 00 20 */	blr 

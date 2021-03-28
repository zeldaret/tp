lbl_801AC28C:
/* 801AC28C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801AC290  7C 08 02 A6 */	mflr r0
/* 801AC294  90 01 00 14 */	stw r0, 0x14(r1)
/* 801AC298  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801AC29C  3B E0 00 00 */	li r31, 0
/* 801AC2A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801AC2A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801AC2A8  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 801AC2AC  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 801AC2B0  7D 89 03 A6 */	mtctr r12
/* 801AC2B4  4E 80 04 21 */	bctrl 
/* 801AC2B8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 801AC2BC  54 00 87 7F */	rlwinm. r0, r0, 0x10, 0x1d, 0x1f
/* 801AC2C0  41 82 00 08 */	beq lbl_801AC2C8
/* 801AC2C4  3B E0 00 01 */	li r31, 1
lbl_801AC2C8:
/* 801AC2C8  7F E3 FB 78 */	mr r3, r31
/* 801AC2CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801AC2D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801AC2D4  7C 08 03 A6 */	mtlr r0
/* 801AC2D8  38 21 00 10 */	addi r1, r1, 0x10
/* 801AC2DC  4E 80 00 20 */	blr 

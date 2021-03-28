lbl_801F8E9C:
/* 801F8E9C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801F8EA0  7C 08 02 A6 */	mflr r0
/* 801F8EA4  90 01 00 34 */	stw r0, 0x34(r1)
/* 801F8EA8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801F8EAC  7C 7F 1B 78 */	mr r31, r3
/* 801F8EB0  88 03 02 06 */	lbz r0, 0x206(r3)
/* 801F8EB4  54 00 10 3A */	slwi r0, r0, 2
/* 801F8EB8  7C 7F 02 14 */	add r3, r31, r0
/* 801F8EBC  80 83 01 60 */	lwz r4, 0x160(r3)
/* 801F8EC0  38 61 00 08 */	addi r3, r1, 8
/* 801F8EC4  80 A4 00 04 */	lwz r5, 4(r4)
/* 801F8EC8  38 C0 00 00 */	li r6, 0
/* 801F8ECC  38 E0 00 00 */	li r7, 0
/* 801F8ED0  48 05 BF ED */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 801F8ED4  80 61 00 08 */	lwz r3, 8(r1)
/* 801F8ED8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801F8EDC  90 61 00 14 */	stw r3, 0x14(r1)
/* 801F8EE0  90 01 00 18 */	stw r0, 0x18(r1)
/* 801F8EE4  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801F8EE8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801F8EEC  88 1F 02 06 */	lbz r0, 0x206(r31)
/* 801F8EF0  54 00 10 3A */	slwi r0, r0, 2
/* 801F8EF4  7C 7F 02 14 */	add r3, r31, r0
/* 801F8EF8  80 63 01 60 */	lwz r3, 0x160(r3)
/* 801F8EFC  80 83 00 04 */	lwz r4, 4(r3)
/* 801F8F00  80 7F 01 98 */	lwz r3, 0x198(r31)
/* 801F8F04  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 801F8F08  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 801F8F0C  38 A0 00 00 */	li r5, 0
/* 801F8F10  4B F9 C1 E5 */	bl setPos__16dSelect_cursor_cFffP7J2DPaneb
/* 801F8F14  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801F8F18  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801F8F1C  7C 08 03 A6 */	mtlr r0
/* 801F8F20  38 21 00 30 */	addi r1, r1, 0x30
/* 801F8F24  4E 80 00 20 */	blr 

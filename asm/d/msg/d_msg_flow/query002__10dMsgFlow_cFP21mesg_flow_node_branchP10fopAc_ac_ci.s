lbl_8024B180:
/* 8024B180  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024B184  7C 08 02 A6 */	mflr r0
/* 8024B188  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024B18C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8024B190  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024B194  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024B198  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 8024B19C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8024B1A0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8024B1A4  41 82 00 0C */	beq lbl_8024B1B0
/* 8024B1A8  38 60 00 01 */	li r3, 1
/* 8024B1AC  48 00 00 48 */	b lbl_8024B1F4
lbl_8024B1B0:
/* 8024B1B0  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8024B1B4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8024B1B8  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8024B1BC  7D 89 03 A6 */	mtctr r12
/* 8024B1C0  4E 80 04 21 */	bctrl 
/* 8024B1C4  28 03 00 00 */	cmplwi r3, 0
/* 8024B1C8  40 82 00 20 */	bne lbl_8024B1E8
/* 8024B1CC  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8024B1D0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8024B1D4  81 8C 01 8C */	lwz r12, 0x18c(r12)
/* 8024B1D8  7D 89 03 A6 */	mtctr r12
/* 8024B1DC  4E 80 04 21 */	bctrl 
/* 8024B1E0  28 03 00 00 */	cmplwi r3, 0
/* 8024B1E4  41 82 00 0C */	beq lbl_8024B1F0
lbl_8024B1E8:
/* 8024B1E8  38 60 00 02 */	li r3, 2
/* 8024B1EC  48 00 00 08 */	b lbl_8024B1F4
lbl_8024B1F0:
/* 8024B1F0  38 60 00 00 */	li r3, 0
lbl_8024B1F4:
/* 8024B1F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8024B1F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024B1FC  7C 08 03 A6 */	mtlr r0
/* 8024B200  38 21 00 10 */	addi r1, r1, 0x10
/* 8024B204  4E 80 00 20 */	blr 

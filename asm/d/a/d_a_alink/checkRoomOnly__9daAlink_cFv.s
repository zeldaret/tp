lbl_800C03E8:
/* 800C03E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C03EC  7C 08 02 A6 */	mflr r0
/* 800C03F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C03F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C03F8  3B E0 00 01 */	li r31, 1
/* 800C03FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800C0400  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800C0404  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 800C0408  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 800C040C  7D 89 03 A6 */	mtctr r12
/* 800C0410  4E 80 04 21 */	bctrl 
/* 800C0414  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800C0418  54 00 87 7E */	rlwinm r0, r0, 0x10, 0x1d, 0x1f
/* 800C041C  28 00 00 02 */	cmplwi r0, 2
/* 800C0420  41 82 00 14 */	beq lbl_800C0434
/* 800C0424  48 05 EA 1D */	bl checkLv7DungeonShop__9daAlink_cFv
/* 800C0428  2C 03 00 00 */	cmpwi r3, 0
/* 800C042C  40 82 00 08 */	bne lbl_800C0434
/* 800C0430  3B E0 00 00 */	li r31, 0
lbl_800C0434:
/* 800C0434  7F E3 FB 78 */	mr r3, r31
/* 800C0438  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C043C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C0440  7C 08 03 A6 */	mtlr r0
/* 800C0444  38 21 00 10 */	addi r1, r1, 0x10
/* 800C0448  4E 80 00 20 */	blr 

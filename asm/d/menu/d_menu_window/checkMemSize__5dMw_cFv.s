lbl_801FD0D4:
/* 801FD0D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FD0D8  7C 08 02 A6 */	mflr r0
/* 801FD0DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FD0E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FD0E4  7C 7F 1B 78 */	mr r31, r3
/* 801FD0E8  80 03 01 38 */	lwz r0, 0x138(r3)
/* 801FD0EC  2C 00 00 00 */	cmpwi r0, 0
/* 801FD0F0  40 81 00 3C */	ble lbl_801FD12C
/* 801FD0F4  80 7F 01 00 */	lwz r3, 0x100(r31)
/* 801FD0F8  48 0D 16 8D */	bl getTotalFreeSize__7JKRHeapFv
/* 801FD0FC  80 1F 01 38 */	lwz r0, 0x138(r31)
/* 801FD100  7C 00 18 51 */	subf. r0, r0, r3
/* 801FD104  40 80 00 08 */	bge lbl_801FD10C
/* 801FD108  1C 00 FF FF */	mulli r0, r0, -1
lbl_801FD10C:
/* 801FD10C  2C 00 00 20 */	cmpwi r0, 0x20
/* 801FD110  40 81 00 14 */	ble lbl_801FD124
/* 801FD114  3C 60 80 39 */	lis r3, d_menu_d_menu_window__stringBase0@ha
/* 801FD118  38 63 7E 38 */	addi r3, r3, d_menu_d_menu_window__stringBase0@l
/* 801FD11C  4C C6 31 82 */	crclr 6
/* 801FD120  4B E0 9A ED */	bl OSReport_Error
lbl_801FD124:
/* 801FD124  38 00 00 00 */	li r0, 0
/* 801FD128  90 1F 01 38 */	stw r0, 0x138(r31)
lbl_801FD12C:
/* 801FD12C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FD130  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FD134  7C 08 03 A6 */	mtlr r0
/* 801FD138  38 21 00 10 */	addi r1, r1, 0x10
/* 801FD13C  4E 80 00 20 */	blr 

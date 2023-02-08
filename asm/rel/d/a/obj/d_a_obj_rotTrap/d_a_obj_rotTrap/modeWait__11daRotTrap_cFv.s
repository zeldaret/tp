lbl_80CC0120:
/* 80CC0120  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC0124  7C 08 02 A6 */	mflr r0
/* 80CC0128  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC012C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC0130  7C 7F 1B 78 */	mr r31, r3
/* 80CC0134  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC0138  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC013C  88 9F 05 AD */	lbz r4, 0x5ad(r31)
/* 80CC0140  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CC0144  7C 05 07 74 */	extsb r5, r0
/* 80CC0148  4B 37 52 19 */	bl isSwitch__10dSv_info_cCFii
/* 80CC014C  2C 03 00 00 */	cmpwi r3, 0
/* 80CC0150  41 82 00 0C */	beq lbl_80CC015C
/* 80CC0154  7F E3 FB 78 */	mr r3, r31
/* 80CC0158  48 00 00 29 */	bl init_modeAcc__11daRotTrap_cFv
lbl_80CC015C:
/* 80CC015C  80 7F 17 38 */	lwz r3, 0x1738(r31)
/* 80CC0160  28 03 00 00 */	cmplwi r3, 0
/* 80CC0164  41 82 00 08 */	beq lbl_80CC016C
/* 80CC0168  4B 3B B8 59 */	bl Move__4dBgWFv
lbl_80CC016C:
/* 80CC016C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC0170  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC0174  7C 08 03 A6 */	mtlr r0
/* 80CC0178  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC017C  4E 80 00 20 */	blr 

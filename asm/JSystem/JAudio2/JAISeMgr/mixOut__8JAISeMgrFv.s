lbl_802A0704:
/* 802A0704  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A0708  7C 08 02 A6 */	mflr r0
/* 802A070C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A0710  39 61 00 20 */	addi r11, r1, 0x20
/* 802A0714  48 0C 1A C9 */	bl _savegpr_29
/* 802A0718  7C 7D 1B 78 */	mr r29, r3
/* 802A071C  3B C0 00 00 */	li r30, 0
/* 802A0720  3B E0 00 00 */	li r31, 0
lbl_802A0724:
/* 802A0724  88 1D 00 04 */	lbz r0, 4(r29)
/* 802A0728  98 01 00 08 */	stb r0, 8(r1)
/* 802A072C  38 7F 00 14 */	addi r3, r31, 0x14
/* 802A0730  7C 7D 1A 14 */	add r3, r29, r3
/* 802A0734  38 9D 06 D4 */	addi r4, r29, 0x6d4
/* 802A0738  38 A1 00 08 */	addi r5, r1, 8
/* 802A073C  4B FF F7 DD */	bl JAISeMgr_mixOut___16JAISeCategoryMgrFRC18JAISoundParamsMove16JAISoundActivity
/* 802A0740  3B DE 00 01 */	addi r30, r30, 1
/* 802A0744  2C 1E 00 10 */	cmpwi r30, 0x10
/* 802A0748  3B FF 00 6C */	addi r31, r31, 0x6c
/* 802A074C  41 80 FF D8 */	blt lbl_802A0724
/* 802A0750  39 61 00 20 */	addi r11, r1, 0x20
/* 802A0754  48 0C 1A D5 */	bl _restgpr_29
/* 802A0758  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A075C  7C 08 03 A6 */	mtlr r0
/* 802A0760  38 21 00 20 */	addi r1, r1, 0x20
/* 802A0764  4E 80 00 20 */	blr 

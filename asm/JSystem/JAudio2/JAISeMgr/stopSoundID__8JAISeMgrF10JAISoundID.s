lbl_802A02F4:
/* 802A02F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A02F8  7C 08 02 A6 */	mflr r0
/* 802A02FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A0300  39 61 00 20 */	addi r11, r1, 0x20
/* 802A0304  48 0C 1E D5 */	bl _savegpr_28
/* 802A0308  7C 7C 1B 78 */	mr r28, r3
/* 802A030C  7C 9D 23 78 */	mr r29, r4
/* 802A0310  3B C0 00 00 */	li r30, 0
/* 802A0314  3B E0 00 00 */	li r31, 0
lbl_802A0318:
/* 802A0318  80 1D 00 00 */	lwz r0, 0(r29)
/* 802A031C  90 01 00 08 */	stw r0, 8(r1)
/* 802A0320  38 7F 00 14 */	addi r3, r31, 0x14
/* 802A0324  7C 7C 1A 14 */	add r3, r28, r3
/* 802A0328  38 81 00 08 */	addi r4, r1, 8
/* 802A032C  4B FF FB 4D */	bl stopSoundID__16JAISeCategoryMgrF10JAISoundID
/* 802A0330  3B DE 00 01 */	addi r30, r30, 1
/* 802A0334  2C 1E 00 10 */	cmpwi r30, 0x10
/* 802A0338  3B FF 00 6C */	addi r31, r31, 0x6c
/* 802A033C  41 80 FF DC */	blt lbl_802A0318
/* 802A0340  39 61 00 20 */	addi r11, r1, 0x20
/* 802A0344  48 0C 1E E1 */	bl _restgpr_28
/* 802A0348  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A034C  7C 08 03 A6 */	mtlr r0
/* 802A0350  38 21 00 20 */	addi r1, r1, 0x20
/* 802A0354  4E 80 00 20 */	blr 

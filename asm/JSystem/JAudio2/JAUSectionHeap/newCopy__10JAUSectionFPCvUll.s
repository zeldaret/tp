lbl_802A57F0:
/* 802A57F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A57F4  7C 08 02 A6 */	mflr r0
/* 802A57F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A57FC  39 61 00 20 */	addi r11, r1, 0x20
/* 802A5800  48 0B C9 DD */	bl _savegpr_29
/* 802A5804  7C 67 1B 78 */	mr r7, r3
/* 802A5808  7C 9D 23 78 */	mr r29, r4
/* 802A580C  7C BE 2B 78 */	mr r30, r5
/* 802A5810  7F C3 F3 78 */	mr r3, r30
/* 802A5814  80 87 00 30 */	lwz r4, 0x30(r7)
/* 802A5818  80 84 00 E0 */	lwz r4, 0xe0(r4)
/* 802A581C  7C C5 33 78 */	mr r5, r6
/* 802A5820  48 02 94 F1 */	bl __nwa__FUlP7JKRHeapi
/* 802A5824  7C 7F 1B 79 */	or. r31, r3, r3
/* 802A5828  41 82 00 10 */	beq lbl_802A5838
/* 802A582C  7F A4 EB 78 */	mr r4, r29
/* 802A5830  7F C5 F3 78 */	mr r5, r30
/* 802A5834  4B D5 DD 0D */	bl memcpy
lbl_802A5838:
/* 802A5838  7F E3 FB 78 */	mr r3, r31
/* 802A583C  39 61 00 20 */	addi r11, r1, 0x20
/* 802A5840  48 0B C9 E9 */	bl _restgpr_29
/* 802A5844  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A5848  7C 08 03 A6 */	mtlr r0
/* 802A584C  38 21 00 20 */	addi r1, r1, 0x20
/* 802A5850  4E 80 00 20 */	blr 

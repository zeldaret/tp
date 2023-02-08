lbl_802DE120:
/* 802DE120  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DE124  7C 08 02 A6 */	mflr r0
/* 802DE128  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DE12C  39 61 00 20 */	addi r11, r1, 0x20
/* 802DE130  48 08 40 AD */	bl _savegpr_29
/* 802DE134  7C 7D 1B 78 */	mr r29, r3
/* 802DE138  7C BE 2B 78 */	mr r30, r5
/* 802DE13C  7C DF 33 78 */	mr r31, r6
/* 802DE140  88 04 00 00 */	lbz r0, 0(r4)
/* 802DE144  98 03 00 00 */	stb r0, 0(r3)
/* 802DE148  88 04 00 01 */	lbz r0, 1(r4)
/* 802DE14C  98 03 00 01 */	stb r0, 1(r3)
/* 802DE150  88 A3 00 01 */	lbz r5, 1(r3)
/* 802DE154  28 05 00 00 */	cmplwi r5, 0
/* 802DE158  41 82 00 10 */	beq lbl_802DE168
/* 802DE15C  38 7D 00 02 */	addi r3, r29, 2
/* 802DE160  38 84 00 02 */	addi r4, r4, 2
/* 802DE164  4B D2 53 DD */	bl memcpy
lbl_802DE168:
/* 802DE168  88 1D 00 00 */	lbz r0, 0(r29)
/* 802DE16C  28 00 00 02 */	cmplwi r0, 2
/* 802DE170  41 82 00 14 */	beq lbl_802DE184
/* 802DE174  28 00 00 03 */	cmplwi r0, 3
/* 802DE178  41 82 00 0C */	beq lbl_802DE184
/* 802DE17C  28 00 00 04 */	cmplwi r0, 4
/* 802DE180  40 82 00 14 */	bne lbl_802DE194
lbl_802DE184:
/* 802DE184  38 80 00 00 */	li r4, 0
/* 802DE188  88 1D 00 01 */	lbz r0, 1(r29)
/* 802DE18C  7C 7D 02 14 */	add r3, r29, r0
/* 802DE190  98 83 00 02 */	stb r4, 2(r3)
lbl_802DE194:
/* 802DE194  7F A3 EB 78 */	mr r3, r29
/* 802DE198  7F C4 F3 78 */	mr r4, r30
/* 802DE19C  7F E5 FB 78 */	mr r5, r31
/* 802DE1A0  48 00 00 1D */	bl getResource__15JUTResReferenceFUlP10JKRArchive
/* 802DE1A4  39 61 00 20 */	addi r11, r1, 0x20
/* 802DE1A8  48 08 40 81 */	bl _restgpr_29
/* 802DE1AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DE1B0  7C 08 03 A6 */	mtlr r0
/* 802DE1B4  38 21 00 20 */	addi r1, r1, 0x20
/* 802DE1B8  4E 80 00 20 */	blr 

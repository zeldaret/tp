lbl_8029226C:
/* 8029226C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80292270  7C 08 02 A6 */	mflr r0
/* 80292274  90 01 00 24 */	stw r0, 0x24(r1)
/* 80292278  39 61 00 20 */	addi r11, r1, 0x20
/* 8029227C  48 0C FF 5D */	bl _savegpr_28
/* 80292280  7C 7C 1B 78 */	mr r28, r3
/* 80292284  7C 9D 23 78 */	mr r29, r4
/* 80292288  3B C0 00 00 */	li r30, 0
/* 8029228C  3B E0 00 00 */	li r31, 0
lbl_80292290:
/* 80292290  7C BC FA 14 */	add r5, r28, r31
/* 80292294  80 05 00 EC */	lwz r0, 0xec(r5)
/* 80292298  28 00 00 00 */	cmplwi r0, 0
/* 8029229C  41 82 00 14 */	beq lbl_802922B0
/* 802922A0  7F A3 EB 78 */	mr r3, r29
/* 802922A4  7F C4 F3 78 */	mr r4, r30
/* 802922A8  38 A5 00 E4 */	addi r5, r5, 0xe4
/* 802922AC  48 00 88 B9 */	bl setOscInit__10JASChannelFUlPCQ213JASOscillator4Data
lbl_802922B0:
/* 802922B0  3B DE 00 01 */	addi r30, r30, 1
/* 802922B4  28 1E 00 02 */	cmplwi r30, 2
/* 802922B8  3B FF 00 18 */	addi r31, r31, 0x18
/* 802922BC  41 80 FF D4 */	blt lbl_80292290
/* 802922C0  39 61 00 20 */	addi r11, r1, 0x20
/* 802922C4  48 0C FF 61 */	bl _restgpr_28
/* 802922C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802922CC  7C 08 03 A6 */	mtlr r0
/* 802922D0  38 21 00 20 */	addi r1, r1, 0x20
/* 802922D4  4E 80 00 20 */	blr 

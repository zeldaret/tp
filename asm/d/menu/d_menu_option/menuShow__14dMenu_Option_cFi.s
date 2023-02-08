lbl_801E54F8:
/* 801E54F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801E54FC  7C 08 02 A6 */	mflr r0
/* 801E5500  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E5504  39 61 00 20 */	addi r11, r1, 0x20
/* 801E5508  48 17 CC CD */	bl _savegpr_27
/* 801E550C  7C 7B 1B 78 */	mr r27, r3
/* 801E5510  7C 9C 23 78 */	mr r28, r4
/* 801E5514  54 9E 10 3A */	slwi r30, r4, 2
/* 801E5518  7C 7B F2 14 */	add r3, r27, r30
/* 801E551C  80 63 00 74 */	lwz r3, 0x74(r3)
/* 801E5520  48 07 00 A9 */	bl show__13CPaneMgrAlphaFv
/* 801E5524  7C 7B F2 14 */	add r3, r27, r30
/* 801E5528  80 63 00 8C */	lwz r3, 0x8c(r3)
/* 801E552C  48 07 00 9D */	bl show__13CPaneMgrAlphaFv
/* 801E5530  7C 7B F2 14 */	add r3, r27, r30
/* 801E5534  80 63 00 A4 */	lwz r3, 0xa4(r3)
/* 801E5538  28 03 00 00 */	cmplwi r3, 0
/* 801E553C  41 82 00 08 */	beq lbl_801E5544
/* 801E5540  48 07 00 89 */	bl show__13CPaneMgrAlphaFv
lbl_801E5544:
/* 801E5544  7C 7B F2 14 */	add r3, r27, r30
/* 801E5548  80 63 00 BC */	lwz r3, 0xbc(r3)
/* 801E554C  28 03 00 00 */	cmplwi r3, 0
/* 801E5550  41 82 00 08 */	beq lbl_801E5558
/* 801E5554  48 07 00 75 */	bl show__13CPaneMgrAlphaFv
lbl_801E5558:
/* 801E5558  7C 7B F2 14 */	add r3, r27, r30
/* 801E555C  80 63 00 D4 */	lwz r3, 0xd4(r3)
/* 801E5560  28 03 00 00 */	cmplwi r3, 0
/* 801E5564  41 82 00 08 */	beq lbl_801E556C
/* 801E5568  48 07 00 61 */	bl show__13CPaneMgrAlphaFv
lbl_801E556C:
/* 801E556C  3B A0 00 00 */	li r29, 0
/* 801E5570  3B E0 00 00 */	li r31, 0
/* 801E5574  1C 1C 00 18 */	mulli r0, r28, 0x18
/* 801E5578  7F DB 02 14 */	add r30, r27, r0
lbl_801E557C:
/* 801E557C  38 1F 01 04 */	addi r0, r31, 0x104
/* 801E5580  7C 7E 00 2E */	lwzx r3, r30, r0
/* 801E5584  28 03 00 00 */	cmplwi r3, 0
/* 801E5588  41 82 00 08 */	beq lbl_801E5590
/* 801E558C  48 07 00 3D */	bl show__13CPaneMgrAlphaFv
lbl_801E5590:
/* 801E5590  3B BD 00 01 */	addi r29, r29, 1
/* 801E5594  2C 1D 00 02 */	cmpwi r29, 2
/* 801E5598  3B FF 00 04 */	addi r31, r31, 4
/* 801E559C  41 80 FF E0 */	blt lbl_801E557C
/* 801E55A0  39 61 00 20 */	addi r11, r1, 0x20
/* 801E55A4  48 17 CC 7D */	bl _restgpr_27
/* 801E55A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801E55AC  7C 08 03 A6 */	mtlr r0
/* 801E55B0  38 21 00 20 */	addi r1, r1, 0x20
/* 801E55B4  4E 80 00 20 */	blr 

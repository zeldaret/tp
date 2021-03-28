lbl_801E55B8:
/* 801E55B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801E55BC  7C 08 02 A6 */	mflr r0
/* 801E55C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E55C4  39 61 00 20 */	addi r11, r1, 0x20
/* 801E55C8  48 17 CC 0D */	bl _savegpr_27
/* 801E55CC  7C 7B 1B 78 */	mr r27, r3
/* 801E55D0  7C 9C 23 78 */	mr r28, r4
/* 801E55D4  54 9E 10 3A */	slwi r30, r4, 2
/* 801E55D8  7C 7B F2 14 */	add r3, r27, r30
/* 801E55DC  80 63 00 74 */	lwz r3, 0x74(r3)
/* 801E55E0  48 07 00 29 */	bl hide__13CPaneMgrAlphaFv
/* 801E55E4  7C 7B F2 14 */	add r3, r27, r30
/* 801E55E8  80 63 00 8C */	lwz r3, 0x8c(r3)
/* 801E55EC  48 07 00 1D */	bl hide__13CPaneMgrAlphaFv
/* 801E55F0  7C 7B F2 14 */	add r3, r27, r30
/* 801E55F4  80 63 00 A4 */	lwz r3, 0xa4(r3)
/* 801E55F8  28 03 00 00 */	cmplwi r3, 0
/* 801E55FC  41 82 00 08 */	beq lbl_801E5604
/* 801E5600  48 07 00 09 */	bl hide__13CPaneMgrAlphaFv
lbl_801E5604:
/* 801E5604  7C 7B F2 14 */	add r3, r27, r30
/* 801E5608  80 63 00 BC */	lwz r3, 0xbc(r3)
/* 801E560C  28 03 00 00 */	cmplwi r3, 0
/* 801E5610  41 82 00 08 */	beq lbl_801E5618
/* 801E5614  48 06 FF F5 */	bl hide__13CPaneMgrAlphaFv
lbl_801E5618:
/* 801E5618  7C 7B F2 14 */	add r3, r27, r30
/* 801E561C  80 63 00 D4 */	lwz r3, 0xd4(r3)
/* 801E5620  28 03 00 00 */	cmplwi r3, 0
/* 801E5624  41 82 00 08 */	beq lbl_801E562C
/* 801E5628  48 06 FF E1 */	bl hide__13CPaneMgrAlphaFv
lbl_801E562C:
/* 801E562C  3B A0 00 00 */	li r29, 0
/* 801E5630  3B E0 00 00 */	li r31, 0
/* 801E5634  1C 1C 00 18 */	mulli r0, r28, 0x18
/* 801E5638  7F DB 02 14 */	add r30, r27, r0
lbl_801E563C:
/* 801E563C  38 1F 01 04 */	addi r0, r31, 0x104
/* 801E5640  7C 7E 00 2E */	lwzx r3, r30, r0
/* 801E5644  28 03 00 00 */	cmplwi r3, 0
/* 801E5648  41 82 00 08 */	beq lbl_801E5650
/* 801E564C  48 06 FF BD */	bl hide__13CPaneMgrAlphaFv
lbl_801E5650:
/* 801E5650  3B BD 00 01 */	addi r29, r29, 1
/* 801E5654  2C 1D 00 02 */	cmpwi r29, 2
/* 801E5658  3B FF 00 04 */	addi r31, r31, 4
/* 801E565C  41 80 FF E0 */	blt lbl_801E563C
/* 801E5660  39 61 00 20 */	addi r11, r1, 0x20
/* 801E5664  48 17 CB BD */	bl _restgpr_27
/* 801E5668  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801E566C  7C 08 03 A6 */	mtlr r0
/* 801E5670  38 21 00 20 */	addi r1, r1, 0x20
/* 801E5674  4E 80 00 20 */	blr 

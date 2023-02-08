lbl_8022B458:
/* 8022B458  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8022B45C  7C 08 02 A6 */	mflr r0
/* 8022B460  90 01 00 24 */	stw r0, 0x24(r1)
/* 8022B464  39 61 00 20 */	addi r11, r1, 0x20
/* 8022B468  48 13 6D 71 */	bl _savegpr_28
/* 8022B46C  7C 9C 23 78 */	mr r28, r4
/* 8022B470  88 03 00 44 */	lbz r0, 0x44(r3)
/* 8022B474  28 00 00 00 */	cmplwi r0, 0
/* 8022B478  40 82 00 50 */	bne lbl_8022B4C8
/* 8022B47C  38 05 FF FF */	addi r0, r5, -1
/* 8022B480  54 1F 06 3E */	clrlwi r31, r0, 0x18
/* 8022B484  3B C0 00 00 */	li r30, 0
/* 8022B488  83 A3 00 04 */	lwz r29, 4(r3)
/* 8022B48C  48 00 00 34 */	b lbl_8022B4C0
lbl_8022B490:
/* 8022B490  38 1E 00 01 */	addi r0, r30, 1
/* 8022B494  7C 7C 00 AE */	lbzx r3, r28, r0
/* 8022B498  38 1E 00 02 */	addi r0, r30, 2
/* 8022B49C  7C 1C 00 AE */	lbzx r0, r28, r0
/* 8022B4A0  7C 64 07 74 */	extsb r4, r3
/* 8022B4A4  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8022B4A8  50 83 44 2E */	rlwimi r3, r4, 8, 0x10, 0x17
/* 8022B4AC  3B DE 00 02 */	addi r30, r30, 2
/* 8022B4B0  4B FF D3 89 */	bl changeKataToHira__Fi
/* 8022B4B4  7C 64 1B 78 */	mr r4, r3
/* 8022B4B8  7F A3 EB 78 */	mr r3, r29
/* 8022B4BC  4B FF E2 AD */	bl setCharactor__19jmessage_tReferenceFUs
lbl_8022B4C0:
/* 8022B4C0  7C 1E F8 00 */	cmpw r30, r31
/* 8022B4C4  41 80 FF CC */	blt lbl_8022B490
lbl_8022B4C8:
/* 8022B4C8  39 61 00 20 */	addi r11, r1, 0x20
/* 8022B4CC  48 13 6D 59 */	bl _restgpr_28
/* 8022B4D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8022B4D4  7C 08 03 A6 */	mtlr r0
/* 8022B4D8  38 21 00 20 */	addi r1, r1, 0x20
/* 8022B4DC  4E 80 00 20 */	blr 

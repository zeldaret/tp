lbl_8034F1A0:
/* 8034F1A0  7C 08 02 A6 */	mflr r0
/* 8034F1A4  90 01 00 04 */	stw r0, 4(r1)
/* 8034F1A8  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8034F1AC  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8034F1B0  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8034F1B4  3B C4 00 00 */	addi r30, r4, 0
/* 8034F1B8  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8034F1BC  3B A3 00 00 */	addi r29, r3, 0
/* 8034F1C0  4B FE E5 35 */	bl OSDisableInterrupts
/* 8034F1C4  3C 00 80 00 */	lis r0, 0x8000
/* 8034F1C8  80 8D 92 CC */	lwz r4, EnabledBits(r13)
/* 8034F1CC  7C 00 EC 30 */	srw r0, r0, r29
/* 8034F1D0  7C 80 00 39 */	and. r0, r4, r0
/* 8034F1D4  3B E3 00 00 */	addi r31, r3, 0
/* 8034F1D8  41 82 00 5C */	beq lbl_8034F234
/* 8034F1DC  7F A3 EB 78 */	mr r3, r29
/* 8034F1E0  4B FF 6D B1 */	bl SIGetType
/* 8034F1E4  54 60 00 85 */	rlwinm. r0, r3, 0, 2, 2
/* 8034F1E8  40 82 00 4C */	bne lbl_8034F234
/* 8034F1EC  80 0D 84 B0 */	lwz r0, Spec(r13)
/* 8034F1F0  28 00 00 02 */	cmplwi r0, 2
/* 8034F1F4  40 80 00 10 */	bge lbl_8034F204
/* 8034F1F8  28 1E 00 02 */	cmplwi r30, 2
/* 8034F1FC  40 82 00 08 */	bne lbl_8034F204
/* 8034F200  3B C0 00 00 */	li r30, 0
lbl_8034F204:
/* 8034F204  3C 60 80 00 */	lis r3, 0x8000 /* 0x800030E3@ha */
/* 8034F208  88 03 30 E3 */	lbz r0, 0x30E3(r3)  /* 0x800030E3@l */
/* 8034F20C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8034F210  41 82 00 08 */	beq lbl_8034F218
/* 8034F214  3B C0 00 00 */	li r30, 0
lbl_8034F218:
/* 8034F218  80 8D 84 AC */	lwz r4, AnalogMode(r13)
/* 8034F21C  57 C0 07 BE */	clrlwi r0, r30, 0x1e
/* 8034F220  38 7D 00 00 */	addi r3, r29, 0
/* 8034F224  64 84 00 40 */	oris r4, r4, 0x40
/* 8034F228  7C 84 03 78 */	or r4, r4, r0
/* 8034F22C  4B FF 65 A5 */	bl SISetCommand
/* 8034F230  4B FF 65 B5 */	bl SITransferCommands
lbl_8034F234:
/* 8034F234  7F E3 FB 78 */	mr r3, r31
/* 8034F238  4B FE E4 E5 */	bl OSRestoreInterrupts
/* 8034F23C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8034F240  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8034F244  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8034F248  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8034F24C  38 21 00 28 */	addi r1, r1, 0x28
/* 8034F250  7C 08 03 A6 */	mtlr r0
/* 8034F254  4E 80 00 20 */	blr 

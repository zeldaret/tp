lbl_8034E51C:
/* 8034E51C  7C 08 02 A6 */	mflr r0
/* 8034E520  90 01 00 04 */	stw r0, 4(r1)
/* 8034E524  3C 00 80 00 */	lis r0, 0x8000
/* 8034E528  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8034E52C  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8034E530  3B E4 00 00 */	addi r31, r4, 0
/* 8034E534  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8034E538  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8034E53C  7C 7D 1B 78 */	mr r29, r3
/* 8034E540  7C 1E EC 30 */	srw r30, r0, r29
/* 8034E544  80 6D 92 CC */	lwz r3, EnabledBits(r13)
/* 8034E548  7C 60 F0 39 */	and. r0, r3, r30
/* 8034E54C  41 82 00 80 */	beq lbl_8034E5CC
/* 8034E550  57 E0 07 3F */	clrlwi. r0, r31, 0x1c
/* 8034E554  40 82 00 0C */	bne lbl_8034E560
/* 8034E558  7F A3 EB 78 */	mr r3, r29
/* 8034E55C  4B FF FD 59 */	bl UpdateOrigin
lbl_8034E560:
/* 8034E560  57 E0 07 39 */	rlwinm. r0, r31, 0, 0x1c, 0x1c
/* 8034E564  41 82 00 68 */	beq lbl_8034E5CC
/* 8034E568  4B FE F1 8D */	bl OSDisableInterrupts
/* 8034E56C  3B E3 00 00 */	addi r31, r3, 0
/* 8034E570  38 7E 00 00 */	addi r3, r30, 0
/* 8034E574  4B FF 73 89 */	bl SIDisablePolling
/* 8034E578  80 0D 92 CC */	lwz r0, EnabledBits(r13)
/* 8034E57C  7F C9 F0 F8 */	nor r9, r30, r30
/* 8034E580  80 CD 92 D8 */	lwz r6, WaitingBits(r13)
/* 8034E584  7F A3 EB 78 */	mr r3, r29
/* 8034E588  80 AD 92 DC */	lwz r5, CheckingBits(r13)
/* 8034E58C  80 8D 92 E0 */	lwz r4, PendingBits(r13)
/* 8034E590  7C 08 48 38 */	and r8, r0, r9
/* 8034E594  80 0D 92 E4 */	lwz r0, BarrelBits(r13)
/* 8034E598  7C C7 48 38 */	and r7, r6, r9
/* 8034E59C  7C A6 48 38 */	and r6, r5, r9
/* 8034E5A0  7C 85 48 38 */	and r5, r4, r9
/* 8034E5A4  91 0D 92 CC */	stw r8, EnabledBits(r13)
/* 8034E5A8  7C 00 48 38 */	and r0, r0, r9
/* 8034E5AC  90 ED 92 D8 */	stw r7, WaitingBits(r13)
/* 8034E5B0  38 80 00 00 */	li r4, 0
/* 8034E5B4  90 CD 92 DC */	stw r6, CheckingBits(r13)
/* 8034E5B8  90 AD 92 E0 */	stw r5, PendingBits(r13)
/* 8034E5BC  90 0D 92 E4 */	stw r0, BarrelBits(r13)
/* 8034E5C0  4B FF 22 8D */	bl OSSetWirelessID
/* 8034E5C4  7F E3 FB 78 */	mr r3, r31
/* 8034E5C8  4B FE F1 55 */	bl OSRestoreInterrupts
lbl_8034E5CC:
/* 8034E5CC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8034E5D0  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8034E5D4  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8034E5D8  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8034E5DC  38 21 00 28 */	addi r1, r1, 0x28
/* 8034E5E0  7C 08 03 A6 */	mtlr r0
/* 8034E5E4  4E 80 00 20 */	blr 

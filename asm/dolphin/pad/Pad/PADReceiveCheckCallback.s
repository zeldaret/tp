lbl_8034E9EC:
/* 8034E9EC  7C 08 02 A6 */	mflr r0
/* 8034E9F0  90 01 00 04 */	stw r0, 4(r1)
/* 8034E9F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8034E9F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8034E9FC  7C 7F 1B 78 */	mr r31, r3
/* 8034EA00  3C 60 80 00 */	lis r3, 0x8000
/* 8034EA04  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8034EA08  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8034EA0C  7C 7D FC 30 */	srw r29, r3, r31
/* 8034EA10  80 0D 92 CC */	lwz r0, EnabledBits(r13)
/* 8034EA14  7C 00 E8 39 */	and. r0, r0, r29
/* 8034EA18  41 82 00 F8 */	beq lbl_8034EB10
/* 8034EA1C  80 AD 92 D8 */	lwz r5, WaitingBits(r13)
/* 8034EA20  7F A6 E8 F8 */	nor r6, r29, r29
/* 8034EA24  80 6D 92 DC */	lwz r3, CheckingBits(r13)
/* 8034EA28  54 80 07 3F */	clrlwi. r0, r4, 0x1c
/* 8034EA2C  7C A5 30 38 */	and r5, r5, r6
/* 8034EA30  7C 63 30 38 */	and r3, r3, r6
/* 8034EA34  90 AD 92 D8 */	stw r5, WaitingBits(r13)
/* 8034EA38  90 6D 92 DC */	stw r3, CheckingBits(r13)
/* 8034EA3C  54 83 00 2E */	rlwinm r3, r4, 0, 0, 0x17
/* 8034EA40  40 82 00 6C */	bne lbl_8034EAAC
/* 8034EA44  54 60 00 01 */	rlwinm. r0, r3, 0, 0, 0
/* 8034EA48  41 82 00 64 */	beq lbl_8034EAAC
/* 8034EA4C  54 60 02 D7 */	rlwinm. r0, r3, 0, 0xb, 0xb
/* 8034EA50  41 82 00 5C */	beq lbl_8034EAAC
/* 8034EA54  54 60 00 43 */	rlwinm. r0, r3, 0, 1, 1
/* 8034EA58  41 82 00 54 */	beq lbl_8034EAAC
/* 8034EA5C  54 60 01 4B */	rlwinm. r0, r3, 0, 5, 5
/* 8034EA60  40 82 00 4C */	bne lbl_8034EAAC
/* 8034EA64  54 60 03 19 */	rlwinm. r0, r3, 0, 0xc, 0xc
/* 8034EA68  40 82 00 44 */	bne lbl_8034EAAC
/* 8034EA6C  54 60 03 5B */	rlwinm. r0, r3, 0, 0xd, 0xd
/* 8034EA70  40 82 00 3C */	bne lbl_8034EAAC
/* 8034EA74  1C 9F 00 0C */	mulli r4, r31, 0xc
/* 8034EA78  3C 60 80 45 */	lis r3, Origin@ha
/* 8034EA7C  38 03 CB 80 */	addi r0, r3, Origin@l
/* 8034EA80  3C 60 80 35 */	lis r3, PADOriginUpdateCallback@ha
/* 8034EA84  7C C0 22 14 */	add r6, r0, r4
/* 8034EA88  39 03 E5 1C */	addi r8, r3, PADOriginUpdateCallback@l
/* 8034EA8C  38 7F 00 00 */	addi r3, r31, 0
/* 8034EA90  38 8D 84 B8 */	la r4, CmdReadOrigin(r13) /* 80450A38-_SDA_BASE_ */
/* 8034EA94  38 A0 00 01 */	li r5, 1
/* 8034EA98  38 E0 00 0A */	li r7, 0xa
/* 8034EA9C  39 40 00 00 */	li r10, 0
/* 8034EAA0  39 20 00 00 */	li r9, 0
/* 8034EAA4  4B FF 70 E9 */	bl SITransfer
/* 8034EAA8  48 00 00 68 */	b lbl_8034EB10
lbl_8034EAAC:
/* 8034EAAC  4B FE EC 49 */	bl OSDisableInterrupts
/* 8034EAB0  3B C3 00 00 */	addi r30, r3, 0
/* 8034EAB4  38 7D 00 00 */	addi r3, r29, 0
/* 8034EAB8  4B FF 6E 45 */	bl SIDisablePolling
/* 8034EABC  80 0D 92 CC */	lwz r0, EnabledBits(r13)
/* 8034EAC0  7F A9 E8 F8 */	nor r9, r29, r29
/* 8034EAC4  80 CD 92 D8 */	lwz r6, WaitingBits(r13)
/* 8034EAC8  7F E3 FB 78 */	mr r3, r31
/* 8034EACC  80 AD 92 DC */	lwz r5, CheckingBits(r13)
/* 8034EAD0  80 8D 92 E0 */	lwz r4, PendingBits(r13)
/* 8034EAD4  7C 08 48 38 */	and r8, r0, r9
/* 8034EAD8  80 0D 92 E4 */	lwz r0, BarrelBits(r13)
/* 8034EADC  7C C7 48 38 */	and r7, r6, r9
/* 8034EAE0  7C A6 48 38 */	and r6, r5, r9
/* 8034EAE4  7C 85 48 38 */	and r5, r4, r9
/* 8034EAE8  91 0D 92 CC */	stw r8, EnabledBits(r13)
/* 8034EAEC  7C 00 48 38 */	and r0, r0, r9
/* 8034EAF0  90 ED 92 D8 */	stw r7, WaitingBits(r13)
/* 8034EAF4  38 80 00 00 */	li r4, 0
/* 8034EAF8  90 CD 92 DC */	stw r6, CheckingBits(r13)
/* 8034EAFC  90 AD 92 E0 */	stw r5, PendingBits(r13)
/* 8034EB00  90 0D 92 E4 */	stw r0, BarrelBits(r13)
/* 8034EB04  4B FF 1D 49 */	bl OSSetWirelessID
/* 8034EB08  7F C3 F3 78 */	mr r3, r30
/* 8034EB0C  4B FE EC 11 */	bl OSRestoreInterrupts
lbl_8034EB10:
/* 8034EB10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8034EB14  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8034EB18  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8034EB1C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8034EB20  38 21 00 20 */	addi r1, r1, 0x20
/* 8034EB24  7C 08 03 A6 */	mtlr r0
/* 8034EB28  4E 80 00 20 */	blr 

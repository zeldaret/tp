lbl_8034EB2C:
/* 8034EB2C  7C 08 02 A6 */	mflr r0
/* 8034EB30  90 01 00 04 */	stw r0, 4(r1)
/* 8034EB34  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8034EB38  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8034EB3C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8034EB40  7C 7E 1B 78 */	mr r30, r3
/* 8034EB44  4B FE EB B1 */	bl OSDisableInterrupts
/* 8034EB48  80 8D 92 E0 */	lwz r4, PendingBits(r13)
/* 8034EB4C  39 00 00 00 */	li r8, 0
/* 8034EB50  80 AD 92 D8 */	lwz r5, WaitingBits(r13)
/* 8034EB54  7C 7F 1B 78 */	mr r31, r3
/* 8034EB58  80 0D 92 DC */	lwz r0, CheckingBits(r13)
/* 8034EB5C  7F DE 23 78 */	or r30, r30, r4
/* 8034EB60  80 8D 92 D0 */	lwz r4, ResettingBits(r13)
/* 8034EB64  7C A5 03 78 */	or r5, r5, r0
/* 8034EB68  80 0D 84 B0 */	lwz r0, Spec(r13)
/* 8034EB6C  7F DE 28 78 */	andc r30, r30, r5
/* 8034EB70  80 CD 92 CC */	lwz r6, EnabledBits(r13)
/* 8034EB74  7C 85 F3 78 */	or r5, r4, r30
/* 8034EB78  80 8D 92 E4 */	lwz r4, BarrelBits(r13)
/* 8034EB7C  7F C7 F0 F8 */	nor r7, r30, r30
/* 8034EB80  90 AD 92 D0 */	stw r5, ResettingBits(r13)
/* 8034EB84  7C C5 38 38 */	and r5, r6, r7
/* 8034EB88  7C 84 38 38 */	and r4, r4, r7
/* 8034EB8C  80 ED 92 D0 */	lwz r7, ResettingBits(r13)
/* 8034EB90  28 00 00 04 */	cmplwi r0, 4
/* 8034EB94  91 0D 92 E0 */	stw r8, PendingBits(r13)
/* 8034EB98  7C E3 30 38 */	and r3, r7, r6
/* 8034EB9C  90 AD 92 CC */	stw r5, EnabledBits(r13)
/* 8034EBA0  90 8D 92 E4 */	stw r4, BarrelBits(r13)
/* 8034EBA4  40 82 00 10 */	bne lbl_8034EBB4
/* 8034EBA8  80 0D 92 D4 */	lwz r0, RecalibrateBits(r13)
/* 8034EBAC  7C 00 F3 78 */	or r0, r0, r30
/* 8034EBB0  90 0D 92 D4 */	stw r0, RecalibrateBits(r13)
lbl_8034EBB4:
/* 8034EBB4  4B FF 6D 49 */	bl SIDisablePolling
/* 8034EBB8  80 0D 84 A4 */	lwz r0, ResettingChan(r13)
/* 8034EBBC  2C 00 00 20 */	cmpwi r0, 0x20
/* 8034EBC0  40 82 00 58 */	bne lbl_8034EC18
/* 8034EBC4  80 AD 92 D0 */	lwz r5, ResettingBits(r13)
/* 8034EBC8  7C A0 00 34 */	cntlzw r0, r5
/* 8034EBCC  90 0D 84 A4 */	stw r0, ResettingChan(r13)
/* 8034EBD0  80 8D 84 A4 */	lwz r4, ResettingChan(r13)
/* 8034EBD4  2C 04 00 20 */	cmpwi r4, 0x20
/* 8034EBD8  41 82 00 40 */	beq lbl_8034EC18
/* 8034EBDC  3C 00 80 00 */	lis r0, 0x8000
/* 8034EBE0  7C 00 24 30 */	srw r0, r0, r4
/* 8034EBE4  7C A0 00 78 */	andc r0, r5, r0
/* 8034EBE8  1C 84 00 0C */	mulli r4, r4, 0xc
/* 8034EBEC  90 0D 92 D0 */	stw r0, ResettingBits(r13)
/* 8034EBF0  3C 60 80 45 */	lis r3, Origin@ha
/* 8034EBF4  38 03 CB 80 */	addi r0, r3, Origin@l
/* 8034EBF8  7C 60 22 14 */	add r3, r0, r4
/* 8034EBFC  38 80 00 00 */	li r4, 0
/* 8034EC00  38 A0 00 0C */	li r5, 0xc
/* 8034EC04  4B CB 48 55 */	bl memset
/* 8034EC08  3C 80 80 35 */	lis r4, PADTypeAndStatusCallback@ha
/* 8034EC0C  80 6D 84 A4 */	lwz r3, ResettingChan(r13)
/* 8034EC10  38 84 E6 C0 */	addi r4, r4, PADTypeAndStatusCallback@l
/* 8034EC14  4B FF 75 41 */	bl SIGetTypeAsync
lbl_8034EC18:
/* 8034EC18  7F E3 FB 78 */	mr r3, r31
/* 8034EC1C  4B FE EB 01 */	bl OSRestoreInterrupts
/* 8034EC20  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8034EC24  38 60 00 01 */	li r3, 1
/* 8034EC28  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8034EC2C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8034EC30  38 21 00 18 */	addi r1, r1, 0x18
/* 8034EC34  7C 08 03 A6 */	mtlr r0
/* 8034EC38  4E 80 00 20 */	blr 

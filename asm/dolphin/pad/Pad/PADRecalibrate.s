lbl_8034EC3C:
/* 8034EC3C  7C 08 02 A6 */	mflr r0
/* 8034EC40  90 01 00 04 */	stw r0, 4(r1)
/* 8034EC44  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8034EC48  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8034EC4C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8034EC50  7C 7E 1B 78 */	mr r30, r3
/* 8034EC54  4B FE EA A1 */	bl OSDisableInterrupts
/* 8034EC58  80 AD 92 E0 */	lwz r5, PendingBits(r13)
/* 8034EC5C  39 00 00 00 */	li r8, 0
/* 8034EC60  80 CD 92 D8 */	lwz r6, WaitingBits(r13)
/* 8034EC64  3C 80 80 00 */	lis r4, 0x8000 /* 0x800030E3@ha */
/* 8034EC68  80 0D 92 DC */	lwz r0, CheckingBits(r13)
/* 8034EC6C  7F DE 2B 78 */	or r30, r30, r5
/* 8034EC70  80 AD 92 D0 */	lwz r5, ResettingBits(r13)
/* 8034EC74  7C C6 03 78 */	or r6, r6, r0
/* 8034EC78  88 04 30 E3 */	lbz r0, 0x30E3(r4)  /* 0x800030E3@l */
/* 8034EC7C  7F DE 30 78 */	andc r30, r30, r6
/* 8034EC80  80 CD 92 CC */	lwz r6, EnabledBits(r13)
/* 8034EC84  7C A5 F3 78 */	or r5, r5, r30
/* 8034EC88  80 8D 92 E4 */	lwz r4, BarrelBits(r13)
/* 8034EC8C  90 AD 92 D0 */	stw r5, ResettingBits(r13)
/* 8034EC90  7F C9 F0 F8 */	nor r9, r30, r30
/* 8034EC94  7C C5 48 38 */	and r5, r6, r9
/* 8034EC98  7C 84 48 38 */	and r4, r4, r9
/* 8034EC9C  80 ED 92 D0 */	lwz r7, ResettingBits(r13)
/* 8034ECA0  7C 7F 1B 78 */	mr r31, r3
/* 8034ECA4  91 0D 92 E0 */	stw r8, PendingBits(r13)
/* 8034ECA8  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 8034ECAC  90 AD 92 CC */	stw r5, EnabledBits(r13)
/* 8034ECB0  7C E3 30 38 */	and r3, r7, r6
/* 8034ECB4  90 8D 92 E4 */	stw r4, BarrelBits(r13)
/* 8034ECB8  40 82 00 10 */	bne lbl_8034ECC8
/* 8034ECBC  80 0D 92 D4 */	lwz r0, RecalibrateBits(r13)
/* 8034ECC0  7C 00 F3 78 */	or r0, r0, r30
/* 8034ECC4  90 0D 92 D4 */	stw r0, RecalibrateBits(r13)
lbl_8034ECC8:
/* 8034ECC8  4B FF 6C 35 */	bl SIDisablePolling
/* 8034ECCC  80 0D 84 A4 */	lwz r0, ResettingChan(r13)
/* 8034ECD0  2C 00 00 20 */	cmpwi r0, 0x20
/* 8034ECD4  40 82 00 58 */	bne lbl_8034ED2C
/* 8034ECD8  80 AD 92 D0 */	lwz r5, ResettingBits(r13)
/* 8034ECDC  7C A0 00 34 */	cntlzw r0, r5
/* 8034ECE0  90 0D 84 A4 */	stw r0, ResettingChan(r13)
/* 8034ECE4  80 8D 84 A4 */	lwz r4, ResettingChan(r13)
/* 8034ECE8  2C 04 00 20 */	cmpwi r4, 0x20
/* 8034ECEC  41 82 00 40 */	beq lbl_8034ED2C
/* 8034ECF0  3C 00 80 00 */	lis r0, 0x8000
/* 8034ECF4  7C 00 24 30 */	srw r0, r0, r4
/* 8034ECF8  7C A0 00 78 */	andc r0, r5, r0
/* 8034ECFC  1C 84 00 0C */	mulli r4, r4, 0xc
/* 8034ED00  90 0D 92 D0 */	stw r0, ResettingBits(r13)
/* 8034ED04  3C 60 80 45 */	lis r3, Origin@ha /* 0x8044CB80@ha */
/* 8034ED08  38 03 CB 80 */	addi r0, r3, Origin@l /* 0x8044CB80@l */
/* 8034ED0C  7C 60 22 14 */	add r3, r0, r4
/* 8034ED10  38 80 00 00 */	li r4, 0
/* 8034ED14  38 A0 00 0C */	li r5, 0xc
/* 8034ED18  4B CB 47 41 */	bl memset
/* 8034ED1C  3C 80 80 35 */	lis r4, PADTypeAndStatusCallback@ha /* 0x8034E6C0@ha */
/* 8034ED20  80 6D 84 A4 */	lwz r3, ResettingChan(r13)
/* 8034ED24  38 84 E6 C0 */	addi r4, r4, PADTypeAndStatusCallback@l /* 0x8034E6C0@l */
/* 8034ED28  4B FF 74 2D */	bl SIGetTypeAsync
lbl_8034ED2C:
/* 8034ED2C  7F E3 FB 78 */	mr r3, r31
/* 8034ED30  4B FE E9 ED */	bl OSRestoreInterrupts
/* 8034ED34  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8034ED38  38 60 00 01 */	li r3, 1
/* 8034ED3C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8034ED40  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8034ED44  38 21 00 18 */	addi r1, r1, 0x18
/* 8034ED48  7C 08 03 A6 */	mtlr r0
/* 8034ED4C  4E 80 00 20 */	blr 

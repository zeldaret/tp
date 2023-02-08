lbl_8034DA04:
/* 8034DA04  7C 08 02 A6 */	mflr r0
/* 8034DA08  90 01 00 04 */	stw r0, 4(r1)
/* 8034DA0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8034DA10  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8034DA14  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8034DA18  83 ED 92 A8 */	lwz r31, CurrTiming(r13)
/* 8034DA1C  4B FE FC D9 */	bl OSDisableInterrupts
/* 8034DA20  3C 80 CC 00 */	lis r4, 0xCC00 /* 0xCC002000@ha */
/* 8034DA24  39 04 20 00 */	addi r8, r4, 0x2000 /* 0xCC002000@l */
/* 8034DA28  A4 08 00 2C */	lhzu r0, 0x2c(r8)
/* 8034DA2C  38 A4 20 00 */	addi r5, r4, 0x2000
/* 8034DA30  54 06 05 7E */	clrlwi r6, r0, 0x15
lbl_8034DA34:
/* 8034DA34  A0 08 00 00 */	lhz r0, 0(r8)
/* 8034DA38  7C C7 33 78 */	mr r7, r6
/* 8034DA3C  A0 85 00 2E */	lhz r4, 0x2e(r5)
/* 8034DA40  54 06 05 7E */	clrlwi r6, r0, 0x15
/* 8034DA44  7C 07 30 40 */	cmplw r7, r6
/* 8034DA48  54 87 05 7E */	clrlwi r7, r4, 0x15
/* 8034DA4C  40 82 FF E8 */	bne lbl_8034DA34
/* 8034DA50  80 8D 92 A8 */	lwz r4, CurrTiming(r13)
/* 8034DA54  38 A7 FF FF */	addi r5, r7, -1
/* 8034DA58  38 C6 FF FF */	addi r6, r6, -1
/* 8034DA5C  A0 04 00 1A */	lhz r0, 0x1a(r4)
/* 8034DA60  54 C4 08 3C */	slwi r4, r6, 1
/* 8034DA64  7C 05 03 96 */	divwu r0, r5, r0
/* 8034DA68  7F C4 02 14 */	add r30, r4, r0
/* 8034DA6C  4B FE FC B1 */	bl OSRestoreInterrupts
/* 8034DA70  A0 1F 00 18 */	lhz r0, 0x18(r31)
/* 8034DA74  7C 1E 00 40 */	cmplw r30, r0
/* 8034DA78  41 80 00 08 */	blt lbl_8034DA80
/* 8034DA7C  7F C0 F0 50 */	subf r30, r0, r30
lbl_8034DA80:
/* 8034DA80  57 C3 F8 7E */	srwi r3, r30, 1
/* 8034DA84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8034DA88  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8034DA8C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8034DA90  38 21 00 20 */	addi r1, r1, 0x20
/* 8034DA94  7C 08 03 A6 */	mtlr r0
/* 8034DA98  4E 80 00 20 */	blr 

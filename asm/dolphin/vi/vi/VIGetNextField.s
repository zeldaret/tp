lbl_8034D968:
/* 8034D968  7C 08 02 A6 */	mflr r0
/* 8034D96C  90 01 00 04 */	stw r0, 4(r1)
/* 8034D970  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8034D974  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8034D978  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8034D97C  4B FE FD 79 */	bl OSDisableInterrupts
/* 8034D980  3B C3 00 00 */	addi r30, r3, 0
/* 8034D984  38 61 00 10 */	addi r3, r1, 0x10
/* 8034D988  38 81 00 14 */	addi r4, r1, 0x14
/* 8034D98C  4B FF FF 39 */	bl GetCurrentDisplayPosition
/* 8034D990  80 AD 92 A8 */	lwz r5, CurrTiming(r13)
/* 8034D994  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8034D998  A0 05 00 1A */	lhz r0, 0x1a(r5)
/* 8034D99C  38 63 FF FF */	addi r3, r3, -1
/* 8034D9A0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8034D9A4  7C 63 03 96 */	divwu r3, r3, r0
/* 8034D9A8  A0 05 00 18 */	lhz r0, 0x18(r5)
/* 8034D9AC  38 84 FF FF */	addi r4, r4, -1
/* 8034D9B0  54 84 08 3C */	slwi r4, r4, 1
/* 8034D9B4  7C 64 1A 14 */	add r3, r4, r3
/* 8034D9B8  7C 03 00 40 */	cmplw r3, r0
/* 8034D9BC  40 80 00 0C */	bge lbl_8034D9C8
/* 8034D9C0  3B E0 00 01 */	li r31, 1
/* 8034D9C4  48 00 00 08 */	b lbl_8034D9CC
lbl_8034D9C8:
/* 8034D9C8  3B E0 00 00 */	li r31, 0
lbl_8034D9CC:
/* 8034D9CC  7F C3 F3 78 */	mr r3, r30
/* 8034D9D0  4B FE FD 4D */	bl OSRestoreInterrupts
/* 8034D9D4  3C 60 80 45 */	lis r3, HorVer@ha /* 0x8044CB18@ha */
/* 8034D9D8  38 63 CB 18 */	addi r3, r3, HorVer@l /* 0x8044CB18@l */
/* 8034D9DC  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 8034D9E0  6B E3 00 01 */	xori r3, r31, 1
/* 8034D9E4  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8034D9E8  7C 63 02 78 */	xor r3, r3, r0
/* 8034D9EC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8034D9F0  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8034D9F4  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8034D9F8  38 21 00 28 */	addi r1, r1, 0x28
/* 8034D9FC  7C 08 03 A6 */	mtlr r0
/* 8034DA00  4E 80 00 20 */	blr 

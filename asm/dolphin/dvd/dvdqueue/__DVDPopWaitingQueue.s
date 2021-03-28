lbl_8034B914:
/* 8034B914  7C 08 02 A6 */	mflr r0
/* 8034B918  90 01 00 04 */	stw r0, 4(r1)
/* 8034B91C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8034B920  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8034B924  4B FF 1D D1 */	bl OSDisableInterrupts
/* 8034B928  38 00 00 04 */	li r0, 4
/* 8034B92C  3C 80 80 45 */	lis r4, WaitingQueue@ha
/* 8034B930  7C 09 03 A6 */	mtctr r0
/* 8034B934  38 84 C9 98 */	addi r4, r4, WaitingQueue@l
/* 8034B938  3B E0 00 00 */	li r31, 0
lbl_8034B93C:
/* 8034B93C  80 04 00 00 */	lwz r0, 0(r4)
/* 8034B940  7C 00 20 40 */	cmplw r0, r4
/* 8034B944  41 82 00 48 */	beq lbl_8034B98C
/* 8034B948  4B FF 1D D5 */	bl OSRestoreInterrupts
/* 8034B94C  4B FF 1D A9 */	bl OSDisableInterrupts
/* 8034B950  3C 80 80 45 */	lis r4, WaitingQueue@ha
/* 8034B954  57 E5 18 38 */	slwi r5, r31, 3
/* 8034B958  38 04 C9 98 */	addi r0, r4, WaitingQueue@l
/* 8034B95C  7C A0 2A 14 */	add r5, r0, r5
/* 8034B960  83 E5 00 00 */	lwz r31, 0(r5)
/* 8034B964  80 1F 00 00 */	lwz r0, 0(r31)
/* 8034B968  90 05 00 00 */	stw r0, 0(r5)
/* 8034B96C  80 9F 00 00 */	lwz r4, 0(r31)
/* 8034B970  90 A4 00 04 */	stw r5, 4(r4)
/* 8034B974  4B FF 1D A9 */	bl OSRestoreInterrupts
/* 8034B978  38 00 00 00 */	li r0, 0
/* 8034B97C  90 1F 00 00 */	stw r0, 0(r31)
/* 8034B980  7F E3 FB 78 */	mr r3, r31
/* 8034B984  90 1F 00 04 */	stw r0, 4(r31)
/* 8034B988  48 00 00 18 */	b lbl_8034B9A0
lbl_8034B98C:
/* 8034B98C  38 84 00 08 */	addi r4, r4, 8
/* 8034B990  3B FF 00 01 */	addi r31, r31, 1
/* 8034B994  42 00 FF A8 */	bdnz lbl_8034B93C
/* 8034B998  4B FF 1D 85 */	bl OSRestoreInterrupts
/* 8034B99C  38 60 00 00 */	li r3, 0
lbl_8034B9A0:
/* 8034B9A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8034B9A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8034B9A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8034B9AC  7C 08 03 A6 */	mtlr r0
/* 8034B9B0  4E 80 00 20 */	blr 

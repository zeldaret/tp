lbl_80348388:
/* 80348388  7C 08 02 A6 */	mflr r0
/* 8034838C  3C 80 CC 00 */	lis r4, 0xCC00 /* 0xCC003000@ha */
/* 80348390  90 01 00 04 */	stw r0, 4(r1)
/* 80348394  38 00 00 02 */	li r0, 2
/* 80348398  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8034839C  BF 41 00 08 */	stmw r26, 8(r1)
/* 803483A0  3B E4 30 00 */	addi r31, r4, 0x3000 /* 0xCC003000@l */
/* 803483A4  90 04 60 04 */	stw r0, 0x6004(r4)
/* 803483A8  83 C4 30 24 */	lwz r30, 0x3024(r4)
/* 803483AC  57 C0 07 B8 */	rlwinm r0, r30, 0, 0x1e, 0x1c
/* 803483B0  60 00 00 01 */	ori r0, r0, 1
/* 803483B4  94 1F 00 24 */	stwu r0, 0x24(r31)
/* 803483B8  4B FF A3 65 */	bl __OSGetSystemTime
/* 803483BC  3C A0 80 00 */	lis r5, 0x8000 /* 0x800000F8@ha */
/* 803483C0  80 05 00 F8 */	lwz r0, 0x00F8(r5)
/* 803483C4  3C A0 43 1C */	lis r5, 0x431C /* 0x431BDE83@ha */
/* 803483C8  38 A5 DE 83 */	addi r5, r5, 0xDE83 /* 0x431BDE83@l */
/* 803483CC  54 00 F0 BE */	srwi r0, r0, 2
/* 803483D0  7C 05 00 16 */	mulhwu r0, r5, r0
/* 803483D4  54 00 8B FE */	srwi r0, r0, 0xf
/* 803483D8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 803483DC  3B 44 00 00 */	addi r26, r4, 0
/* 803483E0  3B 63 00 00 */	addi r27, r3, 0
/* 803483E4  54 1C E8 FE */	srwi r28, r0, 3
/* 803483E8  3B A0 00 00 */	li r29, 0
lbl_803483EC:
/* 803483EC  4B FF A3 31 */	bl __OSGetSystemTime
/* 803483F0  7C BA 20 10 */	subfc r5, r26, r4
/* 803483F4  7C 1B 19 10 */	subfe r0, r27, r3
/* 803483F8  6C 04 80 00 */	xoris r4, r0, 0x8000
/* 803483FC  6F A3 80 00 */	xoris r3, r29, 0x8000
/* 80348400  7C 1C 28 10 */	subfc r0, r28, r5
/* 80348404  7C 63 21 10 */	subfe r3, r3, r4
/* 80348408  7C 64 21 10 */	subfe r3, r4, r4
/* 8034840C  7C 63 00 D1 */	neg. r3, r3
/* 80348410  40 82 FF DC */	bne lbl_803483EC
/* 80348414  63 C0 00 05 */	ori r0, r30, 5
/* 80348418  90 1F 00 00 */	stw r0, 0(r31)
/* 8034841C  38 00 00 01 */	li r0, 1
/* 80348420  90 0D 91 A8 */	stw r0, ResetOccurred(r13)
/* 80348424  4B FF A2 F9 */	bl __OSGetSystemTime
/* 80348428  90 8D 91 A4 */	stw r4, data_80451724(r13)
/* 8034842C  90 6D 91 A0 */	stw r3, LastResetEnd(r13)
/* 80348430  BB 41 00 08 */	lmw r26, 8(r1)
/* 80348434  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80348438  38 21 00 20 */	addi r1, r1, 0x20
/* 8034843C  7C 08 03 A6 */	mtlr r0
/* 80348440  4E 80 00 20 */	blr 

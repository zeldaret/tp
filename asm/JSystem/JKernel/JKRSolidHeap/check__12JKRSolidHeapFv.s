lbl_802D106C:
/* 802D106C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D1070  7C 08 02 A6 */	mflr r0
/* 802D1074  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D1078  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D107C  93 C1 00 08 */	stw r30, 8(r1)
/* 802D1080  7C 7E 1B 78 */	mr r30, r3
/* 802D1084  38 7E 00 18 */	addi r3, r30, 0x18
/* 802D1088  48 06 DF B9 */	bl OSLockMutex
/* 802D108C  3B E0 00 01 */	li r31, 1
/* 802D1090  80 DE 00 6C */	lwz r6, 0x6c(r30)
/* 802D1094  80 7E 00 30 */	lwz r3, 0x30(r30)
/* 802D1098  80 1E 00 70 */	lwz r0, 0x70(r30)
/* 802D109C  7C 83 00 50 */	subf r4, r3, r0
/* 802D10A0  80 7E 00 74 */	lwz r3, 0x74(r30)
/* 802D10A4  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 802D10A8  7C 03 00 50 */	subf r0, r3, r0
/* 802D10AC  7C A4 02 14 */	add r5, r4, r0
/* 802D10B0  7C A6 2A 14 */	add r5, r6, r5
/* 802D10B4  80 9E 00 38 */	lwz r4, 0x38(r30)
/* 802D10B8  7C 05 20 40 */	cmplw r5, r4
/* 802D10BC  41 82 00 1C */	beq lbl_802D10D8
/* 802D10C0  3B E0 00 00 */	li r31, 0
/* 802D10C4  3C 60 80 3A */	lis r3, JKRSolidHeap__stringBase0@ha
/* 802D10C8  38 63 CE 50 */	addi r3, r3, JKRSolidHeap__stringBase0@l
/* 802D10CC  38 63 00 E6 */	addi r3, r3, 0xe6
/* 802D10D0  4C C6 31 82 */	crclr 6
/* 802D10D4  48 01 75 A9 */	bl JUTWarningConsole_f
lbl_802D10D8:
/* 802D10D8  38 7E 00 18 */	addi r3, r30, 0x18
/* 802D10DC  48 06 E0 41 */	bl OSUnlockMutex
/* 802D10E0  7F E3 FB 78 */	mr r3, r31
/* 802D10E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D10E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D10EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D10F0  7C 08 03 A6 */	mtlr r0
/* 802D10F4  38 21 00 10 */	addi r1, r1, 0x10
/* 802D10F8  4E 80 00 20 */	blr 

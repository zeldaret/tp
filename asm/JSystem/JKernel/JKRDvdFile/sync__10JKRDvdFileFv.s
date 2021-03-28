lbl_802D9A70:
/* 802D9A70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D9A74  7C 08 02 A6 */	mflr r0
/* 802D9A78  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D9A7C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D9A80  7C 7F 1B 78 */	mr r31, r3
/* 802D9A84  38 7F 00 1C */	addi r3, r31, 0x1c
/* 802D9A88  48 06 55 B9 */	bl OSLockMutex
/* 802D9A8C  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 802D9A90  38 81 00 08 */	addi r4, r1, 8
/* 802D9A94  38 A0 00 01 */	li r5, 1
/* 802D9A98  48 06 50 25 */	bl OSReceiveMessage
/* 802D9A9C  38 00 00 00 */	li r0, 0
/* 802D9AA0  90 1F 00 F4 */	stw r0, 0xf4(r31)
/* 802D9AA4  38 7F 00 1C */	addi r3, r31, 0x1c
/* 802D9AA8  48 06 56 75 */	bl OSUnlockMutex
/* 802D9AAC  80 61 00 08 */	lwz r3, 8(r1)
/* 802D9AB0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D9AB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D9AB8  7C 08 03 A6 */	mtlr r0
/* 802D9ABC  38 21 00 20 */	addi r1, r1, 0x20
/* 802D9AC0  4E 80 00 20 */	blr 

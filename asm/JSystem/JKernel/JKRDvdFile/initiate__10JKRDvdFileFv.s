lbl_802D97E4:
/* 802D97E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D97E8  7C 08 02 A6 */	mflr r0
/* 802D97EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D97F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D97F4  7C 7F 1B 78 */	mr r31, r3
/* 802D97F8  93 E3 00 98 */	stw r31, 0x98(r3)
/* 802D97FC  38 7F 00 1C */	addi r3, r31, 0x1c
/* 802D9800  48 06 58 09 */	bl OSInitMutex
/* 802D9804  38 7F 00 34 */	addi r3, r31, 0x34
/* 802D9808  48 06 58 01 */	bl OSInitMutex
/* 802D980C  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 802D9810  38 9F 00 E0 */	addi r4, r31, 0xe0
/* 802D9814  38 A0 00 01 */	li r5, 1
/* 802D9818  48 06 51 7D */	bl OSInitMessageQueue
/* 802D981C  38 7F 00 9C */	addi r3, r31, 0x9c
/* 802D9820  38 9F 00 BC */	addi r4, r31, 0xbc
/* 802D9824  38 A0 00 01 */	li r5, 1
/* 802D9828  48 06 51 6D */	bl OSInitMessageQueue
/* 802D982C  38 00 00 00 */	li r0, 0
/* 802D9830  90 1F 00 F4 */	stw r0, 0xf4(r31)
/* 802D9834  90 1F 00 50 */	stw r0, 0x50(r31)
/* 802D9838  90 1F 00 58 */	stw r0, 0x58(r31)
/* 802D983C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D9840  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D9844  7C 08 03 A6 */	mtlr r0
/* 802D9848  38 21 00 10 */	addi r1, r1, 0x10
/* 802D984C  4E 80 00 20 */	blr 

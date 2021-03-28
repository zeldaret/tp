lbl_802D0F14:
/* 802D0F14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D0F18  7C 08 02 A6 */	mflr r0
/* 802D0F1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D0F20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D0F24  7C 7F 1B 78 */	mr r31, r3
/* 802D0F28  38 7F 00 18 */	addi r3, r31, 0x18
/* 802D0F2C  48 06 E1 15 */	bl OSLockMutex
/* 802D0F30  7F E3 FB 78 */	mr r3, r31
/* 802D0F34  4B FF D6 41 */	bl callAllDisposer__7JKRHeapFv
/* 802D0F38  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 802D0F3C  90 1F 00 6C */	stw r0, 0x6c(r31)
/* 802D0F40  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 802D0F44  90 1F 00 70 */	stw r0, 0x70(r31)
/* 802D0F48  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 802D0F4C  90 1F 00 74 */	stw r0, 0x74(r31)
/* 802D0F50  38 00 00 00 */	li r0, 0
/* 802D0F54  90 1F 00 78 */	stw r0, 0x78(r31)
/* 802D0F58  38 7F 00 18 */	addi r3, r31, 0x18
/* 802D0F5C  48 06 E1 C1 */	bl OSUnlockMutex
/* 802D0F60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D0F64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D0F68  7C 08 03 A6 */	mtlr r0
/* 802D0F6C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D0F70  4E 80 00 20 */	blr 

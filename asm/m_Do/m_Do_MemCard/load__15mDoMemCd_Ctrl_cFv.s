lbl_800169B4:
/* 800169B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800169B8  7C 08 02 A6 */	mflr r0
/* 800169BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800169C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800169C4  7C 7F 1B 78 */	mr r31, r3
/* 800169C8  38 7F 1F CC */	addi r3, r31, 0x1fcc
/* 800169CC  48 32 88 89 */	bl OSTryLockMutex
/* 800169D0  2C 03 00 00 */	cmpwi r3, 0
/* 800169D4  41 82 00 24 */	beq lbl_800169F8
/* 800169D8  38 00 00 00 */	li r0, 0
/* 800169DC  90 1F 1F C8 */	stw r0, 0x1fc8(r31)
/* 800169E0  38 00 00 01 */	li r0, 1
/* 800169E4  90 1F 1F C0 */	stw r0, 0x1fc0(r31)
/* 800169E8  38 7F 1F CC */	addi r3, r31, 0x1fcc
/* 800169EC  48 32 87 31 */	bl OSUnlockMutex
/* 800169F0  38 7F 1F E4 */	addi r3, r31, 0x1fe4
/* 800169F4  48 32 8A 11 */	bl OSSignalCond
lbl_800169F8:
/* 800169F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800169FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80016A00  7C 08 03 A6 */	mtlr r0
/* 80016A04  38 21 00 10 */	addi r1, r1, 0x10
/* 80016A08  4E 80 00 20 */	blr 

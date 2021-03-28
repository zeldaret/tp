lbl_80016E58:
/* 80016E58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80016E5C  7C 08 02 A6 */	mflr r0
/* 80016E60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80016E64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80016E68  7C 7F 1B 78 */	mr r31, r3
/* 80016E6C  38 7F 1F CC */	addi r3, r31, 0x1fcc
/* 80016E70  48 32 83 E5 */	bl OSTryLockMutex
/* 80016E74  2C 03 00 00 */	cmpwi r3, 0
/* 80016E78  41 82 00 1C */	beq lbl_80016E94
/* 80016E7C  38 00 00 03 */	li r0, 3
/* 80016E80  90 1F 1F C0 */	stw r0, 0x1fc0(r31)
/* 80016E84  38 7F 1F CC */	addi r3, r31, 0x1fcc
/* 80016E88  48 32 82 95 */	bl OSUnlockMutex
/* 80016E8C  38 7F 1F E4 */	addi r3, r31, 0x1fe4
/* 80016E90  48 32 85 75 */	bl OSSignalCond
lbl_80016E94:
/* 80016E94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80016E98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80016E9C  7C 08 03 A6 */	mtlr r0
/* 80016EA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80016EA4  4E 80 00 20 */	blr 

lbl_80016B58:
/* 80016B58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80016B5C  7C 08 02 A6 */	mflr r0
/* 80016B60  90 01 00 24 */	stw r0, 0x24(r1)
/* 80016B64  39 61 00 20 */	addi r11, r1, 0x20
/* 80016B68  48 34 B6 71 */	bl _savegpr_28
/* 80016B6C  7C 7C 1B 78 */	mr r28, r3
/* 80016B70  7C 9D 23 78 */	mr r29, r4
/* 80016B74  7C BE 2B 78 */	mr r30, r5
/* 80016B78  7C DF 33 78 */	mr r31, r6
/* 80016B7C  38 7C 1F CC */	addi r3, r28, 0x1fcc
/* 80016B80  48 32 86 D5 */	bl OSTryLockMutex
/* 80016B84  2C 03 00 00 */	cmpwi r3, 0
/* 80016B88  41 82 00 34 */	beq lbl_80016BBC
/* 80016B8C  7C 7C FA 14 */	add r3, r28, r31
/* 80016B90  7F A4 EB 78 */	mr r4, r29
/* 80016B94  7F C5 F3 78 */	mr r5, r30
/* 80016B98  4B FE C9 A9 */	bl memcpy
/* 80016B9C  38 00 00 00 */	li r0, 0
/* 80016BA0  90 1C 1F C8 */	stw r0, 0x1fc8(r28)
/* 80016BA4  38 00 00 02 */	li r0, 2
/* 80016BA8  90 1C 1F C0 */	stw r0, 0x1fc0(r28)
/* 80016BAC  38 7C 1F CC */	addi r3, r28, 0x1fcc
/* 80016BB0  48 32 85 6D */	bl OSUnlockMutex
/* 80016BB4  38 7C 1F E4 */	addi r3, r28, 0x1fe4
/* 80016BB8  48 32 88 4D */	bl OSSignalCond
lbl_80016BBC:
/* 80016BBC  39 61 00 20 */	addi r11, r1, 0x20
/* 80016BC0  48 34 B6 65 */	bl _restgpr_28
/* 80016BC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80016BC8  7C 08 03 A6 */	mtlr r0
/* 80016BCC  38 21 00 20 */	addi r1, r1, 0x20
/* 80016BD0  4E 80 00 20 */	blr 

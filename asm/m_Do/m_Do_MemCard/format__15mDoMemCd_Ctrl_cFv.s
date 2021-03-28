lbl_80016EA8:
/* 80016EA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80016EAC  7C 08 02 A6 */	mflr r0
/* 80016EB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80016EB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80016EB8  93 C1 00 08 */	stw r30, 8(r1)
/* 80016EBC  7C 7E 1B 78 */	mr r30, r3
/* 80016EC0  38 00 00 00 */	li r0, 0
/* 80016EC4  90 03 1F C8 */	stw r0, 0x1fc8(r3)
/* 80016EC8  88 63 1F BC */	lbz r3, 0x1fbc(r3)
/* 80016ECC  48 34 0D 55 */	bl CARDFormat
/* 80016ED0  7C 7F 1B 78 */	mr r31, r3
/* 80016ED4  38 7E 1F CC */	addi r3, r30, 0x1fcc
/* 80016ED8  48 32 83 7D */	bl OSTryLockMutex
/* 80016EDC  2C 03 00 00 */	cmpwi r3, 0
/* 80016EE0  41 82 00 34 */	beq lbl_80016F14
/* 80016EE4  2C 1F 00 00 */	cmpwi r31, 0
/* 80016EE8  40 82 00 10 */	bne lbl_80016EF8
/* 80016EEC  38 00 00 05 */	li r0, 5
/* 80016EF0  90 1E 1F C4 */	stw r0, 0x1fc4(r30)
/* 80016EF4  48 00 00 10 */	b lbl_80016F04
lbl_80016EF8:
/* 80016EF8  7F C3 F3 78 */	mr r3, r30
/* 80016EFC  7F E4 FB 78 */	mr r4, r31
/* 80016F00  48 00 04 61 */	bl setCardState__15mDoMemCd_Ctrl_cFl
lbl_80016F04:
/* 80016F04  38 00 00 01 */	li r0, 1
/* 80016F08  90 1E 1F C8 */	stw r0, 0x1fc8(r30)
/* 80016F0C  38 7E 1F CC */	addi r3, r30, 0x1fcc
/* 80016F10  48 32 82 0D */	bl OSUnlockMutex
lbl_80016F14:
/* 80016F14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80016F18  83 C1 00 08 */	lwz r30, 8(r1)
/* 80016F1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80016F20  7C 08 03 A6 */	mtlr r0
/* 80016F24  38 21 00 10 */	addi r1, r1, 0x10
/* 80016F28  4E 80 00 20 */	blr 

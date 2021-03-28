lbl_80015A3C:
/* 80015A3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80015A40  7C 08 02 A6 */	mflr r0
/* 80015A44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80015A48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80015A4C  93 C1 00 08 */	stw r30, 8(r1)
/* 80015A50  7C 7E 1B 78 */	mr r30, r3
/* 80015A54  7C 9F 23 78 */	mr r31, r4
/* 80015A58  38 7E 00 30 */	addi r3, r30, 0x30
/* 80015A5C  48 32 95 E5 */	bl OSLockMutex
/* 80015A60  7F E3 FB 78 */	mr r3, r31
/* 80015A64  48 25 04 15 */	bl cLs_SingleCut__FP10node_class
/* 80015A68  38 7E 00 30 */	addi r3, r30, 0x30
/* 80015A6C  48 32 96 B1 */	bl OSUnlockMutex
/* 80015A70  7F C3 F3 78 */	mr r3, r30
/* 80015A74  4B FF FF 19 */	bl kick__17mDoDvdThd_param_cFv
/* 80015A78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80015A7C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80015A80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80015A84  7C 08 03 A6 */	mtlr r0
/* 80015A88  38 21 00 10 */	addi r1, r1, 0x10
/* 80015A8C  4E 80 00 20 */	blr 

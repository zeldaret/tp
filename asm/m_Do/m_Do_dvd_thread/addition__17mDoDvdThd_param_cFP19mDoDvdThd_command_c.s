lbl_800159E4:
/* 800159E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800159E8  7C 08 02 A6 */	mflr r0
/* 800159EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800159F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800159F4  93 C1 00 08 */	stw r30, 8(r1)
/* 800159F8  7C 7E 1B 78 */	mr r30, r3
/* 800159FC  7C 9F 23 78 */	mr r31, r4
/* 80015A00  38 7E 00 30 */	addi r3, r30, 0x30
/* 80015A04  48 32 96 3D */	bl OSLockMutex
/* 80015A08  38 7E 00 24 */	addi r3, r30, 0x24
/* 80015A0C  7F E4 FB 78 */	mr r4, r31
/* 80015A10  48 25 04 ED */	bl cLs_Addition__FP15node_list_classP10node_class
/* 80015A14  38 7E 00 30 */	addi r3, r30, 0x30
/* 80015A18  48 32 97 05 */	bl OSUnlockMutex
/* 80015A1C  7F C3 F3 78 */	mr r3, r30
/* 80015A20  4B FF FF 6D */	bl kick__17mDoDvdThd_param_cFv
/* 80015A24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80015A28  83 C1 00 08 */	lwz r30, 8(r1)
/* 80015A2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80015A30  7C 08 03 A6 */	mtlr r0
/* 80015A34  38 21 00 10 */	addi r1, r1, 0x10
/* 80015A38  4E 80 00 20 */	blr 

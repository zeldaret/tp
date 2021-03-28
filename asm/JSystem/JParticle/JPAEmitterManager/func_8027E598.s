lbl_8027E598:
/* 8027E598  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027E59C  7C 08 02 A6 */	mflr r0
/* 8027E5A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027E5A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027E5A8  93 C1 00 08 */	stw r30, 8(r1)
/* 8027E5AC  7C 7E 1B 79 */	or. r30, r3, r3
/* 8027E5B0  7C 9F 23 78 */	mr r31, r4
/* 8027E5B4  41 82 00 1C */	beq lbl_8027E5D0
/* 8027E5B8  38 80 00 00 */	li r4, 0
/* 8027E5BC  48 05 D8 F1 */	bl __dt__10JSUPtrListFv
/* 8027E5C0  7F E0 07 35 */	extsh. r0, r31
/* 8027E5C4  40 81 00 0C */	ble lbl_8027E5D0
/* 8027E5C8  7F C3 F3 78 */	mr r3, r30
/* 8027E5CC  48 05 07 71 */	bl __dl__FPv
lbl_8027E5D0:
/* 8027E5D0  7F C3 F3 78 */	mr r3, r30
/* 8027E5D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027E5D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8027E5DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027E5E0  7C 08 03 A6 */	mtlr r0
/* 8027E5E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8027E5E8  4E 80 00 20 */	blr 

lbl_802AD94C:
/* 802AD94C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AD950  7C 08 02 A6 */	mflr r0
/* 802AD954  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AD958  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AD95C  93 C1 00 08 */	stw r30, 8(r1)
/* 802AD960  7C 9E 23 78 */	mr r30, r4
/* 802AD964  83 ED 85 E0 */	lwz r31, __OSReport_disable-0x38(r13)
/* 802AD968  38 7F 00 18 */	addi r3, r31, 0x18
/* 802AD96C  4B FF 24 75 */	bl stop__16JAISeCategoryMgrFUl
/* 802AD970  38 7F 00 84 */	addi r3, r31, 0x84
/* 802AD974  7F C4 F3 78 */	mr r4, r30
/* 802AD978  4B FF 24 69 */	bl stop__16JAISeCategoryMgrFUl
/* 802AD97C  38 7F 00 F0 */	addi r3, r31, 0xf0
/* 802AD980  7F C4 F3 78 */	mr r4, r30
/* 802AD984  4B FF 24 5D */	bl stop__16JAISeCategoryMgrFUl
/* 802AD988  38 7F 01 5C */	addi r3, r31, 0x15c
/* 802AD98C  7F C4 F3 78 */	mr r4, r30
/* 802AD990  4B FF 24 51 */	bl stop__16JAISeCategoryMgrFUl
/* 802AD994  38 7F 01 C8 */	addi r3, r31, 0x1c8
/* 802AD998  7F C4 F3 78 */	mr r4, r30
/* 802AD99C  4B FF 24 45 */	bl stop__16JAISeCategoryMgrFUl
/* 802AD9A0  38 7F 02 34 */	addi r3, r31, 0x234
/* 802AD9A4  7F C4 F3 78 */	mr r4, r30
/* 802AD9A8  4B FF 24 39 */	bl stop__16JAISeCategoryMgrFUl
/* 802AD9AC  38 7F 02 A0 */	addi r3, r31, 0x2a0
/* 802AD9B0  7F C4 F3 78 */	mr r4, r30
/* 802AD9B4  4B FF 24 2D */	bl stop__16JAISeCategoryMgrFUl
/* 802AD9B8  38 7F 03 0C */	addi r3, r31, 0x30c
/* 802AD9BC  7F C4 F3 78 */	mr r4, r30
/* 802AD9C0  4B FF 24 21 */	bl stop__16JAISeCategoryMgrFUl
/* 802AD9C4  38 7F 03 78 */	addi r3, r31, 0x378
/* 802AD9C8  7F C4 F3 78 */	mr r4, r30
/* 802AD9CC  4B FF 24 15 */	bl stop__16JAISeCategoryMgrFUl
/* 802AD9D0  38 7F 03 E4 */	addi r3, r31, 0x3e4
/* 802AD9D4  7F C4 F3 78 */	mr r4, r30
/* 802AD9D8  4B FF 24 09 */	bl stop__16JAISeCategoryMgrFUl
/* 802AD9DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AD9E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802AD9E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AD9E8  7C 08 03 A6 */	mtlr r0
/* 802AD9EC  38 21 00 10 */	addi r1, r1, 0x10
/* 802AD9F0  4E 80 00 20 */	blr 

lbl_80C9AAB0:
/* 80C9AAB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9AAB4  7C 08 02 A6 */	mflr r0
/* 80C9AAB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9AABC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C9AAC0  93 C1 00 08 */	stw r30, 8(r1)
/* 80C9AAC4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C9AAC8  7C 9F 23 78 */	mr r31, r4
/* 80C9AACC  41 82 00 28 */	beq lbl_80C9AAF4
/* 80C9AAD0  3C 80 80 3B */	lis r4, __vt__4dBgW@ha
/* 80C9AAD4  38 04 BA 80 */	addi r0, r4, __vt__4dBgW@l
/* 80C9AAD8  90 1E 00 04 */	stw r0, 4(r30)
/* 80C9AADC  38 80 00 00 */	li r4, 0
/* 80C9AAE0  4B 3D E8 5C */	b __dt__4cBgWFv
/* 80C9AAE4  7F E0 07 35 */	extsh. r0, r31
/* 80C9AAE8  40 81 00 0C */	ble lbl_80C9AAF4
/* 80C9AAEC  7F C3 F3 78 */	mr r3, r30
/* 80C9AAF0  4B 63 42 4C */	b __dl__FPv
lbl_80C9AAF4:
/* 80C9AAF4  7F C3 F3 78 */	mr r3, r30
/* 80C9AAF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C9AAFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C9AB00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9AB04  7C 08 03 A6 */	mtlr r0
/* 80C9AB08  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9AB0C  4E 80 00 20 */	blr 

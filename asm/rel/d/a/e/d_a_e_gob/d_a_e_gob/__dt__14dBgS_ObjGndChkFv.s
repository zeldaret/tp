lbl_806DEDAC:
/* 806DEDAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806DEDB0  7C 08 02 A6 */	mflr r0
/* 806DEDB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806DEDB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806DEDBC  93 C1 00 08 */	stw r30, 8(r1)
/* 806DEDC0  7C 7E 1B 79 */	or. r30, r3, r3
/* 806DEDC4  7C 9F 23 78 */	mr r31, r4
/* 806DEDC8  41 82 00 40 */	beq lbl_806DEE08
/* 806DEDCC  3C 80 80 6E */	lis r4, __vt__14dBgS_ObjGndChk@ha /* 0x806DF240@ha */
/* 806DEDD0  38 84 F2 40 */	addi r4, r4, __vt__14dBgS_ObjGndChk@l /* 0x806DF240@l */
/* 806DEDD4  90 9E 00 10 */	stw r4, 0x10(r30)
/* 806DEDD8  38 04 00 0C */	addi r0, r4, 0xc
/* 806DEDDC  90 1E 00 20 */	stw r0, 0x20(r30)
/* 806DEDE0  38 04 00 18 */	addi r0, r4, 0x18
/* 806DEDE4  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 806DEDE8  38 04 00 24 */	addi r0, r4, 0x24
/* 806DEDEC  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 806DEDF0  38 80 00 00 */	li r4, 0
/* 806DEDF4  4B 99 87 FD */	bl __dt__11dBgS_GndChkFv
/* 806DEDF8  7F E0 07 35 */	extsh. r0, r31
/* 806DEDFC  40 81 00 0C */	ble lbl_806DEE08
/* 806DEE00  7F C3 F3 78 */	mr r3, r30
/* 806DEE04  4B BE FF 39 */	bl __dl__FPv
lbl_806DEE08:
/* 806DEE08  7F C3 F3 78 */	mr r3, r30
/* 806DEE0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806DEE10  83 C1 00 08 */	lwz r30, 8(r1)
/* 806DEE14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806DEE18  7C 08 03 A6 */	mtlr r0
/* 806DEE1C  38 21 00 10 */	addi r1, r1, 0x10
/* 806DEE20  4E 80 00 20 */	blr 

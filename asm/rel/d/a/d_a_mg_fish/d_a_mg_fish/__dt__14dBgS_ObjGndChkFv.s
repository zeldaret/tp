lbl_8052BAB8:
/* 8052BAB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052BABC  7C 08 02 A6 */	mflr r0
/* 8052BAC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052BAC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052BAC8  93 C1 00 08 */	stw r30, 8(r1)
/* 8052BACC  7C 7E 1B 79 */	or. r30, r3, r3
/* 8052BAD0  7C 9F 23 78 */	mr r31, r4
/* 8052BAD4  41 82 00 40 */	beq lbl_8052BB14
/* 8052BAD8  3C 80 80 53 */	lis r4, __vt__14dBgS_ObjGndChk@ha
/* 8052BADC  38 84 6B 3C */	addi r4, r4, __vt__14dBgS_ObjGndChk@l
/* 8052BAE0  90 9E 00 10 */	stw r4, 0x10(r30)
/* 8052BAE4  38 04 00 0C */	addi r0, r4, 0xc
/* 8052BAE8  90 1E 00 20 */	stw r0, 0x20(r30)
/* 8052BAEC  38 04 00 18 */	addi r0, r4, 0x18
/* 8052BAF0  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 8052BAF4  38 04 00 24 */	addi r0, r4, 0x24
/* 8052BAF8  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 8052BAFC  38 80 00 00 */	li r4, 0
/* 8052BB00  4B B4 BA F0 */	b __dt__11dBgS_GndChkFv
/* 8052BB04  7F E0 07 35 */	extsh. r0, r31
/* 8052BB08  40 81 00 0C */	ble lbl_8052BB14
/* 8052BB0C  7F C3 F3 78 */	mr r3, r30
/* 8052BB10  4B DA 32 2C */	b __dl__FPv
lbl_8052BB14:
/* 8052BB14  7F C3 F3 78 */	mr r3, r30
/* 8052BB18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052BB1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8052BB20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052BB24  7C 08 03 A6 */	mtlr r0
/* 8052BB28  38 21 00 10 */	addi r1, r1, 0x10
/* 8052BB2C  4E 80 00 20 */	blr 

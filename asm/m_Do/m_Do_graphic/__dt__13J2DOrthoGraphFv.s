lbl_8000B118:
/* 8000B118  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000B11C  7C 08 02 A6 */	mflr r0
/* 8000B120  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000B124  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8000B128  7C 7F 1B 79 */	or. r31, r3, r3
/* 8000B12C  41 82 00 30 */	beq lbl_8000B15C
/* 8000B130  3C 60 80 3D */	lis r3, __vt__13J2DOrthoGraph@ha /* 0x803CC9E0@ha */
/* 8000B134  38 03 C9 E0 */	addi r0, r3, __vt__13J2DOrthoGraph@l /* 0x803CC9E0@l */
/* 8000B138  90 1F 00 00 */	stw r0, 0(r31)
/* 8000B13C  41 82 00 10 */	beq lbl_8000B14C
/* 8000B140  3C 60 80 3D */	lis r3, __vt__14J2DGrafContext@ha /* 0x803CC9B8@ha */
/* 8000B144  38 03 C9 B8 */	addi r0, r3, __vt__14J2DGrafContext@l /* 0x803CC9B8@l */
/* 8000B148  90 1F 00 00 */	stw r0, 0(r31)
lbl_8000B14C:
/* 8000B14C  7C 80 07 35 */	extsh. r0, r4
/* 8000B150  40 81 00 0C */	ble lbl_8000B15C
/* 8000B154  7F E3 FB 78 */	mr r3, r31
/* 8000B158  48 2C 3B E5 */	bl __dl__FPv
lbl_8000B15C:
/* 8000B15C  7F E3 FB 78 */	mr r3, r31
/* 8000B160  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8000B164  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000B168  7C 08 03 A6 */	mtlr r0
/* 8000B16C  38 21 00 10 */	addi r1, r1, 0x10
/* 8000B170  4E 80 00 20 */	blr 

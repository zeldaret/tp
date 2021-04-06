lbl_8015B108:
/* 8015B108  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015B10C  7C 08 02 A6 */	mflr r0
/* 8015B110  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015B114  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015B118  7C 7F 1B 78 */	mr r31, r3
/* 8015B11C  80 83 05 74 */	lwz r4, 0x574(r3)
/* 8015B120  28 04 00 00 */	cmplwi r4, 0
/* 8015B124  41 82 00 58 */	beq lbl_8015B17C
/* 8015B128  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 8015B12C  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 8015B130  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 8015B134  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 8015B138  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 8015B13C  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 8015B140  88 1F 09 2A */	lbz r0, 0x92a(r31)
/* 8015B144  2C 00 00 08 */	cmpwi r0, 8
/* 8015B148  40 80 00 18 */	bge lbl_8015B160
/* 8015B14C  2C 00 00 01 */	cmpwi r0, 1
/* 8015B150  40 80 00 08 */	bge lbl_8015B158
/* 8015B154  48 00 00 0C */	b lbl_8015B160
lbl_8015B158:
/* 8015B158  48 00 00 71 */	bl setBaseMtx_1__8daItem_cFv
/* 8015B15C  48 00 00 0C */	b lbl_8015B168
lbl_8015B160:
/* 8015B160  7F E3 FB 78 */	mr r3, r31
/* 8015B164  48 00 00 2D */	bl setBaseMtx_0__8daItem_cFv
lbl_8015B168:
/* 8015B168  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8015B16C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8015B170  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 8015B174  38 84 00 24 */	addi r4, r4, 0x24
/* 8015B178  48 1E B3 39 */	bl PSMTXCopy
lbl_8015B17C:
/* 8015B17C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015B180  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015B184  7C 08 03 A6 */	mtlr r0
/* 8015B188  38 21 00 10 */	addi r1, r1, 0x10
/* 8015B18C  4E 80 00 20 */	blr 

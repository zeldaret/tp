lbl_802D47F4:
/* 802D47F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D47F8  7C 08 02 A6 */	mflr r0
/* 802D47FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D4800  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D4804  93 C1 00 08 */	stw r30, 8(r1)
/* 802D4808  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D480C  7C 9F 23 78 */	mr r31, r4
/* 802D4810  41 82 00 48 */	beq lbl_802D4858
/* 802D4814  3C 60 80 3D */	lis r3, __vt__12JKRDvdFinder@ha /* 0x803CC208@ha */
/* 802D4818  38 03 C2 08 */	addi r0, r3, __vt__12JKRDvdFinder@l /* 0x803CC208@l */
/* 802D481C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 802D4820  88 1E 00 20 */	lbz r0, 0x20(r30)
/* 802D4824  28 00 00 00 */	cmplwi r0, 0
/* 802D4828  41 82 00 0C */	beq lbl_802D4834
/* 802D482C  38 7E 00 14 */	addi r3, r30, 0x14
/* 802D4830  48 07 48 B5 */	bl DVDCloseDir
lbl_802D4834:
/* 802D4834  28 1E 00 00 */	cmplwi r30, 0
/* 802D4838  41 82 00 10 */	beq lbl_802D4848
/* 802D483C  3C 60 80 3D */	lis r3, __vt__13JKRFileFinder@ha /* 0x803CC228@ha */
/* 802D4840  38 03 C2 28 */	addi r0, r3, __vt__13JKRFileFinder@l /* 0x803CC228@l */
/* 802D4844  90 1E 00 0C */	stw r0, 0xc(r30)
lbl_802D4848:
/* 802D4848  7F E0 07 35 */	extsh. r0, r31
/* 802D484C  40 81 00 0C */	ble lbl_802D4858
/* 802D4850  7F C3 F3 78 */	mr r3, r30
/* 802D4854  4B FF A4 E9 */	bl __dl__FPv
lbl_802D4858:
/* 802D4858  7F C3 F3 78 */	mr r3, r30
/* 802D485C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D4860  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D4864  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D4868  7C 08 03 A6 */	mtlr r0
/* 802D486C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D4870  4E 80 00 20 */	blr 

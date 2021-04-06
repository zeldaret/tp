lbl_8000D8EC:
/* 8000D8EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000D8F0  7C 08 02 A6 */	mflr r0
/* 8000D8F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000D8F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8000D8FC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8000D900  41 82 00 30 */	beq lbl_8000D930
/* 8000D904  3C 60 80 3A */	lis r3, __vt__17J3DMtxCalcAnmBase@ha /* 0x803A343C@ha */
/* 8000D908  38 03 34 3C */	addi r0, r3, __vt__17J3DMtxCalcAnmBase@l /* 0x803A343C@l */
/* 8000D90C  90 1F 00 00 */	stw r0, 0(r31)
/* 8000D910  41 82 00 10 */	beq lbl_8000D920
/* 8000D914  3C 60 80 3A */	lis r3, __vt__10J3DMtxCalc@ha /* 0x803A3468@ha */
/* 8000D918  38 03 34 68 */	addi r0, r3, __vt__10J3DMtxCalc@l /* 0x803A3468@l */
/* 8000D91C  90 1F 00 00 */	stw r0, 0(r31)
lbl_8000D920:
/* 8000D920  7C 80 07 35 */	extsh. r0, r4
/* 8000D924  40 81 00 0C */	ble lbl_8000D930
/* 8000D928  7F E3 FB 78 */	mr r3, r31
/* 8000D92C  48 2C 14 11 */	bl __dl__FPv
lbl_8000D930:
/* 8000D930  7F E3 FB 78 */	mr r3, r31
/* 8000D934  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8000D938  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000D93C  7C 08 03 A6 */	mtlr r0
/* 8000D940  38 21 00 10 */	addi r1, r1, 0x10
/* 8000D944  4E 80 00 20 */	blr 

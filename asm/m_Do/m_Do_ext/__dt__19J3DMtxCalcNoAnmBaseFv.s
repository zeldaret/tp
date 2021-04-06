lbl_8000FA8C:
/* 8000FA8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000FA90  7C 08 02 A6 */	mflr r0
/* 8000FA94  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000FA98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8000FA9C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8000FAA0  41 82 00 30 */	beq lbl_8000FAD0
/* 8000FAA4  3C 60 80 3A */	lis r3, __vt__19J3DMtxCalcNoAnmBase@ha /* 0x803A338C@ha */
/* 8000FAA8  38 03 33 8C */	addi r0, r3, __vt__19J3DMtxCalcNoAnmBase@l /* 0x803A338C@l */
/* 8000FAAC  90 1F 00 00 */	stw r0, 0(r31)
/* 8000FAB0  41 82 00 10 */	beq lbl_8000FAC0
/* 8000FAB4  3C 60 80 3A */	lis r3, __vt__10J3DMtxCalc@ha /* 0x803A3468@ha */
/* 8000FAB8  38 03 34 68 */	addi r0, r3, __vt__10J3DMtxCalc@l /* 0x803A3468@l */
/* 8000FABC  90 1F 00 00 */	stw r0, 0(r31)
lbl_8000FAC0:
/* 8000FAC0  7C 80 07 35 */	extsh. r0, r4
/* 8000FAC4  40 81 00 0C */	ble lbl_8000FAD0
/* 8000FAC8  7F E3 FB 78 */	mr r3, r31
/* 8000FACC  48 2B F2 71 */	bl __dl__FPv
lbl_8000FAD0:
/* 8000FAD0  7F E3 FB 78 */	mr r3, r31
/* 8000FAD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8000FAD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000FADC  7C 08 03 A6 */	mtlr r0
/* 8000FAE0  38 21 00 10 */	addi r1, r1, 0x10
/* 8000FAE4  4E 80 00 20 */	blr 

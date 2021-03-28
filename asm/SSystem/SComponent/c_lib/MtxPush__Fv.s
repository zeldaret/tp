lbl_80270F1C:
/* 80270F1C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80270F20  7C 08 02 A6 */	mflr r0
/* 80270F24  90 01 00 44 */	stw r0, 0x44(r1)
/* 80270F28  80 6D 81 E8 */	lwz r3, calc_mtx(r13)
/* 80270F2C  38 81 00 08 */	addi r4, r1, 8
/* 80270F30  48 0D 55 81 */	bl PSMTXCopy
/* 80270F34  80 6D 81 E8 */	lwz r3, calc_mtx(r13)
/* 80270F38  38 83 00 30 */	addi r4, r3, 0x30
/* 80270F3C  90 8D 81 E8 */	stw r4, calc_mtx(r13)
/* 80270F40  38 61 00 08 */	addi r3, r1, 8
/* 80270F44  48 0D 55 6D */	bl PSMTXCopy
/* 80270F48  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80270F4C  7C 08 03 A6 */	mtlr r0
/* 80270F50  38 21 00 40 */	addi r1, r1, 0x40
/* 80270F54  4E 80 00 20 */	blr 

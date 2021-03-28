lbl_8001EDCC:
/* 8001EDCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001EDD0  7C 08 02 A6 */	mflr r0
/* 8001EDD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001EDD8  7C 66 1B 78 */	mr r6, r3
/* 8001EDDC  7C 85 23 78 */	mr r5, r4
/* 8001EDE0  80 6D 80 38 */	lwz r3, l_scnRqID(r13)
/* 8001EDE4  3C 03 00 01 */	addis r0, r3, 1
/* 8001EDE8  28 00 FF FF */	cmplwi r0, 0xffff
/* 8001EDEC  40 82 00 0C */	bne lbl_8001EDF8
/* 8001EDF0  38 60 00 00 */	li r3, 0
/* 8001EDF4  48 00 00 0C */	b lbl_8001EE00
lbl_8001EDF8:
/* 8001EDF8  7C C4 33 78 */	mr r4, r6
/* 8001EDFC  48 00 03 01 */	bl fopScnRq_ReRequest__FUisPv
lbl_8001EE00:
/* 8001EE00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001EE04  7C 08 03 A6 */	mtlr r0
/* 8001EE08  38 21 00 10 */	addi r1, r1, 0x10
/* 8001EE0C  4E 80 00 20 */	blr 

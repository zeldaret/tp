lbl_80484C9C:
/* 80484C9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80484CA0  7C 08 02 A6 */	mflr r0
/* 80484CA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80484CA8  4B FF FC 61 */	bl Mthd_Execute__Q211daObjSwpush5Act_cFv
/* 80484CAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80484CB0  7C 08 03 A6 */	mtlr r0
/* 80484CB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80484CB8  4E 80 00 20 */	blr 

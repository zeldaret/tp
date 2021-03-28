lbl_80484C7C:
/* 80484C7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80484C80  7C 08 02 A6 */	mflr r0
/* 80484C84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80484C88  4B FF E8 05 */	bl Mthd_Delete__Q211daObjSwpush5Act_cFv
/* 80484C8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80484C90  7C 08 03 A6 */	mtlr r0
/* 80484C94  38 21 00 10 */	addi r1, r1, 0x10
/* 80484C98  4E 80 00 20 */	blr 

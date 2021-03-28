lbl_80484C5C:
/* 80484C5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80484C60  7C 08 02 A6 */	mflr r0
/* 80484C64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80484C68  4B FF E3 D1 */	bl Mthd_Create__Q211daObjSwpush5Act_cFv
/* 80484C6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80484C70  7C 08 03 A6 */	mtlr r0
/* 80484C74  38 21 00 10 */	addi r1, r1, 0x10
/* 80484C78  4E 80 00 20 */	blr 

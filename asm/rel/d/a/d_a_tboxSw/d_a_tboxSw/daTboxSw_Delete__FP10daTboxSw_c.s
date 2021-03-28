lbl_80D66988:
/* 80D66988  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D6698C  7C 08 02 A6 */	mflr r0
/* 80D66990  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D66994  4B FF FF AD */	bl _delete__10daTboxSw_cFv
/* 80D66998  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D6699C  7C 08 03 A6 */	mtlr r0
/* 80D669A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D669A4  4E 80 00 20 */	blr 

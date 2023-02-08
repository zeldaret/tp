lbl_80B4BAC4:
/* 80B4BAC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4BAC8  7C 08 02 A6 */	mflr r0
/* 80B4BACC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4BAD0  4B FF E2 55 */	bl create__13daNpc_yamiT_cFv
/* 80B4BAD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4BAD8  7C 08 03 A6 */	mtlr r0
/* 80B4BADC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4BAE0  4E 80 00 20 */	blr 

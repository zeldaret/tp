lbl_80B4BAE4:
/* 80B4BAE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4BAE8  7C 08 02 A6 */	mflr r0
/* 80B4BAEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4BAF0  4B FF E9 39 */	bl Delete__13daNpc_yamiT_cFv
/* 80B4BAF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4BAF8  7C 08 03 A6 */	mtlr r0
/* 80B4BAFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4BB00  4E 80 00 20 */	blr 

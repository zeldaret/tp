lbl_8003C160:
/* 8003C160  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003C164  7C 08 02 A6 */	mflr r0
/* 8003C168  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003C16C  48 00 00 79 */	bl getResInfo__14dRes_control_cFPCcP11dRes_info_ci
/* 8003C170  28 03 00 00 */	cmplwi r3, 0
/* 8003C174  40 82 00 0C */	bne lbl_8003C180
/* 8003C178  38 60 FF FF */	li r3, -1
/* 8003C17C  48 00 00 08 */	b lbl_8003C184
lbl_8003C180:
/* 8003C180  4B FF F9 79 */	bl setRes__11dRes_info_cFv
lbl_8003C184:
/* 8003C184  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003C188  7C 08 03 A6 */	mtlr r0
/* 8003C18C  38 21 00 10 */	addi r1, r1, 0x10
/* 8003C190  4E 80 00 20 */	blr 

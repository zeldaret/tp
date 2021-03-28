lbl_800080D0:
/* 800080D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800080D4  7C 08 02 A6 */	mflr r0
/* 800080D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800080DC  38 6D 80 80 */	la r3, g_clearColor(r13) /* 80450600-_SDA_BASE_ */
/* 800080E0  4B FF FE F9 */	bl fadeOut__13mDoGph_gInf_cFfR8_GXColor
/* 800080E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800080E8  7C 08 03 A6 */	mtlr r0
/* 800080EC  38 21 00 10 */	addi r1, r1, 0x10
/* 800080F0  4E 80 00 20 */	blr 

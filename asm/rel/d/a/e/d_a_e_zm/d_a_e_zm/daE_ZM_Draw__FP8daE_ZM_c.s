lbl_8082FBB4:
/* 8082FBB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8082FBB8  7C 08 02 A6 */	mflr r0
/* 8082FBBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8082FBC0  4B FF FD E1 */	bl draw__8daE_ZM_cFv
/* 8082FBC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8082FBC8  7C 08 03 A6 */	mtlr r0
/* 8082FBCC  38 21 00 10 */	addi r1, r1, 0x10
/* 8082FBD0  4E 80 00 20 */	blr 

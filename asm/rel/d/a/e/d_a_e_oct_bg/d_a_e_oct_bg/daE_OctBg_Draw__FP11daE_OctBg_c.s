lbl_80739BA0:
/* 80739BA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80739BA4  7C 08 02 A6 */	mflr r0
/* 80739BA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80739BAC  4B FF FD F9 */	bl draw__11daE_OctBg_cFv
/* 80739BB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80739BB4  7C 08 03 A6 */	mtlr r0
/* 80739BB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80739BBC  4E 80 00 20 */	blr 

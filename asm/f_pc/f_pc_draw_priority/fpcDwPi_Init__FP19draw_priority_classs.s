lbl_80021318:
/* 80021318  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002131C  7C 08 02 A6 */	mflr r0
/* 80021320  90 01 00 14 */	stw r0, 0x14(r1)
/* 80021324  4B FF FF ED */	bl fpcDwPi_Set__FP19draw_priority_classs
/* 80021328  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002132C  7C 08 03 A6 */	mtlr r0
/* 80021330  38 21 00 10 */	addi r1, r1, 0x10
/* 80021334  4E 80 00 20 */	blr 

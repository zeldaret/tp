lbl_804FB6F8:
/* 804FB6F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FB6FC  7C 08 02 A6 */	mflr r0
/* 804FB700  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FB704  4B FF FE BD */	bl ga_control__FP10e_ga_class
/* 804FB708  38 60 00 01 */	li r3, 1
/* 804FB70C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FB710  7C 08 03 A6 */	mtlr r0
/* 804FB714  38 21 00 10 */	addi r1, r1, 0x10
/* 804FB718  4E 80 00 20 */	blr 

lbl_8045E91C:
/* 8045E91C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045E920  7C 08 02 A6 */	mflr r0
/* 8045E924  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045E928  4B FF FF A1 */	bl getBmd__10daKnob20_cFv
/* 8045E92C  4B BD 0B 08 */	b dComIfG_getStageRes__FPCc
/* 8045E930  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045E934  7C 08 03 A6 */	mtlr r0
/* 8045E938  38 21 00 10 */	addi r1, r1, 0x10
/* 8045E93C  4E 80 00 20 */	blr 

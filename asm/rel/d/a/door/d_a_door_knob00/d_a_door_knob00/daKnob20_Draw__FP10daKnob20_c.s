lbl_804605DC:
/* 804605DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804605E0  7C 08 02 A6 */	mflr r0
/* 804605E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804605E8  4B FF FE 75 */	bl draw__10daKnob20_cFv
/* 804605EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804605F0  7C 08 03 A6 */	mtlr r0
/* 804605F4  38 21 00 10 */	addi r1, r1, 0x10
/* 804605F8  4E 80 00 20 */	blr 

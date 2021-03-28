lbl_8029E044:
/* 8029E044  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029E048  7C 08 02 A6 */	mflr r0
/* 8029E04C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029E050  38 A0 00 08 */	li r5, 8
/* 8029E054  38 63 01 48 */	addi r3, r3, 0x148
/* 8029E058  4B FF F9 F1 */	bl setFilterTable__6JASDspFPsPsUl
/* 8029E05C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029E060  7C 08 03 A6 */	mtlr r0
/* 8029E064  38 21 00 10 */	addi r1, r1, 0x10
/* 8029E068  4E 80 00 20 */	blr 

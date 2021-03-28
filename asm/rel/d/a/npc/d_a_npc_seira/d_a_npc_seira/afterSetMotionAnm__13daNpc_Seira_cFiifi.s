lbl_80ACD538:
/* 80ACD538  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACD53C  7C 08 02 A6 */	mflr r0
/* 80ACD540  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACD544  88 03 0A 88 */	lbz r0, 0xa88(r3)
/* 80ACD548  28 00 00 01 */	cmplwi r0, 1
/* 80ACD54C  40 82 00 0C */	bne lbl_80ACD558
/* 80ACD550  3C C0 80 AD */	lis r6, lit_4063@ha
/* 80ACD554  C0 26 FE 98 */	lfs f1, lit_4063@l(r6)
lbl_80ACD558:
/* 80ACD558  38 C0 00 01 */	li r6, 1
/* 80ACD55C  4B FF FE FD */	bl setBottleAnm__13daNpc_Seira_cFiifb
/* 80ACD560  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACD564  7C 08 03 A6 */	mtlr r0
/* 80ACD568  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACD56C  4E 80 00 20 */	blr 

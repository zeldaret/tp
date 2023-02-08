lbl_804CBC40:
/* 804CBC40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CBC44  7C 08 02 A6 */	mflr r0
/* 804CBC48  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CBC4C  4B FF F2 9D */	bl execute__9daNbomb_cFv
/* 804CBC50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CBC54  7C 08 03 A6 */	mtlr r0
/* 804CBC58  38 21 00 10 */	addi r1, r1, 0x10
/* 804CBC5C  4E 80 00 20 */	blr 

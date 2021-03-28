lbl_80AA3258:
/* 80AA3258  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA325C  7C 08 02 A6 */	mflr r0
/* 80AA3260  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA3264  80 83 0A F4 */	lwz r4, 0xaf4(r3)
/* 80AA3268  39 84 00 0C */	addi r12, r4, 0xc
/* 80AA326C  4B 8B EE 18 */	b __ptmf_scall
/* 80AA3270  60 00 00 00 */	nop 
/* 80AA3274  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA3278  7C 08 03 A6 */	mtlr r0
/* 80AA327C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA3280  4E 80 00 20 */	blr 

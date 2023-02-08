lbl_80AD2710:
/* 80AD2710  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD2714  7C 08 02 A6 */	mflr r0
/* 80AD2718  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD271C  88 03 0A 88 */	lbz r0, 0xa88(r3)
/* 80AD2720  28 00 00 01 */	cmplwi r0, 1
/* 80AD2724  40 82 00 0C */	bne lbl_80AD2730
/* 80AD2728  3C C0 80 AD */	lis r6, lit_4055@ha /* 0x80AD4B08@ha */
/* 80AD272C  C0 26 4B 08 */	lfs f1, lit_4055@l(r6)  /* 0x80AD4B08@l */
lbl_80AD2730:
/* 80AD2730  38 C0 00 01 */	li r6, 1
/* 80AD2734  4B FF FE FD */	bl setBottleAnm__14daNpc_Seira2_cFiifb
/* 80AD2738  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD273C  7C 08 03 A6 */	mtlr r0
/* 80AD2740  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD2744  4E 80 00 20 */	blr 

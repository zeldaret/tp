lbl_800ADAB8:
/* 800ADAB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800ADABC  7C 08 02 A6 */	mflr r0
/* 800ADAC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800ADAC4  7C C7 33 78 */	mr r7, r6
/* 800ADAC8  C0 26 00 04 */	lfs f1, 4(r6)
/* 800ADACC  C0 46 00 08 */	lfs f2, 8(r6)
/* 800ADAD0  A8 C6 00 00 */	lha r6, 0(r6)
/* 800ADAD4  C0 67 00 0C */	lfs f3, 0xc(r7)
/* 800ADAD8  4B FF FE 8D */	bl setUnderAnime__9daAlink_cFUsQ29daAlink_c13daAlink_UNDERffsf
/* 800ADADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800ADAE0  7C 08 03 A6 */	mtlr r0
/* 800ADAE4  38 21 00 10 */	addi r1, r1, 0x10
/* 800ADAE8  4E 80 00 20 */	blr 

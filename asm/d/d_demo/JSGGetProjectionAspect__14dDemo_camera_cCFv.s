lbl_80038B9C:
/* 80038B9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80038BA0  7C 08 02 A6 */	mflr r0
/* 80038BA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80038BA8  4B FF FE E9 */	bl getView__Fv
/* 80038BAC  28 03 00 00 */	cmplwi r3, 0
/* 80038BB0  40 82 00 0C */	bne lbl_80038BBC
/* 80038BB4  C0 22 83 D4 */	lfs f1, lit_4655(r2)
/* 80038BB8  48 00 00 08 */	b lbl_80038BC0
lbl_80038BBC:
/* 80038BBC  C0 23 00 D4 */	lfs f1, 0xd4(r3)
lbl_80038BC0:
/* 80038BC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80038BC4  7C 08 03 A6 */	mtlr r0
/* 80038BC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80038BCC  4E 80 00 20 */	blr 

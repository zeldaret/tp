lbl_80B567B4:
/* 80B567B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B567B8  7C 08 02 A6 */	mflr r0
/* 80B567BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B567C0  88 03 0A 88 */	lbz r0, 0xa88(r3)
/* 80B567C4  28 00 00 01 */	cmplwi r0, 1
/* 80B567C8  40 82 00 0C */	bne lbl_80B567D4
/* 80B567CC  3C C0 80 B6 */	lis r6, lit_4392@ha
/* 80B567D0  C0 26 D8 98 */	lfs f1, lit_4392@l(r6)
lbl_80B567D4:
/* 80B567D4  2C 04 00 23 */	cmpwi r4, 0x23
/* 80B567D8  41 82 00 08 */	beq lbl_80B567E0
/* 80B567DC  48 00 00 1C */	b lbl_80B567F8
lbl_80B567E0:
/* 80B567E0  80 E3 05 78 */	lwz r7, 0x578(r3)
/* 80B567E4  38 00 00 0F */	li r0, 0xf
/* 80B567E8  B0 07 00 12 */	sth r0, 0x12(r7)
/* 80B567EC  3C C0 80 B6 */	lis r6, lit_5854@ha
/* 80B567F0  C0 06 D9 64 */	lfs f0, lit_5854@l(r6)
/* 80B567F4  D0 07 00 1C */	stfs f0, 0x1c(r7)
lbl_80B567F8:
/* 80B567F8  4B FF FE 2D */	bl setFishAnm__11daNpc_ykM_cFiif
/* 80B567FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B56800  7C 08 03 A6 */	mtlr r0
/* 80B56804  38 21 00 10 */	addi r1, r1, 0x10
/* 80B56808  4E 80 00 20 */	blr 

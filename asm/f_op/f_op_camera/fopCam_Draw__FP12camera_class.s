lbl_8001E140:
/* 8001E140  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001E144  7C 08 02 A6 */	mflr r0
/* 8001E148  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001E14C  7C 64 1B 78 */	mr r4, r3
/* 8001E150  38 60 00 01 */	li r3, 1
/* 8001E154  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8001E158  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8001E15C  88 05 5E B5 */	lbz r0, 0x5eb5(r5)
/* 8001E160  28 00 00 00 */	cmplwi r0, 0
/* 8001E164  40 82 00 0C */	bne lbl_8001E170
/* 8001E168  80 64 02 24 */	lwz r3, 0x224(r4)
/* 8001E16C  48 00 38 B9 */	bl fpcLf_DrawMethod__FP21leafdraw_method_classPv
lbl_8001E170:
/* 8001E170  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001E174  7C 08 03 A6 */	mtlr r0
/* 8001E178  38 21 00 10 */	addi r1, r1, 0x10
/* 8001E17C  4E 80 00 20 */	blr 

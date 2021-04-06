lbl_80007164:
/* 80007164  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80007168  7C 08 02 A6 */	mflr r0
/* 8000716C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80007170  88 0D 86 38 */	lbz r0, struct_80450BB8+0x0(r13)
/* 80007174  28 00 00 00 */	cmplwi r0, 0
/* 80007178  40 82 00 28 */	bne lbl_800071A0
/* 8000717C  80 6D 86 F8 */	lwz r3, mResetData__6mDoRst(r13)
/* 80007180  88 03 00 10 */	lbz r0, 0x10(r3)
/* 80007184  2C 00 00 00 */	cmpwi r0, 0
/* 80007188  40 82 00 24 */	bne lbl_800071AC
/* 8000718C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80007190  2C 00 00 00 */	cmpwi r0, 0
/* 80007194  40 82 00 18 */	bne lbl_800071AC
/* 80007198  4B FF FE 29 */	bl mDoAud_Create__Fv
/* 8000719C  48 00 00 10 */	b lbl_800071AC
lbl_800071A0:
/* 800071A0  3C 60 80 3E */	lis r3, g_mDoAud_zelAudio@ha /* 0x803DBF4C@ha */
/* 800071A4  38 63 BF 4C */	addi r3, r3, g_mDoAud_zelAudio@l /* 0x803DBF4C@l */
/* 800071A8  48 2C 67 5D */	bl gframeProcess__10Z2AudioMgrFv
lbl_800071AC:
/* 800071AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800071B0  7C 08 03 A6 */	mtlr r0
/* 800071B4  38 21 00 10 */	addi r1, r1, 0x10
/* 800071B8  4E 80 00 20 */	blr 

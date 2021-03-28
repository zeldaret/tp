lbl_804778A8:
/* 804778A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804778AC  7C 08 02 A6 */	mflr r0
/* 804778B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 804778B4  3C 80 80 48 */	lis r4, lit_7860@ha
/* 804778B8  C0 04 A4 A4 */	lfs f0, lit_7860@l(r4)
/* 804778BC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804778C0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804778C4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804778C8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804778CC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804778D0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804778D4  FC 00 00 18 */	frsp f0, f0
/* 804778D8  D0 01 00 08 */	stfs f0, 8(r1)
/* 804778DC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804778E0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804778E4  38 80 00 07 */	li r4, 7
/* 804778E8  38 A1 00 08 */	addi r5, r1, 8
/* 804778EC  4B FF F8 D5 */	bl eff_break_tuboBmd__12daObjCarry_cFUs4cXyz
/* 804778F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804778F4  7C 08 03 A6 */	mtlr r0
/* 804778F8  38 21 00 30 */	addi r1, r1, 0x30
/* 804778FC  4E 80 00 20 */	blr 

lbl_804775BC:
/* 804775BC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804775C0  7C 08 02 A6 */	mflr r0
/* 804775C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 804775C8  3C 80 80 48 */	lis r4, lit_4685@ha /* 0x8047A3CC@ha */
/* 804775CC  C0 04 A3 CC */	lfs f0, lit_4685@l(r4)  /* 0x8047A3CC@l */
/* 804775D0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804775D4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804775D8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804775DC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804775E0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804775E4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804775E8  FC 00 00 18 */	frsp f0, f0
/* 804775EC  D0 01 00 08 */	stfs f0, 8(r1)
/* 804775F0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804775F4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804775F8  38 80 00 02 */	li r4, 2
/* 804775FC  38 A1 00 08 */	addi r5, r1, 8
/* 80477600  4B FF FB C1 */	bl eff_break_tuboBmd__12daObjCarry_cFUs4cXyz
/* 80477604  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80477608  7C 08 03 A6 */	mtlr r0
/* 8047760C  38 21 00 30 */	addi r1, r1, 0x30
/* 80477610  4E 80 00 20 */	blr 

lbl_80477798:
/* 80477798  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8047779C  7C 08 02 A6 */	mflr r0
/* 804777A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 804777A4  3C 80 80 48 */	lis r4, lit_4685@ha /* 0x8047A3CC@ha */
/* 804777A8  C0 04 A3 CC */	lfs f0, lit_4685@l(r4)  /* 0x8047A3CC@l */
/* 804777AC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804777B0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804777B4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804777B8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804777BC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804777C0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804777C4  FC 00 00 18 */	frsp f0, f0
/* 804777C8  D0 01 00 08 */	stfs f0, 8(r1)
/* 804777CC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804777D0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804777D4  38 80 00 01 */	li r4, 1
/* 804777D8  38 A1 00 08 */	addi r5, r1, 8
/* 804777DC  4B FF F9 E5 */	bl eff_break_tuboBmd__12daObjCarry_cFUs4cXyz
/* 804777E0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804777E4  7C 08 03 A6 */	mtlr r0
/* 804777E8  38 21 00 30 */	addi r1, r1, 0x30
/* 804777EC  4E 80 00 20 */	blr 

lbl_80D4BD90:
/* 80D4BD90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4BD94  7C 08 02 A6 */	mflr r0
/* 80D4BD98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4BD9C  3C 60 80 D5 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80D4C1DC@ha */
/* 80D4BDA0  38 A3 C1 DC */	addi r5, r3, cNullVec__6Z2Calc@l /* 0x80D4C1DC@l */
/* 80D4BDA4  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80D4BDA8  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80D4BDAC  80 64 00 00 */	lwz r3, 0(r4)
/* 80D4BDB0  80 04 00 04 */	lwz r0, 4(r4)
/* 80D4BDB4  90 65 03 2C */	stw r3, 0x32c(r5)
/* 80D4BDB8  90 05 03 30 */	stw r0, 0x330(r5)
/* 80D4BDBC  80 04 00 08 */	lwz r0, 8(r4)
/* 80D4BDC0  90 05 03 34 */	stw r0, 0x334(r5)
/* 80D4BDC4  38 85 03 2C */	addi r4, r5, 0x32c
/* 80D4BDC8  80 65 03 14 */	lwz r3, 0x314(r5)
/* 80D4BDCC  80 05 03 18 */	lwz r0, 0x318(r5)
/* 80D4BDD0  90 64 00 0C */	stw r3, 0xc(r4)
/* 80D4BDD4  90 04 00 10 */	stw r0, 0x10(r4)
/* 80D4BDD8  80 05 03 1C */	lwz r0, 0x31c(r5)
/* 80D4BDDC  90 04 00 14 */	stw r0, 0x14(r4)
/* 80D4BDE0  80 65 03 20 */	lwz r3, 0x320(r5)
/* 80D4BDE4  80 05 03 24 */	lwz r0, 0x324(r5)
/* 80D4BDE8  90 64 00 18 */	stw r3, 0x18(r4)
/* 80D4BDEC  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80D4BDF0  80 05 03 28 */	lwz r0, 0x328(r5)
/* 80D4BDF4  90 04 00 20 */	stw r0, 0x20(r4)
/* 80D4BDF8  3C 60 80 D5 */	lis r3, __vt__14daPeru_Param_c@ha /* 0x80D4C7D8@ha */
/* 80D4BDFC  38 03 C7 D8 */	addi r0, r3, __vt__14daPeru_Param_c@l /* 0x80D4C7D8@l */
/* 80D4BE00  3C 60 80 D5 */	lis r3, l_HIO@ha /* 0x80D4C83C@ha */
/* 80D4BE04  94 03 C8 3C */	stwu r0, l_HIO@l(r3)  /* 0x80D4C83C@l */
/* 80D4BE08  3C 80 80 D5 */	lis r4, __dt__14daPeru_Param_cFv@ha /* 0x80D4BF7C@ha */
/* 80D4BE0C  38 84 BF 7C */	addi r4, r4, __dt__14daPeru_Param_cFv@l /* 0x80D4BF7C@l */
/* 80D4BE10  3C A0 80 D5 */	lis r5, lit_3837@ha /* 0x80D4C830@ha */
/* 80D4BE14  38 A5 C8 30 */	addi r5, r5, lit_3837@l /* 0x80D4C830@l */
/* 80D4BE18  4B FF B0 61 */	bl __register_global_object
/* 80D4BE1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4BE20  7C 08 03 A6 */	mtlr r0
/* 80D4BE24  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4BE28  4E 80 00 20 */	blr 

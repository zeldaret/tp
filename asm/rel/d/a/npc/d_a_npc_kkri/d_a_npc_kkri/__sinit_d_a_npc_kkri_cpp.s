lbl_80553268:
/* 80553268  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055326C  7C 08 02 A6 */	mflr r0
/* 80553270  90 01 00 14 */	stw r0, 0x14(r1)
/* 80553274  3C 60 80 55 */	lis r3, cNullVec__6Z2Calc@ha /* 0x805535F8@ha */
/* 80553278  38 A3 35 F8 */	addi r5, r3, cNullVec__6Z2Calc@l /* 0x805535F8@l */
/* 8055327C  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80553280  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80553284  80 64 00 00 */	lwz r3, 0(r4)
/* 80553288  80 04 00 04 */	lwz r0, 4(r4)
/* 8055328C  90 65 06 AC */	stw r3, 0x6ac(r5)
/* 80553290  90 05 06 B0 */	stw r0, 0x6b0(r5)
/* 80553294  80 04 00 08 */	lwz r0, 8(r4)
/* 80553298  90 05 06 B4 */	stw r0, 0x6b4(r5)
/* 8055329C  38 85 06 AC */	addi r4, r5, 0x6ac
/* 805532A0  80 65 06 94 */	lwz r3, 0x694(r5)
/* 805532A4  80 05 06 98 */	lwz r0, 0x698(r5)
/* 805532A8  90 64 00 0C */	stw r3, 0xc(r4)
/* 805532AC  90 04 00 10 */	stw r0, 0x10(r4)
/* 805532B0  80 05 06 9C */	lwz r0, 0x69c(r5)
/* 805532B4  90 04 00 14 */	stw r0, 0x14(r4)
/* 805532B8  80 65 06 A0 */	lwz r3, 0x6a0(r5)
/* 805532BC  80 05 06 A4 */	lwz r0, 0x6a4(r5)
/* 805532C0  90 64 00 18 */	stw r3, 0x18(r4)
/* 805532C4  90 04 00 1C */	stw r0, 0x1c(r4)
/* 805532C8  80 05 06 A8 */	lwz r0, 0x6a8(r5)
/* 805532CC  90 04 00 20 */	stw r0, 0x20(r4)
/* 805532D0  3C 60 80 55 */	lis r3, __vt__18daNpc_Kkri_Param_c@ha /* 0x80553ECC@ha */
/* 805532D4  38 03 3E CC */	addi r0, r3, __vt__18daNpc_Kkri_Param_c@l /* 0x80553ECC@l */
/* 805532D8  3C 60 80 55 */	lis r3, l_HIO@ha /* 0x80553EEC@ha */
/* 805532DC  94 03 3E EC */	stwu r0, l_HIO@l(r3)  /* 0x80553EEC@l */
/* 805532E0  3C 80 80 55 */	lis r4, __dt__18daNpc_Kkri_Param_cFv@ha /* 0x80553424@ha */
/* 805532E4  38 84 34 24 */	addi r4, r4, __dt__18daNpc_Kkri_Param_cFv@l /* 0x80553424@l */
/* 805532E8  3C A0 80 55 */	lis r5, lit_3851@ha /* 0x80553EE0@ha */
/* 805532EC  38 A5 3E E0 */	addi r5, r5, lit_3851@l /* 0x80553EE0@l */
/* 805532F0  4B FF C0 49 */	bl __register_global_object
/* 805532F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805532F8  7C 08 03 A6 */	mtlr r0
/* 805532FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80553300  4E 80 00 20 */	blr 

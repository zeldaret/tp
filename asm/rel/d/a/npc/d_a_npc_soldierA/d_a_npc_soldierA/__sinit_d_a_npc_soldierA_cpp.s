lbl_80AF25D8:
/* 80AF25D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF25DC  7C 08 02 A6 */	mflr r0
/* 80AF25E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF25E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF25E8  3C 60 80 AF */	lis r3, cNullVec__6Z2Calc@ha /* 0x80AF2888@ha */
/* 80AF25EC  3B E3 28 88 */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x80AF2888@l */
/* 80AF25F0  3C 60 80 AF */	lis r3, __vt__22daNpc_SoldierA_Param_c@ha /* 0x80AF2AD8@ha */
/* 80AF25F4  38 03 2A D8 */	addi r0, r3, __vt__22daNpc_SoldierA_Param_c@l /* 0x80AF2AD8@l */
/* 80AF25F8  3C 60 80 AF */	lis r3, l_HIO@ha /* 0x80AF2B3C@ha */
/* 80AF25FC  94 03 2B 3C */	stwu r0, l_HIO@l(r3)  /* 0x80AF2B3C@l */
/* 80AF2600  3C 80 80 AF */	lis r4, __dt__22daNpc_SoldierA_Param_cFv@ha /* 0x80AF267C@ha */
/* 80AF2604  38 84 26 7C */	addi r4, r4, __dt__22daNpc_SoldierA_Param_cFv@l /* 0x80AF267C@l */
/* 80AF2608  3C A0 80 AF */	lis r5, lit_4017@ha /* 0x80AF2B30@ha */
/* 80AF260C  38 A5 2B 30 */	addi r5, r5, lit_4017@l /* 0x80AF2B30@l */
/* 80AF2610  4B FF CF 09 */	bl __register_global_object
/* 80AF2614  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80AF2618  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80AF261C  80 64 00 00 */	lwz r3, 0(r4)
/* 80AF2620  80 04 00 04 */	lwz r0, 4(r4)
/* 80AF2624  90 7F 00 D4 */	stw r3, 0xd4(r31)
/* 80AF2628  90 1F 00 D8 */	stw r0, 0xd8(r31)
/* 80AF262C  80 04 00 08 */	lwz r0, 8(r4)
/* 80AF2630  90 1F 00 DC */	stw r0, 0xdc(r31)
/* 80AF2634  38 9F 00 D4 */	addi r4, r31, 0xd4
/* 80AF2638  80 7F 00 BC */	lwz r3, 0xbc(r31)
/* 80AF263C  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 80AF2640  90 64 00 0C */	stw r3, 0xc(r4)
/* 80AF2644  90 04 00 10 */	stw r0, 0x10(r4)
/* 80AF2648  80 1F 00 C4 */	lwz r0, 0xc4(r31)
/* 80AF264C  90 04 00 14 */	stw r0, 0x14(r4)
/* 80AF2650  80 7F 00 C8 */	lwz r3, 0xc8(r31)
/* 80AF2654  80 1F 00 CC */	lwz r0, 0xcc(r31)
/* 80AF2658  90 64 00 18 */	stw r3, 0x18(r4)
/* 80AF265C  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80AF2660  80 1F 00 D0 */	lwz r0, 0xd0(r31)
/* 80AF2664  90 04 00 20 */	stw r0, 0x20(r4)
/* 80AF2668  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF266C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF2670  7C 08 03 A6 */	mtlr r0
/* 80AF2674  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF2678  4E 80 00 20 */	blr 

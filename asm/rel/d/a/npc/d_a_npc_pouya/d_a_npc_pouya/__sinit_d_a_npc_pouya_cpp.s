lbl_80AB1DF8:
/* 80AB1DF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB1DFC  7C 08 02 A6 */	mflr r0
/* 80AB1E00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB1E04  3C 60 80 AB */	lis r3, cNullVec__6Z2Calc@ha /* 0x80AB21F0@ha */
/* 80AB1E08  38 A3 21 F0 */	addi r5, r3, cNullVec__6Z2Calc@l /* 0x80AB21F0@l */
/* 80AB1E0C  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80AB1E10  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80AB1E14  80 64 00 00 */	lwz r3, 0(r4)
/* 80AB1E18  80 04 00 04 */	lwz r0, 4(r4)
/* 80AB1E1C  90 65 07 B8 */	stw r3, 0x7b8(r5)
/* 80AB1E20  90 05 07 BC */	stw r0, 0x7bc(r5)
/* 80AB1E24  80 04 00 08 */	lwz r0, 8(r4)
/* 80AB1E28  90 05 07 C0 */	stw r0, 0x7c0(r5)
/* 80AB1E2C  38 85 07 B8 */	addi r4, r5, 0x7b8
/* 80AB1E30  80 65 07 A0 */	lwz r3, 0x7a0(r5)
/* 80AB1E34  80 05 07 A4 */	lwz r0, 0x7a4(r5)
/* 80AB1E38  90 64 00 0C */	stw r3, 0xc(r4)
/* 80AB1E3C  90 04 00 10 */	stw r0, 0x10(r4)
/* 80AB1E40  80 05 07 A8 */	lwz r0, 0x7a8(r5)
/* 80AB1E44  90 04 00 14 */	stw r0, 0x14(r4)
/* 80AB1E48  80 65 07 AC */	lwz r3, 0x7ac(r5)
/* 80AB1E4C  80 05 07 B0 */	lwz r0, 0x7b0(r5)
/* 80AB1E50  90 64 00 18 */	stw r3, 0x18(r4)
/* 80AB1E54  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80AB1E58  80 05 07 B4 */	lwz r0, 0x7b4(r5)
/* 80AB1E5C  90 04 00 20 */	stw r0, 0x20(r4)
/* 80AB1E60  3C 60 80 AB */	lis r3, __vt__19daNpc_Pouya_Param_c@ha /* 0x80AB2CD8@ha */
/* 80AB1E64  38 03 2C D8 */	addi r0, r3, __vt__19daNpc_Pouya_Param_c@l /* 0x80AB2CD8@l */
/* 80AB1E68  3C 60 80 AB */	lis r3, l_HIO@ha /* 0x80AB2CFC@ha */
/* 80AB1E6C  94 03 2C FC */	stwu r0, l_HIO@l(r3)  /* 0x80AB2CFC@l */
/* 80AB1E70  3C 80 80 AB */	lis r4, __dt__19daNpc_Pouya_Param_cFv@ha /* 0x80AB1F94@ha */
/* 80AB1E74  38 84 1F 94 */	addi r4, r4, __dt__19daNpc_Pouya_Param_cFv@l /* 0x80AB1F94@l */
/* 80AB1E78  3C A0 80 AB */	lis r5, lit_3819@ha /* 0x80AB2CF0@ha */
/* 80AB1E7C  38 A5 2C F0 */	addi r5, r5, lit_3819@l /* 0x80AB2CF0@l */
/* 80AB1E80  4B FF BE B9 */	bl __register_global_object
/* 80AB1E84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB1E88  7C 08 03 A6 */	mtlr r0
/* 80AB1E8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB1E90  4E 80 00 20 */	blr 

lbl_80A0B960:
/* 80A0B960  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A0B964  7C 08 02 A6 */	mflr r0
/* 80A0B968  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0B96C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A0B970  3C 60 80 A1 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80A0C524@ha */
/* 80A0B974  3B E3 C5 24 */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x80A0C524@l */
/* 80A0B978  3C 60 80 A1 */	lis r3, __vt__18daNpcImpal_Param_c@ha /* 0x80A0C8E0@ha */
/* 80A0B97C  38 03 C8 E0 */	addi r0, r3, __vt__18daNpcImpal_Param_c@l /* 0x80A0C8E0@l */
/* 80A0B980  3C 60 80 A1 */	lis r3, l_HIO@ha /* 0x80A0C904@ha */
/* 80A0B984  94 03 C9 04 */	stwu r0, l_HIO@l(r3)  /* 0x80A0C904@l */
/* 80A0B988  3C 80 80 A1 */	lis r4, __dt__18daNpcImpal_Param_cFv@ha /* 0x80A0C204@ha */
/* 80A0B98C  38 84 C2 04 */	addi r4, r4, __dt__18daNpcImpal_Param_cFv@l /* 0x80A0C204@l */
/* 80A0B990  3C A0 80 A1 */	lis r5, lit_3804@ha /* 0x80A0C8F8@ha */
/* 80A0B994  38 A5 C8 F8 */	addi r5, r5, lit_3804@l /* 0x80A0C8F8@l */
/* 80A0B998  4B FF BF E1 */	bl __register_global_object
/* 80A0B99C  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80A0B9A0  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80A0B9A4  80 64 00 00 */	lwz r3, 0(r4)
/* 80A0B9A8  80 04 00 04 */	lwz r0, 4(r4)
/* 80A0B9AC  90 7F 01 E8 */	stw r3, 0x1e8(r31)
/* 80A0B9B0  90 1F 01 EC */	stw r0, 0x1ec(r31)
/* 80A0B9B4  80 04 00 08 */	lwz r0, 8(r4)
/* 80A0B9B8  90 1F 01 F0 */	stw r0, 0x1f0(r31)
/* 80A0B9BC  38 9F 01 E8 */	addi r4, r31, 0x1e8
/* 80A0B9C0  80 7F 01 C4 */	lwz r3, 0x1c4(r31)
/* 80A0B9C4  80 1F 01 C8 */	lwz r0, 0x1c8(r31)
/* 80A0B9C8  90 64 00 0C */	stw r3, 0xc(r4)
/* 80A0B9CC  90 04 00 10 */	stw r0, 0x10(r4)
/* 80A0B9D0  80 1F 01 CC */	lwz r0, 0x1cc(r31)
/* 80A0B9D4  90 04 00 14 */	stw r0, 0x14(r4)
/* 80A0B9D8  80 7F 01 D0 */	lwz r3, 0x1d0(r31)
/* 80A0B9DC  80 1F 01 D4 */	lwz r0, 0x1d4(r31)
/* 80A0B9E0  90 64 00 18 */	stw r3, 0x18(r4)
/* 80A0B9E4  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80A0B9E8  80 1F 01 D8 */	lwz r0, 0x1d8(r31)
/* 80A0B9EC  90 04 00 20 */	stw r0, 0x20(r4)
/* 80A0B9F0  80 7F 01 DC */	lwz r3, 0x1dc(r31)
/* 80A0B9F4  80 1F 01 E0 */	lwz r0, 0x1e0(r31)
/* 80A0B9F8  90 64 00 24 */	stw r3, 0x24(r4)
/* 80A0B9FC  90 04 00 28 */	stw r0, 0x28(r4)
/* 80A0BA00  80 1F 01 E4 */	lwz r0, 0x1e4(r31)
/* 80A0BA04  90 04 00 2C */	stw r0, 0x2c(r4)
/* 80A0BA08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A0BA0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0BA10  7C 08 03 A6 */	mtlr r0
/* 80A0BA14  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0BA18  4E 80 00 20 */	blr 

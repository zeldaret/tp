lbl_809DEE68:
/* 809DEE68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DEE6C  7C 08 02 A6 */	mflr r0
/* 809DEE70  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DEE74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809DEE78  3C 60 80 9E */	lis r3, cNullVec__6Z2Calc@ha
/* 809DEE7C  3B E3 F2 F8 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 809DEE80  3C 60 80 9E */	lis r3, __vt__17daNpc_grO_Param_c@ha
/* 809DEE84  38 03 F6 EC */	addi r0, r3, __vt__17daNpc_grO_Param_c@l
/* 809DEE88  3C 60 80 9E */	lis r3, l_HIO@ha
/* 809DEE8C  94 03 F7 4C */	stwu r0, l_HIO@l(r3)
/* 809DEE90  3C 80 80 9E */	lis r4, __dt__17daNpc_grO_Param_cFv@ha
/* 809DEE94  38 84 EF 10 */	addi r4, r4, __dt__17daNpc_grO_Param_cFv@l
/* 809DEE98  3C A0 80 9E */	lis r5, lit_4095@ha
/* 809DEE9C  38 A5 F7 40 */	addi r5, r5, lit_4095@l
/* 809DEEA0  4B FF B6 59 */	bl __register_global_object
/* 809DEEA4  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 809DEEA8  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 809DEEAC  80 64 00 00 */	lwz r3, 0(r4)
/* 809DEEB0  80 04 00 04 */	lwz r0, 4(r4)
/* 809DEEB4  90 7F 01 EC */	stw r3, 0x1ec(r31)
/* 809DEEB8  90 1F 01 F0 */	stw r0, 0x1f0(r31)
/* 809DEEBC  80 04 00 08 */	lwz r0, 8(r4)
/* 809DEEC0  90 1F 01 F4 */	stw r0, 0x1f4(r31)
/* 809DEEC4  38 9F 01 EC */	addi r4, r31, 0x1ec
/* 809DEEC8  80 7F 01 D4 */	lwz r3, 0x1d4(r31)
/* 809DEECC  80 1F 01 D8 */	lwz r0, 0x1d8(r31)
/* 809DEED0  90 64 00 0C */	stw r3, 0xc(r4)
/* 809DEED4  90 04 00 10 */	stw r0, 0x10(r4)
/* 809DEED8  80 1F 01 DC */	lwz r0, 0x1dc(r31)
/* 809DEEDC  90 04 00 14 */	stw r0, 0x14(r4)
/* 809DEEE0  80 7F 01 E0 */	lwz r3, 0x1e0(r31)
/* 809DEEE4  80 1F 01 E4 */	lwz r0, 0x1e4(r31)
/* 809DEEE8  90 64 00 18 */	stw r3, 0x18(r4)
/* 809DEEEC  90 04 00 1C */	stw r0, 0x1c(r4)
/* 809DEEF0  80 1F 01 E8 */	lwz r0, 0x1e8(r31)
/* 809DEEF4  90 04 00 20 */	stw r0, 0x20(r4)
/* 809DEEF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809DEEFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DEF00  7C 08 03 A6 */	mtlr r0
/* 809DEF04  38 21 00 10 */	addi r1, r1, 0x10
/* 809DEF08  4E 80 00 20 */	blr 

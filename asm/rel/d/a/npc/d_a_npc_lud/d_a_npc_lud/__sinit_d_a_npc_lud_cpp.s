lbl_80A6FAF0:
/* 80A6FAF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6FAF4  7C 08 02 A6 */	mflr r0
/* 80A6FAF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6FAFC  3C 60 80 A7 */	lis r3, cNullVec__6Z2Calc@ha
/* 80A6FB00  38 A3 FF CC */	addi r5, r3, cNullVec__6Z2Calc@l
/* 80A6FB04  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80A6FB08  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80A6FB0C  80 64 00 00 */	lwz r3, 0(r4)
/* 80A6FB10  80 04 00 04 */	lwz r0, 4(r4)
/* 80A6FB14  90 65 08 28 */	stw r3, 0x828(r5)
/* 80A6FB18  90 05 08 2C */	stw r0, 0x82c(r5)
/* 80A6FB1C  80 04 00 08 */	lwz r0, 8(r4)
/* 80A6FB20  90 05 08 30 */	stw r0, 0x830(r5)
/* 80A6FB24  38 85 08 28 */	addi r4, r5, 0x828
/* 80A6FB28  80 65 07 D4 */	lwz r3, 0x7d4(r5)
/* 80A6FB2C  80 05 07 D8 */	lwz r0, 0x7d8(r5)
/* 80A6FB30  90 64 00 0C */	stw r3, 0xc(r4)
/* 80A6FB34  90 04 00 10 */	stw r0, 0x10(r4)
/* 80A6FB38  80 05 07 DC */	lwz r0, 0x7dc(r5)
/* 80A6FB3C  90 04 00 14 */	stw r0, 0x14(r4)
/* 80A6FB40  80 65 07 E0 */	lwz r3, 0x7e0(r5)
/* 80A6FB44  80 05 07 E4 */	lwz r0, 0x7e4(r5)
/* 80A6FB48  90 64 00 18 */	stw r3, 0x18(r4)
/* 80A6FB4C  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80A6FB50  80 05 07 E8 */	lwz r0, 0x7e8(r5)
/* 80A6FB54  90 04 00 20 */	stw r0, 0x20(r4)
/* 80A6FB58  80 65 07 EC */	lwz r3, 0x7ec(r5)
/* 80A6FB5C  80 05 07 F0 */	lwz r0, 0x7f0(r5)
/* 80A6FB60  90 64 00 24 */	stw r3, 0x24(r4)
/* 80A6FB64  90 04 00 28 */	stw r0, 0x28(r4)
/* 80A6FB68  80 05 07 F4 */	lwz r0, 0x7f4(r5)
/* 80A6FB6C  90 04 00 2C */	stw r0, 0x2c(r4)
/* 80A6FB70  80 65 07 F8 */	lwz r3, 0x7f8(r5)
/* 80A6FB74  80 05 07 FC */	lwz r0, 0x7fc(r5)
/* 80A6FB78  90 64 00 30 */	stw r3, 0x30(r4)
/* 80A6FB7C  90 04 00 34 */	stw r0, 0x34(r4)
/* 80A6FB80  80 05 08 00 */	lwz r0, 0x800(r5)
/* 80A6FB84  90 04 00 38 */	stw r0, 0x38(r4)
/* 80A6FB88  80 65 08 04 */	lwz r3, 0x804(r5)
/* 80A6FB8C  80 05 08 08 */	lwz r0, 0x808(r5)
/* 80A6FB90  90 64 00 3C */	stw r3, 0x3c(r4)
/* 80A6FB94  90 04 00 40 */	stw r0, 0x40(r4)
/* 80A6FB98  80 05 08 0C */	lwz r0, 0x80c(r5)
/* 80A6FB9C  90 04 00 44 */	stw r0, 0x44(r4)
/* 80A6FBA0  80 65 08 10 */	lwz r3, 0x810(r5)
/* 80A6FBA4  80 05 08 14 */	lwz r0, 0x814(r5)
/* 80A6FBA8  90 64 00 48 */	stw r3, 0x48(r4)
/* 80A6FBAC  90 04 00 4C */	stw r0, 0x4c(r4)
/* 80A6FBB0  80 05 08 18 */	lwz r0, 0x818(r5)
/* 80A6FBB4  90 04 00 50 */	stw r0, 0x50(r4)
/* 80A6FBB8  80 65 08 1C */	lwz r3, 0x81c(r5)
/* 80A6FBBC  80 05 08 20 */	lwz r0, 0x820(r5)
/* 80A6FBC0  90 64 00 54 */	stw r3, 0x54(r4)
/* 80A6FBC4  90 04 00 58 */	stw r0, 0x58(r4)
/* 80A6FBC8  80 05 08 24 */	lwz r0, 0x824(r5)
/* 80A6FBCC  90 04 00 5C */	stw r0, 0x5c(r4)
/* 80A6FBD0  3C 60 80 A7 */	lis r3, __vt__17daNpc_Lud_Param_c@ha
/* 80A6FBD4  38 03 0B 40 */	addi r0, r3, __vt__17daNpc_Lud_Param_c@l
/* 80A6FBD8  3C 60 80 A7 */	lis r3, l_HIO@ha
/* 80A6FBDC  94 03 0B 64 */	stwu r0, l_HIO@l(r3)
/* 80A6FBE0  3C 80 80 A7 */	lis r4, __dt__17daNpc_Lud_Param_cFv@ha
/* 80A6FBE4  38 84 FD 10 */	addi r4, r4, __dt__17daNpc_Lud_Param_cFv@l
/* 80A6FBE8  3C A0 80 A7 */	lis r5, lit_3840@ha
/* 80A6FBEC  38 A5 0B 58 */	addi r5, r5, lit_3840@l
/* 80A6FBF0  4B FF AF 49 */	bl __register_global_object
/* 80A6FBF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6FBF8  7C 08 03 A6 */	mtlr r0
/* 80A6FBFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6FC00  4E 80 00 20 */	blr 

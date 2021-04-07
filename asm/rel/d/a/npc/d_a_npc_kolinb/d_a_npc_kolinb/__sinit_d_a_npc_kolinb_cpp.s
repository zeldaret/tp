lbl_80A48450:
/* 80A48450  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A48454  7C 08 02 A6 */	mflr r0
/* 80A48458  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A4845C  3C 60 80 A5 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80A48854@ha */
/* 80A48460  38 A3 88 54 */	addi r5, r3, cNullVec__6Z2Calc@l /* 0x80A48854@l */
/* 80A48464  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80A48468  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80A4846C  80 64 00 00 */	lwz r3, 0(r4)
/* 80A48470  80 04 00 04 */	lwz r0, 4(r4)
/* 80A48474  90 65 03 EC */	stw r3, 0x3ec(r5)
/* 80A48478  90 05 03 F0 */	stw r0, 0x3f0(r5)
/* 80A4847C  80 04 00 08 */	lwz r0, 8(r4)
/* 80A48480  90 05 03 F4 */	stw r0, 0x3f4(r5)
/* 80A48484  38 85 03 EC */	addi r4, r5, 0x3ec
/* 80A48488  80 65 03 A4 */	lwz r3, 0x3a4(r5)
/* 80A4848C  80 05 03 A8 */	lwz r0, 0x3a8(r5)
/* 80A48490  90 64 00 0C */	stw r3, 0xc(r4)
/* 80A48494  90 04 00 10 */	stw r0, 0x10(r4)
/* 80A48498  80 05 03 AC */	lwz r0, 0x3ac(r5)
/* 80A4849C  90 04 00 14 */	stw r0, 0x14(r4)
/* 80A484A0  80 65 03 B0 */	lwz r3, 0x3b0(r5)
/* 80A484A4  80 05 03 B4 */	lwz r0, 0x3b4(r5)
/* 80A484A8  90 64 00 18 */	stw r3, 0x18(r4)
/* 80A484AC  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80A484B0  80 05 03 B8 */	lwz r0, 0x3b8(r5)
/* 80A484B4  90 04 00 20 */	stw r0, 0x20(r4)
/* 80A484B8  80 65 03 BC */	lwz r3, 0x3bc(r5)
/* 80A484BC  80 05 03 C0 */	lwz r0, 0x3c0(r5)
/* 80A484C0  90 64 00 24 */	stw r3, 0x24(r4)
/* 80A484C4  90 04 00 28 */	stw r0, 0x28(r4)
/* 80A484C8  80 05 03 C4 */	lwz r0, 0x3c4(r5)
/* 80A484CC  90 04 00 2C */	stw r0, 0x2c(r4)
/* 80A484D0  80 65 03 C8 */	lwz r3, 0x3c8(r5)
/* 80A484D4  80 05 03 CC */	lwz r0, 0x3cc(r5)
/* 80A484D8  90 64 00 30 */	stw r3, 0x30(r4)
/* 80A484DC  90 04 00 34 */	stw r0, 0x34(r4)
/* 80A484E0  80 05 03 D0 */	lwz r0, 0x3d0(r5)
/* 80A484E4  90 04 00 38 */	stw r0, 0x38(r4)
/* 80A484E8  80 65 03 D4 */	lwz r3, 0x3d4(r5)
/* 80A484EC  80 05 03 D8 */	lwz r0, 0x3d8(r5)
/* 80A484F0  90 64 00 3C */	stw r3, 0x3c(r4)
/* 80A484F4  90 04 00 40 */	stw r0, 0x40(r4)
/* 80A484F8  80 05 03 DC */	lwz r0, 0x3dc(r5)
/* 80A484FC  90 04 00 44 */	stw r0, 0x44(r4)
/* 80A48500  80 65 03 E0 */	lwz r3, 0x3e0(r5)
/* 80A48504  80 05 03 E4 */	lwz r0, 0x3e4(r5)
/* 80A48508  90 64 00 48 */	stw r3, 0x48(r4)
/* 80A4850C  90 04 00 4C */	stw r0, 0x4c(r4)
/* 80A48510  80 05 03 E8 */	lwz r0, 0x3e8(r5)
/* 80A48514  90 04 00 50 */	stw r0, 0x50(r4)
/* 80A48518  3C 60 80 A5 */	lis r3, __vt__20daNpc_Kolinb_Param_c@ha /* 0x80A48E74@ha */
/* 80A4851C  38 03 8E 74 */	addi r0, r3, __vt__20daNpc_Kolinb_Param_c@l /* 0x80A48E74@l */
/* 80A48520  3C 60 80 A5 */	lis r3, l_HIO@ha /* 0x80A48E94@ha */
/* 80A48524  94 03 8E 94 */	stwu r0, l_HIO@l(r3)  /* 0x80A48E94@l */
/* 80A48528  3C 80 80 A5 */	lis r4, __dt__20daNpc_Kolinb_Param_cFv@ha /* 0x80A486A4@ha */
/* 80A4852C  38 84 86 A4 */	addi r4, r4, __dt__20daNpc_Kolinb_Param_cFv@l /* 0x80A486A4@l */
/* 80A48530  3C A0 80 A5 */	lis r5, lit_3818@ha /* 0x80A48E88@ha */
/* 80A48534  38 A5 8E 88 */	addi r5, r5, lit_3818@l /* 0x80A48E88@l */
/* 80A48538  4B FF D3 E1 */	bl __register_global_object
/* 80A4853C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A48540  7C 08 03 A6 */	mtlr r0
/* 80A48544  38 21 00 10 */	addi r1, r1, 0x10
/* 80A48548  4E 80 00 20 */	blr 

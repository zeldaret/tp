lbl_80B7F760:
/* 80B7F760  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7F764  7C 08 02 A6 */	mflr r0
/* 80B7F768  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7F76C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B7F770  3C 60 80 B9 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80B8CE90@ha */
/* 80B7F774  3B E3 CE 90 */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x80B8CE90@l */
/* 80B7F778  3C 60 80 B9 */	lis r3, __vt__17daNpc_zrA_Param_c@ha /* 0x80B8DA34@ha */
/* 80B7F77C  38 03 DA 34 */	addi r0, r3, __vt__17daNpc_zrA_Param_c@l /* 0x80B8DA34@l */
/* 80B7F780  3C 60 80 B9 */	lis r3, l_HIO@ha /* 0x80B8DA94@ha */
/* 80B7F784  94 03 DA 94 */	stwu r0, l_HIO@l(r3)  /* 0x80B8DA94@l */
/* 80B7F788  3C 80 80 B9 */	lis r4, __dt__17daNpc_zrA_Param_cFv@ha /* 0x80B8C3EC@ha */
/* 80B7F78C  38 84 C3 EC */	addi r4, r4, __dt__17daNpc_zrA_Param_cFv@l /* 0x80B8C3EC@l */
/* 80B7F790  3C A0 80 B9 */	lis r5, lit_3887@ha /* 0x80B8DA88@ha */
/* 80B7F794  38 A5 DA 88 */	addi r5, r5, lit_3887@l /* 0x80B8DA88@l */
/* 80B7F798  4B FF 8D 01 */	bl __register_global_object
/* 80B7F79C  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80B7F7A0  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80B7F7A4  80 64 00 00 */	lwz r3, 0(r4)
/* 80B7F7A8  80 04 00 04 */	lwz r0, 4(r4)
/* 80B7F7AC  90 7F 05 50 */	stw r3, 0x550(r31)
/* 80B7F7B0  90 1F 05 54 */	stw r0, 0x554(r31)
/* 80B7F7B4  80 04 00 08 */	lwz r0, 8(r4)
/* 80B7F7B8  90 1F 05 58 */	stw r0, 0x558(r31)
/* 80B7F7BC  38 7F 05 50 */	addi r3, r31, 0x550
/* 80B7F7C0  80 9F 04 D8 */	lwz r4, 0x4d8(r31)
/* 80B7F7C4  80 1F 04 DC */	lwz r0, 0x4dc(r31)
/* 80B7F7C8  90 83 00 0C */	stw r4, 0xc(r3)
/* 80B7F7CC  90 03 00 10 */	stw r0, 0x10(r3)
/* 80B7F7D0  80 1F 04 E0 */	lwz r0, 0x4e0(r31)
/* 80B7F7D4  90 03 00 14 */	stw r0, 0x14(r3)
/* 80B7F7D8  80 9F 04 E4 */	lwz r4, 0x4e4(r31)
/* 80B7F7DC  80 1F 04 E8 */	lwz r0, 0x4e8(r31)
/* 80B7F7E0  90 83 00 18 */	stw r4, 0x18(r3)
/* 80B7F7E4  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80B7F7E8  80 1F 04 EC */	lwz r0, 0x4ec(r31)
/* 80B7F7EC  90 03 00 20 */	stw r0, 0x20(r3)
/* 80B7F7F0  80 9F 04 F0 */	lwz r4, 0x4f0(r31)
/* 80B7F7F4  80 1F 04 F4 */	lwz r0, 0x4f4(r31)
/* 80B7F7F8  90 83 00 24 */	stw r4, 0x24(r3)
/* 80B7F7FC  90 03 00 28 */	stw r0, 0x28(r3)
/* 80B7F800  80 1F 04 F8 */	lwz r0, 0x4f8(r31)
/* 80B7F804  90 03 00 2C */	stw r0, 0x2c(r3)
/* 80B7F808  80 9F 04 FC */	lwz r4, 0x4fc(r31)
/* 80B7F80C  80 1F 05 00 */	lwz r0, 0x500(r31)
/* 80B7F810  90 83 00 30 */	stw r4, 0x30(r3)
/* 80B7F814  90 03 00 34 */	stw r0, 0x34(r3)
/* 80B7F818  80 1F 05 04 */	lwz r0, 0x504(r31)
/* 80B7F81C  90 03 00 38 */	stw r0, 0x38(r3)
/* 80B7F820  80 9F 05 08 */	lwz r4, 0x508(r31)
/* 80B7F824  80 1F 05 0C */	lwz r0, 0x50c(r31)
/* 80B7F828  90 83 00 3C */	stw r4, 0x3c(r3)
/* 80B7F82C  90 03 00 40 */	stw r0, 0x40(r3)
/* 80B7F830  80 1F 05 10 */	lwz r0, 0x510(r31)
/* 80B7F834  90 03 00 44 */	stw r0, 0x44(r3)
/* 80B7F838  80 9F 05 14 */	lwz r4, 0x514(r31)
/* 80B7F83C  80 1F 05 18 */	lwz r0, 0x518(r31)
/* 80B7F840  90 83 00 48 */	stw r4, 0x48(r3)
/* 80B7F844  90 03 00 4C */	stw r0, 0x4c(r3)
/* 80B7F848  80 1F 05 1C */	lwz r0, 0x51c(r31)
/* 80B7F84C  90 03 00 50 */	stw r0, 0x50(r3)
/* 80B7F850  80 9F 05 20 */	lwz r4, 0x520(r31)
/* 80B7F854  80 1F 05 24 */	lwz r0, 0x524(r31)
/* 80B7F858  90 83 00 54 */	stw r4, 0x54(r3)
/* 80B7F85C  90 03 00 58 */	stw r0, 0x58(r3)
/* 80B7F860  80 1F 05 28 */	lwz r0, 0x528(r31)
/* 80B7F864  90 03 00 5C */	stw r0, 0x5c(r3)
/* 80B7F868  80 9F 05 2C */	lwz r4, 0x52c(r31)
/* 80B7F86C  80 1F 05 30 */	lwz r0, 0x530(r31)
/* 80B7F870  90 83 00 60 */	stw r4, 0x60(r3)
/* 80B7F874  90 03 00 64 */	stw r0, 0x64(r3)
/* 80B7F878  80 1F 05 34 */	lwz r0, 0x534(r31)
/* 80B7F87C  90 03 00 68 */	stw r0, 0x68(r3)
/* 80B7F880  80 9F 05 38 */	lwz r4, 0x538(r31)
/* 80B7F884  80 1F 05 3C */	lwz r0, 0x53c(r31)
/* 80B7F888  90 83 00 6C */	stw r4, 0x6c(r3)
/* 80B7F88C  90 03 00 70 */	stw r0, 0x70(r3)
/* 80B7F890  80 1F 05 40 */	lwz r0, 0x540(r31)
/* 80B7F894  90 03 00 74 */	stw r0, 0x74(r3)
/* 80B7F898  80 9F 05 44 */	lwz r4, 0x544(r31)
/* 80B7F89C  80 1F 05 48 */	lwz r0, 0x548(r31)
/* 80B7F8A0  90 83 00 78 */	stw r4, 0x78(r3)
/* 80B7F8A4  90 03 00 7C */	stw r0, 0x7c(r3)
/* 80B7F8A8  80 1F 05 4C */	lwz r0, 0x54c(r31)
/* 80B7F8AC  90 03 00 80 */	stw r0, 0x80(r3)
/* 80B7F8B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B7F8B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B7F8B8  7C 08 03 A6 */	mtlr r0
/* 80B7F8BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B7F8C0  4E 80 00 20 */	blr 

lbl_80A68C4C:
/* 80A68C4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A68C50  7C 08 02 A6 */	mflr r0
/* 80A68C54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A68C58  3C 60 80 A7 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80A69088@ha */
/* 80A68C5C  38 A3 90 88 */	addi r5, r3, cNullVec__6Z2Calc@l /* 0x80A69088@l */
/* 80A68C60  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80A68C64  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80A68C68  80 64 00 00 */	lwz r3, 0(r4)
/* 80A68C6C  80 04 00 04 */	lwz r0, 4(r4)
/* 80A68C70  90 65 07 20 */	stw r3, 0x720(r5)
/* 80A68C74  90 05 07 24 */	stw r0, 0x724(r5)
/* 80A68C78  80 04 00 08 */	lwz r0, 8(r4)
/* 80A68C7C  90 05 07 28 */	stw r0, 0x728(r5)
/* 80A68C80  38 85 07 20 */	addi r4, r5, 0x720
/* 80A68C84  80 65 06 FC */	lwz r3, 0x6fc(r5)
/* 80A68C88  80 05 07 00 */	lwz r0, 0x700(r5)
/* 80A68C8C  90 64 00 0C */	stw r3, 0xc(r4)
/* 80A68C90  90 04 00 10 */	stw r0, 0x10(r4)
/* 80A68C94  80 05 07 04 */	lwz r0, 0x704(r5)
/* 80A68C98  90 04 00 14 */	stw r0, 0x14(r4)
/* 80A68C9C  80 65 07 08 */	lwz r3, 0x708(r5)
/* 80A68CA0  80 05 07 0C */	lwz r0, 0x70c(r5)
/* 80A68CA4  90 64 00 18 */	stw r3, 0x18(r4)
/* 80A68CA8  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80A68CAC  80 05 07 10 */	lwz r0, 0x710(r5)
/* 80A68CB0  90 04 00 20 */	stw r0, 0x20(r4)
/* 80A68CB4  80 65 07 14 */	lwz r3, 0x714(r5)
/* 80A68CB8  80 05 07 18 */	lwz r0, 0x718(r5)
/* 80A68CBC  90 64 00 24 */	stw r3, 0x24(r4)
/* 80A68CC0  90 04 00 28 */	stw r0, 0x28(r4)
/* 80A68CC4  80 05 07 1C */	lwz r0, 0x71c(r5)
/* 80A68CC8  90 04 00 2C */	stw r0, 0x2c(r4)
/* 80A68CCC  3C 60 80 A7 */	lis r3, __vt__17daNpc_Len_Param_c@ha /* 0x80A69A40@ha */
/* 80A68CD0  38 03 9A 40 */	addi r0, r3, __vt__17daNpc_Len_Param_c@l /* 0x80A69A40@l */
/* 80A68CD4  3C 60 80 A7 */	lis r3, l_HIO@ha /* 0x80A69A64@ha */
/* 80A68CD8  94 03 9A 64 */	stwu r0, l_HIO@l(r3)  /* 0x80A69A64@l */
/* 80A68CDC  3C 80 80 A7 */	lis r4, __dt__17daNpc_Len_Param_cFv@ha /* 0x80A68E38@ha */
/* 80A68CE0  38 84 8E 38 */	addi r4, r4, __dt__17daNpc_Len_Param_cFv@l /* 0x80A68E38@l */
/* 80A68CE4  3C A0 80 A7 */	lis r5, lit_3848@ha /* 0x80A69A58@ha */
/* 80A68CE8  38 A5 9A 58 */	addi r5, r5, lit_3848@l /* 0x80A69A58@l */
/* 80A68CEC  4B FF B5 CD */	bl __register_global_object
/* 80A68CF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A68CF4  7C 08 03 A6 */	mtlr r0
/* 80A68CF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A68CFC  4E 80 00 20 */	blr 

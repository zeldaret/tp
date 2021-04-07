lbl_80AC6F0C:
/* 80AC6F0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC6F10  7C 08 02 A6 */	mflr r0
/* 80AC6F14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC6F18  3C 60 80 AC */	lis r3, mCutList__12daNpc_seiB_c@ha /* 0x80AC722C@ha */
/* 80AC6F1C  38 A3 72 2C */	addi r5, r3, mCutList__12daNpc_seiB_c@l /* 0x80AC722C@l */
/* 80AC6F20  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80AC6F24  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80AC6F28  80 64 00 00 */	lwz r3, 0(r4)
/* 80AC6F2C  80 04 00 04 */	lwz r0, 4(r4)
/* 80AC6F30  90 65 00 00 */	stw r3, 0(r5)
/* 80AC6F34  90 05 00 04 */	stw r0, 4(r5)
/* 80AC6F38  80 04 00 08 */	lwz r0, 8(r4)
/* 80AC6F3C  90 05 00 08 */	stw r0, 8(r5)
/* 80AC6F40  3C 60 80 AC */	lis r3, __vt__18daNpc_seiB_Param_c@ha /* 0x80AC7428@ha */
/* 80AC6F44  38 03 74 28 */	addi r0, r3, __vt__18daNpc_seiB_Param_c@l /* 0x80AC7428@l */
/* 80AC6F48  3C 60 80 AC */	lis r3, l_HIO@ha /* 0x80AC744C@ha */
/* 80AC6F4C  94 03 74 4C */	stwu r0, l_HIO@l(r3)  /* 0x80AC744C@l */
/* 80AC6F50  3C 80 80 AC */	lis r4, __dt__18daNpc_seiB_Param_cFv@ha /* 0x80AC6FB8@ha */
/* 80AC6F54  38 84 6F B8 */	addi r4, r4, __dt__18daNpc_seiB_Param_cFv@l /* 0x80AC6FB8@l */
/* 80AC6F58  3C A0 80 AC */	lis r5, lit_3814@ha /* 0x80AC7440@ha */
/* 80AC6F5C  38 A5 74 40 */	addi r5, r5, lit_3814@l /* 0x80AC7440@l */
/* 80AC6F60  4B FF E1 19 */	bl __register_global_object
/* 80AC6F64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC6F68  7C 08 03 A6 */	mtlr r0
/* 80AC6F6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC6F70  4E 80 00 20 */	blr 

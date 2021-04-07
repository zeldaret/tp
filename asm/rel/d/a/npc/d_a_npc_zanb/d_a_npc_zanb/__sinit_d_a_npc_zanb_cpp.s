lbl_80B6BA74:
/* 80B6BA74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6BA78  7C 08 02 A6 */	mflr r0
/* 80B6BA7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6BA80  3C 60 80 B7 */	lis r3, mCutList__12daNpc_zanB_c@ha /* 0x80B6BEA4@ha */
/* 80B6BA84  38 A3 BE A4 */	addi r5, r3, mCutList__12daNpc_zanB_c@l /* 0x80B6BEA4@l */
/* 80B6BA88  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80B6BA8C  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80B6BA90  80 64 00 00 */	lwz r3, 0(r4)
/* 80B6BA94  80 04 00 04 */	lwz r0, 4(r4)
/* 80B6BA98  90 65 00 00 */	stw r3, 0(r5)
/* 80B6BA9C  90 05 00 04 */	stw r0, 4(r5)
/* 80B6BAA0  80 04 00 08 */	lwz r0, 8(r4)
/* 80B6BAA4  90 05 00 08 */	stw r0, 8(r5)
/* 80B6BAA8  3C 60 80 B7 */	lis r3, __vt__18daNpc_zanB_Param_c@ha /* 0x80B6C090@ha */
/* 80B6BAAC  38 03 C0 90 */	addi r0, r3, __vt__18daNpc_zanB_Param_c@l /* 0x80B6C090@l */
/* 80B6BAB0  3C 60 80 B7 */	lis r3, l_HIO@ha /* 0x80B6C0B4@ha */
/* 80B6BAB4  94 03 C0 B4 */	stwu r0, l_HIO@l(r3)  /* 0x80B6C0B4@l */
/* 80B6BAB8  3C 80 80 B7 */	lis r4, __dt__18daNpc_zanB_Param_cFv@ha /* 0x80B6BC58@ha */
/* 80B6BABC  38 84 BC 58 */	addi r4, r4, __dt__18daNpc_zanB_Param_cFv@l /* 0x80B6BC58@l */
/* 80B6BAC0  3C A0 80 B7 */	lis r5, lit_3811@ha /* 0x80B6C0A8@ha */
/* 80B6BAC4  38 A5 C0 A8 */	addi r5, r5, lit_3811@l /* 0x80B6C0A8@l */
/* 80B6BAC8  4B FF D3 F1 */	bl __register_global_object
/* 80B6BACC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6BAD0  7C 08 03 A6 */	mtlr r0
/* 80B6BAD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6BAD8  4E 80 00 20 */	blr 

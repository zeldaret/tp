lbl_80AD7B70:
/* 80AD7B70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD7B74  7C 08 02 A6 */	mflr r0
/* 80AD7B78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD7B7C  3C 60 80 AD */	lis r3, mCutList__14daNpc_Seirei_c@ha /* 0x80AD7EF8@ha */
/* 80AD7B80  38 A3 7E F8 */	addi r5, r3, mCutList__14daNpc_Seirei_c@l /* 0x80AD7EF8@l */
/* 80AD7B84  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80AD7B88  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80AD7B8C  80 64 00 00 */	lwz r3, 0(r4)
/* 80AD7B90  80 04 00 04 */	lwz r0, 4(r4)
/* 80AD7B94  90 65 00 00 */	stw r3, 0(r5)
/* 80AD7B98  90 05 00 04 */	stw r0, 4(r5)
/* 80AD7B9C  80 04 00 08 */	lwz r0, 8(r4)
/* 80AD7BA0  90 05 00 08 */	stw r0, 8(r5)
/* 80AD7BA4  3C 60 80 AD */	lis r3, lit_3834@ha /* 0x80AD7EEC@ha */
/* 80AD7BA8  38 83 7E EC */	addi r4, r3, lit_3834@l /* 0x80AD7EEC@l */
/* 80AD7BAC  80 64 00 00 */	lwz r3, 0(r4)
/* 80AD7BB0  80 04 00 04 */	lwz r0, 4(r4)
/* 80AD7BB4  90 65 00 0C */	stw r3, 0xc(r5)
/* 80AD7BB8  90 05 00 10 */	stw r0, 0x10(r5)
/* 80AD7BBC  80 04 00 08 */	lwz r0, 8(r4)
/* 80AD7BC0  90 05 00 14 */	stw r0, 0x14(r5)
/* 80AD7BC4  3C 60 80 AE */	lis r3, __vt__20daNpc_Seirei_Param_c@ha /* 0x80AD80E0@ha */
/* 80AD7BC8  38 03 80 E0 */	addi r0, r3, __vt__20daNpc_Seirei_Param_c@l /* 0x80AD80E0@l */
/* 80AD7BCC  3C 60 80 AE */	lis r3, l_HIO@ha /* 0x80AD8104@ha */
/* 80AD7BD0  94 03 81 04 */	stwu r0, l_HIO@l(r3)  /* 0x80AD8104@l */
/* 80AD7BD4  3C 80 80 AD */	lis r4, __dt__20daNpc_Seirei_Param_cFv@ha /* 0x80AD7C3C@ha */
/* 80AD7BD8  38 84 7C 3C */	addi r4, r4, __dt__20daNpc_Seirei_Param_cFv@l /* 0x80AD7C3C@l */
/* 80AD7BDC  3C A0 80 AE */	lis r5, lit_3835@ha /* 0x80AD80F8@ha */
/* 80AD7BE0  38 A5 80 F8 */	addi r5, r5, lit_3835@l /* 0x80AD80F8@l */
/* 80AD7BE4  4B FF DA D5 */	bl __register_global_object
/* 80AD7BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD7BEC  7C 08 03 A6 */	mtlr r0
/* 80AD7BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD7BF4  4E 80 00 20 */	blr 

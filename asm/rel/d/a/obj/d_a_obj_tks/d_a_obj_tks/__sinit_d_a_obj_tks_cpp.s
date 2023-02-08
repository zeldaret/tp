lbl_80D11EAC:
/* 80D11EAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D11EB0  7C 08 02 A6 */	mflr r0
/* 80D11EB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D11EB8  3C 60 80 D1 */	lis r3, __vt__16daObjTks_Param_c@ha /* 0x80D12AE4@ha */
/* 80D11EBC  38 03 2A E4 */	addi r0, r3, __vt__16daObjTks_Param_c@l /* 0x80D12AE4@l */
/* 80D11EC0  3C 60 80 D1 */	lis r3, l_HIO@ha /* 0x80D12B04@ha */
/* 80D11EC4  94 03 2B 04 */	stwu r0, l_HIO@l(r3)  /* 0x80D12B04@l */
/* 80D11EC8  3C 80 80 D1 */	lis r4, __dt__16daObjTks_Param_cFv@ha /* 0x80D126D0@ha */
/* 80D11ECC  38 84 26 D0 */	addi r4, r4, __dt__16daObjTks_Param_cFv@l /* 0x80D126D0@l */
/* 80D11ED0  3C A0 80 D1 */	lis r5, lit_3917@ha /* 0x80D12AF8@ha */
/* 80D11ED4  38 A5 2A F8 */	addi r5, r5, lit_3917@l /* 0x80D12AF8@l */
/* 80D11ED8  4B FF D3 41 */	bl __register_global_object
/* 80D11EDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D11EE0  7C 08 03 A6 */	mtlr r0
/* 80D11EE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D11EE8  4E 80 00 20 */	blr 

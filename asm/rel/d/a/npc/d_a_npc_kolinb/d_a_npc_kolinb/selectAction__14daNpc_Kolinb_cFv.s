lbl_80A46AA4:
/* 80A46AA4  3C 80 80 3A */	lis r4, __ptmf_null@ha /* 0x803A2180@ha */
/* 80A46AA8  38 A4 21 80 */	addi r5, r4, __ptmf_null@l /* 0x803A2180@l */
/* 80A46AAC  80 85 00 00 */	lwz r4, 0(r5)
/* 80A46AB0  80 05 00 04 */	lwz r0, 4(r5)
/* 80A46AB4  90 83 0F B8 */	stw r4, 0xfb8(r3)
/* 80A46AB8  90 03 0F BC */	stw r0, 0xfbc(r3)
/* 80A46ABC  80 05 00 08 */	lwz r0, 8(r5)
/* 80A46AC0  90 03 0F C0 */	stw r0, 0xfc0(r3)
/* 80A46AC4  3C 80 80 A5 */	lis r4, lit_4677@ha /* 0x80A48CB8@ha */
/* 80A46AC8  38 A4 8C B8 */	addi r5, r4, lit_4677@l /* 0x80A48CB8@l */
/* 80A46ACC  80 85 00 00 */	lwz r4, 0(r5)
/* 80A46AD0  80 05 00 04 */	lwz r0, 4(r5)
/* 80A46AD4  90 83 0F B8 */	stw r4, 0xfb8(r3)
/* 80A46AD8  90 03 0F BC */	stw r0, 0xfbc(r3)
/* 80A46ADC  80 05 00 08 */	lwz r0, 8(r5)
/* 80A46AE0  90 03 0F C0 */	stw r0, 0xfc0(r3)
/* 80A46AE4  38 60 00 01 */	li r3, 1
/* 80A46AE8  4E 80 00 20 */	blr 

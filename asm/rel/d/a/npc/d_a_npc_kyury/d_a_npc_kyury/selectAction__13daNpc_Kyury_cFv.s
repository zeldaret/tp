lbl_80A619B8:
/* 80A619B8  3C 80 80 3A */	lis r4, __ptmf_null@ha /* 0x803A2180@ha */
/* 80A619BC  38 A4 21 80 */	addi r5, r4, __ptmf_null@l /* 0x803A2180@l */
/* 80A619C0  80 85 00 00 */	lwz r4, 0(r5)
/* 80A619C4  80 05 00 04 */	lwz r0, 4(r5)
/* 80A619C8  90 83 0F BC */	stw r4, 0xfbc(r3)
/* 80A619CC  90 03 0F C0 */	stw r0, 0xfc0(r3)
/* 80A619D0  80 05 00 08 */	lwz r0, 8(r5)
/* 80A619D4  90 03 0F C4 */	stw r0, 0xfc4(r3)
/* 80A619D8  3C 80 80 A6 */	lis r4, lit_4897@ha /* 0x80A64044@ha */
/* 80A619DC  38 A4 40 44 */	addi r5, r4, lit_4897@l /* 0x80A64044@l */
/* 80A619E0  80 85 00 00 */	lwz r4, 0(r5)
/* 80A619E4  80 05 00 04 */	lwz r0, 4(r5)
/* 80A619E8  90 83 0F BC */	stw r4, 0xfbc(r3)
/* 80A619EC  90 03 0F C0 */	stw r0, 0xfc0(r3)
/* 80A619F0  80 05 00 08 */	lwz r0, 8(r5)
/* 80A619F4  90 03 0F C4 */	stw r0, 0xfc4(r3)
/* 80A619F8  38 60 00 01 */	li r3, 1
/* 80A619FC  4E 80 00 20 */	blr 

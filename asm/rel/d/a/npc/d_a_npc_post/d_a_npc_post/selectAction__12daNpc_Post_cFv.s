lbl_80AAA99C:
/* 80AAA99C  3C 80 80 3A */	lis r4, __ptmf_null@ha /* 0x803A2180@ha */
/* 80AAA9A0  38 A4 21 80 */	addi r5, r4, __ptmf_null@l /* 0x803A2180@l */
/* 80AAA9A4  80 85 00 00 */	lwz r4, 0(r5)
/* 80AAA9A8  80 05 00 04 */	lwz r0, 4(r5)
/* 80AAA9AC  90 83 0F D8 */	stw r4, 0xfd8(r3)
/* 80AAA9B0  90 03 0F DC */	stw r0, 0xfdc(r3)
/* 80AAA9B4  80 05 00 08 */	lwz r0, 8(r5)
/* 80AAA9B8  90 03 0F E0 */	stw r0, 0xfe0(r3)
/* 80AAA9BC  3C 80 80 AB */	lis r4, lit_5060@ha /* 0x80AAD9A8@ha */
/* 80AAA9C0  38 A4 D9 A8 */	addi r5, r4, lit_5060@l /* 0x80AAD9A8@l */
/* 80AAA9C4  80 85 00 00 */	lwz r4, 0(r5)
/* 80AAA9C8  80 05 00 04 */	lwz r0, 4(r5)
/* 80AAA9CC  90 83 0F D8 */	stw r4, 0xfd8(r3)
/* 80AAA9D0  90 03 0F DC */	stw r0, 0xfdc(r3)
/* 80AAA9D4  80 05 00 08 */	lwz r0, 8(r5)
/* 80AAA9D8  90 03 0F E0 */	stw r0, 0xfe0(r3)
/* 80AAA9DC  38 60 00 01 */	li r3, 1
/* 80AAA9E0  4E 80 00 20 */	blr 

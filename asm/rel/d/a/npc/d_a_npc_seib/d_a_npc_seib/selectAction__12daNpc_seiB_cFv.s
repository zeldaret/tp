lbl_80AC5DC0:
/* 80AC5DC0  3C 80 80 3A */	lis r4, __ptmf_null@ha /* 0x803A2180@ha */
/* 80AC5DC4  38 A4 21 80 */	addi r5, r4, __ptmf_null@l /* 0x803A2180@l */
/* 80AC5DC8  80 85 00 00 */	lwz r4, 0(r5)
/* 80AC5DCC  80 05 00 04 */	lwz r0, 4(r5)
/* 80AC5DD0  90 83 0E 48 */	stw r4, 0xe48(r3)
/* 80AC5DD4  90 03 0E 4C */	stw r0, 0xe4c(r3)
/* 80AC5DD8  80 05 00 08 */	lwz r0, 8(r5)
/* 80AC5DDC  90 03 0E 50 */	stw r0, 0xe50(r3)
/* 80AC5DE0  3C 80 80 AC */	lis r4, lit_4467@ha /* 0x80AC7290@ha */
/* 80AC5DE4  38 A4 72 90 */	addi r5, r4, lit_4467@l /* 0x80AC7290@l */
/* 80AC5DE8  80 85 00 00 */	lwz r4, 0(r5)
/* 80AC5DEC  80 05 00 04 */	lwz r0, 4(r5)
/* 80AC5DF0  90 83 0E 48 */	stw r4, 0xe48(r3)
/* 80AC5DF4  90 03 0E 4C */	stw r0, 0xe4c(r3)
/* 80AC5DF8  80 05 00 08 */	lwz r0, 8(r5)
/* 80AC5DFC  90 03 0E 50 */	stw r0, 0xe50(r3)
/* 80AC5E00  38 60 00 01 */	li r3, 1
/* 80AC5E04  4E 80 00 20 */	blr 

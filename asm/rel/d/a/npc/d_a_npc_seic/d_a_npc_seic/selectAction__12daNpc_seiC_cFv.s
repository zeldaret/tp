lbl_80AC8218:
/* 80AC8218  3C 80 80 3A */	lis r4, __ptmf_null@ha
/* 80AC821C  38 A4 21 80 */	addi r5, r4, __ptmf_null@l
/* 80AC8220  80 85 00 00 */	lwz r4, 0(r5)
/* 80AC8224  80 05 00 04 */	lwz r0, 4(r5)
/* 80AC8228  90 83 0E 48 */	stw r4, 0xe48(r3)
/* 80AC822C  90 03 0E 4C */	stw r0, 0xe4c(r3)
/* 80AC8230  80 05 00 08 */	lwz r0, 8(r5)
/* 80AC8234  90 03 0E 50 */	stw r0, 0xe50(r3)
/* 80AC8238  3C 80 80 AD */	lis r4, lit_4467@ha
/* 80AC823C  38 A4 93 D4 */	addi r5, r4, lit_4467@l
/* 80AC8240  80 85 00 00 */	lwz r4, 0(r5)
/* 80AC8244  80 05 00 04 */	lwz r0, 4(r5)
/* 80AC8248  90 83 0E 48 */	stw r4, 0xe48(r3)
/* 80AC824C  90 03 0E 4C */	stw r0, 0xe4c(r3)
/* 80AC8250  80 05 00 08 */	lwz r0, 8(r5)
/* 80AC8254  90 03 0E 50 */	stw r0, 0xe50(r3)
/* 80AC8258  38 60 00 01 */	li r3, 1
/* 80AC825C  4E 80 00 20 */	blr 

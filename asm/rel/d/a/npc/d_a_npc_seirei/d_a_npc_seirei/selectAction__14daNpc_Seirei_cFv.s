lbl_80AD6604:
/* 80AD6604  3C 80 80 3A */	lis r4, __ptmf_null@ha /* 0x803A2180@ha */
/* 80AD6608  38 A4 21 80 */	addi r5, r4, __ptmf_null@l /* 0x803A2180@l */
/* 80AD660C  80 85 00 00 */	lwz r4, 0(r5)
/* 80AD6610  80 05 00 04 */	lwz r0, 4(r5)
/* 80AD6614  90 83 0E 48 */	stw r4, 0xe48(r3)
/* 80AD6618  90 03 0E 4C */	stw r0, 0xe4c(r3)
/* 80AD661C  80 05 00 08 */	lwz r0, 8(r5)
/* 80AD6620  90 03 0E 50 */	stw r0, 0xe50(r3)
/* 80AD6624  3C 80 80 AD */	lis r4, lit_4575@ha /* 0x80AD7F48@ha */
/* 80AD6628  38 A4 7F 48 */	addi r5, r4, lit_4575@l /* 0x80AD7F48@l */
/* 80AD662C  80 85 00 00 */	lwz r4, 0(r5)
/* 80AD6630  80 05 00 04 */	lwz r0, 4(r5)
/* 80AD6634  90 83 0E 48 */	stw r4, 0xe48(r3)
/* 80AD6638  90 03 0E 4C */	stw r0, 0xe4c(r3)
/* 80AD663C  80 05 00 08 */	lwz r0, 8(r5)
/* 80AD6640  90 03 0E 50 */	stw r0, 0xe50(r3)
/* 80AD6644  38 60 00 01 */	li r3, 1
/* 80AD6648  4E 80 00 20 */	blr 

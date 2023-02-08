lbl_809BCCE8:
/* 809BCCE8  3C 80 80 3A */	lis r4, __ptmf_null@ha /* 0x803A2180@ha */
/* 809BCCEC  38 A4 21 80 */	addi r5, r4, __ptmf_null@l /* 0x803A2180@l */
/* 809BCCF0  80 85 00 00 */	lwz r4, 0(r5)
/* 809BCCF4  80 05 00 04 */	lwz r0, 4(r5)
/* 809BCCF8  90 83 0F 84 */	stw r4, 0xf84(r3)
/* 809BCCFC  90 03 0F 88 */	stw r0, 0xf88(r3)
/* 809BCD00  80 05 00 08 */	lwz r0, 8(r5)
/* 809BCD04  90 03 0F 8C */	stw r0, 0xf8c(r3)
/* 809BCD08  3C 80 80 9C */	lis r4, lit_4881@ha /* 0x809BE678@ha */
/* 809BCD0C  38 A4 E6 78 */	addi r5, r4, lit_4881@l /* 0x809BE678@l */
/* 809BCD10  80 85 00 00 */	lwz r4, 0(r5)
/* 809BCD14  80 05 00 04 */	lwz r0, 4(r5)
/* 809BCD18  90 83 0F 84 */	stw r4, 0xf84(r3)
/* 809BCD1C  90 03 0F 88 */	stw r0, 0xf88(r3)
/* 809BCD20  80 05 00 08 */	lwz r0, 8(r5)
/* 809BCD24  90 03 0F 8C */	stw r0, 0xf8c(r3)
/* 809BCD28  38 60 00 01 */	li r3, 1
/* 809BCD2C  4E 80 00 20 */	blr 

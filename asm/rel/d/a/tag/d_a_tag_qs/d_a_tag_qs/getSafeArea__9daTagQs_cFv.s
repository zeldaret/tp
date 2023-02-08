lbl_80D5E220:
/* 80D5E220  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80D5E224  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80D5E228  40 82 00 10 */	bne lbl_80D5E238
/* 80D5E22C  3C 60 80 D6 */	lis r3, lit_3823@ha /* 0x80D5ECF4@ha */
/* 80D5E230  C0 23 EC F4 */	lfs f1, lit_3823@l(r3)  /* 0x80D5ECF4@l */
/* 80D5E234  4E 80 00 20 */	blr 
lbl_80D5E238:
/* 80D5E238  3C 60 80 D6 */	lis r3, lit_3824@ha /* 0x80D5ECF8@ha */
/* 80D5E23C  C0 23 EC F8 */	lfs f1, lit_3824@l(r3)  /* 0x80D5ECF8@l */
/* 80D5E240  4E 80 00 20 */	blr 

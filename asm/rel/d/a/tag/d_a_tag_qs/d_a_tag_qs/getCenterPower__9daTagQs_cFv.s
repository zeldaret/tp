lbl_80D5E268:
/* 80D5E268  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80D5E26C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80D5E270  40 82 00 10 */	bne lbl_80D5E280
/* 80D5E274  3C 60 80 D6 */	lis r3, lit_3843@ha /* 0x80D5ED04@ha */
/* 80D5E278  C0 23 ED 04 */	lfs f1, lit_3843@l(r3)  /* 0x80D5ED04@l */
/* 80D5E27C  4E 80 00 20 */	blr 
lbl_80D5E280:
/* 80D5E280  3C 60 80 D6 */	lis r3, lit_3735@ha /* 0x80D5ECE4@ha */
/* 80D5E284  C0 23 EC E4 */	lfs f1, lit_3735@l(r3)  /* 0x80D5ECE4@l */
/* 80D5E288  4E 80 00 20 */	blr 

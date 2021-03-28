lbl_80D5E244:
/* 80D5E244  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80D5E248  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80D5E24C  40 82 00 10 */	bne lbl_80D5E25C
/* 80D5E250  3C 60 80 D6 */	lis r3, lit_3833@ha
/* 80D5E254  C0 23 EC FC */	lfs f1, lit_3833@l(r3)
/* 80D5E258  4E 80 00 20 */	blr 
lbl_80D5E25C:
/* 80D5E25C  3C 60 80 D6 */	lis r3, lit_3834@ha
/* 80D5E260  C0 23 ED 00 */	lfs f1, lit_3834@l(r3)
/* 80D5E264  4E 80 00 20 */	blr 

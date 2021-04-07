lbl_80D5E1FC:
/* 80D5E1FC  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80D5E200  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80D5E204  40 82 00 10 */	bne lbl_80D5E214
/* 80D5E208  3C 60 80 D6 */	lis r3, lit_3813@ha /* 0x80D5ECEC@ha */
/* 80D5E20C  C0 23 EC EC */	lfs f1, lit_3813@l(r3)  /* 0x80D5ECEC@l */
/* 80D5E210  4E 80 00 20 */	blr 
lbl_80D5E214:
/* 80D5E214  3C 60 80 D6 */	lis r3, lit_3814@ha /* 0x80D5ECF0@ha */
/* 80D5E218  C0 23 EC F0 */	lfs f1, lit_3814@l(r3)  /* 0x80D5ECF0@l */
/* 80D5E21C  4E 80 00 20 */	blr 

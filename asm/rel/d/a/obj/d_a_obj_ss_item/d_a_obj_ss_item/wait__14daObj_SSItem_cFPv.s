lbl_80CE7D5C:
/* 80CE7D5C  A0 03 0B 0C */	lhz r0, 0xb0c(r3)
/* 80CE7D60  2C 00 00 00 */	cmpwi r0, 0
/* 80CE7D64  41 82 00 0C */	beq lbl_80CE7D70
/* 80CE7D68  41 80 00 1C */	blt lbl_80CE7D84
/* 80CE7D6C  48 00 00 18 */	b lbl_80CE7D84
lbl_80CE7D70:
/* 80CE7D70  3C 80 80 CE */	lis r4, lit_4205@ha /* 0x80CE7EE0@ha */
/* 80CE7D74  C0 04 7E E0 */	lfs f0, lit_4205@l(r4)  /* 0x80CE7EE0@l */
/* 80CE7D78  D0 03 0A 8C */	stfs f0, 0xa8c(r3)
/* 80CE7D7C  D0 03 0A 90 */	stfs f0, 0xa90(r3)
/* 80CE7D80  D0 03 0A 94 */	stfs f0, 0xa94(r3)
lbl_80CE7D84:
/* 80CE7D84  38 60 00 01 */	li r3, 1
/* 80CE7D88  4E 80 00 20 */	blr 

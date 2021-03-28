lbl_8012ACCC:
/* 8012ACCC  38 A0 00 00 */	li r5, 0
/* 8012ACD0  A0 03 1F BC */	lhz r0, 0x1fbc(r3)
/* 8012ACD4  28 00 02 DA */	cmplwi r0, 0x2da
/* 8012ACD8  41 82 00 10 */	beq lbl_8012ACE8
/* 8012ACDC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8012ACE0  28 00 02 DB */	cmplwi r0, 0x2db
/* 8012ACE4  40 82 00 08 */	bne lbl_8012ACEC
lbl_8012ACE8:
/* 8012ACE8  38 A0 00 01 */	li r5, 1
lbl_8012ACEC:
/* 8012ACEC  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 8012ACF0  4D 82 00 20 */	beqlr 
/* 8012ACF4  2C 04 00 07 */	cmpwi r4, 7
/* 8012ACF8  40 82 00 10 */	bne lbl_8012AD08
/* 8012ACFC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8012AD00  D0 03 1F 50 */	stfs f0, 0x1f50(r3)
/* 8012AD04  4E 80 00 20 */	blr 
lbl_8012AD08:
/* 8012AD08  2C 04 00 03 */	cmpwi r4, 3
/* 8012AD0C  4C 82 00 20 */	bnelr 
/* 8012AD10  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8012AD14  D0 03 1F 50 */	stfs f0, 0x1f50(r3)
/* 8012AD18  4E 80 00 20 */	blr 

lbl_802CC9D0:
/* 802CC9D0  88 03 03 FE */	lbz r0, 0x3fe(r3)
/* 802CC9D4  2C 00 00 03 */	cmpwi r0, 3
/* 802CC9D8  4C 80 00 20 */	bgelr 
/* 802CC9DC  2C 00 00 01 */	cmpwi r0, 1
/* 802CC9E0  4D 80 00 20 */	bltlr 
/* 802CC9E4  80 03 00 00 */	lwz r0, 0(r3)
/* 802CC9E8  28 00 00 00 */	cmplwi r0, 0
/* 802CC9EC  41 82 00 20 */	beq lbl_802CCA0C
/* 802CC9F0  88 83 03 FF */	lbz r4, 0x3ff(r3)
/* 802CC9F4  38 04 00 01 */	addi r0, r4, 1
/* 802CC9F8  98 03 03 FF */	stb r0, 0x3ff(r3)
/* 802CC9FC  88 03 03 FF */	lbz r0, 0x3ff(r3)
/* 802CCA00  28 00 00 1E */	cmplwi r0, 0x1e
/* 802CCA04  4C 81 00 20 */	blelr 
/* 802CCA08  4E 80 00 20 */	blr 
lbl_802CCA0C:
/* 802CCA0C  38 00 00 00 */	li r0, 0
/* 802CCA10  B0 03 03 FA */	sth r0, 0x3fa(r3)
/* 802CCA14  4E 80 00 20 */	blr 

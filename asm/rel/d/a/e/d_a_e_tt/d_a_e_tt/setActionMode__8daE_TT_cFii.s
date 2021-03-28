lbl_807BDBE4:
/* 807BDBE4  3C C0 80 7C */	lis r6, m_attack_tt@ha
/* 807BDBE8  84 06 24 04 */	lwzu r0, m_attack_tt@l(r6)
/* 807BDBEC  7C 00 18 40 */	cmplw r0, r3
/* 807BDBF0  40 82 00 0C */	bne lbl_807BDBFC
/* 807BDBF4  38 00 00 00 */	li r0, 0
/* 807BDBF8  90 06 00 00 */	stw r0, 0(r6)
lbl_807BDBFC:
/* 807BDBFC  90 83 06 B8 */	stw r4, 0x6b8(r3)
/* 807BDC00  90 A3 06 BC */	stw r5, 0x6bc(r3)
/* 807BDC04  38 00 00 00 */	li r0, 0
/* 807BDC08  98 03 06 FB */	stb r0, 0x6fb(r3)
/* 807BDC0C  4E 80 00 20 */	blr 

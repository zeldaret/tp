lbl_807BFD38:
/* 807BFD38  38 00 00 05 */	li r0, 5
/* 807BFD3C  90 03 06 BC */	stw r0, 0x6bc(r3)
/* 807BFD40  A8 83 0A 96 */	lha r4, 0xa96(r3)
/* 807BFD44  3C 84 00 01 */	addis r4, r4, 1
/* 807BFD48  38 04 80 00 */	addi r0, r4, -32768
/* 807BFD4C  B0 03 04 DE */	sth r0, 0x4de(r3)
/* 807BFD50  3C 80 80 7C */	lis r4, lit_4796@ha
/* 807BFD54  C0 04 20 50 */	lfs f0, lit_4796@l(r4)
/* 807BFD58  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 807BFD5C  4E 80 00 20 */	blr 

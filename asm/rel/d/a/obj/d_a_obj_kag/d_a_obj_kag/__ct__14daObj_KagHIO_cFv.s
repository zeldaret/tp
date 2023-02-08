lbl_80C2E40C:
/* 80C2E40C  3C 80 80 C3 */	lis r4, __vt__14daObj_KagHIO_c@ha /* 0x80C3141C@ha */
/* 80C2E410  38 04 14 1C */	addi r0, r4, __vt__14daObj_KagHIO_c@l /* 0x80C3141C@l */
/* 80C2E414  90 03 00 00 */	stw r0, 0(r3)
/* 80C2E418  38 00 FF FF */	li r0, -1
/* 80C2E41C  98 03 00 04 */	stb r0, 4(r3)
/* 80C2E420  3C 80 80 C3 */	lis r4, lit_3774@ha /* 0x80C3114C@ha */
/* 80C2E424  C0 04 11 4C */	lfs f0, lit_3774@l(r4)  /* 0x80C3114C@l */
/* 80C2E428  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80C2E42C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C2E430  4E 80 00 20 */	blr 

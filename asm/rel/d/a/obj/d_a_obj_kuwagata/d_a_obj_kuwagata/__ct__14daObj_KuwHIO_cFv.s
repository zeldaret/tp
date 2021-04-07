lbl_80C4A1EC:
/* 80C4A1EC  3C 80 80 C5 */	lis r4, __vt__14daObj_KuwHIO_c@ha /* 0x80C4D64C@ha */
/* 80C4A1F0  38 04 D6 4C */	addi r0, r4, __vt__14daObj_KuwHIO_c@l /* 0x80C4D64C@l */
/* 80C4A1F4  90 03 00 00 */	stw r0, 0(r3)
/* 80C4A1F8  38 00 FF FF */	li r0, -1
/* 80C4A1FC  98 03 00 04 */	stb r0, 4(r3)
/* 80C4A200  3C 80 80 C5 */	lis r4, lit_3775@ha /* 0x80C4D490@ha */
/* 80C4A204  C0 04 D4 90 */	lfs f0, lit_3775@l(r4)  /* 0x80C4D490@l */
/* 80C4A208  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80C4A20C  3C 80 80 C5 */	lis r4, lit_3776@ha /* 0x80C4D494@ha */
/* 80C4A210  C0 04 D4 94 */	lfs f0, lit_3776@l(r4)  /* 0x80C4D494@l */
/* 80C4A214  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C4A218  4E 80 00 20 */	blr 

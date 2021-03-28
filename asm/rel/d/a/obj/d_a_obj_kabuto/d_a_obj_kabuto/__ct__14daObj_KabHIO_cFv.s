lbl_80C2AE6C:
/* 80C2AE6C  3C 80 80 C3 */	lis r4, lit_3775@ha
/* 80C2AE70  38 A4 E1 10 */	addi r5, r4, lit_3775@l
/* 80C2AE74  3C 80 80 C3 */	lis r4, __vt__14daObj_KabHIO_c@ha
/* 80C2AE78  38 04 E2 D8 */	addi r0, r4, __vt__14daObj_KabHIO_c@l
/* 80C2AE7C  90 03 00 00 */	stw r0, 0(r3)
/* 80C2AE80  38 00 FF FF */	li r0, -1
/* 80C2AE84  98 03 00 04 */	stb r0, 4(r3)
/* 80C2AE88  C0 05 00 00 */	lfs f0, 0(r5)
/* 80C2AE8C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80C2AE90  C0 05 00 04 */	lfs f0, 4(r5)
/* 80C2AE94  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C2AE98  C0 05 00 08 */	lfs f0, 8(r5)
/* 80C2AE9C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80C2AEA0  4E 80 00 20 */	blr 

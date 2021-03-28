lbl_80BA9E2C:
/* 80BA9E2C  3C 80 80 BB */	lis r4, __vt__16daObj_BattaHIO_c@ha
/* 80BA9E30  38 04 CC 70 */	addi r0, r4, __vt__16daObj_BattaHIO_c@l
/* 80BA9E34  90 03 00 00 */	stw r0, 0(r3)
/* 80BA9E38  38 00 FF FF */	li r0, -1
/* 80BA9E3C  98 03 00 04 */	stb r0, 4(r3)
/* 80BA9E40  3C 80 80 BB */	lis r4, lit_3774@ha
/* 80BA9E44  C0 04 C9 70 */	lfs f0, lit_3774@l(r4)
/* 80BA9E48  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80BA9E4C  3C 80 80 BB */	lis r4, lit_3775@ha
/* 80BA9E50  C0 04 C9 74 */	lfs f0, lit_3775@l(r4)
/* 80BA9E54  D0 03 00 08 */	stfs f0, 8(r3)
/* 80BA9E58  4E 80 00 20 */	blr 

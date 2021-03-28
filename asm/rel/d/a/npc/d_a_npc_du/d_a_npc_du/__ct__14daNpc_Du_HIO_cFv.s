lbl_809AFD4C:
/* 809AFD4C  3C 80 80 9B */	lis r4, __vt__14daNpc_Du_HIO_c@ha
/* 809AFD50  38 04 19 D4 */	addi r0, r4, __vt__14daNpc_Du_HIO_c@l
/* 809AFD54  90 03 00 00 */	stw r0, 0(r3)
/* 809AFD58  38 00 FF FF */	li r0, -1
/* 809AFD5C  98 03 00 04 */	stb r0, 4(r3)
/* 809AFD60  3C 80 80 9B */	lis r4, lit_3762@ha
/* 809AFD64  C0 04 18 48 */	lfs f0, lit_3762@l(r4)
/* 809AFD68  D0 03 00 08 */	stfs f0, 8(r3)
/* 809AFD6C  4E 80 00 20 */	blr 

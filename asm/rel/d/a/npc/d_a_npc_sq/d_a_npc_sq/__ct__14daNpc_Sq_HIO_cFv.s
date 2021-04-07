lbl_80AF5FEC:
/* 80AF5FEC  3C 80 80 AF */	lis r4, __vt__14daNpc_Sq_HIO_c@ha /* 0x80AF75A8@ha */
/* 80AF5FF0  38 04 75 A8 */	addi r0, r4, __vt__14daNpc_Sq_HIO_c@l /* 0x80AF75A8@l */
/* 80AF5FF4  90 03 00 00 */	stw r0, 0(r3)
/* 80AF5FF8  38 00 FF FF */	li r0, -1
/* 80AF5FFC  98 03 00 04 */	stb r0, 4(r3)
/* 80AF6000  3C 80 80 AF */	lis r4, lit_3768@ha /* 0x80AF7408@ha */
/* 80AF6004  C0 04 74 08 */	lfs f0, lit_3768@l(r4)  /* 0x80AF7408@l */
/* 80AF6008  D0 03 00 08 */	stfs f0, 8(r3)
/* 80AF600C  4E 80 00 20 */	blr 

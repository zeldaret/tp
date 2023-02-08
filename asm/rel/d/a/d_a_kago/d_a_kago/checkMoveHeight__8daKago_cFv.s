lbl_8084A210:
/* 8084A210  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8084A214  7C 08 02 A6 */	mflr r0
/* 8084A218  90 01 00 34 */	stw r0, 0x34(r1)
/* 8084A21C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8084A220  7C 7F 1B 78 */	mr r31, r3
/* 8084A224  3C 80 80 85 */	lis r4, lit_4033@ha /* 0x80854B44@ha */
/* 8084A228  C0 04 4B 44 */	lfs f0, lit_4033@l(r4)  /* 0x80854B44@l */
/* 8084A22C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8084A230  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8084A234  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8084A238  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8084A23C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8084A240  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8084A244  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8084A248  38 81 00 18 */	addi r4, r1, 0x18
/* 8084A24C  38 A1 00 08 */	addi r5, r1, 8
/* 8084A250  4B FF F9 59 */	bl checkGroundHeight__8daKago_cF4cXyzPf
/* 8084A254  38 7F 07 04 */	addi r3, r31, 0x704
/* 8084A258  C0 41 00 08 */	lfs f2, 8(r1)
/* 8084A25C  4B A2 64 E5 */	bl cLib_chaseF__FPfff
/* 8084A260  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8084A264  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8084A268  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8084A26C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8084A270  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8084A274  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8084A278  7F E3 FB 78 */	mr r3, r31
/* 8084A27C  38 81 00 0C */	addi r4, r1, 0xc
/* 8084A280  4B FF FD F1 */	bl checkRoofHeight__8daKago_cF4cXyz
/* 8084A284  38 7F 07 08 */	addi r3, r31, 0x708
/* 8084A288  3C 80 80 85 */	lis r4, lit_4270@ha /* 0x80854B78@ha */
/* 8084A28C  C0 44 4B 78 */	lfs f2, lit_4270@l(r4)  /* 0x80854B78@l */
/* 8084A290  4B A2 64 B1 */	bl cLib_chaseF__FPfff
/* 8084A294  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8084A298  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8084A29C  7C 08 03 A6 */	mtlr r0
/* 8084A2A0  38 21 00 30 */	addi r1, r1, 0x30
/* 8084A2A4  4E 80 00 20 */	blr 

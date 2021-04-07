lbl_800C74D4:
/* 800C74D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C74D8  7C 08 02 A6 */	mflr r0
/* 800C74DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C74E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C74E4  7C 7F 1B 78 */	mr r31, r3
/* 800C74E8  38 80 00 1B */	li r4, 0x1b
/* 800C74EC  4B FF AA 81 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800C74F0  7F E3 FB 78 */	mr r3, r31
/* 800C74F4  38 80 01 27 */	li r4, 0x127
/* 800C74F8  3C A0 80 39 */	lis r5, m__23daAlinkHIO_smallJump_c0@ha /* 0x8038E11C@ha */
/* 800C74FC  38 A5 E1 1C */	addi r5, r5, m__23daAlinkHIO_smallJump_c0@l /* 0x8038E11C@l */
/* 800C7500  38 A5 00 14 */	addi r5, r5, 0x14
/* 800C7504  4B FE 5B F1 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800C7508  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800C750C  C0 1F 33 98 */	lfs f0, 0x3398(r31)
/* 800C7510  EC 01 00 32 */	fmuls f0, f1, f0
/* 800C7514  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 800C7518  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C751C  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800C7520  38 00 00 00 */	li r0, 0
/* 800C7524  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800C7528  3C 60 80 42 */	lis r3, l_waitBaseAnime@ha /* 0x80425514@ha */
/* 800C752C  C4 03 55 14 */	lfsu f0, l_waitBaseAnime@l(r3)  /* 0x80425514@l */
/* 800C7530  D0 1F 35 88 */	stfs f0, 0x3588(r31)
/* 800C7534  C0 03 00 04 */	lfs f0, 4(r3)
/* 800C7538  D0 1F 35 8C */	stfs f0, 0x358c(r31)
/* 800C753C  C0 03 00 08 */	lfs f0, 8(r3)
/* 800C7540  D0 1F 35 90 */	stfs f0, 0x3590(r31)
/* 800C7544  38 60 00 01 */	li r3, 1
/* 800C7548  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C754C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C7550  7C 08 03 A6 */	mtlr r0
/* 800C7554  38 21 00 10 */	addi r1, r1, 0x10
/* 800C7558  4E 80 00 20 */	blr 

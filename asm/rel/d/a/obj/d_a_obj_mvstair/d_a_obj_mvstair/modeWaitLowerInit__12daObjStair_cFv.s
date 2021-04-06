lbl_80C9DF18:
/* 80C9DF18  C0 23 04 AC */	lfs f1, 0x4ac(r3)
/* 80C9DF1C  88 03 06 3C */	lbz r0, 0x63c(r3)
/* 80C9DF20  54 00 10 3A */	slwi r0, r0, 2
/* 80C9DF24  3C 80 80 CA */	lis r4, l_move_len@ha /* 0x80C9E8BC@ha */
/* 80C9DF28  38 84 E8 BC */	addi r4, r4, l_move_len@l /* 0x80C9E8BC@l */
/* 80C9DF2C  7C 04 04 2E */	lfsx f0, r4, r0
/* 80C9DF30  EC 01 00 2A */	fadds f0, f1, f0
/* 80C9DF34  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 80C9DF38  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80C9DF3C  D0 03 06 50 */	stfs f0, 0x650(r3)
/* 80C9DF40  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80C9DF44  D0 03 06 54 */	stfs f0, 0x654(r3)
/* 80C9DF48  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80C9DF4C  D0 03 06 58 */	stfs f0, 0x658(r3)
/* 80C9DF50  38 00 00 02 */	li r0, 2
/* 80C9DF54  98 03 06 3E */	stb r0, 0x63e(r3)
/* 80C9DF58  38 60 00 01 */	li r3, 1
/* 80C9DF5C  4E 80 00 20 */	blr 

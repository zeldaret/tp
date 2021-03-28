lbl_80C134AC:
/* 80C134AC  3C 80 80 C1 */	lis r4, __vt__14mDoHIO_entry_c@ha
/* 80C134B0  38 04 4B 24 */	addi r0, r4, __vt__14mDoHIO_entry_c@l
/* 80C134B4  90 03 00 00 */	stw r0, 0(r3)
/* 80C134B8  3C 80 80 C1 */	lis r4, __vt__16daGrdWater_HIO_c@ha
/* 80C134BC  38 04 4B 18 */	addi r0, r4, __vt__16daGrdWater_HIO_c@l
/* 80C134C0  90 03 00 00 */	stw r0, 0(r3)
/* 80C134C4  38 00 00 64 */	li r0, 0x64
/* 80C134C8  98 03 00 04 */	stb r0, 4(r3)
/* 80C134CC  98 03 00 05 */	stb r0, 5(r3)
/* 80C134D0  38 00 00 00 */	li r0, 0
/* 80C134D4  98 03 00 06 */	stb r0, 6(r3)
/* 80C134D8  38 00 00 1E */	li r0, 0x1e
/* 80C134DC  98 03 00 07 */	stb r0, 7(r3)
/* 80C134E0  3C 80 80 C1 */	lis r4, lit_3642@ha
/* 80C134E4  C0 04 49 E0 */	lfs f0, lit_3642@l(r4)
/* 80C134E8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C134EC  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80C134F0  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80C134F4  4E 80 00 20 */	blr 

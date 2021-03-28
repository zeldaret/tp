lbl_80C5FBEC:
/* 80C5FBEC  3C 80 80 C6 */	lis r4, lit_3629@ha
/* 80C5FBF0  38 A4 08 04 */	addi r5, r4, lit_3629@l
/* 80C5FBF4  3C 80 80 C6 */	lis r4, __vt__14mDoHIO_entry_c@ha
/* 80C5FBF8  38 04 09 A0 */	addi r0, r4, __vt__14mDoHIO_entry_c@l
/* 80C5FBFC  90 03 00 00 */	stw r0, 0(r3)
/* 80C5FC00  3C 80 80 C6 */	lis r4, __vt__17daLv4PoGate_HIO_c@ha
/* 80C5FC04  38 04 09 94 */	addi r0, r4, __vt__17daLv4PoGate_HIO_c@l
/* 80C5FC08  90 03 00 00 */	stw r0, 0(r3)
/* 80C5FC0C  C0 05 00 00 */	lfs f0, 0(r5)
/* 80C5FC10  D0 03 00 04 */	stfs f0, 4(r3)
/* 80C5FC14  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C5FC18  C0 05 00 04 */	lfs f0, 4(r5)
/* 80C5FC1C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80C5FC20  C0 05 00 08 */	lfs f0, 8(r5)
/* 80C5FC24  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80C5FC28  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 80C5FC2C  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80C5FC30  38 00 00 00 */	li r0, 0
/* 80C5FC34  98 03 00 18 */	stb r0, 0x18(r3)
/* 80C5FC38  38 00 00 05 */	li r0, 5
/* 80C5FC3C  98 03 00 19 */	stb r0, 0x19(r3)
/* 80C5FC40  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 80C5FC44  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C5FC48  C0 05 00 14 */	lfs f0, 0x14(r5)
/* 80C5FC4C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C5FC50  38 00 00 03 */	li r0, 3
/* 80C5FC54  98 03 00 24 */	stb r0, 0x24(r3)
/* 80C5FC58  4E 80 00 20 */	blr 

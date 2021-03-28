lbl_80D2BB8C:
/* 80D2BB8C  3C 80 80 D3 */	lis r4, __vt__14mDoHIO_entry_c@ha
/* 80D2BB90  38 04 C5 9C */	addi r0, r4, __vt__14mDoHIO_entry_c@l
/* 80D2BB94  90 03 00 00 */	stw r0, 0(r3)
/* 80D2BB98  3C 80 80 D3 */	lis r4, __vt__14daWtGate_HIO_c@ha
/* 80D2BB9C  38 04 C5 90 */	addi r0, r4, __vt__14daWtGate_HIO_c@l
/* 80D2BBA0  90 03 00 00 */	stw r0, 0(r3)
/* 80D2BBA4  3C 80 80 D3 */	lis r4, lit_3625@ha
/* 80D2BBA8  C0 04 C4 6C */	lfs f0, lit_3625@l(r4)
/* 80D2BBAC  D0 03 00 04 */	stfs f0, 4(r3)
/* 80D2BBB0  38 00 00 1E */	li r0, 0x1e
/* 80D2BBB4  98 03 00 08 */	stb r0, 8(r3)
/* 80D2BBB8  38 00 00 04 */	li r0, 4
/* 80D2BBBC  98 03 00 09 */	stb r0, 9(r3)
/* 80D2BBC0  4E 80 00 20 */	blr 

lbl_80C8CEAC:
/* 80C8CEAC  3C 80 80 C9 */	lis r4, lit_3627@ha
/* 80C8CEB0  38 A4 D7 DC */	addi r5, r4, lit_3627@l
/* 80C8CEB4  3C 80 80 C9 */	lis r4, __vt__14mDoHIO_entry_c@ha
/* 80C8CEB8  38 04 D8 F8 */	addi r0, r4, __vt__14mDoHIO_entry_c@l
/* 80C8CEBC  90 03 00 00 */	stw r0, 0(r3)
/* 80C8CEC0  3C 80 80 C9 */	lis r4, __vt__20daLv9SwShutter_HIO_c@ha
/* 80C8CEC4  38 04 D8 EC */	addi r0, r4, __vt__20daLv9SwShutter_HIO_c@l
/* 80C8CEC8  90 03 00 00 */	stw r0, 0(r3)
/* 80C8CECC  C0 05 00 00 */	lfs f0, 0(r5)
/* 80C8CED0  D0 03 00 04 */	stfs f0, 4(r3)
/* 80C8CED4  C0 05 00 04 */	lfs f0, 4(r5)
/* 80C8CED8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C8CEDC  C0 05 00 08 */	lfs f0, 8(r5)
/* 80C8CEE0  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80C8CEE4  38 00 00 03 */	li r0, 3
/* 80C8CEE8  98 03 00 10 */	stb r0, 0x10(r3)
/* 80C8CEEC  4E 80 00 20 */	blr 

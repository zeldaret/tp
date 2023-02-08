lbl_80C848AC:
/* 80C848AC  3C 80 80 C8 */	lis r4, __vt__14mDoHIO_entry_c@ha /* 0x80C85348@ha */
/* 80C848B0  38 04 53 48 */	addi r0, r4, __vt__14mDoHIO_entry_c@l /* 0x80C85348@l */
/* 80C848B4  90 03 00 00 */	stw r0, 0(r3)
/* 80C848B8  3C 80 80 C8 */	lis r4, __vt__17daLv7BsGate_HIO_c@ha /* 0x80C8533C@ha */
/* 80C848BC  38 04 53 3C */	addi r0, r4, __vt__17daLv7BsGate_HIO_c@l /* 0x80C8533C@l */
/* 80C848C0  90 03 00 00 */	stw r0, 0(r3)
/* 80C848C4  3C 80 80 C8 */	lis r4, lit_3628@ha /* 0x80C85210@ha */
/* 80C848C8  C0 04 52 10 */	lfs f0, lit_3628@l(r4)  /* 0x80C85210@l */
/* 80C848CC  D0 03 00 04 */	stfs f0, 4(r3)
/* 80C848D0  3C 80 80 C8 */	lis r4, lit_3629@ha /* 0x80C85214@ha */
/* 80C848D4  C0 04 52 14 */	lfs f0, lit_3629@l(r4)  /* 0x80C85214@l */
/* 80C848D8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C848DC  38 00 00 03 */	li r0, 3
/* 80C848E0  98 03 00 0C */	stb r0, 0xc(r3)
/* 80C848E4  4E 80 00 20 */	blr 

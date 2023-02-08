lbl_80BFD6AC:
/* 80BFD6AC  3C 80 80 C0 */	lis r4, __vt__14mDoHIO_entry_c@ha /* 0x80BFE0FC@ha */
/* 80BFD6B0  38 04 E0 FC */	addi r0, r4, __vt__14mDoHIO_entry_c@l /* 0x80BFE0FC@l */
/* 80BFD6B4  90 03 00 00 */	stw r0, 0(r3)
/* 80BFD6B8  3C 80 80 C0 */	lis r4, __vt__14daGoGate_HIO_c@ha /* 0x80BFE0F0@ha */
/* 80BFD6BC  38 04 E0 F0 */	addi r0, r4, __vt__14daGoGate_HIO_c@l /* 0x80BFE0F0@l */
/* 80BFD6C0  90 03 00 00 */	stw r0, 0(r3)
/* 80BFD6C4  3C 80 80 C0 */	lis r4, lit_3627@ha /* 0x80BFDFE8@ha */
/* 80BFD6C8  C0 04 DF E8 */	lfs f0, lit_3627@l(r4)  /* 0x80BFDFE8@l */
/* 80BFD6CC  D0 03 00 04 */	stfs f0, 4(r3)
/* 80BFD6D0  38 00 00 03 */	li r0, 3
/* 80BFD6D4  98 03 00 08 */	stb r0, 8(r3)
/* 80BFD6D8  4E 80 00 20 */	blr 

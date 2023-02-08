lbl_80C3F40C:
/* 80C3F40C  3C 80 80 C4 */	lis r4, __vt__15daObj_Key_HIO_c@ha /* 0x80C41124@ha */
/* 80C3F410  38 04 11 24 */	addi r0, r4, __vt__15daObj_Key_HIO_c@l /* 0x80C41124@l */
/* 80C3F414  90 03 00 00 */	stw r0, 0(r3)
/* 80C3F418  38 00 FF FF */	li r0, -1
/* 80C3F41C  98 03 00 04 */	stb r0, 4(r3)
/* 80C3F420  3C 80 80 C4 */	lis r4, lit_3778@ha /* 0x80C40FEC@ha */
/* 80C3F424  C0 04 0F EC */	lfs f0, lit_3778@l(r4)  /* 0x80C40FEC@l */
/* 80C3F428  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C3F42C  3C 80 80 C4 */	lis r4, lit_3779@ha /* 0x80C40FF0@ha */
/* 80C3F430  C0 04 0F F0 */	lfs f0, lit_3779@l(r4)  /* 0x80C40FF0@l */
/* 80C3F434  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80C3F438  4E 80 00 20 */	blr 

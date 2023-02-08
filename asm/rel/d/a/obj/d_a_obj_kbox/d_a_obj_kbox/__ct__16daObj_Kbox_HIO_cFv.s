lbl_80C3D60C:
/* 80C3D60C  3C 80 80 C4 */	lis r4, __vt__16daObj_Kbox_HIO_c@ha /* 0x80C3F230@ha */
/* 80C3D610  38 04 F2 30 */	addi r0, r4, __vt__16daObj_Kbox_HIO_c@l /* 0x80C3F230@l */
/* 80C3D614  90 03 00 00 */	stw r0, 0(r3)
/* 80C3D618  38 00 FF FF */	li r0, -1
/* 80C3D61C  98 03 00 04 */	stb r0, 4(r3)
/* 80C3D620  3C 80 80 C4 */	lis r4, lit_3648@ha /* 0x80C3F058@ha */
/* 80C3D624  C0 04 F0 58 */	lfs f0, lit_3648@l(r4)  /* 0x80C3F058@l */
/* 80C3D628  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C3D62C  4E 80 00 20 */	blr 

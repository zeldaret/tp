lbl_80C6B42C:
/* 80C6B42C  3C 80 80 C7 */	lis r4, __vt__14mDoHIO_entry_c@ha /* 0x80C6C81C@ha */
/* 80C6B430  38 04 C8 1C */	addi r0, r4, __vt__14mDoHIO_entry_c@l /* 0x80C6C81C@l */
/* 80C6B434  90 03 00 00 */	stw r0, 0(r3)
/* 80C6B438  3C 80 80 C7 */	lis r4, __vt__18fOpAcm_HIO_entry_c@ha /* 0x80C6C810@ha */
/* 80C6B43C  38 04 C8 10 */	addi r0, r4, __vt__18fOpAcm_HIO_entry_c@l /* 0x80C6C810@l */
/* 80C6B440  90 03 00 00 */	stw r0, 0(r3)
/* 80C6B444  3C 80 80 C7 */	lis r4, __vt__15daIceWall_HIO_c@ha /* 0x80C6C804@ha */
/* 80C6B448  38 04 C8 04 */	addi r0, r4, __vt__15daIceWall_HIO_c@l /* 0x80C6C804@l */
/* 80C6B44C  90 03 00 00 */	stw r0, 0(r3)
/* 80C6B450  38 00 00 03 */	li r0, 3
/* 80C6B454  98 03 00 10 */	stb r0, 0x10(r3)
/* 80C6B458  38 00 00 02 */	li r0, 2
/* 80C6B45C  98 03 00 11 */	stb r0, 0x11(r3)
/* 80C6B460  3C 80 80 C7 */	lis r4, lit_3656@ha /* 0x80C6C640@ha */
/* 80C6B464  C0 04 C6 40 */	lfs f0, lit_3656@l(r4)  /* 0x80C6C640@l */
/* 80C6B468  D0 03 00 04 */	stfs f0, 4(r3)
/* 80C6B46C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C6B470  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80C6B474  4E 80 00 20 */	blr 

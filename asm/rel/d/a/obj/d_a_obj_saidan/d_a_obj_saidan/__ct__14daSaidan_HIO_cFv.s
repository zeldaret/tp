lbl_80CC3DAC:
/* 80CC3DAC  3C 80 80 CC */	lis r4, __vt__14mDoHIO_entry_c@ha /* 0x80CC4638@ha */
/* 80CC3DB0  38 04 46 38 */	addi r0, r4, __vt__14mDoHIO_entry_c@l /* 0x80CC4638@l */
/* 80CC3DB4  90 03 00 00 */	stw r0, 0(r3)
/* 80CC3DB8  3C 80 80 CC */	lis r4, __vt__14daSaidan_HIO_c@ha /* 0x80CC462C@ha */
/* 80CC3DBC  38 04 46 2C */	addi r0, r4, __vt__14daSaidan_HIO_c@l /* 0x80CC462C@l */
/* 80CC3DC0  90 03 00 00 */	stw r0, 0(r3)
/* 80CC3DC4  3C 80 80 CC */	lis r4, lit_3625@ha /* 0x80CC4524@ha */
/* 80CC3DC8  C0 04 45 24 */	lfs f0, lit_3625@l(r4)  /* 0x80CC4524@l */
/* 80CC3DCC  D0 03 00 04 */	stfs f0, 4(r3)
/* 80CC3DD0  3C 80 80 CC */	lis r4, lit_3626@ha /* 0x80CC4528@ha */
/* 80CC3DD4  C0 04 45 28 */	lfs f0, lit_3626@l(r4)  /* 0x80CC4528@l */
/* 80CC3DD8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80CC3DDC  4E 80 00 20 */	blr 

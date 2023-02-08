lbl_80C7248C:
/* 80C7248C  3C 80 80 C7 */	lis r4, __vt__14mDoHIO_entry_c@ha /* 0x80C732B0@ha */
/* 80C72490  38 04 32 B0 */	addi r0, r4, __vt__14mDoHIO_entry_c@l /* 0x80C732B0@l */
/* 80C72494  90 03 00 00 */	stw r0, 0(r3)
/* 80C72498  3C 80 80 C7 */	lis r4, __vt__21daLv6FurikoTrap_HIO_c@ha /* 0x80C732A4@ha */
/* 80C7249C  38 04 32 A4 */	addi r0, r4, __vt__21daLv6FurikoTrap_HIO_c@l /* 0x80C732A4@l */
/* 80C724A0  90 03 00 00 */	stw r0, 0(r3)
/* 80C724A4  3C 80 80 C7 */	lis r4, lit_3625@ha /* 0x80C73130@ha */
/* 80C724A8  C0 04 31 30 */	lfs f0, lit_3625@l(r4)  /* 0x80C73130@l */
/* 80C724AC  D0 03 00 04 */	stfs f0, 4(r3)
/* 80C724B0  3C 80 80 C7 */	lis r4, lit_3626@ha /* 0x80C73134@ha */
/* 80C724B4  C0 04 31 34 */	lfs f0, lit_3626@l(r4)  /* 0x80C73134@l */
/* 80C724B8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C724BC  38 00 00 03 */	li r0, 3
/* 80C724C0  98 03 00 0C */	stb r0, 0xc(r3)
/* 80C724C4  4E 80 00 20 */	blr 

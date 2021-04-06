lbl_80C70C4C:
/* 80C70C4C  3C 80 80 C7 */	lis r4, __vt__14mDoHIO_entry_c@ha /* 0x80C72368@ha */
/* 80C70C50  38 04 23 68 */	addi r0, r4, __vt__14mDoHIO_entry_c@l /* 0x80C72368@l */
/* 80C70C54  90 03 00 00 */	stw r0, 0(r3)
/* 80C70C58  3C 80 80 C7 */	lis r4, __vt__18fOpAcm_HIO_entry_c@ha /* 0x80C7235C@ha */
/* 80C70C5C  38 04 23 5C */	addi r0, r4, __vt__18fOpAcm_HIO_entry_c@l /* 0x80C7235C@l */
/* 80C70C60  90 03 00 00 */	stw r0, 0(r3)
/* 80C70C64  3C 80 80 C7 */	lis r4, __vt__21daLv6ChangeGate_HIO_c@ha /* 0x80C72350@ha */
/* 80C70C68  38 04 23 50 */	addi r0, r4, __vt__21daLv6ChangeGate_HIO_c@l /* 0x80C72350@l */
/* 80C70C6C  90 03 00 00 */	stw r0, 0(r3)
/* 80C70C70  3C 80 80 C7 */	lis r4, lit_3639@ha /* 0x80C7214C@ha */
/* 80C70C74  C0 04 21 4C */	lfs f0, lit_3639@l(r4)  /* 0x80C7214C@l */
/* 80C70C78  D0 03 00 04 */	stfs f0, 4(r3)
/* 80C70C7C  3C 80 80 C7 */	lis r4, lit_3640@ha /* 0x80C72150@ha */
/* 80C70C80  C0 04 21 50 */	lfs f0, lit_3640@l(r4)  /* 0x80C72150@l */
/* 80C70C84  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C70C88  38 00 00 03 */	li r0, 3
/* 80C70C8C  98 03 00 0C */	stb r0, 0xc(r3)
/* 80C70C90  4E 80 00 20 */	blr 

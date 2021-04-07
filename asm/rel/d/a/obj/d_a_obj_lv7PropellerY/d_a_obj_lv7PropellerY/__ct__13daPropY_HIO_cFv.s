lbl_80C8546C:
/* 80C8546C  3C 80 80 C8 */	lis r4, lit_3650@ha /* 0x80C86130@ha */
/* 80C85470  38 A4 61 30 */	addi r5, r4, lit_3650@l /* 0x80C86130@l */
/* 80C85474  3C 80 80 C8 */	lis r4, __vt__14mDoHIO_entry_c@ha /* 0x80C862A8@ha */
/* 80C85478  38 04 62 A8 */	addi r0, r4, __vt__14mDoHIO_entry_c@l /* 0x80C862A8@l */
/* 80C8547C  90 03 00 00 */	stw r0, 0(r3)
/* 80C85480  3C 80 80 C8 */	lis r4, __vt__13daPropY_HIO_c@ha /* 0x80C8629C@ha */
/* 80C85484  38 04 62 9C */	addi r0, r4, __vt__13daPropY_HIO_c@l /* 0x80C8629C@l */
/* 80C85488  90 03 00 00 */	stw r0, 0(r3)
/* 80C8548C  C0 25 00 00 */	lfs f1, 0(r5)
/* 80C85490  D0 23 00 04 */	stfs f1, 4(r3)
/* 80C85494  C0 05 00 04 */	lfs f0, 4(r5)
/* 80C85498  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C8549C  C0 05 00 08 */	lfs f0, 8(r5)
/* 80C854A0  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80C854A4  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 80C854A8  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80C854AC  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 80C854B0  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80C854B4  38 00 00 1E */	li r0, 0x1e
/* 80C854B8  98 03 00 18 */	stb r0, 0x18(r3)
/* 80C854BC  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 80C854C0  4E 80 00 20 */	blr 

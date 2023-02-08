lbl_80BE824C:
/* 80BE824C  3C 80 80 BF */	lis r4, lit_3625@ha /* 0x80BE8F34@ha */
/* 80BE8250  38 A4 8F 34 */	addi r5, r4, lit_3625@l /* 0x80BE8F34@l */
/* 80BE8254  3C 80 80 BF */	lis r4, __vt__14mDoHIO_entry_c@ha /* 0x80BE9068@ha */
/* 80BE8258  38 04 90 68 */	addi r0, r4, __vt__14mDoHIO_entry_c@l /* 0x80BE9068@l */
/* 80BE825C  90 03 00 00 */	stw r0, 0(r3)
/* 80BE8260  3C 80 80 BF */	lis r4, __vt__17daFireWood2_HIO_c@ha /* 0x80BE905C@ha */
/* 80BE8264  38 04 90 5C */	addi r0, r4, __vt__17daFireWood2_HIO_c@l /* 0x80BE905C@l */
/* 80BE8268  90 03 00 00 */	stw r0, 0(r3)
/* 80BE826C  C0 05 00 00 */	lfs f0, 0(r5)
/* 80BE8270  D0 03 00 04 */	stfs f0, 4(r3)
/* 80BE8274  C0 05 00 04 */	lfs f0, 4(r5)
/* 80BE8278  D0 03 00 08 */	stfs f0, 8(r3)
/* 80BE827C  C0 05 00 08 */	lfs f0, 8(r5)
/* 80BE8280  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80BE8284  4E 80 00 20 */	blr 

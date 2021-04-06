lbl_80CB424C:
/* 80CB424C  3C 80 80 CB */	lis r4, __vt__14mDoHIO_entry_c@ha /* 0x80CB5114@ha */
/* 80CB4250  38 04 51 14 */	addi r0, r4, __vt__14mDoHIO_entry_c@l /* 0x80CB5114@l */
/* 80CB4254  90 03 00 00 */	stw r0, 0(r3)
/* 80CB4258  3C 80 80 CB */	lis r4, __vt__14daPoTbox_HIO_c@ha /* 0x80CB5108@ha */
/* 80CB425C  38 04 51 08 */	addi r0, r4, __vt__14daPoTbox_HIO_c@l /* 0x80CB5108@l */
/* 80CB4260  90 03 00 00 */	stw r0, 0(r3)
/* 80CB4264  3C 80 80 CB */	lis r4, lit_3628@ha /* 0x80CB4FC0@ha */
/* 80CB4268  C0 04 4F C0 */	lfs f0, lit_3628@l(r4)  /* 0x80CB4FC0@l */
/* 80CB426C  D0 03 00 04 */	stfs f0, 4(r3)
/* 80CB4270  3C 80 80 CB */	lis r4, lit_3629@ha /* 0x80CB4FC4@ha */
/* 80CB4274  C0 04 4F C4 */	lfs f0, lit_3629@l(r4)  /* 0x80CB4FC4@l */
/* 80CB4278  D0 03 00 08 */	stfs f0, 8(r3)
/* 80CB427C  4E 80 00 20 */	blr 

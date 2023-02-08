lbl_80CE816C:
/* 80CE816C  3C 80 80 CF */	lis r4, __vt__14mDoHIO_entry_c@ha /* 0x80CE8FB0@ha */
/* 80CE8170  38 04 8F B0 */	addi r0, r4, __vt__14mDoHIO_entry_c@l /* 0x80CE8FB0@l */
/* 80CE8174  90 03 00 00 */	stw r0, 0(r3)
/* 80CE8178  3C 80 80 CF */	lis r4, __vt__18daStairBlock_HIO_c@ha /* 0x80CE8FA4@ha */
/* 80CE817C  38 04 8F A4 */	addi r0, r4, __vt__18daStairBlock_HIO_c@l /* 0x80CE8FA4@l */
/* 80CE8180  90 03 00 00 */	stw r0, 0(r3)
/* 80CE8184  38 80 00 00 */	li r4, 0
/* 80CE8188  3C A0 80 CF */	lis r5, lit_3651@ha /* 0x80CE8DBC@ha */
/* 80CE818C  C0 05 8D BC */	lfs f0, lit_3651@l(r5)  /* 0x80CE8DBC@l */
/* 80CE8190  38 00 00 0A */	li r0, 0xa
/* 80CE8194  7C 09 03 A6 */	mtctr r0
lbl_80CE8198:
/* 80CE8198  38 04 00 04 */	addi r0, r4, 4
/* 80CE819C  7C 03 05 2E */	stfsx f0, r3, r0
/* 80CE81A0  38 84 00 04 */	addi r4, r4, 4
/* 80CE81A4  42 00 FF F4 */	bdnz lbl_80CE8198
/* 80CE81A8  4E 80 00 20 */	blr 

lbl_80C61E2C:
/* 80C61E2C  3C 80 80 C6 */	lis r4, __vt__14mDoHIO_entry_c@ha /* 0x80C627BC@ha */
/* 80C61E30  38 04 27 BC */	addi r0, r4, __vt__14mDoHIO_entry_c@l /* 0x80C627BC@l */
/* 80C61E34  90 03 00 00 */	stw r0, 0(r3)
/* 80C61E38  3C 80 80 C6 */	lis r4, __vt__15daSldWall_HIO_c@ha /* 0x80C627B0@ha */
/* 80C61E3C  38 04 27 B0 */	addi r0, r4, __vt__15daSldWall_HIO_c@l /* 0x80C627B0@l */
/* 80C61E40  90 03 00 00 */	stw r0, 0(r3)
/* 80C61E44  3C 80 80 C6 */	lis r4, lit_3627@ha /* 0x80C626A8@ha */
/* 80C61E48  C0 04 26 A8 */	lfs f0, lit_3627@l(r4)  /* 0x80C626A8@l */
/* 80C61E4C  D0 03 00 04 */	stfs f0, 4(r3)
/* 80C61E50  3C 80 80 C6 */	lis r4, lit_3628@ha /* 0x80C626AC@ha */
/* 80C61E54  C0 04 26 AC */	lfs f0, lit_3628@l(r4)  /* 0x80C626AC@l */
/* 80C61E58  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C61E5C  38 00 00 03 */	li r0, 3
/* 80C61E60  98 03 00 0C */	stb r0, 0xc(r3)
/* 80C61E64  4E 80 00 20 */	blr 

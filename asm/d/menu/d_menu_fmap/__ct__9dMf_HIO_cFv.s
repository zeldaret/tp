lbl_801C65F8:
/* 801C65F8  3C 80 80 3C */	lis r4, __vt__9dMf_HIO_c@ha /* 0x803BD670@ha */
/* 801C65FC  38 04 D6 70 */	addi r0, r4, __vt__9dMf_HIO_c@l /* 0x803BD670@l */
/* 801C6600  90 03 00 00 */	stw r0, 0(r3)
/* 801C6604  90 6D 8B 20 */	stw r3, mMySelfPointer__9dMf_HIO_c(r13)
/* 801C6608  C0 02 A7 20 */	lfs f0, lit_3994(r2)
/* 801C660C  D0 03 00 08 */	stfs f0, 8(r3)
/* 801C6610  38 00 00 3C */	li r0, 0x3c
/* 801C6614  98 03 00 10 */	stb r0, 0x10(r3)
/* 801C6618  C0 02 A7 24 */	lfs f0, lit_3995(r2)
/* 801C661C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 801C6620  38 00 00 5F */	li r0, 0x5f
/* 801C6624  98 03 00 11 */	stb r0, 0x11(r3)
/* 801C6628  4E 80 00 20 */	blr 

lbl_807BA56C:
/* 807BA56C  3C 80 80 7C */	lis r4, lit_3762@ha /* 0x807BBDA8@ha */
/* 807BA570  38 A4 BD A8 */	addi r5, r4, lit_3762@l /* 0x807BBDA8@l */
/* 807BA574  3C 80 80 7C */	lis r4, __vt__13daE_TK2_HIO_c@ha /* 0x807BBF28@ha */
/* 807BA578  38 04 BF 28 */	addi r0, r4, __vt__13daE_TK2_HIO_c@l /* 0x807BBF28@l */
/* 807BA57C  90 03 00 00 */	stw r0, 0(r3)
/* 807BA580  38 00 FF FF */	li r0, -1
/* 807BA584  98 03 00 04 */	stb r0, 4(r3)
/* 807BA588  C0 05 00 00 */	lfs f0, 0(r5)
/* 807BA58C  D0 03 00 08 */	stfs f0, 8(r3)
/* 807BA590  C0 05 00 04 */	lfs f0, 4(r5)
/* 807BA594  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 807BA598  C0 05 00 08 */	lfs f0, 8(r5)
/* 807BA59C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 807BA5A0  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 807BA5A4  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 807BA5A8  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 807BA5AC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 807BA5B0  4E 80 00 20 */	blr 

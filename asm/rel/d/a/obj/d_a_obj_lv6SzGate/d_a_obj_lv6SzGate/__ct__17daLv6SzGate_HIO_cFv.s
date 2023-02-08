lbl_80C7586C:
/* 80C7586C  3C 80 80 C7 */	lis r4, lit_3627@ha /* 0x80C76630@ha */
/* 80C75870  38 A4 66 30 */	addi r5, r4, lit_3627@l /* 0x80C76630@l */
/* 80C75874  3C 80 80 C7 */	lis r4, __vt__14mDoHIO_entry_c@ha /* 0x80C767C0@ha */
/* 80C75878  38 04 67 C0 */	addi r0, r4, __vt__14mDoHIO_entry_c@l /* 0x80C767C0@l */
/* 80C7587C  90 03 00 00 */	stw r0, 0(r3)
/* 80C75880  3C 80 80 C7 */	lis r4, __vt__17daLv6SzGate_HIO_c@ha /* 0x80C767B4@ha */
/* 80C75884  38 04 67 B4 */	addi r0, r4, __vt__17daLv6SzGate_HIO_c@l /* 0x80C767B4@l */
/* 80C75888  90 03 00 00 */	stw r0, 0(r3)
/* 80C7588C  C0 05 00 00 */	lfs f0, 0(r5)
/* 80C75890  D0 03 00 04 */	stfs f0, 4(r3)
/* 80C75894  C0 05 00 04 */	lfs f0, 4(r5)
/* 80C75898  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C7589C  C0 05 00 08 */	lfs f0, 8(r5)
/* 80C758A0  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80C758A4  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 80C758A8  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80C758AC  38 00 00 03 */	li r0, 3
/* 80C758B0  98 03 00 14 */	stb r0, 0x14(r3)
/* 80C758B4  4E 80 00 20 */	blr 

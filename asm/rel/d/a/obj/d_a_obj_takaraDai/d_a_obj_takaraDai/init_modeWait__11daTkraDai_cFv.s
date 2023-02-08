lbl_80D074D0:
/* 80D074D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D074D4  3C 80 80 D0 */	lis r4, lit_3627@ha /* 0x80D07808@ha */
/* 80D074D8  38 A4 78 08 */	addi r5, r4, lit_3627@l /* 0x80D07808@l */
/* 80D074DC  3C 80 80 D0 */	lis r4, l_HIO@ha /* 0x80D0791C@ha */
/* 80D074E0  38 84 79 1C */	addi r4, r4, l_HIO@l /* 0x80D0791C@l */
/* 80D074E4  C0 04 00 08 */	lfs f0, 8(r4)
/* 80D074E8  D0 03 05 DC */	stfs f0, 0x5dc(r3)
/* 80D074EC  C0 65 00 44 */	lfs f3, 0x44(r5)
/* 80D074F0  C0 45 00 48 */	lfs f2, 0x48(r5)
/* 80D074F4  C0 25 00 20 */	lfs f1, 0x20(r5)
/* 80D074F8  C0 04 00 04 */	lfs f0, 4(r4)
/* 80D074FC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D07500  EC 02 00 24 */	fdivs f0, f2, f0
/* 80D07504  EC 03 00 32 */	fmuls f0, f3, f0
/* 80D07508  FC 00 00 1E */	fctiwz f0, f0
/* 80D0750C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80D07510  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80D07514  B0 03 06 1A */	sth r0, 0x61a(r3)
/* 80D07518  38 00 00 00 */	li r0, 0
/* 80D0751C  98 03 05 B0 */	stb r0, 0x5b0(r3)
/* 80D07520  38 21 00 10 */	addi r1, r1, 0x10
/* 80D07524  4E 80 00 20 */	blr 

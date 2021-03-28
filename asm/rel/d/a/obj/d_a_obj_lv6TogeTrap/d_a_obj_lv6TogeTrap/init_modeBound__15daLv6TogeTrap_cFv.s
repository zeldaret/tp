lbl_80C7ACA0:
/* 80C7ACA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C7ACA4  7C 08 02 A6 */	mflr r0
/* 80C7ACA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C7ACAC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C7ACB0  7C 7F 1B 78 */	mr r31, r3
/* 80C7ACB4  38 00 00 01 */	li r0, 1
/* 80C7ACB8  98 03 06 0B */	stb r0, 0x60b(r3)
/* 80C7ACBC  3C 80 80 C8 */	lis r4, lit_3665@ha
/* 80C7ACC0  C0 04 C6 E8 */	lfs f0, lit_3665@l(r4)
/* 80C7ACC4  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80C7ACC8  88 03 05 AD */	lbz r0, 0x5ad(r3)
/* 80C7ACCC  1C 00 FF FF */	mulli r0, r0, -1
/* 80C7ACD0  98 03 05 AD */	stb r0, 0x5ad(r3)
/* 80C7ACD4  48 00 15 05 */	bl setNextPoint__15daLv6TogeTrap_cFv
/* 80C7ACD8  C0 1F 05 B0 */	lfs f0, 0x5b0(r31)
/* 80C7ACDC  D0 1F 05 BC */	stfs f0, 0x5bc(r31)
/* 80C7ACE0  C0 1F 05 B4 */	lfs f0, 0x5b4(r31)
/* 80C7ACE4  D0 1F 05 C0 */	stfs f0, 0x5c0(r31)
/* 80C7ACE8  C0 1F 05 B8 */	lfs f0, 0x5b8(r31)
/* 80C7ACEC  D0 1F 05 C4 */	stfs f0, 0x5c4(r31)
/* 80C7ACF0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C7ACF4  38 9F 05 B0 */	addi r4, r31, 0x5b0
/* 80C7ACF8  3C A0 80 C8 */	lis r5, l_HIO@ha
/* 80C7ACFC  38 A5 CA 64 */	addi r5, r5, l_HIO@l
/* 80C7AD00  C0 25 00 10 */	lfs f1, 0x10(r5)
/* 80C7AD04  38 A1 00 08 */	addi r5, r1, 8
/* 80C7AD08  4B 5E D8 A8 */	b cM3d_InDivPos2__FPC3VecPC3VecfP3Vec
/* 80C7AD0C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80C7AD10  D0 1F 05 B0 */	stfs f0, 0x5b0(r31)
/* 80C7AD14  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80C7AD18  D0 1F 05 B4 */	stfs f0, 0x5b4(r31)
/* 80C7AD1C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80C7AD20  D0 1F 05 B8 */	stfs f0, 0x5b8(r31)
/* 80C7AD24  38 00 00 06 */	li r0, 6
/* 80C7AD28  98 1F 05 D8 */	stb r0, 0x5d8(r31)
/* 80C7AD2C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C7AD30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C7AD34  7C 08 03 A6 */	mtlr r0
/* 80C7AD38  38 21 00 20 */	addi r1, r1, 0x20
/* 80C7AD3C  4E 80 00 20 */	blr 

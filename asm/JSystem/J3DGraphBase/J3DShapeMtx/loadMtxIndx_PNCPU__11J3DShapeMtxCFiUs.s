lbl_803131D4:
/* 803131D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803131D8  7C 08 02 A6 */	mflr r0
/* 803131DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803131E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803131E4  93 C1 00 08 */	stw r30, 8(r1)
/* 803131E8  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 803131EC  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 803131F0  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 803131F4  80 63 00 30 */	lwz r3, 0x30(r3)
/* 803131F8  1F C4 00 03 */	mulli r30, r4, 3
/* 803131FC  7F C4 F3 78 */	mr r4, r30
/* 80313200  4B FF C8 E1 */	bl J3DFifoLoadPosMtxImm__FPA4_fUl
/* 80313204  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 80313208  80 63 00 30 */	lwz r3, 0x30(r3)
/* 8031320C  7F C4 F3 78 */	mr r4, r30
/* 80313210  4B FF C9 51 */	bl J3DFifoLoadNrmMtxImm__FPA4_fUl
/* 80313214  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80313218  83 C1 00 08 */	lwz r30, 8(r1)
/* 8031321C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80313220  7C 08 03 A6 */	mtlr r0
/* 80313224  38 21 00 10 */	addi r1, r1, 0x10
/* 80313228  4E 80 00 20 */	blr 

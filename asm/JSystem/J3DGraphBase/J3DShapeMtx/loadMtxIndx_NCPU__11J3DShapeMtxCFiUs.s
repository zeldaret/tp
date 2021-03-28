lbl_80313188:
/* 80313188  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031318C  7C 08 02 A6 */	mflr r0
/* 80313190  90 01 00 14 */	stw r0, 0x14(r1)
/* 80313194  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80313198  7C 9F 23 78 */	mr r31, r4
/* 8031319C  3C 60 80 43 */	lis r3, j3dSys@ha
/* 803131A0  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 803131A4  4B FF CD 1D */	bl loadPosMtxIndx__6J3DSysCFiUs
/* 803131A8  3C 60 80 43 */	lis r3, j3dSys@ha
/* 803131AC  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 803131B0  80 63 00 40 */	lwz r3, 0x40(r3)
/* 803131B4  80 63 00 30 */	lwz r3, 0x30(r3)
/* 803131B8  1C 9F 00 03 */	mulli r4, r31, 3
/* 803131BC  4B FF C9 A5 */	bl J3DFifoLoadNrmMtxImm__FPA4_fUl
/* 803131C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803131C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803131C8  7C 08 03 A6 */	mtlr r0
/* 803131CC  38 21 00 10 */	addi r1, r1, 0x10
/* 803131D0  4E 80 00 20 */	blr 

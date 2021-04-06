lbl_80313128:
/* 80313128  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031312C  7C 08 02 A6 */	mflr r0
/* 80313130  90 01 00 14 */	stw r0, 0x14(r1)
/* 80313134  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80313138  93 C1 00 08 */	stw r30, 8(r1)
/* 8031313C  7C 9E 23 78 */	mr r30, r4
/* 80313140  7C BF 2B 78 */	mr r31, r5
/* 80313144  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80313148  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8031314C  80 63 00 40 */	lwz r3, 0x40(r3)
/* 80313150  80 63 00 30 */	lwz r3, 0x30(r3)
/* 80313154  1C 9E 00 03 */	mulli r4, r30, 3
/* 80313158  4B FF C9 89 */	bl J3DFifoLoadPosMtxImm__FPA4_fUl
/* 8031315C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80313160  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80313164  7F C4 F3 78 */	mr r4, r30
/* 80313168  7F E5 FB 78 */	mr r5, r31
/* 8031316C  4B FF CD 79 */	bl loadNrmMtxIndx__6J3DSysCFiUs
/* 80313170  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80313174  83 C1 00 08 */	lwz r30, 8(r1)
/* 80313178  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031317C  7C 08 03 A6 */	mtlr r0
/* 80313180  38 21 00 10 */	addi r1, r1, 0x10
/* 80313184  4E 80 00 20 */	blr 

lbl_8031419C:
/* 8031419C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 803141A0  7C 08 02 A6 */	mflr r0
/* 803141A4  90 01 00 64 */	stw r0, 0x64(r1)
/* 803141A8  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 803141AC  93 C1 00 58 */	stw r30, 0x58(r1)
/* 803141B0  7C 9E 23 78 */	mr r30, r4
/* 803141B4  7C DF 33 78 */	mr r31, r6
/* 803141B8  80 6D 90 2C */	lwz r3, sCurrentScaleFlag__11J3DShapeMtx(r13)
/* 803141BC  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 803141C0  7C 03 00 AE */	lbzx r0, r3, r0
/* 803141C4  28 00 00 01 */	cmplwi r0, 1
/* 803141C8  40 82 00 90 */	bne lbl_80314258
/* 803141CC  80 0D 90 34 */	lwz r0, sTexMtxLoadType__11J3DShapeMtx(r13)
/* 803141D0  28 00 20 00 */	cmplwi r0, 0x2000
/* 803141D4  40 82 00 14 */	bne lbl_803141E8
/* 803141D8  7F E3 FB 78 */	mr r3, r31
/* 803141DC  1C 9E 00 03 */	mulli r4, r30, 3
/* 803141E0  38 84 00 1E */	addi r4, r4, 0x1e
/* 803141E4  4B FF BA 55 */	bl J3DFifoLoadNrmMtxToTexMtx__FPA4_fUl
lbl_803141E8:
/* 803141E8  88 0D 90 30 */	lbz r0, struct_804515B0+0x0(r13)
/* 803141EC  28 00 00 00 */	cmplwi r0, 0
/* 803141F0  40 82 00 14 */	bne lbl_80314204
/* 803141F4  7F E3 FB 78 */	mr r3, r31
/* 803141F8  1C 9E 00 03 */	mulli r4, r30, 3
/* 803141FC  4B FF B9 65 */	bl J3DFifoLoadNrmMtxImm__FPA4_fUl
/* 80314200  48 00 00 BC */	b lbl_803142BC
lbl_80314204:
/* 80314204  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80314208  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 8031420C  80 83 01 18 */	lwz r4, 0x118(r3)
/* 80314210  38 61 00 2C */	addi r3, r1, 0x2c
/* 80314214  E0 BF 00 00 */	psq_l f5, 0(r31), 0, 0 /* qr0 */
/* 80314218  C0 9F 00 08 */	lfs f4, 8(r31)
/* 8031421C  E0 7F 00 10 */	psq_l f3, 16(r31), 0, 0 /* qr0 */
/* 80314220  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 80314224  E0 3F 00 20 */	psq_l f1, 32(r31), 0, 0 /* qr0 */
/* 80314228  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8031422C  F0 A3 00 00 */	psq_st f5, 0(r3), 0, 0 /* qr0 */
/* 80314230  D0 81 00 34 */	stfs f4, 0x34(r1)
/* 80314234  F0 63 00 0C */	psq_st f3, 12(r3), 0, 0 /* qr0 */
/* 80314238  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8031423C  F0 23 00 18 */	psq_st f1, 24(r3), 0, 0 /* qr0 */
/* 80314240  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80314244  4B FF DB B5 */	bl J3DScaleNrmMtx33__FPA3_fRC3Vec
/* 80314248  38 61 00 2C */	addi r3, r1, 0x2c
/* 8031424C  38 80 00 00 */	li r4, 0
/* 80314250  4B FF B9 7D */	bl J3DFifoLoadNrmMtxImm3x3__FPA3_fUl
/* 80314254  48 00 00 68 */	b lbl_803142BC
lbl_80314258:
/* 80314258  7F E3 FB 78 */	mr r3, r31
/* 8031425C  38 81 00 08 */	addi r4, r1, 8
/* 80314260  4B FF D6 3D */	bl J3DPSCalcInverseTranspose__FPA4_fPA3_f
/* 80314264  80 0D 90 34 */	lwz r0, sTexMtxLoadType__11J3DShapeMtx(r13)
/* 80314268  28 00 20 00 */	cmplwi r0, 0x2000
/* 8031426C  40 82 00 14 */	bne lbl_80314280
/* 80314270  38 61 00 08 */	addi r3, r1, 8
/* 80314274  1C 9E 00 03 */	mulli r4, r30, 3
/* 80314278  38 84 00 1E */	addi r4, r4, 0x1e
/* 8031427C  4B FF BA 55 */	bl J3DFifoLoadNrmMtxToTexMtx3x3__FPA3_fUl
lbl_80314280:
/* 80314280  88 0D 90 30 */	lbz r0, struct_804515B0+0x0(r13)
/* 80314284  28 00 00 00 */	cmplwi r0, 0
/* 80314288  40 82 00 14 */	bne lbl_8031429C
/* 8031428C  38 61 00 08 */	addi r3, r1, 8
/* 80314290  1C 9E 00 03 */	mulli r4, r30, 3
/* 80314294  4B FF B9 39 */	bl J3DFifoLoadNrmMtxImm3x3__FPA3_fUl
/* 80314298  48 00 00 24 */	b lbl_803142BC
lbl_8031429C:
/* 8031429C  3C 60 80 43 */	lis r3, j3dSys@ha
/* 803142A0  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 803142A4  80 83 01 18 */	lwz r4, 0x118(r3)
/* 803142A8  38 61 00 08 */	addi r3, r1, 8
/* 803142AC  4B FF DB 4D */	bl J3DScaleNrmMtx33__FPA3_fRC3Vec
/* 803142B0  38 61 00 08 */	addi r3, r1, 8
/* 803142B4  1C 9E 00 03 */	mulli r4, r30, 3
/* 803142B8  4B FF B9 15 */	bl J3DFifoLoadNrmMtxImm3x3__FPA3_fUl
lbl_803142BC:
/* 803142BC  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 803142C0  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 803142C4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 803142C8  7C 08 03 A6 */	mtlr r0
/* 803142CC  38 21 00 60 */	addi r1, r1, 0x60
/* 803142D0  4E 80 00 20 */	blr 

lbl_80313D28:
/* 80313D28  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80313D2C  7C 08 02 A6 */	mflr r0
/* 80313D30  90 01 00 64 */	stw r0, 0x64(r1)
/* 80313D34  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80313D38  7C DF 33 78 */	mr r31, r6
/* 80313D3C  80 6D 90 2C */	lwz r3, sCurrentScaleFlag__11J3DShapeMtx(r13)
/* 80313D40  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 80313D44  7C 03 00 AE */	lbzx r0, r3, r0
/* 80313D48  28 00 00 01 */	cmplwi r0, 1
/* 80313D4C  40 82 00 8C */	bne lbl_80313DD8
/* 80313D50  80 0D 90 34 */	lwz r0, sTexMtxLoadType__11J3DShapeMtx(r13)
/* 80313D54  28 00 20 00 */	cmplwi r0, 0x2000
/* 80313D58  40 82 00 10 */	bne lbl_80313D68
/* 80313D5C  7F E3 FB 78 */	mr r3, r31
/* 80313D60  38 80 00 1E */	li r4, 0x1e
/* 80313D64  4B FF BE D5 */	bl J3DFifoLoadNrmMtxToTexMtx__FPA4_fUl
lbl_80313D68:
/* 80313D68  88 0D 90 30 */	lbz r0, struct_804515B0+0x0(r13)
/* 80313D6C  28 00 00 00 */	cmplwi r0, 0
/* 80313D70  40 82 00 14 */	bne lbl_80313D84
/* 80313D74  7F E3 FB 78 */	mr r3, r31
/* 80313D78  38 80 00 00 */	li r4, 0
/* 80313D7C  4B FF BD E5 */	bl J3DFifoLoadNrmMtxImm__FPA4_fUl
/* 80313D80  48 00 00 B8 */	b lbl_80313E38
lbl_80313D84:
/* 80313D84  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80313D88  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80313D8C  80 83 01 18 */	lwz r4, 0x118(r3)
/* 80313D90  38 61 00 2C */	addi r3, r1, 0x2c
/* 80313D94  E0 BF 00 00 */	psq_l f5, 0(r31), 0, 0 /* qr0 */
/* 80313D98  C0 9F 00 08 */	lfs f4, 8(r31)
/* 80313D9C  E0 7F 00 10 */	psq_l f3, 16(r31), 0, 0 /* qr0 */
/* 80313DA0  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 80313DA4  E0 3F 00 20 */	psq_l f1, 32(r31), 0, 0 /* qr0 */
/* 80313DA8  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80313DAC  F0 A3 00 00 */	psq_st f5, 0(r3), 0, 0 /* qr0 */
/* 80313DB0  D0 81 00 34 */	stfs f4, 0x34(r1)
/* 80313DB4  F0 63 00 0C */	psq_st f3, 12(r3), 0, 0 /* qr0 */
/* 80313DB8  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80313DBC  F0 23 00 18 */	psq_st f1, 24(r3), 0, 0 /* qr0 */
/* 80313DC0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80313DC4  4B FF E0 35 */	bl J3DScaleNrmMtx33__FPA3_fRC3Vec
/* 80313DC8  38 61 00 2C */	addi r3, r1, 0x2c
/* 80313DCC  38 80 00 00 */	li r4, 0
/* 80313DD0  4B FF BD FD */	bl J3DFifoLoadNrmMtxImm3x3__FPA3_fUl
/* 80313DD4  48 00 00 64 */	b lbl_80313E38
lbl_80313DD8:
/* 80313DD8  7F E3 FB 78 */	mr r3, r31
/* 80313DDC  38 81 00 08 */	addi r4, r1, 8
/* 80313DE0  4B FF DA BD */	bl J3DPSCalcInverseTranspose__FPA4_fPA3_f
/* 80313DE4  80 0D 90 34 */	lwz r0, sTexMtxLoadType__11J3DShapeMtx(r13)
/* 80313DE8  28 00 20 00 */	cmplwi r0, 0x2000
/* 80313DEC  40 82 00 10 */	bne lbl_80313DFC
/* 80313DF0  38 61 00 08 */	addi r3, r1, 8
/* 80313DF4  38 80 00 1E */	li r4, 0x1e
/* 80313DF8  4B FF BE D9 */	bl J3DFifoLoadNrmMtxToTexMtx3x3__FPA3_fUl
lbl_80313DFC:
/* 80313DFC  88 0D 90 30 */	lbz r0, struct_804515B0+0x0(r13)
/* 80313E00  28 00 00 00 */	cmplwi r0, 0
/* 80313E04  40 82 00 14 */	bne lbl_80313E18
/* 80313E08  38 61 00 08 */	addi r3, r1, 8
/* 80313E0C  38 80 00 00 */	li r4, 0
/* 80313E10  4B FF BD BD */	bl J3DFifoLoadNrmMtxImm3x3__FPA3_fUl
/* 80313E14  48 00 00 24 */	b lbl_80313E38
lbl_80313E18:
/* 80313E18  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80313E1C  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80313E20  80 83 01 18 */	lwz r4, 0x118(r3)
/* 80313E24  38 61 00 08 */	addi r3, r1, 8
/* 80313E28  4B FF DF D1 */	bl J3DScaleNrmMtx33__FPA3_fRC3Vec
/* 80313E2C  38 61 00 08 */	addi r3, r1, 8
/* 80313E30  38 80 00 00 */	li r4, 0
/* 80313E34  4B FF BD 99 */	bl J3DFifoLoadNrmMtxImm3x3__FPA3_fUl
lbl_80313E38:
/* 80313E38  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80313E3C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80313E40  7C 08 03 A6 */	mtlr r0
/* 80313E44  38 21 00 60 */	addi r1, r1, 0x60
/* 80313E48  4E 80 00 20 */	blr 

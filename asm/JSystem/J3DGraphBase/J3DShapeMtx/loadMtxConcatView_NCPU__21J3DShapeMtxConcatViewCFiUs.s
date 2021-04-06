lbl_8031396C:
/* 8031396C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80313970  7C 08 02 A6 */	mflr r0
/* 80313974  90 01 00 44 */	stw r0, 0x44(r1)
/* 80313978  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8031397C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80313980  7C 9E 23 78 */	mr r30, r4
/* 80313984  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80313988  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 8031398C  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 80313990  80 63 00 30 */	lwz r3, 0x30(r3)
/* 80313994  80 9F 01 04 */	lwz r4, 0x104(r31)
/* 80313998  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 8031399C  1C 00 00 30 */	mulli r0, r0, 0x30
/* 803139A0  7C 84 02 14 */	add r4, r4, r0
/* 803139A4  38 A1 00 08 */	addi r5, r1, 8
/* 803139A8  48 03 2B 3D */	bl PSMTXConcat
/* 803139AC  80 0D 90 40 */	lwz r0, sTexGenBlock__17J3DDifferedTexMtx(r13)
/* 803139B0  28 00 00 00 */	cmplwi r0, 0
/* 803139B4  41 82 00 0C */	beq lbl_803139C0
/* 803139B8  38 61 00 08 */	addi r3, r1, 8
/* 803139BC  4B FF F8 71 */	bl loadExecute__17J3DDifferedTexMtxFPA4_Cf
lbl_803139C0:
/* 803139C0  38 61 00 08 */	addi r3, r1, 8
/* 803139C4  1F DE 00 03 */	mulli r30, r30, 3
/* 803139C8  7F C4 F3 78 */	mr r4, r30
/* 803139CC  4B FF C1 15 */	bl J3DFifoLoadPosMtxImm__FPA4_fUl
/* 803139D0  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 803139D4  80 63 00 30 */	lwz r3, 0x30(r3)
/* 803139D8  7F C4 F3 78 */	mr r4, r30
/* 803139DC  4B FF C1 85 */	bl J3DFifoLoadNrmMtxImm__FPA4_fUl
/* 803139E0  80 0D 90 34 */	lwz r0, sTexMtxLoadType__11J3DShapeMtx(r13)
/* 803139E4  28 00 20 00 */	cmplwi r0, 0x2000
/* 803139E8  40 82 00 14 */	bne lbl_803139FC
/* 803139EC  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 803139F0  80 63 00 30 */	lwz r3, 0x30(r3)
/* 803139F4  38 9E 00 1E */	addi r4, r30, 0x1e
/* 803139F8  4B FF C2 41 */	bl J3DFifoLoadNrmMtxToTexMtx__FPA4_fUl
lbl_803139FC:
/* 803139FC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80313A00  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80313A04  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80313A08  7C 08 03 A6 */	mtlr r0
/* 80313A0C  38 21 00 40 */	addi r1, r1, 0x40
/* 80313A10  4E 80 00 20 */	blr 

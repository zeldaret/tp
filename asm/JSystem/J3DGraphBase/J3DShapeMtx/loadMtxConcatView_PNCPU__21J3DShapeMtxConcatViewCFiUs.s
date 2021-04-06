lbl_80313A14:
/* 80313A14  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80313A18  7C 08 02 A6 */	mflr r0
/* 80313A1C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80313A20  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80313A24  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80313A28  7C 9E 23 78 */	mr r30, r4
/* 80313A2C  80 0D 90 40 */	lwz r0, sTexGenBlock__17J3DDifferedTexMtx(r13)
/* 80313A30  28 00 00 00 */	cmplwi r0, 0
/* 80313A34  41 82 00 34 */	beq lbl_80313A68
/* 80313A38  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80313A3C  38 83 4A C8 */	addi r4, r3, j3dSys@l /* 0x80434AC8@l */
/* 80313A40  80 64 00 40 */	lwz r3, 0x40(r4)
/* 80313A44  80 63 00 30 */	lwz r3, 0x30(r3)
/* 80313A48  80 84 01 04 */	lwz r4, 0x104(r4)
/* 80313A4C  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 80313A50  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80313A54  7C 84 02 14 */	add r4, r4, r0
/* 80313A58  38 A1 00 08 */	addi r5, r1, 8
/* 80313A5C  48 03 2A 89 */	bl PSMTXConcat
/* 80313A60  38 61 00 08 */	addi r3, r1, 8
/* 80313A64  4B FF F7 C9 */	bl loadExecute__17J3DDifferedTexMtxFPA4_Cf
lbl_80313A68:
/* 80313A68  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80313A6C  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
/* 80313A70  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 80313A74  80 63 00 30 */	lwz r3, 0x30(r3)
/* 80313A78  1F DE 00 03 */	mulli r30, r30, 3
/* 80313A7C  7F C4 F3 78 */	mr r4, r30
/* 80313A80  4B FF C0 61 */	bl J3DFifoLoadPosMtxImm__FPA4_fUl
/* 80313A84  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 80313A88  80 63 00 30 */	lwz r3, 0x30(r3)
/* 80313A8C  7F C4 F3 78 */	mr r4, r30
/* 80313A90  4B FF C0 D1 */	bl J3DFifoLoadNrmMtxImm__FPA4_fUl
/* 80313A94  80 0D 90 34 */	lwz r0, sTexMtxLoadType__11J3DShapeMtx(r13)
/* 80313A98  28 00 20 00 */	cmplwi r0, 0x2000
/* 80313A9C  40 82 00 14 */	bne lbl_80313AB0
/* 80313AA0  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 80313AA4  80 63 00 30 */	lwz r3, 0x30(r3)
/* 80313AA8  38 9E 00 1E */	addi r4, r30, 0x1e
/* 80313AAC  4B FF C1 8D */	bl J3DFifoLoadNrmMtxToTexMtx__FPA4_fUl
lbl_80313AB0:
/* 80313AB0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80313AB4  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80313AB8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80313ABC  7C 08 03 A6 */	mtlr r0
/* 80313AC0  38 21 00 40 */	addi r1, r1, 0x40
/* 80313AC4  4E 80 00 20 */	blr 

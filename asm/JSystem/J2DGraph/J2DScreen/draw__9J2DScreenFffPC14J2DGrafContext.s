lbl_802F8ED4:
/* 802F8ED4  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 802F8ED8  7C 08 02 A6 */	mflr r0
/* 802F8EDC  90 01 01 24 */	stw r0, 0x124(r1)
/* 802F8EE0  DB E1 01 10 */	stfd f31, 0x110(r1)
/* 802F8EE4  F3 E1 01 18 */	psq_st f31, 280(r1), 0, 0 /* qr0 */
/* 802F8EE8  DB C1 01 00 */	stfd f30, 0x100(r1)
/* 802F8EEC  F3 C1 01 08 */	psq_st f30, 264(r1), 0, 0 /* qr0 */
/* 802F8EF0  93 E1 00 FC */	stw r31, 0xfc(r1)
/* 802F8EF4  93 C1 00 F8 */	stw r30, 0xf8(r1)
/* 802F8EF8  7C 7E 1B 78 */	mr r30, r3
/* 802F8EFC  FF C0 08 90 */	fmr f30, f1
/* 802F8F00  FF E0 10 90 */	fmr f31, f2
/* 802F8F04  7C 9F 23 78 */	mr r31, r4
/* 802F8F08  88 03 01 00 */	lbz r0, 0x100(r3)
/* 802F8F0C  28 00 00 00 */	cmplwi r0, 0
/* 802F8F10  41 82 00 18 */	beq lbl_802F8F28
/* 802F8F14  38 61 00 14 */	addi r3, r1, 0x14
/* 802F8F18  38 81 00 10 */	addi r4, r1, 0x10
/* 802F8F1C  38 A1 00 0C */	addi r5, r1, 0xc
/* 802F8F20  38 C1 00 08 */	addi r6, r1, 8
/* 802F8F24  48 06 76 25 */	bl GXGetScissor
lbl_802F8F28:
/* 802F8F28  28 1F 00 00 */	cmplwi r31, 0
/* 802F8F2C  41 82 00 24 */	beq lbl_802F8F50
/* 802F8F30  7F C3 F3 78 */	mr r3, r30
/* 802F8F34  FC 20 F0 90 */	fmr f1, f30
/* 802F8F38  FC 40 F8 90 */	fmr f2, f31
/* 802F8F3C  7F E4 FB 78 */	mr r4, r31
/* 802F8F40  88 BE 01 00 */	lbz r5, 0x100(r30)
/* 802F8F44  38 C0 00 01 */	li r6, 1
/* 802F8F48  4B FF D8 99 */	bl draw__7J2DPaneFffPC14J2DGrafContextbb
/* 802F8F4C  48 00 00 60 */	b lbl_802F8FAC
lbl_802F8F50:
/* 802F8F50  38 61 00 18 */	addi r3, r1, 0x18
/* 802F8F54  C0 22 C8 20 */	lfs f1, lit_1561(r2)
/* 802F8F58  FC 40 08 90 */	fmr f2, f1
/* 802F8F5C  C0 62 C8 24 */	lfs f3, lit_1562(r2)
/* 802F8F60  C0 82 C8 28 */	lfs f4, lit_1563(r2)
/* 802F8F64  C0 A2 C8 38 */	lfs f5, lit_1829(r2)
/* 802F8F68  C0 C2 C8 3C */	lfs f6, lit_1830(r2)
/* 802F8F6C  4B FF 07 65 */	bl __ct__13J2DOrthoGraphFffffff
/* 802F8F70  38 61 00 18 */	addi r3, r1, 0x18
/* 802F8F74  4B FF 08 41 */	bl setPort__13J2DOrthoGraphFv
/* 802F8F78  7F C3 F3 78 */	mr r3, r30
/* 802F8F7C  FC 20 F0 90 */	fmr f1, f30
/* 802F8F80  FC 40 F8 90 */	fmr f2, f31
/* 802F8F84  38 81 00 18 */	addi r4, r1, 0x18
/* 802F8F88  88 BE 01 00 */	lbz r5, 0x100(r30)
/* 802F8F8C  38 C0 00 01 */	li r6, 1
/* 802F8F90  4B FF D8 51 */	bl draw__7J2DPaneFffPC14J2DGrafContextbb
/* 802F8F94  3C 60 80 3D */	lis r3, __vt__13J2DOrthoGraph@ha
/* 802F8F98  38 03 C9 E0 */	addi r0, r3, __vt__13J2DOrthoGraph@l
/* 802F8F9C  90 01 00 18 */	stw r0, 0x18(r1)
/* 802F8FA0  3C 60 80 3D */	lis r3, __vt__14J2DGrafContext@ha
/* 802F8FA4  38 03 C9 B8 */	addi r0, r3, __vt__14J2DGrafContext@l
/* 802F8FA8  90 01 00 18 */	stw r0, 0x18(r1)
lbl_802F8FAC:
/* 802F8FAC  88 1E 01 00 */	lbz r0, 0x100(r30)
/* 802F8FB0  28 00 00 00 */	cmplwi r0, 0
/* 802F8FB4  41 82 00 18 */	beq lbl_802F8FCC
/* 802F8FB8  80 61 00 14 */	lwz r3, 0x14(r1)
/* 802F8FBC  80 81 00 10 */	lwz r4, 0x10(r1)
/* 802F8FC0  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 802F8FC4  80 C1 00 08 */	lwz r6, 8(r1)
/* 802F8FC8  48 06 75 09 */	bl GXSetScissor
lbl_802F8FCC:
/* 802F8FCC  38 60 00 00 */	li r3, 0
/* 802F8FD0  48 06 61 05 */	bl GXSetNumIndStages
/* 802F8FD4  3B E0 00 00 */	li r31, 0
lbl_802F8FD8:
/* 802F8FD8  7F E3 FB 78 */	mr r3, r31
/* 802F8FDC  48 06 61 1D */	bl GXSetTevDirect
/* 802F8FE0  3B FF 00 01 */	addi r31, r31, 1
/* 802F8FE4  2C 1F 00 10 */	cmpwi r31, 0x10
/* 802F8FE8  41 80 FF F0 */	blt lbl_802F8FD8
/* 802F8FEC  38 60 00 01 */	li r3, 1
/* 802F8FF0  48 06 68 A1 */	bl GXSetNumTevStages
/* 802F8FF4  38 60 00 00 */	li r3, 0
/* 802F8FF8  38 80 00 04 */	li r4, 4
/* 802F8FFC  48 06 61 9D */	bl GXSetTevOp
/* 802F9000  38 60 00 00 */	li r3, 0
/* 802F9004  38 80 00 FF */	li r4, 0xff
/* 802F9008  38 A0 00 FF */	li r5, 0xff
/* 802F900C  38 C0 00 04 */	li r6, 4
/* 802F9010  48 06 66 E5 */	bl GXSetTevOrder
/* 802F9014  38 60 00 0D */	li r3, 0xd
/* 802F9018  38 80 00 00 */	li r4, 0
/* 802F901C  48 06 1E 9D */	bl GXSetVtxDesc
/* 802F9020  38 60 00 00 */	li r3, 0
/* 802F9024  48 06 39 61 */	bl GXSetCullMode
/* 802F9028  38 60 00 00 */	li r3, 0
/* 802F902C  48 06 2D D1 */	bl GXSetNumTexGens
/* 802F9030  38 60 00 04 */	li r3, 4
/* 802F9034  38 80 00 00 */	li r4, 0
/* 802F9038  38 A0 00 00 */	li r5, 0
/* 802F903C  38 C0 00 01 */	li r6, 1
/* 802F9040  38 E0 00 00 */	li r7, 0
/* 802F9044  39 00 00 00 */	li r8, 0
/* 802F9048  39 20 00 02 */	li r9, 2
/* 802F904C  48 06 4B 21 */	bl GXSetChanCtrl
/* 802F9050  3B E0 00 00 */	li r31, 0
lbl_802F9054:
/* 802F9054  7F E3 FB 78 */	mr r3, r31
/* 802F9058  38 80 00 00 */	li r4, 0
/* 802F905C  38 A0 00 01 */	li r5, 1
/* 802F9060  38 C0 00 02 */	li r6, 2
/* 802F9064  38 E0 00 03 */	li r7, 3
/* 802F9068  48 06 65 3D */	bl GXSetTevSwapModeTable
/* 802F906C  3B FF 00 01 */	addi r31, r31, 1
/* 802F9070  2C 1F 00 04 */	cmpwi r31, 4
/* 802F9074  41 80 FF E0 */	blt lbl_802F9054
/* 802F9078  E3 E1 01 18 */	psq_l f31, 280(r1), 0, 0 /* qr0 */
/* 802F907C  CB E1 01 10 */	lfd f31, 0x110(r1)
/* 802F9080  E3 C1 01 08 */	psq_l f30, 264(r1), 0, 0 /* qr0 */
/* 802F9084  CB C1 01 00 */	lfd f30, 0x100(r1)
/* 802F9088  83 E1 00 FC */	lwz r31, 0xfc(r1)
/* 802F908C  83 C1 00 F8 */	lwz r30, 0xf8(r1)
/* 802F9090  80 01 01 24 */	lwz r0, 0x124(r1)
/* 802F9094  7C 08 03 A6 */	mtlr r0
/* 802F9098  38 21 01 20 */	addi r1, r1, 0x120
/* 802F909C  4E 80 00 20 */	blr 

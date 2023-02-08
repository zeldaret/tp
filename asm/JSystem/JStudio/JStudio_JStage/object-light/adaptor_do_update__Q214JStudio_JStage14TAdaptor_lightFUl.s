lbl_8028CFBC:
/* 8028CFBC  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8028CFC0  7C 08 02 A6 */	mflr r0
/* 8028CFC4  90 01 00 94 */	stw r0, 0x94(r1)
/* 8028CFC8  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8028CFCC  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8028CFD0  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8028CFD4  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 8028CFD8  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 8028CFDC  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 8028CFE0  39 61 00 60 */	addi r11, r1, 0x60
/* 8028CFE4  48 0D 51 F9 */	bl _savegpr_29
/* 8028CFE8  7C 7D 1B 78 */	mr r29, r3
/* 8028CFEC  83 C3 01 18 */	lwz r30, 0x118(r3)
/* 8028CFF0  80 83 00 04 */	lwz r4, 4(r3)
/* 8028CFF4  83 E4 00 14 */	lwz r31, 0x14(r4)
/* 8028CFF8  38 81 00 0C */	addi r4, r1, 0xc
/* 8028CFFC  3C A0 80 3A */	lis r5, sauVariableValue_4_COLOR_RGBA__Q27JStudio14TAdaptor_light@ha /* 0x8039AAE8@ha */
/* 8028D000  38 A5 AA E8 */	addi r5, r5, sauVariableValue_4_COLOR_RGBA__Q27JStudio14TAdaptor_light@l /* 0x8039AAE8@l */
/* 8028D004  4B FF 93 89 */	bl adaptor_getVariableValue_GXColor__Q27JStudio8TAdaptorCFP8_GXColorPCUl
/* 8028D008  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8028D00C  90 01 00 08 */	stw r0, 8(r1)
/* 8028D010  7F C3 F3 78 */	mr r3, r30
/* 8028D014  38 81 00 08 */	addi r4, r1, 8
/* 8028D018  81 9E 00 00 */	lwz r12, 0(r30)
/* 8028D01C  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8028D020  7D 89 03 A6 */	mtctr r12
/* 8028D024  4E 80 04 21 */	bctrl 
/* 8028D028  7F A3 EB 78 */	mr r3, r29
/* 8028D02C  38 81 00 34 */	addi r4, r1, 0x34
/* 8028D030  3C A0 80 3A */	lis r5, sauVariableValue_3_POSITION_XYZ__Q27JStudio14TAdaptor_light@ha /* 0x8039AAF8@ha */
/* 8028D034  38 A5 AA F8 */	addi r5, r5, sauVariableValue_3_POSITION_XYZ__Q27JStudio14TAdaptor_light@l /* 0x8039AAF8@l */
/* 8028D038  4B FF 92 3D */	bl adaptor_getVariableValue_Vec__Q27JStudio8TAdaptorCFP3VecPCUl
/* 8028D03C  80 1D 01 1C */	lwz r0, 0x11c(r29)
/* 8028D040  2C 00 00 02 */	cmpwi r0, 2
/* 8028D044  41 82 00 78 */	beq lbl_8028D0BC
/* 8028D048  40 80 00 98 */	bge lbl_8028D0E0
/* 8028D04C  2C 00 00 01 */	cmpwi r0, 1
/* 8028D050  40 80 00 08 */	bge lbl_8028D058
/* 8028D054  48 00 00 8C */	b lbl_8028D0E0
lbl_8028D058:
/* 8028D058  80 7D 00 08 */	lwz r3, 8(r29)
/* 8028D05C  C3 E3 00 C8 */	lfs f31, 0xc8(r3)
/* 8028D060  C0 23 00 DC */	lfs f1, 0xdc(r3)
/* 8028D064  C0 02 BB 0C */	lfs f0, lit_898(r2)
/* 8028D068  EF A0 00 72 */	fmuls f29, f0, f1
/* 8028D06C  FC 20 E8 90 */	fmr f1, f29
/* 8028D070  48 0D EF B9 */	bl cos
/* 8028D074  FF C0 08 18 */	frsp f30, f1
/* 8028D078  FC 20 E8 90 */	fmr f1, f29
/* 8028D07C  48 0D F5 15 */	bl sin
/* 8028D080  FF A0 08 18 */	frsp f29, f1
/* 8028D084  C0 02 BB 0C */	lfs f0, lit_898(r2)
/* 8028D088  EF E0 07 F2 */	fmuls f31, f0, f31
/* 8028D08C  FC 20 F8 90 */	fmr f1, f31
/* 8028D090  48 0D F5 01 */	bl sin
/* 8028D094  FC 00 08 18 */	frsp f0, f1
/* 8028D098  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8028D09C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8028D0A0  D3 A1 00 44 */	stfs f29, 0x44(r1)
/* 8028D0A4  FC 20 F8 90 */	fmr f1, f31
/* 8028D0A8  48 0D EF 81 */	bl cos
/* 8028D0AC  FC 00 08 18 */	frsp f0, f1
/* 8028D0B0  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8028D0B4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8028D0B8  48 00 00 28 */	b lbl_8028D0E0
lbl_8028D0BC:
/* 8028D0BC  7F A3 EB 78 */	mr r3, r29
/* 8028D0C0  38 81 00 10 */	addi r4, r1, 0x10
/* 8028D0C4  3C A0 80 3A */	lis r5, sauVariableValue_3_TARGET_POSITION_XYZ__Q27JStudio14TAdaptor_light@ha /* 0x8039AB04@ha */
/* 8028D0C8  38 A5 AB 04 */	addi r5, r5, sauVariableValue_3_TARGET_POSITION_XYZ__Q27JStudio14TAdaptor_light@l /* 0x8039AB04@l */
/* 8028D0CC  4B FF 91 A9 */	bl adaptor_getVariableValue_Vec__Q27JStudio8TAdaptorCFP3VecPCUl
/* 8028D0D0  38 61 00 10 */	addi r3, r1, 0x10
/* 8028D0D4  38 81 00 34 */	addi r4, r1, 0x34
/* 8028D0D8  38 A1 00 40 */	addi r5, r1, 0x40
/* 8028D0DC  48 0B 9F D9 */	bl PSVECSubtract
lbl_8028D0E0:
/* 8028D0E0  88 1F 00 88 */	lbz r0, 0x88(r31)
/* 8028D0E4  28 00 00 00 */	cmplwi r0, 0
/* 8028D0E8  40 82 00 0C */	bne lbl_8028D0F4
/* 8028D0EC  3B E1 00 34 */	addi r31, r1, 0x34
/* 8028D0F0  48 00 00 28 */	b lbl_8028D118
lbl_8028D0F4:
/* 8028D0F4  38 7F 00 AC */	addi r3, r31, 0xac
/* 8028D0F8  38 81 00 34 */	addi r4, r1, 0x34
/* 8028D0FC  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8028D100  48 0B 9C 6D */	bl PSMTXMultVec
/* 8028D104  38 7F 00 AC */	addi r3, r31, 0xac
/* 8028D108  38 81 00 40 */	addi r4, r1, 0x40
/* 8028D10C  38 A1 00 28 */	addi r5, r1, 0x28
/* 8028D110  48 0B 9D 3D */	bl PSMTXMultVecSR
/* 8028D114  3B E1 00 1C */	addi r31, r1, 0x1c
lbl_8028D118:
/* 8028D118  7F C3 F3 78 */	mr r3, r30
/* 8028D11C  7F E4 FB 78 */	mr r4, r31
/* 8028D120  81 9E 00 00 */	lwz r12, 0(r30)
/* 8028D124  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8028D128  7D 89 03 A6 */	mtctr r12
/* 8028D12C  4E 80 04 21 */	bctrl 
/* 8028D130  7F C3 F3 78 */	mr r3, r30
/* 8028D134  38 9F 00 0C */	addi r4, r31, 0xc
/* 8028D138  81 9E 00 00 */	lwz r12, 0(r30)
/* 8028D13C  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8028D140  7D 89 03 A6 */	mtctr r12
/* 8028D144  4E 80 04 21 */	bctrl 
/* 8028D148  80 7D 01 18 */	lwz r3, 0x118(r29)
/* 8028D14C  81 83 00 00 */	lwz r12, 0(r3)
/* 8028D150  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8028D154  7D 89 03 A6 */	mtctr r12
/* 8028D158  4E 80 04 21 */	bctrl 
/* 8028D15C  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 8028D160  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8028D164  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 8028D168  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8028D16C  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 8028D170  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 8028D174  39 61 00 60 */	addi r11, r1, 0x60
/* 8028D178  48 0D 50 B1 */	bl _restgpr_29
/* 8028D17C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8028D180  7C 08 03 A6 */	mtlr r0
/* 8028D184  38 21 00 90 */	addi r1, r1, 0x90
/* 8028D188  4E 80 00 20 */	blr 

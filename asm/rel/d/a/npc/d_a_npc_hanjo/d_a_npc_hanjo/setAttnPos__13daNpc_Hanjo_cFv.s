lbl_809FABB8:
/* 809FABB8  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 809FABBC  7C 08 02 A6 */	mflr r0
/* 809FABC0  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 809FABC4  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 809FABC8  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 809FABCC  39 61 00 90 */	addi r11, r1, 0x90
/* 809FABD0  4B 96 76 00 */	b _savegpr_26
/* 809FABD4  7C 7D 1B 78 */	mr r29, r3
/* 809FABD8  3C 60 80 A0 */	lis r3, lit_1109@ha
/* 809FABDC  3B C3 12 88 */	addi r30, r3, lit_1109@l
/* 809FABE0  3C 60 80 A0 */	lis r3, m__19daNpc_Hanjo_Param_c@ha
/* 809FABE4  3B E3 06 00 */	addi r31, r3, m__19daNpc_Hanjo_Param_c@l
/* 809FABE8  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 809FABEC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 809FABF0  C0 1F 01 28 */	lfs f0, 0x128(r31)
/* 809FABF4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 809FABF8  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 809FABFC  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 809FAC00  38 7D 0D 08 */	addi r3, r29, 0xd08
/* 809FAC04  38 80 00 00 */	li r4, 0
/* 809FAC08  4B 74 D2 34 */	b calc__19daNpcT_DmgStagger_cFi
/* 809FAC0C  C0 5F 01 2C */	lfs f2, 0x12c(r31)
/* 809FAC10  A8 7D 0D 80 */	lha r3, 0xd80(r29)
/* 809FAC14  A8 1D 0D 7A */	lha r0, 0xd7a(r29)
/* 809FAC18  7C 03 00 50 */	subf r0, r3, r0
/* 809FAC1C  7C 00 07 34 */	extsh r0, r0
/* 809FAC20  C8 3F 01 48 */	lfd f1, 0x148(r31)
/* 809FAC24  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809FAC28  90 01 00 6C */	stw r0, 0x6c(r1)
/* 809FAC2C  3C 00 43 30 */	lis r0, 0x4330
/* 809FAC30  90 01 00 68 */	stw r0, 0x68(r1)
/* 809FAC34  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 809FAC38  EC 00 08 28 */	fsubs f0, f0, f1
/* 809FAC3C  EF E2 00 32 */	fmuls f31, f2, f0
/* 809FAC40  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 809FAC44  83 43 00 04 */	lwz r26, 4(r3)
/* 809FAC48  7F A3 EB 78 */	mr r3, r29
/* 809FAC4C  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 809FAC50  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 809FAC54  7D 89 03 A6 */	mtctr r12
/* 809FAC58  4E 80 04 21 */	bctrl 
/* 809FAC5C  7C 7B 1B 78 */	mr r27, r3
/* 809FAC60  7F A3 EB 78 */	mr r3, r29
/* 809FAC64  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 809FAC68  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 809FAC6C  7D 89 03 A6 */	mtctr r12
/* 809FAC70  4E 80 04 21 */	bctrl 
/* 809FAC74  7C 7C 1B 78 */	mr r28, r3
/* 809FAC78  7F A3 EB 78 */	mr r3, r29
/* 809FAC7C  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 809FAC80  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 809FAC84  7D 89 03 A6 */	mtctr r12
/* 809FAC88  4E 80 04 21 */	bctrl 
/* 809FAC8C  7C 67 1B 78 */	mr r7, r3
/* 809FAC90  39 5F 00 00 */	addi r10, r31, 0
/* 809FAC94  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 809FAC98  D0 01 00 08 */	stfs f0, 8(r1)
/* 809FAC9C  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 809FACA0  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 809FACA4  7F A4 EB 78 */	mr r4, r29
/* 809FACA8  7F 45 D3 78 */	mr r5, r26
/* 809FACAC  38 C1 00 58 */	addi r6, r1, 0x58
/* 809FACB0  7F 88 E3 78 */	mr r8, r28
/* 809FACB4  7F 69 DB 78 */	mr r9, r27
/* 809FACB8  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 809FACBC  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 809FACC0  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 809FACC4  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 809FACC8  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 809FACCC  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 809FACD0  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 809FACD4  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 809FACD8  39 40 00 00 */	li r10, 0
/* 809FACDC  4B 74 BF FC */	b setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 809FACE0  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 809FACE4  C0 3F 01 0C */	lfs f1, 0x10c(r31)
/* 809FACE8  C0 5F 01 18 */	lfs f2, 0x118(r31)
/* 809FACEC  FC 60 F8 90 */	fmr f3, f31
/* 809FACF0  4B 74 CF 48 */	b calcJntRad__15daNpcT_JntAnm_cFfff
/* 809FACF4  7F A3 EB 78 */	mr r3, r29
/* 809FACF8  4B 74 E4 98 */	b setMtx__8daNpcT_cFv
/* 809FACFC  7F A3 EB 78 */	mr r3, r29
/* 809FAD00  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 809FAD04  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 809FAD08  7D 89 03 A6 */	mtctr r12
/* 809FAD0C  4E 80 04 21 */	bctrl 
/* 809FAD10  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 809FAD14  80 84 00 04 */	lwz r4, 4(r4)
/* 809FAD18  80 84 00 84 */	lwz r4, 0x84(r4)
/* 809FAD1C  80 84 00 0C */	lwz r4, 0xc(r4)
/* 809FAD20  1C 03 00 30 */	mulli r0, r3, 0x30
/* 809FAD24  7C 64 02 14 */	add r3, r4, r0
/* 809FAD28  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 809FAD2C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 809FAD30  4B 94 B7 80 */	b PSMTXCopy
/* 809FAD34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809FAD38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809FAD3C  38 81 00 58 */	addi r4, r1, 0x58
/* 809FAD40  38 BD 05 38 */	addi r5, r29, 0x538
/* 809FAD44  4B 94 C0 28 */	b PSMTXMultVec
/* 809FAD48  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 809FAD4C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 809FAD50  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 809FAD54  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 809FAD58  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 809FAD5C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 809FAD60  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 809FAD64  38 81 00 40 */	addi r4, r1, 0x40
/* 809FAD68  C0 3F 01 18 */	lfs f1, 0x118(r31)
/* 809FAD6C  38 A0 00 00 */	li r5, 0
/* 809FAD70  48 00 4E 35 */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 809FAD74  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 809FAD78  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 809FAD7C  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 809FAD80  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 809FAD84  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 809FAD88  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 809FAD8C  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 809FAD90  38 81 00 34 */	addi r4, r1, 0x34
/* 809FAD94  A8 BD 0D 7A */	lha r5, 0xd7a(r29)
/* 809FAD98  38 C0 00 01 */	li r6, 1
/* 809FAD9C  C0 3F 01 18 */	lfs f1, 0x118(r31)
/* 809FADA0  38 E0 00 00 */	li r7, 0
/* 809FADA4  48 00 4C E5 */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 809FADA8  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 809FADAC  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 809FADB0  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 809FADB4  C0 1F 01 30 */	lfs f0, 0x130(r31)
/* 809FADB8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 809FADBC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 809FADC0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 809FADC4  88 1D 17 21 */	lbz r0, 0x1721(r29)
/* 809FADC8  28 00 00 00 */	cmplwi r0, 0
/* 809FADCC  41 82 00 1C */	beq lbl_809FADE8
/* 809FADD0  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 809FADD4  C0 1F 01 34 */	lfs f0, 0x134(r31)
/* 809FADD8  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 809FADDC  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 809FADE0  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 809FADE4  48 00 00 24 */	b lbl_809FAE08
lbl_809FADE8:
/* 809FADE8  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 809FADEC  2C 00 00 02 */	cmpwi r0, 2
/* 809FADF0  40 82 00 18 */	bne lbl_809FAE08
/* 809FADF4  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 809FADF8  C0 1F 01 34 */	lfs f0, 0x134(r31)
/* 809FADFC  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 809FAE00  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 809FAE04  D0 01 00 60 */	stfs f0, 0x60(r1)
lbl_809FAE08:
/* 809FAE08  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 809FAE0C  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 809FAE10  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 809FAE14  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 809FAE18  4C 40 13 82 */	cror 2, 0, 2
/* 809FAE1C  40 82 00 20 */	bne lbl_809FAE3C
/* 809FAE20  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 809FAE24  D0 1D 16 F8 */	stfs f0, 0x16f8(r29)
/* 809FAE28  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 809FAE2C  D0 1D 16 FC */	stfs f0, 0x16fc(r29)
/* 809FAE30  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 809FAE34  D0 1D 17 00 */	stfs f0, 0x1700(r29)
/* 809FAE38  48 00 00 70 */	b lbl_809FAEA8
lbl_809FAE3C:
/* 809FAE3C  38 61 00 28 */	addi r3, r1, 0x28
/* 809FAE40  38 9D 16 F8 */	addi r4, r29, 0x16f8
/* 809FAE44  38 A1 00 58 */	addi r5, r1, 0x58
/* 809FAE48  4B 86 BC EC */	b __mi__4cXyzCFRC3Vec
/* 809FAE4C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 809FAE50  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 809FAE54  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 809FAE58  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 809FAE5C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 809FAE60  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 809FAE64  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 809FAE68  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 809FAE6C  38 61 00 4C */	addi r3, r1, 0x4c
/* 809FAE70  7C 64 1B 78 */	mr r4, r3
/* 809FAE74  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 809FAE78  EC 20 08 28 */	fsubs f1, f0, f1
/* 809FAE7C  4B 94 C2 5C */	b PSVECScale
/* 809FAE80  38 61 00 1C */	addi r3, r1, 0x1c
/* 809FAE84  38 81 00 58 */	addi r4, r1, 0x58
/* 809FAE88  38 A1 00 4C */	addi r5, r1, 0x4c
/* 809FAE8C  4B 86 BC 58 */	b __pl__4cXyzCFRC3Vec
/* 809FAE90  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 809FAE94  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 809FAE98  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 809FAE9C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 809FAEA0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 809FAEA4  D0 01 00 60 */	stfs f0, 0x60(r1)
lbl_809FAEA8:
/* 809FAEA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809FAEAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809FAEB0  A8 9D 0D 7A */	lha r4, 0xd7a(r29)
/* 809FAEB4  4B 61 15 28 */	b mDoMtx_YrotS__FPA4_fs
/* 809FAEB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809FAEBC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809FAEC0  38 81 00 58 */	addi r4, r1, 0x58
/* 809FAEC4  7C 85 23 78 */	mr r5, r4
/* 809FAEC8  4B 94 BE A4 */	b PSMTXMultVec
/* 809FAECC  38 61 00 10 */	addi r3, r1, 0x10
/* 809FAED0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 809FAED4  38 A1 00 58 */	addi r5, r1, 0x58
/* 809FAED8  4B 86 BC 0C */	b __pl__4cXyzCFRC3Vec
/* 809FAEDC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 809FAEE0  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 809FAEE4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 809FAEE8  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 809FAEEC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 809FAEF0  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 809FAEF4  88 1E 00 5C */	lbz r0, 0x5c(r30)
/* 809FAEF8  7C 00 07 75 */	extsb. r0, r0
/* 809FAEFC  40 82 00 30 */	bne lbl_809FAF2C
/* 809FAF00  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 809FAF04  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 809FAF08  38 7E 00 60 */	addi r3, r30, 0x60
/* 809FAF0C  D0 03 00 04 */	stfs f0, 4(r3)
/* 809FAF10  D0 03 00 08 */	stfs f0, 8(r3)
/* 809FAF14  3C 80 80 A0 */	lis r4, __dt__4cXyzFv@ha
/* 809FAF18  38 84 F1 E0 */	addi r4, r4, __dt__4cXyzFv@l
/* 809FAF1C  38 BE 00 50 */	addi r5, r30, 0x50
/* 809FAF20  4B FF E0 F9 */	bl __register_global_object
/* 809FAF24  38 00 00 01 */	li r0, 1
/* 809FAF28  98 1E 00 5C */	stb r0, 0x5c(r30)
lbl_809FAF2C:
/* 809FAF2C  7F A3 EB 78 */	mr r3, r29
/* 809FAF30  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 809FAF34  81 8C 00 70 */	lwz r12, 0x70(r12)
/* 809FAF38  7D 89 03 A6 */	mtctr r12
/* 809FAF3C  4E 80 04 21 */	bctrl 
/* 809FAF40  C0 3F 01 3C */	lfs f1, 0x13c(r31)
/* 809FAF44  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 809FAF48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809FAF4C  40 80 00 24 */	bge lbl_809FAF70
/* 809FAF50  7F A3 EB 78 */	mr r3, r29
/* 809FAF54  38 9E 00 60 */	addi r4, r30, 0x60
/* 809FAF58  C0 3F 01 40 */	lfs f1, 0x140(r31)
/* 809FAF5C  C0 5F 01 44 */	lfs f2, 0x144(r31)
/* 809FAF60  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 809FAF64  81 8C 00 78 */	lwz r12, 0x78(r12)
/* 809FAF68  7D 89 03 A6 */	mtctr r12
/* 809FAF6C  4E 80 04 21 */	bctrl 
lbl_809FAF70:
/* 809FAF70  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 809FAF74  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 809FAF78  39 61 00 90 */	addi r11, r1, 0x90
/* 809FAF7C  4B 96 72 A0 */	b _restgpr_26
/* 809FAF80  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 809FAF84  7C 08 03 A6 */	mtlr r0
/* 809FAF88  38 21 00 A0 */	addi r1, r1, 0xa0
/* 809FAF8C  4E 80 00 20 */	blr 

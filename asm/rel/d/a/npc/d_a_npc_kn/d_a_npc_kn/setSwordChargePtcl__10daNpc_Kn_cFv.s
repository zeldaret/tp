lbl_80A37670:
/* 80A37670  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80A37674  7C 08 02 A6 */	mflr r0
/* 80A37678  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80A3767C  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80A37680  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 80A37684  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 80A37688  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 80A3768C  39 61 00 90 */	addi r11, r1, 0x90
/* 80A37690  4B 92 AB 44 */	b _savegpr_27
/* 80A37694  7C 7F 1B 78 */	mr r31, r3
/* 80A37698  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha
/* 80A3769C  3B 83 08 C8 */	addi r28, r3, mCcDObjData__10daNpc_Kn_c@l
/* 80A376A0  3C 60 80 A4 */	lis r3, lit_1109@ha
/* 80A376A4  3B A3 32 C0 */	addi r29, r3, lit_1109@l
/* 80A376A8  80 1F 0B B0 */	lwz r0, 0xbb0(r31)
/* 80A376AC  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A376B0  40 82 04 30 */	bne lbl_80A37AE0
/* 80A376B4  80 1F 0B B8 */	lwz r0, 0xbb8(r31)
/* 80A376B8  2C 00 00 00 */	cmpwi r0, 0
/* 80A376BC  40 82 04 24 */	bne lbl_80A37AE0
/* 80A376C0  38 60 00 00 */	li r3, 0
/* 80A376C4  40 82 00 14 */	bne lbl_80A376D8
/* 80A376C8  80 1F 0B BC */	lwz r0, 0xbbc(r31)
/* 80A376CC  2C 00 FF FF */	cmpwi r0, -1
/* 80A376D0  40 82 00 08 */	bne lbl_80A376D8
/* 80A376D4  38 60 00 01 */	li r3, 1
lbl_80A376D8:
/* 80A376D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A376DC  40 82 04 04 */	bne lbl_80A37AE0
/* 80A376E0  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80A376E4  C3 E3 00 1C */	lfs f31, 0x1c(r3)
/* 80A376E8  C0 1C 01 E0 */	lfs f0, 0x1e0(r28)
/* 80A376EC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80A376F0  4C 41 13 82 */	cror 2, 1, 2
/* 80A376F4  40 82 02 DC */	bne lbl_80A379D0
/* 80A376F8  C0 1C 01 E4 */	lfs f0, 0x1e4(r28)
/* 80A376FC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80A37700  40 80 02 D0 */	bge lbl_80A379D0
/* 80A37704  88 1D 01 28 */	lbz r0, 0x128(r29)
/* 80A37708  7C 00 07 75 */	extsb. r0, r0
/* 80A3770C  40 82 00 34 */	bne lbl_80A37740
/* 80A37710  C0 1C 01 E8 */	lfs f0, 0x1e8(r28)
/* 80A37714  D0 1D 01 2C */	stfs f0, 0x12c(r29)
/* 80A37718  C0 1C 01 EC */	lfs f0, 0x1ec(r28)
/* 80A3771C  38 7D 01 2C */	addi r3, r29, 0x12c
/* 80A37720  D0 03 00 04 */	stfs f0, 4(r3)
/* 80A37724  D0 03 00 08 */	stfs f0, 8(r3)
/* 80A37728  3C 80 80 A4 */	lis r4, __dt__4cXyzFv@ha
/* 80A3772C  38 84 B7 60 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A37730  38 BD 01 1C */	addi r5, r29, 0x11c
/* 80A37734  4B FF 32 65 */	bl __register_global_object
/* 80A37738  38 00 00 01 */	li r0, 1
/* 80A3773C  98 1D 01 28 */	stb r0, 0x128(r29)
lbl_80A37740:
/* 80A37740  88 1D 01 44 */	lbz r0, 0x144(r29)
/* 80A37744  7C 00 07 75 */	extsb. r0, r0
/* 80A37748  40 82 00 34 */	bne lbl_80A3777C
/* 80A3774C  C0 1C 01 F0 */	lfs f0, 0x1f0(r28)
/* 80A37750  D0 1D 01 48 */	stfs f0, 0x148(r29)
/* 80A37754  C0 1C 00 38 */	lfs f0, 0x38(r28)
/* 80A37758  38 7D 01 48 */	addi r3, r29, 0x148
/* 80A3775C  D0 03 00 04 */	stfs f0, 4(r3)
/* 80A37760  D0 03 00 08 */	stfs f0, 8(r3)
/* 80A37764  3C 80 80 A4 */	lis r4, __dt__4cXyzFv@ha
/* 80A37768  38 84 B7 60 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A3776C  38 BD 01 38 */	addi r5, r29, 0x138
/* 80A37770  4B FF 32 29 */	bl __register_global_object
/* 80A37774  38 00 00 01 */	li r0, 1
/* 80A37778  98 1D 01 44 */	stb r0, 0x144(r29)
lbl_80A3777C:
/* 80A3777C  FF C0 F8 90 */	fmr f30, f31
/* 80A37780  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A37784  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80A37788  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80A3778C  38 00 00 FF */	li r0, 0xff
/* 80A37790  90 01 00 08 */	stw r0, 8(r1)
/* 80A37794  38 80 00 00 */	li r4, 0
/* 80A37798  90 81 00 0C */	stw r4, 0xc(r1)
/* 80A3779C  38 00 FF FF */	li r0, -1
/* 80A377A0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A377A4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80A377A8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80A377AC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80A377B0  80 9F 15 D4 */	lwz r4, 0x15d4(r31)
/* 80A377B4  38 A0 00 00 */	li r5, 0
/* 80A377B8  38 C0 03 68 */	li r6, 0x368
/* 80A377BC  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80A377C0  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80A377C4  39 20 00 00 */	li r9, 0
/* 80A377C8  39 40 00 00 */	li r10, 0
/* 80A377CC  C0 3C 00 44 */	lfs f1, 0x44(r28)
/* 80A377D0  4B 61 5C FC */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80A377D4  90 7F 15 D4 */	stw r3, 0x15d4(r31)
/* 80A377D8  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80A377DC  38 63 02 10 */	addi r3, r3, 0x210
/* 80A377E0  80 9F 15 D4 */	lwz r4, 0x15d4(r31)
/* 80A377E4  4B 61 41 34 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80A377E8  7C 7B 1B 79 */	or. r27, r3, r3
/* 80A377EC  41 82 00 70 */	beq lbl_80A3785C
/* 80A377F0  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80A377F4  80 63 00 04 */	lwz r3, 4(r3)
/* 80A377F8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A377FC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A37800  38 63 02 70 */	addi r3, r3, 0x270
/* 80A37804  38 9B 00 68 */	addi r4, r27, 0x68
/* 80A37808  38 BB 00 A4 */	addi r5, r27, 0xa4
/* 80A3780C  4B 84 8F D4 */	b func_802807E0
/* 80A37810  38 7D 01 2C */	addi r3, r29, 0x12c
/* 80A37814  E0 23 00 00 */	psq_l f1, 0(r3), 0, 0 /* qr0 */
/* 80A37818  C0 03 00 08 */	lfs f0, 8(r3)
/* 80A3781C  F0 21 00 50 */	psq_st f1, 80(r1), 0, 0 /* qr0 */
/* 80A37820  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80A37824  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 80A37828  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80A3782C  D0 1B 00 B0 */	stfs f0, 0xb0(r27)
/* 80A37830  D0 3B 00 B4 */	stfs f1, 0xb4(r27)
/* 80A37834  38 7D 01 48 */	addi r3, r29, 0x148
/* 80A37838  E0 03 00 00 */	psq_l f0, 0(r3), 0, 0 /* qr0 */
/* 80A3783C  C0 23 00 08 */	lfs f1, 8(r3)
/* 80A37840  F0 01 00 44 */	psq_st f0, 68(r1), 0, 0 /* qr0 */
/* 80A37844  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80A37848  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80A3784C  D0 1B 00 0C */	stfs f0, 0xc(r27)
/* 80A37850  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80A37854  D0 1B 00 10 */	stfs f0, 0x10(r27)
/* 80A37858  D0 3B 00 14 */	stfs f1, 0x14(r27)
lbl_80A3785C:
/* 80A3785C  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80A37860  80 63 00 04 */	lwz r3, 4(r3)
/* 80A37864  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A37868  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A3786C  38 63 02 70 */	addi r3, r3, 0x270
/* 80A37870  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80A37874  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80A37878  4B 90 EC 38 */	b PSMTXCopy
/* 80A3787C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A37880  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A37884  3C 80 80 43 */	lis r4, BaseX__4cXyz@ha
/* 80A37888  38 84 0D 0C */	addi r4, r4, BaseX__4cXyz@l
/* 80A3788C  38 A1 00 68 */	addi r5, r1, 0x68
/* 80A37890  4B 90 F5 BC */	b PSMTXMultVecSR
/* 80A37894  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A37898  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A3789C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A378A0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80A378A4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80A378A8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80A378AC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80A378B0  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80A378B4  C0 1C 01 F4 */	lfs f0, 0x1f4(r28)
/* 80A378B8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80A378BC  4C 41 13 82 */	cror 2, 1, 2
/* 80A378C0  40 82 00 08 */	bne lbl_80A378C8
/* 80A378C4  FF C0 00 90 */	fmr f30, f0
lbl_80A378C8:
/* 80A378C8  38 61 00 38 */	addi r3, r1, 0x38
/* 80A378CC  38 81 00 68 */	addi r4, r1, 0x68
/* 80A378D0  C0 1C 00 44 */	lfs f0, 0x44(r28)
/* 80A378D4  EC 20 F0 2A */	fadds f1, f0, f30
/* 80A378D8  C0 1C 01 E0 */	lfs f0, 0x1e0(r28)
/* 80A378DC  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A378E0  4B 82 F2 A4 */	b __ml__4cXyzCFf
/* 80A378E4  38 61 00 2C */	addi r3, r1, 0x2c
/* 80A378E8  38 81 00 38 */	addi r4, r1, 0x38
/* 80A378EC  C0 3C 01 F8 */	lfs f1, 0x1f8(r28)
/* 80A378F0  4B 82 F2 94 */	b __ml__4cXyzCFf
/* 80A378F4  38 61 00 20 */	addi r3, r1, 0x20
/* 80A378F8  38 81 00 5C */	addi r4, r1, 0x5c
/* 80A378FC  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80A37900  4B 82 F1 E4 */	b __pl__4cXyzCFRC3Vec
/* 80A37904  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80A37908  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80A3790C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80A37910  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80A37914  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80A37918  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80A3791C  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80A37920  38 00 00 FF */	li r0, 0xff
/* 80A37924  90 01 00 08 */	stw r0, 8(r1)
/* 80A37928  38 80 00 00 */	li r4, 0
/* 80A3792C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80A37930  38 00 FF FF */	li r0, -1
/* 80A37934  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A37938  90 81 00 14 */	stw r4, 0x14(r1)
/* 80A3793C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80A37940  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80A37944  80 9F 15 D8 */	lwz r4, 0x15d8(r31)
/* 80A37948  38 A0 00 00 */	li r5, 0
/* 80A3794C  38 C0 03 6A */	li r6, 0x36a
/* 80A37950  38 E1 00 68 */	addi r7, r1, 0x68
/* 80A37954  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80A37958  39 20 00 00 */	li r9, 0
/* 80A3795C  39 40 00 00 */	li r10, 0
/* 80A37960  C0 3C 00 44 */	lfs f1, 0x44(r28)
/* 80A37964  4B 61 5B 68 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80A37968  90 7F 15 D8 */	stw r3, 0x15d8(r31)
/* 80A3796C  C0 1C 01 F4 */	lfs f0, 0x1f4(r28)
/* 80A37970  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80A37974  4C 41 13 82 */	cror 2, 1, 2
/* 80A37978  40 82 01 68 */	bne lbl_80A37AE0
/* 80A3797C  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80A37980  38 00 00 FF */	li r0, 0xff
/* 80A37984  90 01 00 08 */	stw r0, 8(r1)
/* 80A37988  38 80 00 00 */	li r4, 0
/* 80A3798C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80A37990  38 00 FF FF */	li r0, -1
/* 80A37994  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A37998  90 81 00 14 */	stw r4, 0x14(r1)
/* 80A3799C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80A379A0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80A379A4  80 9F 15 DC */	lwz r4, 0x15dc(r31)
/* 80A379A8  38 A0 00 00 */	li r5, 0
/* 80A379AC  38 C0 03 6B */	li r6, 0x36b
/* 80A379B0  38 E1 00 68 */	addi r7, r1, 0x68
/* 80A379B4  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80A379B8  39 20 00 00 */	li r9, 0
/* 80A379BC  39 40 00 00 */	li r10, 0
/* 80A379C0  C0 3C 00 44 */	lfs f1, 0x44(r28)
/* 80A379C4  4B 61 5B 08 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80A379C8  90 7F 15 DC */	stw r3, 0x15dc(r31)
/* 80A379CC  48 00 01 14 */	b lbl_80A37AE0
lbl_80A379D0:
/* 80A379D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A379D4  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80A379D8  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80A379DC  38 63 02 10 */	addi r3, r3, 0x210
/* 80A379E0  80 9F 15 D4 */	lwz r4, 0x15d4(r31)
/* 80A379E4  4B 61 3F 34 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80A379E8  28 03 00 00 */	cmplwi r3, 0
/* 80A379EC  41 82 00 AC */	beq lbl_80A37A98
/* 80A379F0  8B A3 00 BB */	lbz r29, 0xbb(r3)
/* 80A379F4  28 1D 00 11 */	cmplwi r29, 0x11
/* 80A379F8  40 81 00 98 */	ble lbl_80A37A90
/* 80A379FC  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80A37A00  38 00 00 FF */	li r0, 0xff
/* 80A37A04  90 01 00 08 */	stw r0, 8(r1)
/* 80A37A08  38 80 00 00 */	li r4, 0
/* 80A37A0C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80A37A10  38 00 FF FF */	li r0, -1
/* 80A37A14  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A37A18  90 81 00 14 */	stw r4, 0x14(r1)
/* 80A37A1C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80A37A20  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80A37A24  80 9F 15 D4 */	lwz r4, 0x15d4(r31)
/* 80A37A28  38 A0 00 00 */	li r5, 0
/* 80A37A2C  38 C0 03 68 */	li r6, 0x368
/* 80A37A30  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80A37A34  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80A37A38  39 20 00 00 */	li r9, 0
/* 80A37A3C  39 40 00 00 */	li r10, 0
/* 80A37A40  C0 3C 00 44 */	lfs f1, 0x44(r28)
/* 80A37A44  4B 61 5A 88 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80A37A48  90 7F 15 D4 */	stw r3, 0x15d4(r31)
/* 80A37A4C  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80A37A50  38 63 02 10 */	addi r3, r3, 0x210
/* 80A37A54  80 9F 15 D4 */	lwz r4, 0x15d4(r31)
/* 80A37A58  4B 61 3E C0 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80A37A5C  7C 7C 1B 79 */	or. r28, r3, r3
/* 80A37A60  41 82 00 38 */	beq lbl_80A37A98
/* 80A37A64  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80A37A68  80 63 00 04 */	lwz r3, 4(r3)
/* 80A37A6C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A37A70  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A37A74  38 63 02 70 */	addi r3, r3, 0x270
/* 80A37A78  38 9C 00 68 */	addi r4, r28, 0x68
/* 80A37A7C  38 BC 00 A4 */	addi r5, r28, 0xa4
/* 80A37A80  4B 84 8D 60 */	b func_802807E0
/* 80A37A84  38 1D FF EF */	addi r0, r29, -17
/* 80A37A88  98 1C 00 BB */	stb r0, 0xbb(r28)
/* 80A37A8C  48 00 00 0C */	b lbl_80A37A98
lbl_80A37A90:
/* 80A37A90  38 00 00 00 */	li r0, 0
/* 80A37A94  98 03 00 BB */	stb r0, 0xbb(r3)
lbl_80A37A98:
/* 80A37A98  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80A37A9C  38 63 02 10 */	addi r3, r3, 0x210
/* 80A37AA0  80 9F 15 D8 */	lwz r4, 0x15d8(r31)
/* 80A37AA4  4B 61 3E 74 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80A37AA8  28 03 00 00 */	cmplwi r3, 0
/* 80A37AAC  41 82 00 10 */	beq lbl_80A37ABC
/* 80A37AB0  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80A37AB4  60 00 00 04 */	ori r0, r0, 4
/* 80A37AB8  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_80A37ABC:
/* 80A37ABC  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80A37AC0  38 63 02 10 */	addi r3, r3, 0x210
/* 80A37AC4  80 9F 15 DC */	lwz r4, 0x15dc(r31)
/* 80A37AC8  4B 61 3E 50 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80A37ACC  28 03 00 00 */	cmplwi r3, 0
/* 80A37AD0  41 82 00 10 */	beq lbl_80A37AE0
/* 80A37AD4  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80A37AD8  60 00 00 04 */	ori r0, r0, 4
/* 80A37ADC  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_80A37AE0:
/* 80A37AE0  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 80A37AE4  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 80A37AE8  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 80A37AEC  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 80A37AF0  39 61 00 90 */	addi r11, r1, 0x90
/* 80A37AF4  4B 92 A7 2C */	b _restgpr_27
/* 80A37AF8  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80A37AFC  7C 08 03 A6 */	mtlr r0
/* 80A37B00  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80A37B04  4E 80 00 20 */	blr 

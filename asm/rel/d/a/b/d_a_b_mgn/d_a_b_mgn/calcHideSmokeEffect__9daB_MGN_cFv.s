lbl_80606D60:
/* 80606D60  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80606D64  7C 08 02 A6 */	mflr r0
/* 80606D68  90 01 00 84 */	stw r0, 0x84(r1)
/* 80606D6C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80606D70  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80606D74  39 61 00 70 */	addi r11, r1, 0x70
/* 80606D78  4B D5 B4 41 */	bl _savegpr_20
/* 80606D7C  7C 7D 1B 78 */	mr r29, r3
/* 80606D80  3C 60 80 61 */	lis r3, lit_3928@ha /* 0x8060FDE0@ha */
/* 80606D84  3B 83 FD E0 */	addi r28, r3, lit_3928@l /* 0x8060FDE0@l */
/* 80606D88  C0 1C 00 6C */	lfs f0, 0x6c(r28)
/* 80606D8C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80606D90  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80606D94  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80606D98  C3 FC 00 08 */	lfs f31, 8(r28)
/* 80606D9C  88 1D 0A FF */	lbz r0, 0xaff(r29)
/* 80606DA0  28 00 00 05 */	cmplwi r0, 5
/* 80606DA4  41 80 00 08 */	blt lbl_80606DAC
/* 80606DA8  C3 FC 00 70 */	lfs f31, 0x70(r28)
lbl_80606DAC:
/* 80606DAC  3B 00 00 00 */	li r24, 0
/* 80606DB0  3B 20 00 00 */	li r25, 0
/* 80606DB4  3A A0 00 00 */	li r21, 0
/* 80606DB8  3A C0 00 00 */	li r22, 0
/* 80606DBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80606DC0  3A E3 61 C0 */	addi r23, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80606DC4  3F 57 00 02 */	addis r26, r23, 2
/* 80606DC8  3B 5A C2 F8 */	addi r26, r26, -15624
lbl_80606DCC:
/* 80606DCC  7F FD B2 14 */	add r31, r29, r22
/* 80606DD0  80 7F 26 24 */	lwz r3, 0x2624(r31)
/* 80606DD4  80 63 00 04 */	lwz r3, 4(r3)
/* 80606DD8  83 63 00 04 */	lwz r27, 4(r3)
/* 80606DDC  7E 9D AA 14 */	add r20, r29, r21
/* 80606DE0  A8 74 26 C0 */	lha r3, 0x26c0(r20)
/* 80606DE4  38 00 00 00 */	li r0, 0
/* 80606DE8  B0 01 00 24 */	sth r0, 0x24(r1)
/* 80606DEC  B0 61 00 26 */	sth r3, 0x26(r1)
/* 80606DF0  B0 01 00 28 */	sth r0, 0x28(r1)
/* 80606DF4  7F DD C2 14 */	add r30, r29, r24
/* 80606DF8  88 1E 26 BC */	lbz r0, 0x26bc(r30)
/* 80606DFC  28 00 00 00 */	cmplwi r0, 0
/* 80606E00  41 82 00 0C */	beq lbl_80606E0C
/* 80606E04  38 00 40 00 */	li r0, 0x4000
/* 80606E08  B0 01 00 24 */	sth r0, 0x24(r1)
lbl_80606E0C:
/* 80606E0C  88 1E 26 B8 */	lbz r0, 0x26b8(r30)
/* 80606E10  28 00 00 07 */	cmplwi r0, 7
/* 80606E14  41 81 02 DC */	bgt lbl_806070F0
/* 80606E18  3C 60 80 61 */	lis r3, lit_4763@ha /* 0x806101D4@ha */
/* 80606E1C  38 63 01 D4 */	addi r3, r3, lit_4763@l /* 0x806101D4@l */
/* 80606E20  54 00 10 3A */	slwi r0, r0, 2
/* 80606E24  7C 03 00 2E */	lwzx r0, r3, r0
/* 80606E28  7C 09 03 A6 */	mtctr r0
/* 80606E2C  4E 80 04 20 */	bctr 
lbl_80606E30:
/* 80606E30  38 00 00 02 */	li r0, 2
/* 80606E34  98 1E 26 B8 */	stb r0, 0x26b8(r30)
/* 80606E38  3C 60 80 61 */	lis r3, d_a_b_mgn__stringBase0@ha /* 0x80610084@ha */
/* 80606E3C  38 63 00 84 */	addi r3, r3, d_a_b_mgn__stringBase0@l /* 0x80610084@l */
/* 80606E40  38 80 00 06 */	li r4, 6
/* 80606E44  7F 45 D3 78 */	mr r5, r26
/* 80606E48  38 C0 00 80 */	li r6, 0x80
/* 80606E4C  4B A3 54 A1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80606E50  7C 64 1B 78 */	mr r4, r3
/* 80606E54  80 7F 26 24 */	lwz r3, 0x2624(r31)
/* 80606E58  38 A0 00 00 */	li r5, 0
/* 80606E5C  C0 3C 00 04 */	lfs f1, 4(r28)
/* 80606E60  FC 40 F8 90 */	fmr f2, f31
/* 80606E64  FC 60 08 90 */	fmr f3, f1
/* 80606E68  C0 9C 00 74 */	lfs f4, 0x74(r28)
/* 80606E6C  4B A0 A0 05 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80606E70  38 7B 00 58 */	addi r3, r27, 0x58
/* 80606E74  80 9F 26 34 */	lwz r4, 0x2634(r31)
/* 80606E78  80 84 00 14 */	lwz r4, 0x14(r4)
/* 80606E7C  4B D2 8A 05 */	bl removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
/* 80606E80  3C 60 80 61 */	lis r3, d_a_b_mgn__stringBase0@ha /* 0x80610084@ha */
/* 80606E84  38 63 00 84 */	addi r3, r3, d_a_b_mgn__stringBase0@l /* 0x80610084@l */
/* 80606E88  38 80 00 0D */	li r4, 0xd
/* 80606E8C  7F 45 D3 78 */	mr r5, r26
/* 80606E90  38 C0 00 80 */	li r6, 0x80
/* 80606E94  4B A3 54 59 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80606E98  7C 65 1B 78 */	mr r5, r3
/* 80606E9C  80 7F 26 34 */	lwz r3, 0x2634(r31)
/* 80606EA0  38 9B 00 58 */	addi r4, r27, 0x58
/* 80606EA4  38 C0 00 01 */	li r6, 1
/* 80606EA8  38 E0 00 00 */	li r7, 0
/* 80606EAC  FC 20 F8 90 */	fmr f1, f31
/* 80606EB0  39 00 00 00 */	li r8, 0
/* 80606EB4  39 20 FF FF */	li r9, -1
/* 80606EB8  4B A0 68 55 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80606EBC  38 7B 00 58 */	addi r3, r27, 0x58
/* 80606EC0  80 9F 26 54 */	lwz r4, 0x2654(r31)
/* 80606EC4  80 84 00 14 */	lwz r4, 0x14(r4)
/* 80606EC8  4B D2 88 ED */	bl removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
/* 80606ECC  3C 60 80 61 */	lis r3, d_a_b_mgn__stringBase0@ha /* 0x80610084@ha */
/* 80606ED0  38 63 00 84 */	addi r3, r3, d_a_b_mgn__stringBase0@l /* 0x80610084@l */
/* 80606ED4  38 80 00 10 */	li r4, 0x10
/* 80606ED8  7F 45 D3 78 */	mr r5, r26
/* 80606EDC  38 C0 00 80 */	li r6, 0x80
/* 80606EE0  4B A3 54 0D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80606EE4  7C 65 1B 78 */	mr r5, r3
/* 80606EE8  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 80606EEC  80 63 00 04 */	lwz r3, 4(r3)
/* 80606EF0  80 83 00 04 */	lwz r4, 4(r3)
/* 80606EF4  80 7F 26 54 */	lwz r3, 0x2654(r31)
/* 80606EF8  38 84 00 58 */	addi r4, r4, 0x58
/* 80606EFC  38 C0 00 01 */	li r6, 1
/* 80606F00  38 E0 00 02 */	li r7, 2
/* 80606F04  FC 20 F8 90 */	fmr f1, f31
/* 80606F08  39 00 00 00 */	li r8, 0
/* 80606F0C  39 20 FF FF */	li r9, -1
/* 80606F10  4B A0 67 2D */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80606F14  38 7B 00 58 */	addi r3, r27, 0x58
/* 80606F18  80 9F 26 44 */	lwz r4, 0x2644(r31)
/* 80606F1C  80 84 00 14 */	lwz r4, 0x14(r4)
/* 80606F20  4B D2 89 61 */	bl removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
/* 80606F24  3C 60 80 61 */	lis r3, d_a_b_mgn__stringBase0@ha /* 0x80610084@ha */
/* 80606F28  38 63 00 84 */	addi r3, r3, d_a_b_mgn__stringBase0@l /* 0x80610084@l */
/* 80606F2C  38 80 00 0C */	li r4, 0xc
/* 80606F30  7F 45 D3 78 */	mr r5, r26
/* 80606F34  38 C0 00 80 */	li r6, 0x80
/* 80606F38  4B A3 53 B5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80606F3C  7C 65 1B 78 */	mr r5, r3
/* 80606F40  80 7F 26 44 */	lwz r3, 0x2644(r31)
/* 80606F44  38 9B 00 58 */	addi r4, r27, 0x58
/* 80606F48  38 C0 00 01 */	li r6, 1
/* 80606F4C  38 E0 00 00 */	li r7, 0
/* 80606F50  C0 3C 00 04 */	lfs f1, 4(r28)
/* 80606F54  39 00 00 00 */	li r8, 0
/* 80606F58  39 20 FF FF */	li r9, -1
/* 80606F5C  4B A0 67 B1 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80606F60  38 00 00 01 */	li r0, 1
/* 80606F64  98 1E 26 B4 */	stb r0, 0x26b4(r30)
lbl_80606F68:
/* 80606F68  3B 79 26 64 */	addi r27, r25, 0x2664
/* 80606F6C  7F 7D DA 14 */	add r27, r29, r27
/* 80606F70  7F 63 DB 78 */	mr r3, r27
/* 80606F74  80 97 5D AC */	lwz r4, 0x5dac(r23)
/* 80606F78  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80606F7C  4B C6 9C 89 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80606F80  7C 64 1B 78 */	mr r4, r3
/* 80606F84  38 74 26 C0 */	addi r3, r20, 0x26c0
/* 80606F88  38 A0 00 10 */	li r5, 0x10
/* 80606F8C  38 C0 01 00 */	li r6, 0x100
/* 80606F90  38 E0 00 20 */	li r7, 0x20
/* 80606F94  4B C6 95 AD */	bl cLib_addCalcAngleS__FPsssss
/* 80606F98  80 77 5D 3C */	lwz r3, 0x5d3c(r23)
/* 80606F9C  38 00 00 FF */	li r0, 0xff
/* 80606FA0  90 01 00 08 */	stw r0, 8(r1)
/* 80606FA4  38 80 00 00 */	li r4, 0
/* 80606FA8  90 81 00 0C */	stw r4, 0xc(r1)
/* 80606FAC  38 00 FF FF */	li r0, -1
/* 80606FB0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80606FB4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80606FB8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80606FBC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80606FC0  80 9F 26 A4 */	lwz r4, 0x26a4(r31)
/* 80606FC4  38 A0 00 00 */	li r5, 0
/* 80606FC8  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008A15@ha */
/* 80606FCC  38 C6 8A 15 */	addi r6, r6, 0x8A15 /* 0x00008A15@l */
/* 80606FD0  7F 67 DB 78 */	mr r7, r27
/* 80606FD4  39 1D 01 0C */	addi r8, r29, 0x10c
/* 80606FD8  39 21 00 24 */	addi r9, r1, 0x24
/* 80606FDC  39 41 00 2C */	addi r10, r1, 0x2c
/* 80606FE0  C0 3C 00 08 */	lfs f1, 8(r28)
/* 80606FE4  4B A4 64 E9 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80606FE8  90 7F 26 A4 */	stw r3, 0x26a4(r31)
/* 80606FEC  48 00 01 04 */	b lbl_806070F0
lbl_80606FF0:
/* 80606FF0  80 77 5D 3C */	lwz r3, 0x5d3c(r23)
/* 80606FF4  38 80 00 00 */	li r4, 0
/* 80606FF8  90 81 00 08 */	stw r4, 8(r1)
/* 80606FFC  38 00 FF FF */	li r0, -1
/* 80607000  90 01 00 0C */	stw r0, 0xc(r1)
/* 80607004  90 81 00 10 */	stw r4, 0x10(r1)
/* 80607008  90 81 00 14 */	stw r4, 0x14(r1)
/* 8060700C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80607010  38 80 00 00 */	li r4, 0
/* 80607014  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008A14@ha */
/* 80607018  38 A5 8A 14 */	addi r5, r5, 0x8A14 /* 0x00008A14@l */
/* 8060701C  38 D9 26 64 */	addi r6, r25, 0x2664
/* 80607020  7C DD 32 14 */	add r6, r29, r6
/* 80607024  38 FD 01 0C */	addi r7, r29, 0x10c
/* 80607028  39 01 00 24 */	addi r8, r1, 0x24
/* 8060702C  39 21 00 2C */	addi r9, r1, 0x2c
/* 80607030  39 40 00 FF */	li r10, 0xff
/* 80607034  C0 3C 00 08 */	lfs f1, 8(r28)
/* 80607038  4B A4 5A 59 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_8060703C:
/* 8060703C  38 00 00 04 */	li r0, 4
/* 80607040  98 1E 26 B8 */	stb r0, 0x26b8(r30)
/* 80607044  38 7B 00 58 */	addi r3, r27, 0x58
/* 80607048  80 9F 26 34 */	lwz r4, 0x2634(r31)
/* 8060704C  80 84 00 14 */	lwz r4, 0x14(r4)
/* 80607050  4B D2 88 31 */	bl removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
/* 80607054  3C 60 80 61 */	lis r3, d_a_b_mgn__stringBase0@ha /* 0x80610084@ha */
/* 80607058  38 63 00 84 */	addi r3, r3, d_a_b_mgn__stringBase0@l /* 0x80610084@l */
/* 8060705C  38 80 00 0D */	li r4, 0xd
/* 80607060  7F 45 D3 78 */	mr r5, r26
/* 80607064  38 C0 00 80 */	li r6, 0x80
/* 80607068  4B A3 52 85 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8060706C  7C 65 1B 78 */	mr r5, r3
/* 80607070  80 7F 26 34 */	lwz r3, 0x2634(r31)
/* 80607074  38 9B 00 58 */	addi r4, r27, 0x58
/* 80607078  38 C0 00 01 */	li r6, 1
/* 8060707C  38 E0 00 00 */	li r7, 0
/* 80607080  C0 3C 00 74 */	lfs f1, 0x74(r28)
/* 80607084  39 00 00 00 */	li r8, 0
/* 80607088  39 20 FF FF */	li r9, -1
/* 8060708C  4B A0 66 81 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80607090  38 00 00 01 */	li r0, 1
/* 80607094  98 1E 26 B4 */	stb r0, 0x26b4(r30)
lbl_80607098:
/* 80607098  80 7F 26 34 */	lwz r3, 0x2634(r31)
/* 8060709C  38 80 00 01 */	li r4, 1
/* 806070A0  88 03 00 05 */	lbz r0, 5(r3)
/* 806070A4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806070A8  40 82 00 18 */	bne lbl_806070C0
/* 806070AC  C0 3C 00 04 */	lfs f1, 4(r28)
/* 806070B0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806070B4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806070B8  41 82 00 08 */	beq lbl_806070C0
/* 806070BC  38 80 00 00 */	li r4, 0
lbl_806070C0:
/* 806070C0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806070C4  41 82 00 2C */	beq lbl_806070F0
/* 806070C8  38 00 00 00 */	li r0, 0
/* 806070CC  98 1E 26 B8 */	stb r0, 0x26b8(r30)
/* 806070D0  98 1E 26 B4 */	stb r0, 0x26b4(r30)
/* 806070D4  48 00 00 1C */	b lbl_806070F0
lbl_806070D8:
/* 806070D8  38 00 00 06 */	li r0, 6
/* 806070DC  98 1E 26 B8 */	stb r0, 0x26b8(r30)
/* 806070E0  80 7F 26 44 */	lwz r3, 0x2644(r31)
/* 806070E4  D3 E3 00 0C */	stfs f31, 0xc(r3)
/* 806070E8  38 00 00 01 */	li r0, 1
/* 806070EC  98 1E 26 B4 */	stb r0, 0x26b4(r30)
lbl_806070F0:
/* 806070F0  88 1E 26 B4 */	lbz r0, 0x26b4(r30)
/* 806070F4  28 00 00 00 */	cmplwi r0, 0
/* 806070F8  41 82 00 94 */	beq lbl_8060718C
/* 806070FC  80 7F 26 24 */	lwz r3, 0x2624(r31)
/* 80607100  38 80 00 00 */	li r4, 0
/* 80607104  38 A0 00 00 */	li r5, 0
/* 80607108  4B A0 9F A9 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 8060710C  38 79 26 64 */	addi r3, r25, 0x2664
/* 80607110  7C 7D 1A 14 */	add r3, r29, r3
/* 80607114  4B A0 5C 51 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80607118  38 61 00 24 */	addi r3, r1, 0x24
/* 8060711C  4B A0 5E 29 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80607120  38 61 00 2C */	addi r3, r1, 0x2c
/* 80607124  4B A0 5D 4D */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80607128  80 7F 26 24 */	lwz r3, 0x2624(r31)
/* 8060712C  80 83 00 04 */	lwz r4, 4(r3)
/* 80607130  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80607134  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80607138  38 84 00 24 */	addi r4, r4, 0x24
/* 8060713C  4B D3 F3 75 */	bl PSMTXCopy
/* 80607140  80 7F 26 24 */	lwz r3, 0x2624(r31)
/* 80607144  4B A0 A0 A9 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80607148  80 7F 26 34 */	lwz r3, 0x2634(r31)
/* 8060714C  4B A0 62 DD */	bl play__14mDoExt_baseAnmFv
/* 80607150  80 7F 26 44 */	lwz r3, 0x2644(r31)
/* 80607154  4B A0 62 D5 */	bl play__14mDoExt_baseAnmFv
/* 80607158  80 7F 26 54 */	lwz r3, 0x2654(r31)
/* 8060715C  4B A0 62 CD */	bl play__14mDoExt_baseAnmFv
/* 80607160  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704F9@ha */
/* 80607164  38 03 04 F9 */	addi r0, r3, 0x04F9 /* 0x000704F9@l */
/* 80607168  90 01 00 20 */	stw r0, 0x20(r1)
/* 8060716C  38 7D 09 E0 */	addi r3, r29, 0x9e0
/* 80607170  38 81 00 20 */	addi r4, r1, 0x20
/* 80607174  38 A0 00 00 */	li r5, 0
/* 80607178  38 C0 FF FF */	li r6, -1
/* 8060717C  81 9D 09 E0 */	lwz r12, 0x9e0(r29)
/* 80607180  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80607184  7D 89 03 A6 */	mtctr r12
/* 80607188  4E 80 04 21 */	bctrl 
lbl_8060718C:
/* 8060718C  3B 18 00 01 */	addi r24, r24, 1
/* 80607190  2C 18 00 04 */	cmpwi r24, 4
/* 80607194  3B 39 00 0C */	addi r25, r25, 0xc
/* 80607198  3A B5 00 02 */	addi r21, r21, 2
/* 8060719C  3A D6 00 04 */	addi r22, r22, 4
/* 806071A0  41 80 FC 2C */	blt lbl_80606DCC
/* 806071A4  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 806071A8  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 806071AC  39 61 00 70 */	addi r11, r1, 0x70
/* 806071B0  4B D5 B0 55 */	bl _restgpr_20
/* 806071B4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 806071B8  7C 08 03 A6 */	mtlr r0
/* 806071BC  38 21 00 80 */	addi r1, r1, 0x80
/* 806071C0  4E 80 00 20 */	blr 

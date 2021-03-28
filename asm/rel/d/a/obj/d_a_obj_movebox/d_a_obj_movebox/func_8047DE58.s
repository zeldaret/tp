lbl_8047DE58:
/* 8047DE58  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 8047DE5C  7C 08 02 A6 */	mflr r0
/* 8047DE60  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8047DE64  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 8047DE68  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 8047DE6C  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 8047DE70  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 8047DE74  DB A1 00 A0 */	stfd f29, 0xa0(r1)
/* 8047DE78  F3 A1 00 A8 */	psq_st f29, 168(r1), 0, 0 /* qr0 */
/* 8047DE7C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8047DE80  4B EE 43 24 */	b _savegpr_15
/* 8047DE84  7C 78 1B 78 */	mr r24, r3
/* 8047DE88  7C 99 23 78 */	mr r25, r4
/* 8047DE8C  7C BA 2B 78 */	mr r26, r5
/* 8047DE90  90 C1 00 08 */	stw r6, 8(r1)
/* 8047DE94  FF A0 08 90 */	fmr f29, f1
/* 8047DE98  A8 04 04 B6 */	lha r0, 0x4b6(r4)
/* 8047DE9C  7C 00 3A 14 */	add r0, r0, r7
/* 8047DEA0  7C 04 07 34 */	extsh r4, r0
/* 8047DEA4  38 00 FF FF */	li r0, -1
/* 8047DEA8  90 03 01 78 */	stw r0, 0x178(r3)
/* 8047DEAC  3C 60 80 45 */	lis r3, __float_max@ha
/* 8047DEB0  C0 03 0A E8 */	lfs f0, __float_max@l(r3)
/* 8047DEB4  D0 18 01 7C */	stfs f0, 0x17c(r24)
/* 8047DEB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8047DEBC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8047DEC0  7C 9D 23 78 */	mr r29, r4
/* 8047DEC4  4B B8 E5 18 */	b mDoMtx_YrotS__FPA4_fs
/* 8047DEC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8047DECC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8047DED0  38 80 40 00 */	li r4, 0x4000
/* 8047DED4  4B B8 E4 C8 */	b mDoMtx_XrotM__FPA4_fs
/* 8047DED8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8047DEDC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8047DEE0  3C 80 80 43 */	lis r4, BaseY__4cXyz@ha
/* 8047DEE4  38 84 0D 24 */	addi r4, r4, BaseY__4cXyz@l
/* 8047DEE8  38 A1 00 24 */	addi r5, r1, 0x24
/* 8047DEEC  4B EC 8E 80 */	b PSMTXMultVec
/* 8047DEF0  7F 23 CB 78 */	mr r3, r25
/* 8047DEF4  48 00 07 BD */	bl attr__Q212daObjMovebox5Act_cCFv
/* 8047DEF8  C0 23 00 78 */	lfs f1, 0x78(r3)
/* 8047DEFC  3C 60 80 48 */	lis r3, lit_3831@ha
/* 8047DF00  C0 03 10 F8 */	lfs f0, lit_3831@l(r3)
/* 8047DF04  EC 00 00 72 */	fmuls f0, f0, f1
/* 8047DF08  EC 3D 00 2A */	fadds f1, f29, f0
/* 8047DF0C  38 61 00 24 */	addi r3, r1, 0x24
/* 8047DF10  7C 64 1B 78 */	mr r4, r3
/* 8047DF14  4B EC 91 C4 */	b PSVECScale
/* 8047DF18  3B 60 00 00 */	li r27, 0
/* 8047DF1C  3A E0 00 00 */	li r23, 0
/* 8047DF20  3A C0 00 00 */	li r22, 0
/* 8047DF24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8047DF28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8047DF2C  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 8047DF30  3C 60 80 43 */	lis r3, Zero__4cXyz@ha
/* 8047DF34  3B E3 0C F4 */	addi r31, r3, Zero__4cXyz@l
/* 8047DF38  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8047DF3C  39 E3 D4 70 */	addi r15, r3, now__14mDoMtx_stack_c@l
/* 8047DF40  3C 60 80 48 */	lis r3, lit_3687@ha
/* 8047DF44  3A 03 10 E8 */	addi r16, r3, lit_3687@l
/* 8047DF48  C3 B0 00 00 */	lfs f29, 0(r16)
/* 8047DF4C  3C 60 80 48 */	lis r3, lit_3831@ha
/* 8047DF50  3A 23 10 F8 */	addi r17, r3, lit_3831@l
/* 8047DF54  7D F2 7B 78 */	mr r18, r15
/* 8047DF58  7D F3 7B 78 */	mr r19, r15
/* 8047DF5C  3C 60 80 48 */	lis r3, M_wall_work__Q212daObjMovebox5Bgc_c@ha
/* 8047DF60  3A 83 20 CC */	addi r20, r3, M_wall_work__Q212daObjMovebox5Bgc_c@l
/* 8047DF64  82 B9 00 04 */	lwz r21, 4(r25)
/* 8047DF68  48 00 01 90 */	b lbl_8047E0F8
lbl_8047DF6C:
/* 8047DF6C  7D E3 7B 78 */	mr r3, r15
/* 8047DF70  38 80 40 00 */	li r4, 0x4000
/* 8047DF74  4B B8 E3 D0 */	b mDoMtx_XrotS__FPA4_fs
/* 8047DF78  C0 3A 00 08 */	lfs f1, 8(r26)
/* 8047DF7C  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 8047DF80  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8047DF84  D3 A1 00 1C */	stfs f29, 0x1c(r1)
/* 8047DF88  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8047DF8C  7D E3 7B 78 */	mr r3, r15
/* 8047DF90  38 81 00 18 */	addi r4, r1, 0x18
/* 8047DF94  38 A1 00 30 */	addi r5, r1, 0x30
/* 8047DF98  4B EC 8D D4 */	b PSMTXMultVec
/* 8047DF9C  7D E3 7B 78 */	mr r3, r15
/* 8047DFA0  7F A4 EB 78 */	mr r4, r29
/* 8047DFA4  4B B8 E4 38 */	b mDoMtx_YrotS__FPA4_fs
/* 8047DFA8  38 61 00 30 */	addi r3, r1, 0x30
/* 8047DFAC  4B B8 EE 28 */	b transM__14mDoMtx_stack_cFRC4cXyz
/* 8047DFB0  7F 23 CB 78 */	mr r3, r25
/* 8047DFB4  48 00 06 FD */	bl attr__Q212daObjMovebox5Act_cCFv
/* 8047DFB8  C3 C3 00 70 */	lfs f30, 0x70(r3)
/* 8047DFBC  7F 23 CB 78 */	mr r3, r25
/* 8047DFC0  48 00 06 F1 */	bl attr__Q212daObjMovebox5Act_cCFv
/* 8047DFC4  C3 E3 00 64 */	lfs f31, 0x64(r3)
/* 8047DFC8  7F 23 CB 78 */	mr r3, r25
/* 8047DFCC  48 00 06 E5 */	bl attr__Q212daObjMovebox5Act_cCFv
/* 8047DFD0  C0 23 00 70 */	lfs f1, 0x70(r3)
/* 8047DFD4  FC 40 F8 90 */	fmr f2, f31
/* 8047DFD8  FC 60 F0 90 */	fmr f3, f30
/* 8047DFDC  4B B8 EE 5C */	b scaleM__14mDoMtx_stack_cFfff
/* 8047DFE0  C0 30 00 00 */	lfs f1, 0(r16)
/* 8047DFE4  C0 51 00 00 */	lfs f2, 0(r17)
/* 8047DFE8  FC 60 08 90 */	fmr f3, f1
/* 8047DFEC  4B B8 ED B0 */	b transM__14mDoMtx_stack_cFfff
/* 8047DFF0  7E 43 93 78 */	mr r3, r18
/* 8047DFF4  38 80 40 00 */	li r4, 0x4000
/* 8047DFF8  4B B8 E3 A4 */	b mDoMtx_XrotM__FPA4_fs
/* 8047DFFC  C0 3A 00 00 */	lfs f1, 0(r26)
/* 8047E000  C0 1A 00 04 */	lfs f0, 4(r26)
/* 8047E004  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8047E008  D3 A1 00 1C */	stfs f29, 0x1c(r1)
/* 8047E00C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8047E010  7E 63 9B 78 */	mr r3, r19
/* 8047E014  38 81 00 18 */	addi r4, r1, 0x18
/* 8047E018  38 A1 00 48 */	addi r5, r1, 0x48
/* 8047E01C  4B EC 8D 50 */	b PSMTXMultVec
/* 8047E020  38 61 00 48 */	addi r3, r1, 0x48
/* 8047E024  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 8047E028  7C 65 1B 78 */	mr r5, r3
/* 8047E02C  4B EC 90 64 */	b PSVECAdd
/* 8047E030  38 61 00 0C */	addi r3, r1, 0xc
/* 8047E034  38 81 00 48 */	addi r4, r1, 0x48
/* 8047E038  38 A1 00 24 */	addi r5, r1, 0x24
/* 8047E03C  4B DE 8A A8 */	b __pl__4cXyzCFRC3Vec
/* 8047E040  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8047E044  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8047E048  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8047E04C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8047E050  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8047E054  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8047E058  7F 94 B2 14 */	add r28, r20, r22
/* 8047E05C  7F 83 E3 78 */	mr r3, r28
/* 8047E060  38 81 00 48 */	addi r4, r1, 0x48
/* 8047E064  38 A1 00 3C */	addi r5, r1, 0x3c
/* 8047E068  7F 26 CB 78 */	mr r6, r25
/* 8047E06C  4B BF 9C F8 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8047E070  92 BC 00 08 */	stw r21, 8(r28)
/* 8047E074  7F C3 F3 78 */	mr r3, r30
/* 8047E078  7F 84 E3 78 */	mr r4, r28
/* 8047E07C  4B BF 63 38 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8047E080  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8047E084  41 82 00 44 */	beq lbl_8047E0C8
/* 8047E088  C0 1C 00 30 */	lfs f0, 0x30(r28)
/* 8047E08C  7C 98 BA 14 */	add r4, r24, r23
/* 8047E090  D0 04 00 64 */	stfs f0, 0x64(r4)
/* 8047E094  C0 1C 00 34 */	lfs f0, 0x34(r28)
/* 8047E098  D0 04 00 68 */	stfs f0, 0x68(r4)
/* 8047E09C  C0 1C 00 38 */	lfs f0, 0x38(r28)
/* 8047E0A0  D0 04 00 6C */	stfs f0, 0x6c(r4)
/* 8047E0A4  38 61 00 48 */	addi r3, r1, 0x48
/* 8047E0A8  38 84 00 64 */	addi r4, r4, 0x64
/* 8047E0AC  4B EC 92 F0 */	b PSVECSquareDistance
/* 8047E0B0  C0 18 01 7C */	lfs f0, 0x17c(r24)
/* 8047E0B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8047E0B8  40 80 00 30 */	bge lbl_8047E0E8
/* 8047E0BC  D0 38 01 7C */	stfs f1, 0x17c(r24)
/* 8047E0C0  93 78 01 78 */	stw r27, 0x178(r24)
/* 8047E0C4  48 00 00 24 */	b lbl_8047E0E8
lbl_8047E0C8:
/* 8047E0C8  3C 60 80 43 */	lis r3, Zero__4cXyz@ha
/* 8047E0CC  C0 03 0C F4 */	lfs f0, Zero__4cXyz@l(r3)
/* 8047E0D0  7C 78 BA 14 */	add r3, r24, r23
/* 8047E0D4  D0 03 00 64 */	stfs f0, 0x64(r3)
/* 8047E0D8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8047E0DC  D0 03 00 68 */	stfs f0, 0x68(r3)
/* 8047E0E0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8047E0E4  D0 03 00 6C */	stfs f0, 0x6c(r3)
lbl_8047E0E8:
/* 8047E0E8  3B 7B 00 01 */	addi r27, r27, 1
/* 8047E0EC  3A F7 00 0C */	addi r23, r23, 0xc
/* 8047E0F0  3A D6 00 70 */	addi r22, r22, 0x70
/* 8047E0F4  3B 5A 00 10 */	addi r26, r26, 0x10
lbl_8047E0F8:
/* 8047E0F8  80 01 00 08 */	lwz r0, 8(r1)
/* 8047E0FC  7C 1B 00 00 */	cmpw r27, r0
/* 8047E100  41 80 FE 6C */	blt lbl_8047DF6C
/* 8047E104  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 8047E108  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 8047E10C  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 8047E110  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 8047E114  E3 A1 00 A8 */	psq_l f29, 168(r1), 0, 0 /* qr0 */
/* 8047E118  CB A1 00 A0 */	lfd f29, 0xa0(r1)
/* 8047E11C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8047E120  4B EE 40 D0 */	b _restgpr_15
/* 8047E124  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 8047E128  7C 08 03 A6 */	mtlr r0
/* 8047E12C  38 21 00 D0 */	addi r1, r1, 0xd0
/* 8047E130  4E 80 00 20 */	blr 

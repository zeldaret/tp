lbl_80BB0ED4:
/* 80BB0ED4  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80BB0ED8  7C 08 02 A6 */	mflr r0
/* 80BB0EDC  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80BB0EE0  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80BB0EE4  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 80BB0EE8  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80BB0EEC  4B 7B 12 B5 */	bl __save_gpr
/* 80BB0EF0  7C 78 1B 78 */	mr r24, r3
/* 80BB0EF4  7C 99 23 78 */	mr r25, r4
/* 80BB0EF8  7C BA 2B 78 */	mr r26, r5
/* 80BB0EFC  7C CE 33 78 */	mr r14, r6
/* 80BB0F00  FF E0 08 90 */	fmr f31, f1
/* 80BB0F04  3C 60 80 BB */	lis r3, l_eye_offset@ha /* 0x80BB37B8@ha */
/* 80BB0F08  3B C3 37 B8 */	addi r30, r3, l_eye_offset@l /* 0x80BB37B8@l */
/* 80BB0F0C  A8 04 04 B6 */	lha r0, 0x4b6(r4)
/* 80BB0F10  7C 00 3A 14 */	add r0, r0, r7
/* 80BB0F14  7C 04 07 34 */	extsh r4, r0
/* 80BB0F18  38 00 FF FF */	li r0, -1
/* 80BB0F1C  90 18 01 78 */	stw r0, 0x178(r24)
/* 80BB0F20  3C 60 80 45 */	lis r3, __float_max@ha /* 0x80450AE8@ha */
/* 80BB0F24  C0 03 0A E8 */	lfs f0, __float_max@l(r3)  /* 0x80450AE8@l */
/* 80BB0F28  D0 18 01 7C */	stfs f0, 0x17c(r24)
/* 80BB0F2C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BB0F30  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BB0F34  7C 8F 23 78 */	mr r15, r4
/* 80BB0F38  4B 45 B4 A5 */	bl mDoMtx_YrotS__FPA4_fs
/* 80BB0F3C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BB0F40  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BB0F44  38 80 40 00 */	li r4, 0x4000
/* 80BB0F48  4B 45 B4 55 */	bl mDoMtx_XrotM__FPA4_fs
/* 80BB0F4C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BB0F50  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BB0F54  3C 80 80 43 */	lis r4, BaseY__4cXyz@ha /* 0x80430D24@ha */
/* 80BB0F58  38 84 0D 24 */	addi r4, r4, BaseY__4cXyz@l /* 0x80430D24@l */
/* 80BB0F5C  38 A1 00 20 */	addi r5, r1, 0x20
/* 80BB0F60  4B 79 5E 0D */	bl PSMTXMultVec
/* 80BB0F64  38 61 00 20 */	addi r3, r1, 0x20
/* 80BB0F68  7C 64 1B 78 */	mr r4, r3
/* 80BB0F6C  C0 1E 02 58 */	lfs f0, 0x258(r30)
/* 80BB0F70  EC 20 F8 2A */	fadds f1, f0, f31
/* 80BB0F74  4B 79 61 65 */	bl PSVECScale
/* 80BB0F78  3B 60 00 00 */	li r27, 0
/* 80BB0F7C  3A E0 00 00 */	li r23, 0
/* 80BB0F80  3A C0 00 00 */	li r22, 0
/* 80BB0F84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB0F88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB0F8C  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80BB0F90  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 80BB0F94  3B E3 0C F4 */	addi r31, r3, Zero__4cXyz@l /* 0x80430CF4@l */
/* 80BB0F98  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BB0F9C  3A 03 D4 70 */	addi r16, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BB0FA0  C3 FE 00 78 */	lfs f31, 0x78(r30)
/* 80BB0FA4  7E 11 83 78 */	mr r17, r16
/* 80BB0FA8  7E 12 83 78 */	mr r18, r16
/* 80BB0FAC  7E 13 83 78 */	mr r19, r16
/* 80BB0FB0  3C 60 80 BB */	lis r3, M_wall_work__Q29daObjBm_c5Bgc_c@ha /* 0x80BB4794@ha */
/* 80BB0FB4  3A 83 47 94 */	addi r20, r3, M_wall_work__Q29daObjBm_c5Bgc_c@l /* 0x80BB4794@l */
/* 80BB0FB8  82 B9 00 04 */	lwz r21, 4(r25)
/* 80BB0FBC  48 00 01 70 */	b lbl_80BB112C
lbl_80BB0FC0:
/* 80BB0FC0  7E 03 83 78 */	mr r3, r16
/* 80BB0FC4  38 80 40 00 */	li r4, 0x4000
/* 80BB0FC8  4B 45 B3 7D */	bl mDoMtx_XrotS__FPA4_fs
/* 80BB0FCC  C0 3A 00 08 */	lfs f1, 8(r26)
/* 80BB0FD0  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 80BB0FD4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BB0FD8  D3 E1 00 18 */	stfs f31, 0x18(r1)
/* 80BB0FDC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80BB0FE0  7E 03 83 78 */	mr r3, r16
/* 80BB0FE4  38 81 00 14 */	addi r4, r1, 0x14
/* 80BB0FE8  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80BB0FEC  4B 79 5D 81 */	bl PSMTXMultVec
/* 80BB0FF0  7E 23 8B 78 */	mr r3, r17
/* 80BB0FF4  7D E4 7B 78 */	mr r4, r15
/* 80BB0FF8  4B 45 B3 E5 */	bl mDoMtx_YrotS__FPA4_fs
/* 80BB0FFC  38 61 00 2C */	addi r3, r1, 0x2c
/* 80BB1000  4B 45 BD D5 */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 80BB1004  C0 3E 02 54 */	lfs f1, 0x254(r30)
/* 80BB1008  C0 5E 02 5C */	lfs f2, 0x25c(r30)
/* 80BB100C  FC 60 08 90 */	fmr f3, f1
/* 80BB1010  4B 45 BE 29 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80BB1014  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 80BB1018  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 80BB101C  FC 60 08 90 */	fmr f3, f1
/* 80BB1020  4B 45 BD 7D */	bl transM__14mDoMtx_stack_cFfff
/* 80BB1024  7E 43 93 78 */	mr r3, r18
/* 80BB1028  38 80 40 00 */	li r4, 0x4000
/* 80BB102C  4B 45 B3 71 */	bl mDoMtx_XrotM__FPA4_fs
/* 80BB1030  C0 3A 00 00 */	lfs f1, 0(r26)
/* 80BB1034  C0 1A 00 04 */	lfs f0, 4(r26)
/* 80BB1038  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BB103C  D3 E1 00 18 */	stfs f31, 0x18(r1)
/* 80BB1040  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80BB1044  7E 63 9B 78 */	mr r3, r19
/* 80BB1048  38 81 00 14 */	addi r4, r1, 0x14
/* 80BB104C  38 A1 00 44 */	addi r5, r1, 0x44
/* 80BB1050  4B 79 5D 1D */	bl PSMTXMultVec
/* 80BB1054  38 61 00 44 */	addi r3, r1, 0x44
/* 80BB1058  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 80BB105C  7C 65 1B 78 */	mr r5, r3
/* 80BB1060  4B 79 60 31 */	bl PSVECAdd
/* 80BB1064  38 61 00 08 */	addi r3, r1, 8
/* 80BB1068  38 81 00 44 */	addi r4, r1, 0x44
/* 80BB106C  38 A1 00 20 */	addi r5, r1, 0x20
/* 80BB1070  4B 6B 5A 75 */	bl __pl__4cXyzCFRC3Vec
/* 80BB1074  C0 01 00 08 */	lfs f0, 8(r1)
/* 80BB1078  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80BB107C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BB1080  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80BB1084  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80BB1088  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80BB108C  7F 94 B2 14 */	add r28, r20, r22
/* 80BB1090  7F 83 E3 78 */	mr r3, r28
/* 80BB1094  38 81 00 44 */	addi r4, r1, 0x44
/* 80BB1098  38 A1 00 38 */	addi r5, r1, 0x38
/* 80BB109C  7F 26 CB 78 */	mr r6, r25
/* 80BB10A0  4B 4C 6C C5 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80BB10A4  92 BC 00 08 */	stw r21, 8(r28)
/* 80BB10A8  7F A3 EB 78 */	mr r3, r29
/* 80BB10AC  7F 84 E3 78 */	mr r4, r28
/* 80BB10B0  4B 4C 33 05 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80BB10B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BB10B8  41 82 00 44 */	beq lbl_80BB10FC
/* 80BB10BC  C0 1C 00 30 */	lfs f0, 0x30(r28)
/* 80BB10C0  7C 98 BA 14 */	add r4, r24, r23
/* 80BB10C4  D0 04 00 64 */	stfs f0, 0x64(r4)
/* 80BB10C8  C0 1C 00 34 */	lfs f0, 0x34(r28)
/* 80BB10CC  D0 04 00 68 */	stfs f0, 0x68(r4)
/* 80BB10D0  C0 1C 00 38 */	lfs f0, 0x38(r28)
/* 80BB10D4  D0 04 00 6C */	stfs f0, 0x6c(r4)
/* 80BB10D8  38 61 00 44 */	addi r3, r1, 0x44
/* 80BB10DC  38 84 00 64 */	addi r4, r4, 0x64
/* 80BB10E0  4B 79 62 BD */	bl PSVECSquareDistance
/* 80BB10E4  C0 18 01 7C */	lfs f0, 0x17c(r24)
/* 80BB10E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BB10EC  40 80 00 30 */	bge lbl_80BB111C
/* 80BB10F0  D0 38 01 7C */	stfs f1, 0x17c(r24)
/* 80BB10F4  93 78 01 78 */	stw r27, 0x178(r24)
/* 80BB10F8  48 00 00 24 */	b lbl_80BB111C
lbl_80BB10FC:
/* 80BB10FC  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 80BB1100  C0 03 0C F4 */	lfs f0, Zero__4cXyz@l(r3)  /* 0x80430CF4@l */
/* 80BB1104  7C 78 BA 14 */	add r3, r24, r23
/* 80BB1108  D0 03 00 64 */	stfs f0, 0x64(r3)
/* 80BB110C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80BB1110  D0 03 00 68 */	stfs f0, 0x68(r3)
/* 80BB1114  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80BB1118  D0 03 00 6C */	stfs f0, 0x6c(r3)
lbl_80BB111C:
/* 80BB111C  3B 7B 00 01 */	addi r27, r27, 1
/* 80BB1120  3A F7 00 0C */	addi r23, r23, 0xc
/* 80BB1124  3A D6 00 70 */	addi r22, r22, 0x70
/* 80BB1128  3B 5A 00 10 */	addi r26, r26, 0x10
lbl_80BB112C:
/* 80BB112C  7C 1B 70 00 */	cmpw r27, r14
/* 80BB1130  41 80 FE 90 */	blt lbl_80BB0FC0
/* 80BB1134  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 80BB1138  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 80BB113C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80BB1140  4B 7B 10 AD */	bl __restore_gpr
/* 80BB1144  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80BB1148  7C 08 03 A6 */	mtlr r0
/* 80BB114C  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80BB1150  4E 80 00 20 */	blr 

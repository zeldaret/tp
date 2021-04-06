lbl_80D2FFBC:
/* 80D2FFBC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80D2FFC0  7C 08 02 A6 */	mflr r0
/* 80D2FFC4  90 01 00 84 */	stw r0, 0x84(r1)
/* 80D2FFC8  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80D2FFCC  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80D2FFD0  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80D2FFD4  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80D2FFD8  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 80D2FFDC  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 80D2FFE0  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 80D2FFE4  F3 81 00 48 */	psq_st f28, 72(r1), 0, 0 /* qr0 */
/* 80D2FFE8  39 61 00 40 */	addi r11, r1, 0x40
/* 80D2FFEC  4B 63 21 D5 */	bl _savegpr_22
/* 80D2FFF0  7C 7D 1B 78 */	mr r29, r3
/* 80D2FFF4  3C 80 80 D3 */	lis r4, l_arcName@ha /* 0x80D31924@ha */
/* 80D2FFF8  3B E4 19 24 */	addi r31, r4, l_arcName@l /* 0x80D31924@l */
/* 80D2FFFC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D30000  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D30004  40 82 00 A8 */	bne lbl_80D300AC
/* 80D30008  7F A0 EB 79 */	or. r0, r29, r29
/* 80D3000C  41 82 00 94 */	beq lbl_80D300A0
/* 80D30010  7C 16 03 78 */	mr r22, r0
/* 80D30014  4B 2E 8B 51 */	bl __ct__10fopAc_ac_cFv
/* 80D30018  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha /* 0x803CD97C@ha */
/* 80D3001C  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l /* 0x803CD97C@l */
/* 80D30020  90 16 05 78 */	stw r0, 0x578(r22)
/* 80D30024  38 00 00 00 */	li r0, 0
/* 80D30028  90 16 05 7C */	stw r0, 0x57c(r22)
/* 80D3002C  90 16 05 80 */	stw r0, 0x580(r22)
/* 80D30030  90 16 05 84 */	stw r0, 0x584(r22)
/* 80D30034  3C 60 80 D3 */	lis r3, __vt__19daObjWchain_shape_c@ha /* 0x80D31A34@ha */
/* 80D30038  38 03 1A 34 */	addi r0, r3, __vt__19daObjWchain_shape_c@l /* 0x80D31A34@l */
/* 80D3003C  90 16 05 78 */	stw r0, 0x578(r22)
/* 80D30040  38 76 05 94 */	addi r3, r22, 0x594
/* 80D30044  3C 80 80 D3 */	lis r4, __ct__4cXyzFv@ha /* 0x80D303D4@ha */
/* 80D30048  38 84 03 D4 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80D303D4@l */
/* 80D3004C  3C A0 80 D3 */	lis r5, __dt__4cXyzFv@ha /* 0x80D303D8@ha */
/* 80D30050  38 A5 03 D8 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80D303D8@l */
/* 80D30054  38 C0 00 0C */	li r6, 0xc
/* 80D30058  38 E0 00 10 */	li r7, 0x10
/* 80D3005C  4B 63 1D 05 */	bl __construct_array
/* 80D30060  38 76 06 54 */	addi r3, r22, 0x654
/* 80D30064  3C 80 80 D3 */	lis r4, __ct__4cXyzFv@ha /* 0x80D303D4@ha */
/* 80D30068  38 84 03 D4 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80D303D4@l */
/* 80D3006C  3C A0 80 D3 */	lis r5, __dt__4cXyzFv@ha /* 0x80D303D8@ha */
/* 80D30070  38 A5 03 D8 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80D303D8@l */
/* 80D30074  38 C0 00 0C */	li r6, 0xc
/* 80D30078  38 E0 00 10 */	li r7, 0x10
/* 80D3007C  4B 63 1C E5 */	bl __construct_array
/* 80D30080  38 76 07 14 */	addi r3, r22, 0x714
/* 80D30084  3C 80 80 D3 */	lis r4, __ct__5csXyzFv@ha /* 0x80D303D0@ha */
/* 80D30088  38 84 03 D0 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80D303D0@l */
/* 80D3008C  3C A0 80 D3 */	lis r5, __dt__5csXyzFv@ha /* 0x80D30394@ha */
/* 80D30090  38 A5 03 94 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80D30394@l */
/* 80D30094  38 C0 00 06 */	li r6, 6
/* 80D30098  38 E0 00 10 */	li r7, 0x10
/* 80D3009C  4B 63 1C C5 */	bl __construct_array
lbl_80D300A0:
/* 80D300A0  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80D300A4  60 00 00 08 */	ori r0, r0, 8
/* 80D300A8  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80D300AC:
/* 80D300AC  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80D300B0  98 1D 07 78 */	stb r0, 0x778(r29)
/* 80D300B4  38 7D 05 68 */	addi r3, r29, 0x568
/* 80D300B8  38 9F 00 00 */	addi r4, r31, 0
/* 80D300BC  4B 2F CE 01 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D300C0  7C 7E 1B 78 */	mr r30, r3
/* 80D300C4  2C 1E 00 04 */	cmpwi r30, 4
/* 80D300C8  40 82 02 90 */	bne lbl_80D30358
/* 80D300CC  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80D300D0  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 80D300D4  98 1D 07 79 */	stb r0, 0x779(r29)
/* 80D300D8  88 1D 07 79 */	lbz r0, 0x779(r29)
/* 80D300DC  28 00 00 0F */	cmplwi r0, 0xf
/* 80D300E0  40 82 00 0C */	bne lbl_80D300EC
/* 80D300E4  38 00 00 00 */	li r0, 0
/* 80D300E8  98 1D 07 79 */	stb r0, 0x779(r29)
lbl_80D300EC:
/* 80D300EC  7F A3 EB 78 */	mr r3, r29
/* 80D300F0  3C 80 80 D3 */	lis r4, daObjWchain_createHeap__FP10fopAc_ac_c@ha /* 0x80D2FF9C@ha */
/* 80D300F4  38 84 FF 9C */	addi r4, r4, daObjWchain_createHeap__FP10fopAc_ac_c@l /* 0x80D2FF9C@l */
/* 80D300F8  38 A0 08 20 */	li r5, 0x820
/* 80D300FC  4B 2E A3 B5 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80D30100  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D30104  40 82 00 0C */	bne lbl_80D30110
/* 80D30108  38 60 00 05 */	li r3, 5
/* 80D3010C  48 00 02 50 */	b lbl_80D3035C
lbl_80D30110:
/* 80D30110  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 80D30114  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)  /* 0x80450D64@l */
/* 80D30118  98 1D 04 8C */	stb r0, 0x48c(r29)
/* 80D3011C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80D30120  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80D30124  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80D30128  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80D3012C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80D30130  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 80D30134  C0 1D 05 50 */	lfs f0, 0x550(r29)
/* 80D30138  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 80D3013C  C0 1D 05 54 */	lfs f0, 0x554(r29)
/* 80D30140  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 80D30144  C0 1D 05 58 */	lfs f0, 0x558(r29)
/* 80D30148  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 80D3014C  38 00 00 1C */	li r0, 0x1c
/* 80D30150  98 1D 05 44 */	stb r0, 0x544(r29)
/* 80D30154  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 80D30158  38 03 00 24 */	addi r0, r3, 0x24
/* 80D3015C  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80D30160  7F A3 EB 78 */	mr r3, r29
/* 80D30164  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80D30168  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80D3016C  FC 60 08 90 */	fmr f3, f1
/* 80D30170  4B 2E A3 B9 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80D30174  7F A3 EB 78 */	mr r3, r29
/* 80D30178  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80D3017C  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 80D30180  FC 60 08 90 */	fmr f3, f1
/* 80D30184  4B 2E A3 B5 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80D30188  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80D3018C  D0 1D 05 88 */	stfs f0, 0x588(r29)
/* 80D30190  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80D30194  D0 1D 05 8C */	stfs f0, 0x58c(r29)
/* 80D30198  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80D3019C  D0 1D 05 90 */	stfs f0, 0x590(r29)
/* 80D301A0  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80D301A4  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80D301A8  EC 01 00 2A */	fadds f0, f1, f0
/* 80D301AC  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80D301B0  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80D301B4  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80D301B8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80D301BC  EC 21 00 2A */	fadds f1, f1, f0
/* 80D301C0  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80D301C4  EC 21 00 28 */	fsubs f1, f1, f0
/* 80D301C8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80D301CC  D0 1D 07 B0 */	stfs f0, 0x7b0(r29)
/* 80D301D0  D0 3D 07 B4 */	stfs f1, 0x7b4(r29)
/* 80D301D4  D0 5D 07 B8 */	stfs f2, 0x7b8(r29)
/* 80D301D8  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80D301DC  C0 1D 07 B4 */	lfs f0, 0x7b4(r29)
/* 80D301E0  EC 01 00 2A */	fadds f0, f1, f0
/* 80D301E4  D0 1D 07 AC */	stfs f0, 0x7ac(r29)
/* 80D301E8  C0 3D 07 B4 */	lfs f1, 0x7b4(r29)
/* 80D301EC  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 80D301F0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D301F4  D0 1D 07 A4 */	stfs f0, 0x7a4(r29)
/* 80D301F8  88 1D 07 79 */	lbz r0, 0x779(r29)
/* 80D301FC  28 00 00 00 */	cmplwi r0, 0
/* 80D30200  40 82 00 4C */	bne lbl_80D3024C
/* 80D30204  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D30208  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D3020C  88 9D 07 78 */	lbz r4, 0x778(r29)
/* 80D30210  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80D30214  7C 05 07 74 */	extsb r5, r0
/* 80D30218  4B 30 51 49 */	bl isSwitch__10dSv_info_cCFii
/* 80D3021C  2C 03 00 00 */	cmpwi r3, 0
/* 80D30220  41 82 00 2C */	beq lbl_80D3024C
/* 80D30224  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80D30228  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80D3022C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D30230  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80D30234  38 00 00 01 */	li r0, 1
/* 80D30238  98 1D 07 76 */	stb r0, 0x776(r29)
/* 80D3023C  D0 3D 07 A0 */	stfs f1, 0x7a0(r29)
/* 80D30240  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80D30244  D0 1D 07 A8 */	stfs f0, 0x7a8(r29)
/* 80D30248  48 00 00 0C */	b lbl_80D30254
lbl_80D3024C:
/* 80D3024C  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80D30250  D0 1D 07 A0 */	stfs f0, 0x7a0(r29)
lbl_80D30254:
/* 80D30254  38 00 40 00 */	li r0, 0x4000
/* 80D30258  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 80D3025C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80D30260  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80D30264  3B 5D 06 48 */	addi r26, r29, 0x648
/* 80D30268  3B 3D 07 08 */	addi r25, r29, 0x708
/* 80D3026C  3B 1D 07 6E */	addi r24, r29, 0x76e
/* 80D30270  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80D30274  4B 53 77 19 */	bl cM_rndFX__Ff
/* 80D30278  C3 BF 00 34 */	lfs f29, 0x34(r31)
/* 80D3027C  EC 1D 08 2A */	fadds f0, f29, f1
/* 80D30280  FC 00 00 1E */	fctiwz f0, f0
/* 80D30284  D8 01 00 08 */	stfd f0, 8(r1)
/* 80D30288  82 E1 00 0C */	lwz r23, 0xc(r1)
/* 80D3028C  C3 9D 04 D4 */	lfs f28, 0x4d4(r29)
/* 80D30290  3A C0 00 0F */	li r22, 0xf
/* 80D30294  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 80D30298  3B 63 0C F4 */	addi r27, r3, Zero__4cXyz@l /* 0x80430CF4@l */
/* 80D3029C  CB DF 00 40 */	lfd f30, 0x40(r31)
/* 80D302A0  3F 80 43 30 */	lis r28, 0x4330
/* 80D302A4  C3 FF 00 3C */	lfs f31, 0x3c(r31)
lbl_80D302A8:
/* 80D302A8  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 80D302AC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80D302B0  D0 1A 00 00 */	stfs f0, 0(r26)
/* 80D302B4  D3 9A 00 04 */	stfs f28, 4(r26)
/* 80D302B8  D0 3A 00 08 */	stfs f1, 8(r26)
/* 80D302BC  C0 1B 00 00 */	lfs f0, 0(r27)
/* 80D302C0  D0 19 00 00 */	stfs f0, 0(r25)
/* 80D302C4  C0 1B 00 04 */	lfs f0, 4(r27)
/* 80D302C8  D0 19 00 04 */	stfs f0, 4(r25)
/* 80D302CC  C0 1B 00 08 */	lfs f0, 8(r27)
/* 80D302D0  D0 19 00 08 */	stfs f0, 8(r25)
/* 80D302D4  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 80D302D8  38 00 40 00 */	li r0, 0x4000
/* 80D302DC  B0 18 00 00 */	sth r0, 0(r24)
/* 80D302E0  B0 78 00 02 */	sth r3, 2(r24)
/* 80D302E4  B2 F8 00 04 */	sth r23, 4(r24)
/* 80D302E8  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80D302EC  4B 53 76 A1 */	bl cM_rndFX__Ff
/* 80D302F0  EC 3D 08 2A */	fadds f1, f29, f1
/* 80D302F4  7E E0 07 34 */	extsh r0, r23
/* 80D302F8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D302FC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D30300  93 81 00 08 */	stw r28, 8(r1)
/* 80D30304  C8 01 00 08 */	lfd f0, 8(r1)
/* 80D30308  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80D3030C  EC 00 08 2A */	fadds f0, f0, f1
/* 80D30310  FC 00 00 1E */	fctiwz f0, f0
/* 80D30314  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80D30318  82 E1 00 14 */	lwz r23, 0x14(r1)
/* 80D3031C  EF 9C F8 2A */	fadds f28, f28, f31
/* 80D30320  36 D6 FF FF */	addic. r22, r22, -1
/* 80D30324  3B 5A FF F4 */	addi r26, r26, -12
/* 80D30328  3B 39 FF F4 */	addi r25, r25, -12
/* 80D3032C  3B 18 FF FA */	addi r24, r24, -6
/* 80D30330  40 80 FF 78 */	bge lbl_80D302A8
/* 80D30334  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 80D30338  C0 03 0C F4 */	lfs f0, Zero__4cXyz@l(r3)  /* 0x80430CF4@l */
/* 80D3033C  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 80D30340  C0 1B 00 04 */	lfs f0, 4(r27)
/* 80D30344  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80D30348  C0 1B 00 08 */	lfs f0, 8(r27)
/* 80D3034C  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 80D30350  7F A3 EB 78 */	mr r3, r29
/* 80D30354  48 00 01 E1 */	bl setMatrix__13daObjWchain_cFv
lbl_80D30358:
/* 80D30358  7F C3 F3 78 */	mr r3, r30
lbl_80D3035C:
/* 80D3035C  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80D30360  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80D30364  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80D30368  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80D3036C  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 80D30370  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 80D30374  E3 81 00 48 */	psq_l f28, 72(r1), 0, 0 /* qr0 */
/* 80D30378  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 80D3037C  39 61 00 40 */	addi r11, r1, 0x40
/* 80D30380  4B 63 1E 8D */	bl _restgpr_22
/* 80D30384  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80D30388  7C 08 03 A6 */	mtlr r0
/* 80D3038C  38 21 00 80 */	addi r1, r1, 0x80
/* 80D30390  4E 80 00 20 */	blr 

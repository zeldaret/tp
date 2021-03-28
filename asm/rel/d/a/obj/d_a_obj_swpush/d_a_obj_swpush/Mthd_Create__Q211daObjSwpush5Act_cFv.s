lbl_80483038:
/* 80483038  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8048303C  7C 08 02 A6 */	mflr r0
/* 80483040  90 01 00 34 */	stw r0, 0x34(r1)
/* 80483044  39 61 00 30 */	addi r11, r1, 0x30
/* 80483048  4B ED F1 80 */	b _savegpr_24
/* 8048304C  7C 7C 1B 78 */	mr r28, r3
/* 80483050  3C 80 80 48 */	lis r4, M_bmd__Q211daObjSwpush5Act_c@ha
/* 80483054  3B E4 4D 10 */	addi r31, r4, M_bmd__Q211daObjSwpush5Act_c@l
/* 80483058  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8048305C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80483060  40 82 00 1C */	bne lbl_8048307C
/* 80483064  28 1C 00 00 */	cmplwi r28, 0
/* 80483068  41 82 00 08 */	beq lbl_80483070
/* 8048306C  4B B9 5A F8 */	b __ct__10fopAc_ac_cFv
lbl_80483070:
/* 80483070  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 80483074  60 00 00 08 */	ori r0, r0, 8
/* 80483078  90 1C 04 A0 */	stw r0, 0x4a0(r28)
lbl_8048307C:
/* 8048307C  7F 83 E3 78 */	mr r3, r28
/* 80483080  4B FF FC CD */	bl prmZ_init__Q211daObjSwpush5Act_cFv
/* 80483084  7F 83 E3 78 */	mr r3, r28
/* 80483088  38 80 00 03 */	li r4, 3
/* 8048308C  38 A0 00 18 */	li r5, 0x18
/* 80483090  48 00 1C 55 */	bl func_80484CE4
/* 80483094  90 7C 05 AC */	stw r3, 0x5ac(r28)
/* 80483098  7F 83 E3 78 */	mr r3, r28
/* 8048309C  38 80 00 04 */	li r4, 4
/* 804830A0  38 A0 00 10 */	li r5, 0x10
/* 804830A4  48 00 1C 41 */	bl func_80484CE4
/* 804830A8  98 7C 05 F4 */	stb r3, 0x5f4(r28)
/* 804830AC  80 1C 05 AC */	lwz r0, 0x5ac(r28)
/* 804830B0  2C 00 00 04 */	cmpwi r0, 4
/* 804830B4  40 82 00 10 */	bne lbl_804830C4
/* 804830B8  38 00 00 01 */	li r0, 1
/* 804830BC  98 1C 05 F4 */	stb r0, 0x5f4(r28)
/* 804830C0  48 00 00 18 */	b lbl_804830D8
lbl_804830C4:
/* 804830C4  88 1C 05 F4 */	lbz r0, 0x5f4(r28)
/* 804830C8  28 00 00 0F */	cmplwi r0, 0xf
/* 804830CC  40 82 00 0C */	bne lbl_804830D8
/* 804830D0  38 00 00 00 */	li r0, 0
/* 804830D4  98 1C 05 F4 */	stb r0, 0x5f4(r28)
lbl_804830D8:
/* 804830D8  7F 83 E3 78 */	mr r3, r28
/* 804830DC  4B FF FF 0D */	bl create_res_load__Q211daObjSwpush5Act_cFv
/* 804830E0  7C 7D 1B 78 */	mr r29, r3
/* 804830E4  2C 1D 00 04 */	cmpwi r29, 4
/* 804830E8  40 82 03 4C */	bne lbl_80483434
/* 804830EC  C0 3C 04 EC */	lfs f1, 0x4ec(r28)
/* 804830F0  80 1C 05 AC */	lwz r0, 0x5ac(r28)
/* 804830F4  1C 60 00 2C */	mulli r3, r0, 0x2c
/* 804830F8  38 9F 00 1C */	addi r4, r31, 0x1c
/* 804830FC  38 03 00 04 */	addi r0, r3, 4
/* 80483100  7C 04 04 2E */	lfsx f0, r4, r0
/* 80483104  EC 01 00 32 */	fmuls f0, f1, f0
/* 80483108  D0 1C 04 EC */	stfs f0, 0x4ec(r28)
/* 8048310C  C0 3C 04 F4 */	lfs f1, 0x4f4(r28)
/* 80483110  80 1C 05 AC */	lwz r0, 0x5ac(r28)
/* 80483114  1C 60 00 2C */	mulli r3, r0, 0x2c
/* 80483118  38 03 00 04 */	addi r0, r3, 4
/* 8048311C  7C 04 04 2E */	lfsx f0, r4, r0
/* 80483120  EC 01 00 32 */	fmuls f0, f1, f0
/* 80483124  D0 1C 04 F4 */	stfs f0, 0x4f4(r28)
/* 80483128  80 1C 05 AC */	lwz r0, 0x5ac(r28)
/* 8048312C  2C 00 00 04 */	cmpwi r0, 4
/* 80483130  41 82 00 0C */	beq lbl_8048313C
/* 80483134  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 80483138  D0 1C 04 F0 */	stfs f0, 0x4f0(r28)
lbl_8048313C:
/* 8048313C  C0 3F 01 00 */	lfs f1, 0x100(r31)
/* 80483140  D0 3C 05 F8 */	stfs f1, 0x5f8(r28)
/* 80483144  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 80483148  D0 1C 05 FC */	stfs f0, 0x5fc(r28)
/* 8048314C  D0 3C 06 00 */	stfs f1, 0x600(r28)
/* 80483150  7F 83 E3 78 */	mr r3, r28
/* 80483154  38 80 00 01 */	li r4, 1
/* 80483158  38 A0 00 1D */	li r5, 0x1d
/* 8048315C  48 00 1B 89 */	bl func_80484CE4
/* 80483160  2C 03 00 00 */	cmpwi r3, 0
/* 80483164  41 82 00 20 */	beq lbl_80483184
/* 80483168  C0 1C 04 EC */	lfs f0, 0x4ec(r28)
/* 8048316C  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 80483170  EC 00 00 72 */	fmuls f0, f0, f1
/* 80483174  D0 1C 04 EC */	stfs f0, 0x4ec(r28)
/* 80483178  C0 1C 04 F4 */	lfs f0, 0x4f4(r28)
/* 8048317C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80483180  D0 1C 04 F4 */	stfs f0, 0x4f4(r28)
lbl_80483184:
/* 80483184  7F 83 E3 78 */	mr r3, r28
/* 80483188  3C 80 80 48 */	lis r4, solidHeapCB__Q211daObjSwpush5Act_cFP10fopAc_ac_c@ha
/* 8048318C  38 84 2D C4 */	addi r4, r4, solidHeapCB__Q211daObjSwpush5Act_cFP10fopAc_ac_c@l
/* 80483190  88 1C 05 F4 */	lbz r0, 0x5f4(r28)
/* 80483194  54 00 10 3A */	slwi r0, r0, 2
/* 80483198  38 BF 00 10 */	addi r5, r31, 0x10
/* 8048319C  7C A5 00 2E */	lwzx r5, r5, r0
/* 804831A0  4B B9 73 10 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 804831A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804831A8  41 82 02 88 */	beq lbl_80483430
/* 804831AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804831B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804831B4  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 804831B8  7F C3 F3 78 */	mr r3, r30
/* 804831BC  80 9C 05 70 */	lwz r4, 0x570(r28)
/* 804831C0  7F 85 E3 78 */	mr r5, r28
/* 804831C4  4B BF 18 44 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 804831C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804831CC  41 82 00 0C */	beq lbl_804831D8
/* 804831D0  3B A0 00 05 */	li r29, 5
/* 804831D4  48 00 02 60 */	b lbl_80483434
lbl_804831D8:
/* 804831D8  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 804831DC  4B B8 9B 88 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 804831E0  38 7C 04 E4 */	addi r3, r28, 0x4e4
/* 804831E4  4B B8 9D 60 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 804831E8  38 7C 05 F8 */	addi r3, r28, 0x5f8
/* 804831EC  4B B8 9C 84 */	b scaleM__14mDoMtx_stack_cFRC4cXyz
/* 804831F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804831F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804831F8  38 9C 05 74 */	addi r4, r28, 0x574
/* 804831FC  4B EC 32 B4 */	b PSMTXCopy
/* 80483200  80 7C 05 70 */	lwz r3, 0x570(r28)
/* 80483204  88 03 00 88 */	lbz r0, 0x88(r3)
/* 80483208  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8048320C  98 03 00 88 */	stb r0, 0x88(r3)
/* 80483210  38 1C 05 74 */	addi r0, r28, 0x574
/* 80483214  80 7C 05 70 */	lwz r3, 0x570(r28)
/* 80483218  90 03 00 18 */	stw r0, 0x18(r3)
/* 8048321C  80 7C 05 70 */	lwz r3, 0x570(r28)
/* 80483220  4B BF 61 A4 */	b GlobalVtx__4cBgWFv
/* 80483224  38 00 00 00 */	li r0, 0
/* 80483228  80 7C 05 70 */	lwz r3, 0x570(r28)
/* 8048322C  90 03 00 18 */	stw r0, 0x18(r3)
/* 80483230  80 7C 05 70 */	lwz r3, 0x570(r28)
/* 80483234  88 03 00 88 */	lbz r0, 0x88(r3)
/* 80483238  60 00 00 02 */	ori r0, r0, 2
/* 8048323C  98 03 00 88 */	stb r0, 0x88(r3)
/* 80483240  80 7C 05 70 */	lwz r3, 0x570(r28)
/* 80483244  80 63 00 9C */	lwz r3, 0x9c(r3)
/* 80483248  88 1F 00 F8 */	lbz r0, 0xf8(r31)
/* 8048324C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80483250  7C 63 02 14 */	add r3, r3, r0
/* 80483254  C0 03 00 04 */	lfs f0, 4(r3)
/* 80483258  D0 1C 05 A4 */	stfs f0, 0x5a4(r28)
/* 8048325C  3C 60 80 48 */	lis r3, rideCB__Q211daObjSwpush5Act_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha
/* 80483260  38 03 35 74 */	addi r0, r3, rideCB__Q211daObjSwpush5Act_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l
/* 80483264  80 7C 05 70 */	lwz r3, 0x570(r28)
/* 80483268  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 8048326C  80 7C 05 A8 */	lwz r3, 0x5a8(r28)
/* 80483270  38 03 00 24 */	addi r0, r3, 0x24
/* 80483274  90 1C 05 04 */	stw r0, 0x504(r28)
/* 80483278  7F 83 E3 78 */	mr r3, r28
/* 8048327C  48 00 02 B9 */	bl init_mtx__Q211daObjSwpush5Act_cFv
/* 80483280  80 1C 05 AC */	lwz r0, 0x5ac(r28)
/* 80483284  1C 80 00 2C */	mulli r4, r0, 0x2c
/* 80483288  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8048328C  38 04 00 04 */	addi r0, r4, 4
/* 80483290  7C 23 04 2E */	lfsx f1, r3, r0
/* 80483294  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 80483298  EC 80 00 72 */	fmuls f4, f0, f1
/* 8048329C  C0 1F 01 0C */	lfs f0, 0x10c(r31)
/* 804832A0  EC 20 00 72 */	fmuls f1, f0, f1
/* 804832A4  7F 83 E3 78 */	mr r3, r28
/* 804832A8  C0 5F 01 10 */	lfs f2, 0x110(r31)
/* 804832AC  FC 60 08 90 */	fmr f3, f1
/* 804832B0  C0 BF 01 14 */	lfs f5, 0x114(r31)
/* 804832B4  FC C0 20 90 */	fmr f6, f4
/* 804832B8  4B B9 72 90 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 804832BC  38 00 00 00 */	li r0, 0
/* 804832C0  98 1C 05 BF */	stb r0, 0x5bf(r28)
/* 804832C4  98 1C 05 C0 */	stb r0, 0x5c0(r28)
/* 804832C8  98 1C 05 C1 */	stb r0, 0x5c1(r28)
/* 804832CC  B0 1C 05 C2 */	sth r0, 0x5c2(r28)
/* 804832D0  98 1C 05 C4 */	stb r0, 0x5c4(r28)
/* 804832D4  98 1C 05 C6 */	stb r0, 0x5c6(r28)
/* 804832D8  98 1C 05 C7 */	stb r0, 0x5c7(r28)
/* 804832DC  B0 1C 05 C8 */	sth r0, 0x5c8(r28)
/* 804832E0  98 1C 05 CA */	stb r0, 0x5ca(r28)
/* 804832E4  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 804832E8  D0 1C 05 D4 */	stfs f0, 0x5d4(r28)
/* 804832EC  B0 1C 05 E0 */	sth r0, 0x5e0(r28)
/* 804832F0  D0 1C 05 E4 */	stfs f0, 0x5e4(r28)
/* 804832F4  98 1C 05 F2 */	stb r0, 0x5f2(r28)
/* 804832F8  98 1C 05 F3 */	stb r0, 0x5f3(r28)
/* 804832FC  7F 83 E3 78 */	mr r3, r28
/* 80483300  48 00 02 71 */	bl set_btp_frame__Q211daObjSwpush5Act_cFv
/* 80483304  80 1C 05 AC */	lwz r0, 0x5ac(r28)
/* 80483308  1C 00 00 2C */	mulli r0, r0, 0x2c
/* 8048330C  38 7F 00 1C */	addi r3, r31, 0x1c
/* 80483310  7C 03 00 2E */	lwzx r0, r3, r0
/* 80483314  54 18 07 7A */	rlwinm r24, r0, 0, 0x1d, 0x1d
/* 80483318  54 19 E7 FE */	rlwinm r25, r0, 0x1c, 0x1f, 0x1f
/* 8048331C  54 1A DF FE */	rlwinm r26, r0, 0x1b, 0x1f, 0x1f
/* 80483320  7F 83 E3 78 */	mr r3, r28
/* 80483324  38 80 00 08 */	li r4, 8
/* 80483328  38 A0 00 08 */	li r5, 8
/* 8048332C  48 00 19 B9 */	bl func_80484CE4
/* 80483330  7C 64 1B 78 */	mr r4, r3
/* 80483334  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80483338  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8048333C  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 80483340  7C 05 07 74 */	extsb r5, r0
/* 80483344  4B BB 20 1C */	b isSwitch__10dSv_info_cCFii
/* 80483348  30 03 FF FF */	addic r0, r3, -1
/* 8048334C  7C 00 19 10 */	subfe r0, r0, r3
/* 80483350  54 1B 06 3E */	clrlwi r27, r0, 0x18
/* 80483354  7F 83 E3 78 */	mr r3, r28
/* 80483358  4B FF FA 25 */	bl is_switch2__Q211daObjSwpush5Act_cCFv
/* 8048335C  2C 18 00 00 */	cmpwi r24, 0
/* 80483360  40 82 00 24 */	bne lbl_80483384
/* 80483364  28 1B 00 00 */	cmplwi r27, 0
/* 80483368  40 82 00 0C */	bne lbl_80483374
/* 8048336C  28 19 00 00 */	cmplwi r25, 0
/* 80483370  41 82 00 14 */	beq lbl_80483384
lbl_80483374:
/* 80483374  28 1B 00 00 */	cmplwi r27, 0
/* 80483378  41 82 00 48 */	beq lbl_804833C0
/* 8048337C  28 19 00 00 */	cmplwi r25, 0
/* 80483380  41 82 00 40 */	beq lbl_804833C0
lbl_80483384:
/* 80483384  28 1A 00 00 */	cmplwi r26, 0
/* 80483388  41 82 00 0C */	beq lbl_80483394
/* 8048338C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80483390  40 82 00 30 */	bne lbl_804833C0
lbl_80483394:
/* 80483394  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 80483398  D0 3C 05 CC */	stfs f1, 0x5cc(r28)
/* 8048339C  D0 3C 05 D0 */	stfs f1, 0x5d0(r28)
/* 804833A0  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 804833A4  D0 1C 05 D8 */	stfs f0, 0x5d8(r28)
/* 804833A8  D0 3C 05 DC */	stfs f1, 0x5dc(r28)
/* 804833AC  D0 3C 05 E8 */	stfs f1, 0x5e8(r28)
/* 804833B0  D0 1C 05 EC */	stfs f0, 0x5ec(r28)
/* 804833B4  7F 83 E3 78 */	mr r3, r28
/* 804833B8  48 00 09 55 */	bl mode_upper_init__Q211daObjSwpush5Act_cFv
/* 804833BC  48 00 00 3C */	b lbl_804833F8
lbl_804833C0:
/* 804833C0  C0 3F 01 18 */	lfs f1, 0x118(r31)
/* 804833C4  D0 3C 05 CC */	stfs f1, 0x5cc(r28)
/* 804833C8  D0 3C 05 D0 */	stfs f1, 0x5d0(r28)
/* 804833CC  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 804833D0  D0 1C 05 D8 */	stfs f0, 0x5d8(r28)
/* 804833D4  D0 3C 05 DC */	stfs f1, 0x5dc(r28)
/* 804833D8  D0 3C 05 E8 */	stfs f1, 0x5e8(r28)
/* 804833DC  D0 1C 05 EC */	stfs f0, 0x5ec(r28)
/* 804833E0  38 00 00 05 */	li r0, 5
/* 804833E4  B0 1C 05 C2 */	sth r0, 0x5c2(r28)
/* 804833E8  38 00 00 01 */	li r0, 1
/* 804833EC  98 1C 05 C4 */	stb r0, 0x5c4(r28)
/* 804833F0  7F 83 E3 78 */	mr r3, r28
/* 804833F4  48 00 0D E1 */	bl mode_lower_init__Q211daObjSwpush5Act_cFv
lbl_804833F8:
/* 804833F8  7F 83 E3 78 */	mr r3, r28
/* 804833FC  38 80 00 08 */	li r4, 8
/* 80483400  38 A0 00 00 */	li r5, 0
/* 80483404  48 00 18 E1 */	bl func_80484CE4
/* 80483408  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 8048340C  38 7E 40 C0 */	addi r3, r30, 0x40c0
/* 80483410  7F 84 E3 78 */	mr r4, r28
/* 80483414  4B BC 42 84 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc
/* 80483418  B0 7C 05 BA */	sth r3, 0x5ba(r28)
/* 8048341C  7F 83 E3 78 */	mr r3, r28
/* 80483420  48 00 11 51 */	bl demo_non_init__Q211daObjSwpush5Act_cFv
/* 80483424  7F 83 E3 78 */	mr r3, r28
/* 80483428  48 00 14 E1 */	bl Mthd_Execute__Q211daObjSwpush5Act_cFv
/* 8048342C  48 00 00 08 */	b lbl_80483434
lbl_80483430:
/* 80483430  3B A0 00 05 */	li r29, 5
lbl_80483434:
/* 80483434  7F A3 EB 78 */	mr r3, r29
/* 80483438  39 61 00 30 */	addi r11, r1, 0x30
/* 8048343C  4B ED ED D8 */	b _restgpr_24
/* 80483440  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80483444  7C 08 03 A6 */	mtlr r0
/* 80483448  38 21 00 30 */	addi r1, r1, 0x30
/* 8048344C  4E 80 00 20 */	blr 

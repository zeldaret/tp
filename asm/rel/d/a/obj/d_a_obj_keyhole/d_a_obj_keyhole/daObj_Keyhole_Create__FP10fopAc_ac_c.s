lbl_80C4307C:
/* 80C4307C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C43080  7C 08 02 A6 */	mflr r0
/* 80C43084  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C43088  39 61 00 50 */	addi r11, r1, 0x50
/* 80C4308C  4B 71 F1 30 */	b _savegpr_21
/* 80C43090  7C 7E 1B 78 */	mr r30, r3
/* 80C43094  3C 80 80 C4 */	lis r4, lit_3655@ha
/* 80C43098  3B E4 39 E4 */	addi r31, r4, lit_3655@l
/* 80C4309C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C430A0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C430A4  40 82 00 D0 */	bne lbl_80C43174
/* 80C430A8  7F C0 F3 79 */	or. r0, r30, r30
/* 80C430AC  41 82 00 BC */	beq lbl_80C43168
/* 80C430B0  7C 15 03 78 */	mr r21, r0
/* 80C430B4  4B 3D 5A B0 */	b __ct__10fopAc_ac_cFv
/* 80C430B8  38 75 05 88 */	addi r3, r21, 0x588
/* 80C430BC  4B 67 D3 0C */	b __ct__10Z2CreatureFv
/* 80C430C0  38 75 06 24 */	addi r3, r21, 0x624
/* 80C430C4  3C 80 80 C4 */	lis r4, __ct__10kh_chain_sFv@ha
/* 80C430C8  38 84 37 A4 */	addi r4, r4, __ct__10kh_chain_sFv@l
/* 80C430CC  3C A0 80 C4 */	lis r5, __dt__10kh_chain_sFv@ha
/* 80C430D0  38 A5 36 A0 */	addi r5, r5, __dt__10kh_chain_sFv@l
/* 80C430D4  38 C0 06 20 */	li r6, 0x620
/* 80C430D8  38 E0 00 06 */	li r7, 6
/* 80C430DC  4B 71 EC 84 */	b __construct_array
/* 80C430E0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80C430E4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80C430E8  90 15 2B 1C */	stw r0, 0x2b1c(r21)
/* 80C430EC  38 75 2B 20 */	addi r3, r21, 0x2b20
/* 80C430F0  4B 44 06 70 */	b __ct__10dCcD_GSttsFv
/* 80C430F4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80C430F8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80C430FC  90 75 2B 1C */	stw r3, 0x2b1c(r21)
/* 80C43100  38 03 00 20 */	addi r0, r3, 0x20
/* 80C43104  90 15 2B 20 */	stw r0, 0x2b20(r21)
/* 80C43108  3A B5 2B 40 */	addi r21, r21, 0x2b40
/* 80C4310C  7E A3 AB 78 */	mr r3, r21
/* 80C43110  4B 44 09 18 */	b __ct__12dCcD_GObjInfFv
/* 80C43114  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C43118  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C4311C  90 15 01 20 */	stw r0, 0x120(r21)
/* 80C43120  3C 60 80 C4 */	lis r3, __vt__8cM3dGAab@ha
/* 80C43124  38 03 3C 88 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C43128  90 15 01 1C */	stw r0, 0x11c(r21)
/* 80C4312C  3C 60 80 C4 */	lis r3, __vt__8cM3dGSph@ha
/* 80C43130  38 03 3C 7C */	addi r0, r3, __vt__8cM3dGSph@l
/* 80C43134  90 15 01 34 */	stw r0, 0x134(r21)
/* 80C43138  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80C4313C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80C43140  90 75 01 20 */	stw r3, 0x120(r21)
/* 80C43144  38 03 00 58 */	addi r0, r3, 0x58
/* 80C43148  90 15 01 34 */	stw r0, 0x134(r21)
/* 80C4314C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80C43150  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80C43154  90 75 00 3C */	stw r3, 0x3c(r21)
/* 80C43158  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C4315C  90 15 01 20 */	stw r0, 0x120(r21)
/* 80C43160  38 03 00 84 */	addi r0, r3, 0x84
/* 80C43164  90 15 01 34 */	stw r0, 0x134(r21)
lbl_80C43168:
/* 80C43168  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80C4316C  60 00 00 08 */	ori r0, r0, 8
/* 80C43170  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80C43174:
/* 80C43174  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C43178  98 1E 05 84 */	stb r0, 0x584(r30)
/* 80C4317C  88 1E 05 84 */	lbz r0, 0x584(r30)
/* 80C43180  28 00 00 FF */	cmplwi r0, 0xff
/* 80C43184  40 82 00 0C */	bne lbl_80C43190
/* 80C43188  38 00 00 00 */	li r0, 0
/* 80C4318C  98 1E 05 84 */	stb r0, 0x584(r30)
lbl_80C43190:
/* 80C43190  88 1E 05 84 */	lbz r0, 0x584(r30)
/* 80C43194  28 00 00 00 */	cmplwi r0, 0
/* 80C43198  41 82 00 0C */	beq lbl_80C431A4
/* 80C4319C  28 00 00 03 */	cmplwi r0, 3
/* 80C431A0  40 82 00 10 */	bne lbl_80C431B0
lbl_80C431A4:
/* 80C431A4  38 00 00 10 */	li r0, 0x10
/* 80C431A8  90 1E 05 7C */	stw r0, 0x57c(r30)
/* 80C431AC  48 00 00 0C */	b lbl_80C431B8
lbl_80C431B0:
/* 80C431B0  38 00 00 0C */	li r0, 0xc
/* 80C431B4  90 1E 05 7C */	stw r0, 0x57c(r30)
lbl_80C431B8:
/* 80C431B8  88 1E 05 84 */	lbz r0, 0x584(r30)
/* 80C431BC  54 00 10 3A */	slwi r0, r0, 2
/* 80C431C0  3C 60 80 C4 */	lis r3, arc_name@ha
/* 80C431C4  38 63 3B AC */	addi r3, r3, arc_name@l
/* 80C431C8  7C 03 00 2E */	lwzx r0, r3, r0
/* 80C431CC  90 1E 05 70 */	stw r0, 0x570(r30)
/* 80C431D0  38 7E 05 68 */	addi r3, r30, 0x568
/* 80C431D4  80 9E 05 70 */	lwz r4, 0x570(r30)
/* 80C431D8  4B 3E 9C E4 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C431DC  7C 7D 1B 78 */	mr r29, r3
/* 80C431E0  2C 1D 00 04 */	cmpwi r29, 4
/* 80C431E4  40 82 02 AC */	bne lbl_80C43490
/* 80C431E8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C431EC  54 04 46 3E */	srwi r4, r0, 0x18
/* 80C431F0  28 04 00 FF */	cmplwi r4, 0xff
/* 80C431F4  41 82 00 28 */	beq lbl_80C4321C
/* 80C431F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C431FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C43200  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C43204  7C 05 07 74 */	extsb r5, r0
/* 80C43208  4B 3F 21 58 */	b isSwitch__10dSv_info_cCFii
/* 80C4320C  2C 03 00 00 */	cmpwi r3, 0
/* 80C43210  41 82 00 0C */	beq lbl_80C4321C
/* 80C43214  38 00 00 01 */	li r0, 1
/* 80C43218  B0 1E 06 1C */	sth r0, 0x61c(r30)
lbl_80C4321C:
/* 80C4321C  7F C3 F3 78 */	mr r3, r30
/* 80C43220  3C 80 80 C4 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 80C43224  38 84 2D C8 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80C43228  88 1E 05 84 */	lbz r0, 0x584(r30)
/* 80C4322C  54 00 08 3C */	slwi r0, r0, 1
/* 80C43230  38 BF 00 B0 */	addi r5, r31, 0xb0
/* 80C43234  7C A5 02 2E */	lhzx r5, r5, r0
/* 80C43238  4B 3D 72 78 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C4323C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C43240  40 82 00 0C */	bne lbl_80C4324C
/* 80C43244  38 60 00 05 */	li r3, 5
/* 80C43248  48 00 02 4C */	b lbl_80C43494
lbl_80C4324C:
/* 80C4324C  88 1E 05 84 */	lbz r0, 0x584(r30)
/* 80C43250  28 00 00 03 */	cmplwi r0, 3
/* 80C43254  40 82 00 0C */	bne lbl_80C43260
/* 80C43258  38 00 00 00 */	li r0, 0
/* 80C4325C  98 1E 05 84 */	stb r0, 0x584(r30)
lbl_80C43260:
/* 80C43260  3C 60 80 C4 */	lis r3, struct_80C43CE4+0x1@ha
/* 80C43264  8C 03 3C E5 */	lbzu r0, struct_80C43CE4+0x1@l(r3)
/* 80C43268  28 00 00 00 */	cmplwi r0, 0
/* 80C4326C  40 82 00 20 */	bne lbl_80C4328C
/* 80C43270  38 00 00 01 */	li r0, 1
/* 80C43274  98 1E 2C A5 */	stb r0, 0x2ca5(r30)
/* 80C43278  98 03 00 00 */	stb r0, 0(r3)
/* 80C4327C  38 00 FF FF */	li r0, -1
/* 80C43280  3C 60 80 C4 */	lis r3, l_HIO@ha
/* 80C43284  38 63 3C F4 */	addi r3, r3, l_HIO@l
/* 80C43288  98 03 00 04 */	stb r0, 4(r3)
lbl_80C4328C:
/* 80C4328C  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80C43290  28 03 00 00 */	cmplwi r3, 0
/* 80C43294  41 82 00 10 */	beq lbl_80C432A4
/* 80C43298  38 03 00 24 */	addi r0, r3, 0x24
/* 80C4329C  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80C432A0  48 00 00 14 */	b lbl_80C432B4
lbl_80C432A4:
/* 80C432A4  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80C432A8  80 63 00 04 */	lwz r3, 4(r3)
/* 80C432AC  38 03 00 24 */	addi r0, r3, 0x24
/* 80C432B0  90 1E 05 04 */	stw r0, 0x504(r30)
lbl_80C432B4:
/* 80C432B4  7F C3 F3 78 */	mr r3, r30
/* 80C432B8  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 80C432BC  FC 40 08 90 */	fmr f2, f1
/* 80C432C0  FC 60 08 90 */	fmr f3, f1
/* 80C432C4  4B 3D 72 64 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80C432C8  7F C3 F3 78 */	mr r3, r30
/* 80C432CC  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80C432D0  FC 40 08 90 */	fmr f2, f1
/* 80C432D4  FC 60 08 90 */	fmr f3, f1
/* 80C432D8  4B 3D 72 60 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80C432DC  38 7E 2B 04 */	addi r3, r30, 0x2b04
/* 80C432E0  38 80 00 FF */	li r4, 0xff
/* 80C432E4  38 A0 00 00 */	li r5, 0
/* 80C432E8  7F C6 F3 78 */	mr r6, r30
/* 80C432EC  4B 44 05 74 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C432F0  38 7E 2B 40 */	addi r3, r30, 0x2b40
/* 80C432F4  3C 80 80 C4 */	lis r4, cc_sph_src@ha
/* 80C432F8  38 84 3B D4 */	addi r4, r4, cc_sph_src@l
/* 80C432FC  4B 44 17 38 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80C43300  38 1E 2B 04 */	addi r0, r30, 0x2b04
/* 80C43304  90 1E 2B 84 */	stw r0, 0x2b84(r30)
/* 80C43308  3A C0 00 00 */	li r22, 0
/* 80C4330C  3B 80 00 00 */	li r28, 0
/* 80C43310  3C 60 80 C4 */	lis r3, cc_sph_src@ha
/* 80C43314  3B 43 3B D4 */	addi r26, r3, cc_sph_src@l
lbl_80C43318:
/* 80C43318  7F 3E E2 14 */	add r25, r30, r28
/* 80C4331C  3B 19 08 60 */	addi r24, r25, 0x860
/* 80C43320  7F 03 C3 78 */	mr r3, r24
/* 80C43324  38 80 00 64 */	li r4, 0x64
/* 80C43328  38 A0 00 00 */	li r5, 0
/* 80C4332C  7F C6 F3 78 */	mr r6, r30
/* 80C43330  4B 44 05 30 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C43334  3A A0 00 00 */	li r21, 0
/* 80C43338  3B 60 00 00 */	li r27, 0
lbl_80C4333C:
/* 80C4333C  7E F9 DA 14 */	add r23, r25, r27
/* 80C43340  38 77 08 9C */	addi r3, r23, 0x89c
/* 80C43344  7F 44 D3 78 */	mr r4, r26
/* 80C43348  4B 44 16 EC */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80C4334C  93 17 08 E0 */	stw r24, 0x8e0(r23)
/* 80C43350  3A B5 00 01 */	addi r21, r21, 1
/* 80C43354  2C 15 00 03 */	cmpwi r21, 3
/* 80C43358  3B 7B 01 38 */	addi r27, r27, 0x138
/* 80C4335C  41 80 FF E0 */	blt lbl_80C4333C
/* 80C43360  3A D6 00 01 */	addi r22, r22, 1
/* 80C43364  2C 16 00 06 */	cmpwi r22, 6
/* 80C43368  3B 9C 06 20 */	addi r28, r28, 0x620
/* 80C4336C  41 80 FF AC */	blt lbl_80C43318
/* 80C43370  38 7E 05 88 */	addi r3, r30, 0x588
/* 80C43374  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C43378  38 BE 05 38 */	addi r5, r30, 0x538
/* 80C4337C  38 C0 00 03 */	li r6, 3
/* 80C43380  38 E0 00 01 */	li r7, 1
/* 80C43384  4B 67 D1 AC */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80C43388  88 1E 05 84 */	lbz r0, 0x584(r30)
/* 80C4338C  28 00 00 00 */	cmplwi r0, 0
/* 80C43390  41 82 00 40 */	beq lbl_80C433D0
/* 80C43394  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80C43398  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80C4339C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C433A0  EC 21 00 2A */	fadds f1, f1, f0
/* 80C433A4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C433A8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C433AC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C433B0  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80C433B4  38 61 00 08 */	addi r3, r1, 8
/* 80C433B8  4B 3D A9 04 */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80C433BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C433C0  41 82 00 10 */	beq lbl_80C433D0
/* 80C433C4  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 80C433C8  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 80C433CC  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
lbl_80C433D0:
/* 80C433D0  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80C433D4  D0 1E 2A E8 */	stfs f0, 0x2ae8(r30)
/* 80C433D8  38 00 40 00 */	li r0, 0x4000
/* 80C433DC  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80C433E0  88 1E 05 84 */	lbz r0, 0x584(r30)
/* 80C433E4  28 00 00 00 */	cmplwi r0, 0
/* 80C433E8  40 82 00 28 */	bne lbl_80C43410
/* 80C433EC  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 80C433F0  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80C433F4  EC 01 00 2A */	fadds f0, f1, f0
/* 80C433F8  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 80C433FC  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80C43400  D0 1E 2A F4 */	stfs f0, 0x2af4(r30)
/* 80C43404  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80C43408  D0 1E 2A F8 */	stfs f0, 0x2af8(r30)
/* 80C4340C  48 00 00 24 */	b lbl_80C43430
lbl_80C43410:
/* 80C43410  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 80C43414  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80C43418  EC 01 00 2A */	fadds f0, f1, f0
/* 80C4341C  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 80C43420  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80C43424  D0 1E 2A F4 */	stfs f0, 0x2af4(r30)
/* 80C43428  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 80C4342C  D0 1E 2A F8 */	stfs f0, 0x2af8(r30)
lbl_80C43430:
/* 80C43430  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80C43434  80 9E 05 80 */	lwz r4, 0x580(r30)
/* 80C43438  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C4343C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C43440  3C A5 00 02 */	addis r5, r5, 2
/* 80C43444  38 C0 00 80 */	li r6, 0x80
/* 80C43448  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C4344C  4B 3F 8E A0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C43450  7C 64 1B 78 */	mr r4, r3
/* 80C43454  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C43458  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C4345C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C43460  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C43464  7C 05 07 74 */	extsb r5, r0
/* 80C43468  38 C0 00 01 */	li r6, 1
/* 80C4346C  4B 3E 96 84 */	b addSimpleModel__14dComIfG_play_cFP12J3DModelDataiUc
/* 80C43470  38 00 00 01 */	li r0, 1
/* 80C43474  98 1E 2C B4 */	stb r0, 0x2cb4(r30)
/* 80C43478  38 00 00 35 */	li r0, 0x35
/* 80C4347C  90 1E 2C 90 */	stw r0, 0x2c90(r30)
/* 80C43480  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80C43484  D0 1E 05 20 */	stfs f0, 0x520(r30)
/* 80C43488  7F C3 F3 78 */	mr r3, r30
/* 80C4348C  4B FF F3 45 */	bl daObj_Keyhole_Execute__FP17obj_keyhole_class
lbl_80C43490:
/* 80C43490  7F A3 EB 78 */	mr r3, r29
lbl_80C43494:
/* 80C43494  39 61 00 50 */	addi r11, r1, 0x50
/* 80C43498  4B 71 ED 70 */	b _restgpr_21
/* 80C4349C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C434A0  7C 08 03 A6 */	mtlr r0
/* 80C434A4  38 21 00 50 */	addi r1, r1, 0x50
/* 80C434A8  4E 80 00 20 */	blr 

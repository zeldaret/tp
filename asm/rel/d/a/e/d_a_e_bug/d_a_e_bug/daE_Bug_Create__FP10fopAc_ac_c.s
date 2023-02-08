lbl_806977A8:
/* 806977A8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 806977AC  7C 08 02 A6 */	mflr r0
/* 806977B0  90 01 00 54 */	stw r0, 0x54(r1)
/* 806977B4  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 806977B8  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 806977BC  39 61 00 40 */	addi r11, r1, 0x40
/* 806977C0  4B CC AA 01 */	bl _savegpr_22
/* 806977C4  7C 7C 1B 78 */	mr r28, r3
/* 806977C8  3C 80 80 69 */	lis r4, lit_1109@ha /* 0x80697E30@ha */
/* 806977CC  3B C4 7E 30 */	addi r30, r4, lit_1109@l /* 0x80697E30@l */
/* 806977D0  3C 80 80 69 */	lis r4, lit_3829@ha /* 0x80697CA0@ha */
/* 806977D4  3B E4 7C A0 */	addi r31, r4, lit_3829@l /* 0x80697CA0@l */
/* 806977D8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 806977DC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 806977E0  40 82 00 48 */	bne lbl_80697828
/* 806977E4  7F 80 E3 79 */	or. r0, r28, r28
/* 806977E8  41 82 00 34 */	beq lbl_8069781C
/* 806977EC  7C 16 03 78 */	mr r22, r0
/* 806977F0  4B 98 13 75 */	bl __ct__10fopAc_ac_cFv
/* 806977F4  38 76 05 88 */	addi r3, r22, 0x588
/* 806977F8  3C 80 80 69 */	lis r4, __ct__5bug_sFv@ha /* 0x80697BB8@ha */
/* 806977FC  38 84 7B B8 */	addi r4, r4, __ct__5bug_sFv@l /* 0x80697BB8@l */
/* 80697800  3C A0 80 69 */	lis r5, __dt__5bug_sFv@ha /* 0x80697B4C@ha */
/* 80697804  38 A5 7B 4C */	addi r5, r5, __dt__5bug_sFv@l /* 0x80697B4C@l */
/* 80697808  38 C0 00 78 */	li r6, 0x78
/* 8069780C  38 E0 01 00 */	li r7, 0x100
/* 80697810  4B CC A5 51 */	bl __construct_array
/* 80697814  38 76 7D 8C */	addi r3, r22, 0x7d8c
/* 80697818  4B C2 A4 F9 */	bl __ct__18Z2SoundObjBeeGroupFv
lbl_8069781C:
/* 8069781C  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 80697820  60 00 00 08 */	ori r0, r0, 8
/* 80697824  90 1C 04 A0 */	stw r0, 0x4a0(r28)
lbl_80697828:
/* 80697828  38 7C 05 68 */	addi r3, r28, 0x568
/* 8069782C  3C 80 80 69 */	lis r4, d_a_e_bug__stringBase0@ha /* 0x80697D98@ha */
/* 80697830  38 84 7D 98 */	addi r4, r4, d_a_e_bug__stringBase0@l /* 0x80697D98@l */
/* 80697834  4B 99 56 89 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80697838  7C 7B 1B 78 */	mr r27, r3
/* 8069783C  2C 1B 00 04 */	cmpwi r27, 4
/* 80697840  40 82 02 E8 */	bne lbl_80697B28
/* 80697844  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80697848  98 1C 05 70 */	stb r0, 0x570(r28)
/* 8069784C  88 7C 05 70 */	lbz r3, 0x570(r28)
/* 80697850  38 03 00 01 */	addi r0, r3, 1
/* 80697854  90 1C 7D 88 */	stw r0, 0x7d88(r28)
/* 80697858  80 1C 7D 88 */	lwz r0, 0x7d88(r28)
/* 8069785C  2C 00 01 00 */	cmpwi r0, 0x100
/* 80697860  40 81 00 0C */	ble lbl_8069786C
/* 80697864  38 00 01 00 */	li r0, 0x100
/* 80697868  90 1C 7D 88 */	stw r0, 0x7d88(r28)
lbl_8069786C:
/* 8069786C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80697870  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80697874  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80697878  38 7D 3E C8 */	addi r3, r29, 0x3ec8
/* 8069787C  3C 80 80 69 */	lis r4, d_a_e_bug__stringBase0@ha /* 0x80697D98@ha */
/* 80697880  38 84 7D 98 */	addi r4, r4, d_a_e_bug__stringBase0@l /* 0x80697D98@l */
/* 80697884  38 84 00 06 */	addi r4, r4, 6
/* 80697888  4B CD 11 0D */	bl strcmp
/* 8069788C  2C 03 00 00 */	cmpwi r3, 0
/* 80697890  40 82 00 0C */	bne lbl_8069789C
/* 80697894  38 00 01 00 */	li r0, 0x100
/* 80697898  90 1C 7D 88 */	stw r0, 0x7d88(r28)
lbl_8069789C:
/* 8069789C  7F 83 E3 78 */	mr r3, r28
/* 806978A0  3C 80 80 69 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x806976B4@ha */
/* 806978A4  38 84 76 B4 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x806976B4@l */
/* 806978A8  3C A0 00 05 */	lis r5, 0x0005 /* 0x0004B000@ha */
/* 806978AC  38 A5 B0 00 */	addi r5, r5, 0xB000 /* 0x0004B000@l */
/* 806978B0  4B 98 2C 01 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 806978B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806978B8  40 82 00 0C */	bne lbl_806978C4
/* 806978BC  38 60 00 05 */	li r3, 5
/* 806978C0  48 00 02 6C */	b lbl_80697B2C
lbl_806978C4:
/* 806978C4  88 1E 00 3D */	lbz r0, 0x3d(r30)
/* 806978C8  28 00 00 00 */	cmplwi r0, 0
/* 806978CC  40 82 00 1C */	bne lbl_806978E8
/* 806978D0  38 00 00 01 */	li r0, 1
/* 806978D4  98 1C 7D AC */	stb r0, 0x7dac(r28)
/* 806978D8  98 1E 00 3D */	stb r0, 0x3d(r30)
/* 806978DC  38 00 FF FF */	li r0, -1
/* 806978E0  38 7E 00 4C */	addi r3, r30, 0x4c
/* 806978E4  98 03 00 04 */	stb r0, 4(r3)
lbl_806978E8:
/* 806978E8  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 806978EC  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 806978F0  90 1C 05 74 */	stw r0, 0x574(r28)
/* 806978F4  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 806978F8  54 00 46 3E */	srwi r0, r0, 0x18
/* 806978FC  90 1C 05 78 */	stw r0, 0x578(r28)
/* 80697900  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 80697904  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80697908  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 8069790C  C8 3F 00 F0 */	lfd f1, 0xf0(r31)
/* 80697910  90 01 00 0C */	stw r0, 0xc(r1)
/* 80697914  3C 00 43 30 */	lis r0, 0x4330
/* 80697918  90 01 00 08 */	stw r0, 8(r1)
/* 8069791C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80697920  EC 00 08 28 */	fsubs f0, f0, f1
/* 80697924  EC 02 00 32 */	fmuls f0, f2, f0
/* 80697928  D0 1C 05 7C */	stfs f0, 0x57c(r28)
/* 8069792C  A8 1C 04 B8 */	lha r0, 0x4b8(r28)
/* 80697930  54 18 06 3E */	clrlwi r24, r0, 0x18
/* 80697934  3A E0 00 00 */	li r23, 0
/* 80697938  B2 FC 04 B8 */	sth r23, 0x4b8(r28)
/* 8069793C  B2 FC 04 E0 */	sth r23, 0x4e0(r28)
/* 80697940  3B 20 00 00 */	li r25, 0
/* 80697944  C3 FF 00 04 */	lfs f31, 4(r31)
/* 80697948  48 00 00 94 */	b lbl_806979DC
lbl_8069794C:
/* 8069794C  7E DC BA 14 */	add r22, r28, r23
/* 80697950  93 36 05 90 */	stw r25, 0x590(r22)
/* 80697954  38 00 FF FF */	li r0, -1
/* 80697958  98 16 05 D8 */	stb r0, 0x5d8(r22)
/* 8069795C  C0 1C 04 A8 */	lfs f0, 0x4a8(r28)
/* 80697960  D0 16 05 A0 */	stfs f0, 0x5a0(r22)
/* 80697964  C0 1C 04 AC */	lfs f0, 0x4ac(r28)
/* 80697968  D0 16 05 A4 */	stfs f0, 0x5a4(r22)
/* 8069796C  C0 1C 04 B0 */	lfs f0, 0x4b0(r28)
/* 80697970  D0 16 05 A8 */	stfs f0, 0x5a8(r22)
/* 80697974  9B 36 05 DA */	stb r25, 0x5da(r22)
/* 80697978  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 8069797C  4B BD 00 11 */	bl cM_rndFX__Ff
/* 80697980  EC 1F 08 2A */	fadds f0, f31, f1
/* 80697984  D0 16 05 B0 */	stfs f0, 0x5b0(r22)
/* 80697988  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 8069798C  4B BC FF C9 */	bl cM_rndF__Ff
/* 80697990  FC 00 08 1E */	fctiwz f0, f1
/* 80697994  D8 01 00 08 */	stfd f0, 8(r1)
/* 80697998  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8069799C  B0 16 05 D0 */	sth r0, 0x5d0(r22)
/* 806979A0  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 806979A4  4B BC FF B1 */	bl cM_rndF__Ff
/* 806979A8  FC 00 08 1E */	fctiwz f0, f1
/* 806979AC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 806979B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806979B4  B0 16 05 D4 */	sth r0, 0x5d4(r22)
/* 806979B8  38 76 05 E0 */	addi r3, r22, 0x5e0
/* 806979BC  38 96 05 A0 */	addi r4, r22, 0x5a0
/* 806979C0  38 A0 00 01 */	li r5, 1
/* 806979C4  81 96 05 F0 */	lwz r12, 0x5f0(r22)
/* 806979C8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806979CC  7D 89 03 A6 */	mtctr r12
/* 806979D0  4E 80 04 21 */	bctrl 
/* 806979D4  3B 39 00 01 */	addi r25, r25, 1
/* 806979D8  3A F7 00 78 */	addi r23, r23, 0x78
lbl_806979DC:
/* 806979DC  80 1C 7D 88 */	lwz r0, 0x7d88(r28)
/* 806979E0  7C 19 00 00 */	cmpw r25, r0
/* 806979E4  41 80 FF 68 */	blt lbl_8069794C
/* 806979E8  28 18 00 00 */	cmplwi r24, 0
/* 806979EC  41 82 00 A8 */	beq lbl_80697A94
/* 806979F0  7F 03 C3 78 */	mr r3, r24
/* 806979F4  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 806979F8  7C 04 07 74 */	extsb r4, r0
/* 806979FC  4B 9B 9D F1 */	bl dPath_GetRoomPath__Fii
/* 80697A00  28 03 00 00 */	cmplwi r3, 0
/* 80697A04  41 82 00 90 */	beq lbl_80697A94
/* 80697A08  80 C3 00 08 */	lwz r6, 8(r3)
/* 80697A0C  A0 A3 00 00 */	lhz r5, 0(r3)
/* 80697A10  28 05 00 01 */	cmplwi r5, 1
/* 80697A14  41 80 00 80 */	blt lbl_80697A94
/* 80697A18  28 05 00 04 */	cmplwi r5, 4
/* 80697A1C  41 81 00 78 */	bgt lbl_80697A94
/* 80697A20  80 9C 7D 88 */	lwz r4, 0x7d88(r28)
/* 80697A24  38 05 00 01 */	addi r0, r5, 1
/* 80697A28  7C E4 03 D6 */	divw r7, r4, r0
/* 80697A2C  39 00 00 00 */	li r8, 0
/* 80697A30  48 00 00 58 */	b lbl_80697A88
lbl_80697A34:
/* 80697A34  38 08 00 01 */	addi r0, r8, 1
/* 80697A38  7D 27 01 D6 */	mullw r9, r7, r0
/* 80697A3C  38 08 00 02 */	addi r0, r8, 2
/* 80697A40  7C A7 01 D6 */	mullw r5, r7, r0
/* 80697A44  1C 89 00 78 */	mulli r4, r9, 0x78
/* 80697A48  7C 09 28 50 */	subf r0, r9, r5
/* 80697A4C  7C 09 03 A6 */	mtctr r0
/* 80697A50  7C 09 28 00 */	cmpw r9, r5
/* 80697A54  40 80 00 2C */	bge lbl_80697A80
lbl_80697A58:
/* 80697A58  C0 06 00 04 */	lfs f0, 4(r6)
/* 80697A5C  7C BC 22 14 */	add r5, r28, r4
/* 80697A60  D0 05 05 A0 */	stfs f0, 0x5a0(r5)
/* 80697A64  C0 06 00 08 */	lfs f0, 8(r6)
/* 80697A68  D0 05 05 A4 */	stfs f0, 0x5a4(r5)
/* 80697A6C  C0 06 00 0C */	lfs f0, 0xc(r6)
/* 80697A70  D0 05 05 A8 */	stfs f0, 0x5a8(r5)
/* 80697A74  39 29 00 01 */	addi r9, r9, 1
/* 80697A78  38 84 00 78 */	addi r4, r4, 0x78
/* 80697A7C  42 00 FF DC */	bdnz lbl_80697A58
lbl_80697A80:
/* 80697A80  39 08 00 01 */	addi r8, r8, 1
/* 80697A84  38 C6 00 10 */	addi r6, r6, 0x10
lbl_80697A88:
/* 80697A88  A0 03 00 00 */	lhz r0, 0(r3)
/* 80697A8C  7C 08 00 00 */	cmpw r8, r0
/* 80697A90  41 80 FF A4 */	blt lbl_80697A34
lbl_80697A94:
/* 80697A94  7F 83 E3 78 */	mr r3, r28
/* 80697A98  4B FF F7 FD */	bl daE_Bug_Execute__FP11e_bug_class
/* 80697A9C  3B 40 00 00 */	li r26, 0
/* 80697AA0  3B 20 00 00 */	li r25, 0
/* 80697AA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80697AA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80697AAC  3E C3 00 02 */	addis r22, r3, 2
/* 80697AB0  3C 60 80 69 */	lis r3, d_a_e_bug__stringBase0@ha /* 0x80697D98@ha */
/* 80697AB4  3A E3 7D 98 */	addi r23, r3, d_a_e_bug__stringBase0@l /* 0x80697D98@l */
/* 80697AB8  3B 1F 00 E8 */	addi r24, r31, 0xe8
/* 80697ABC  3B E0 00 01 */	li r31, 1
/* 80697AC0  3A D6 C2 F8 */	addi r22, r22, -15624
lbl_80697AC4:
/* 80697AC4  7E E3 BB 78 */	mr r3, r23
/* 80697AC8  7C 98 C8 2E */	lwzx r4, r24, r25
/* 80697ACC  7E C5 B3 78 */	mr r5, r22
/* 80697AD0  38 C0 00 80 */	li r6, 0x80
/* 80697AD4  4B 9A 48 19 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80697AD8  7C 64 1B 78 */	mr r4, r3
/* 80697ADC  7F A3 EB 78 */	mr r3, r29
/* 80697AE0  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80697AE4  7C 05 07 74 */	extsb r5, r0
/* 80697AE8  38 C0 00 00 */	li r6, 0
/* 80697AEC  4B 99 50 05 */	bl addSimpleModel__14dComIfG_play_cFP12J3DModelDataiUc
/* 80697AF0  9B FC 7D AD */	stb r31, 0x7dad(r28)
/* 80697AF4  3B 5A 00 01 */	addi r26, r26, 1
/* 80697AF8  28 1A 00 02 */	cmplwi r26, 2
/* 80697AFC  3B 39 00 04 */	addi r25, r25, 4
/* 80697B00  41 80 FF C4 */	blt lbl_80697AC4
/* 80697B04  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80697B08  98 1E 00 5C */	stb r0, 0x5c(r30)
/* 80697B0C  38 7C 7D 8C */	addi r3, r28, 0x7d8c
/* 80697B10  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80697B14  38 A0 00 02 */	li r5, 2
/* 80697B18  81 9C 7D 9C */	lwz r12, 0x7d9c(r28)
/* 80697B1C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80697B20  7D 89 03 A6 */	mtctr r12
/* 80697B24  4E 80 04 21 */	bctrl 
lbl_80697B28:
/* 80697B28  7F 63 DB 78 */	mr r3, r27
lbl_80697B2C:
/* 80697B2C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80697B30  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80697B34  39 61 00 40 */	addi r11, r1, 0x40
/* 80697B38  4B CC A6 D5 */	bl _restgpr_22
/* 80697B3C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80697B40  7C 08 03 A6 */	mtlr r0
/* 80697B44  38 21 00 50 */	addi r1, r1, 0x50
/* 80697B48  4E 80 00 20 */	blr 

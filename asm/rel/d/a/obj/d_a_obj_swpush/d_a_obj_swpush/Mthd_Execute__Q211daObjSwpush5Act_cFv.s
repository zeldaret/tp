lbl_80484908:
/* 80484908  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8048490C  7C 08 02 A6 */	mflr r0
/* 80484910  90 01 00 24 */	stw r0, 0x24(r1)
/* 80484914  39 61 00 20 */	addi r11, r1, 0x20
/* 80484918  4B ED D8 BD */	bl _savegpr_27
/* 8048491C  7C 7D 1B 78 */	mr r29, r3
/* 80484920  3C 60 80 48 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80484E84@ha */
/* 80484924  3B C3 4E 84 */	addi r30, r3, cNullVec__6Z2Calc@l /* 0x80484E84@l */
/* 80484928  3C 60 80 48 */	lis r3, M_bmd__Q211daObjSwpush5Act_c@ha /* 0x80484D10@ha */
/* 8048492C  3B E3 4D 10 */	addi r31, r3, M_bmd__Q211daObjSwpush5Act_c@l /* 0x80484D10@l */
/* 80484930  3C 60 80 48 */	lis r3, struct_8048509C+0x0@ha /* 0x8048509C@ha */
/* 80484934  38 A3 50 9C */	addi r5, r3, struct_8048509C+0x0@l /* 0x8048509C@l */
/* 80484938  88 05 00 00 */	lbz r0, 0(r5)
/* 8048493C  7C 00 07 75 */	extsb. r0, r0
/* 80484940  40 82 00 88 */	bne lbl_804849C8
/* 80484944  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 80484948  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 8048494C  90 7E 00 68 */	stw r3, 0x68(r30)
/* 80484950  90 1E 00 6C */	stw r0, 0x6c(r30)
/* 80484954  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 80484958  90 1E 00 70 */	stw r0, 0x70(r30)
/* 8048495C  38 9E 00 68 */	addi r4, r30, 0x68
/* 80484960  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 80484964  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 80484968  90 64 00 0C */	stw r3, 0xc(r4)
/* 8048496C  90 04 00 10 */	stw r0, 0x10(r4)
/* 80484970  80 1E 00 40 */	lwz r0, 0x40(r30)
/* 80484974  90 04 00 14 */	stw r0, 0x14(r4)
/* 80484978  80 7E 00 44 */	lwz r3, 0x44(r30)
/* 8048497C  80 1E 00 48 */	lwz r0, 0x48(r30)
/* 80484980  90 64 00 18 */	stw r3, 0x18(r4)
/* 80484984  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80484988  80 1E 00 4C */	lwz r0, 0x4c(r30)
/* 8048498C  90 04 00 20 */	stw r0, 0x20(r4)
/* 80484990  80 7E 00 50 */	lwz r3, 0x50(r30)
/* 80484994  80 1E 00 54 */	lwz r0, 0x54(r30)
/* 80484998  90 64 00 24 */	stw r3, 0x24(r4)
/* 8048499C  90 04 00 28 */	stw r0, 0x28(r4)
/* 804849A0  80 1E 00 58 */	lwz r0, 0x58(r30)
/* 804849A4  90 04 00 2C */	stw r0, 0x2c(r4)
/* 804849A8  80 7E 00 5C */	lwz r3, 0x5c(r30)
/* 804849AC  80 1E 00 60 */	lwz r0, 0x60(r30)
/* 804849B0  90 64 00 30 */	stw r3, 0x30(r4)
/* 804849B4  90 04 00 34 */	stw r0, 0x34(r4)
/* 804849B8  80 1E 00 64 */	lwz r0, 0x64(r30)
/* 804849BC  90 04 00 38 */	stw r0, 0x38(r4)
/* 804849C0  38 00 00 01 */	li r0, 1
/* 804849C4  98 05 00 00 */	stb r0, 0(r5)
lbl_804849C8:
/* 804849C8  7F A3 EB 78 */	mr r3, r29
/* 804849CC  80 1D 05 B4 */	lwz r0, 0x5b4(r29)
/* 804849D0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 804849D4  39 9E 00 68 */	addi r12, r30, 0x68
/* 804849D8  7D 8C 02 14 */	add r12, r12, r0
/* 804849DC  4B ED D6 A9 */	bl __ptmf_scall
/* 804849E0  60 00 00 00 */	nop 
/* 804849E4  7F A3 EB 78 */	mr r3, r29
/* 804849E8  4B FF F1 95 */	bl set_push_flag__Q211daObjSwpush5Act_cFv
/* 804849EC  3C 60 80 48 */	lis r3, struct_8048509C+0x1@ha /* 0x8048509D@ha */
/* 804849F0  38 A3 50 9D */	addi r5, r3, struct_8048509C+0x1@l /* 0x8048509D@l */
/* 804849F4  88 05 00 00 */	lbz r0, 0(r5)
/* 804849F8  7C 00 07 75 */	extsb. r0, r0
/* 804849FC  40 82 00 70 */	bne lbl_80484A6C
/* 80484A00  80 7E 00 A4 */	lwz r3, 0xa4(r30)
/* 80484A04  80 1E 00 A8 */	lwz r0, 0xa8(r30)
/* 80484A08  90 7E 00 D4 */	stw r3, 0xd4(r30)
/* 80484A0C  90 1E 00 D8 */	stw r0, 0xd8(r30)
/* 80484A10  80 1E 00 AC */	lwz r0, 0xac(r30)
/* 80484A14  90 1E 00 DC */	stw r0, 0xdc(r30)
/* 80484A18  38 9E 00 D4 */	addi r4, r30, 0xd4
/* 80484A1C  80 7E 00 B0 */	lwz r3, 0xb0(r30)
/* 80484A20  80 1E 00 B4 */	lwz r0, 0xb4(r30)
/* 80484A24  90 64 00 0C */	stw r3, 0xc(r4)
/* 80484A28  90 04 00 10 */	stw r0, 0x10(r4)
/* 80484A2C  80 1E 00 B8 */	lwz r0, 0xb8(r30)
/* 80484A30  90 04 00 14 */	stw r0, 0x14(r4)
/* 80484A34  80 7E 00 BC */	lwz r3, 0xbc(r30)
/* 80484A38  80 1E 00 C0 */	lwz r0, 0xc0(r30)
/* 80484A3C  90 64 00 18 */	stw r3, 0x18(r4)
/* 80484A40  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80484A44  80 1E 00 C4 */	lwz r0, 0xc4(r30)
/* 80484A48  90 04 00 20 */	stw r0, 0x20(r4)
/* 80484A4C  80 7E 00 C8 */	lwz r3, 0xc8(r30)
/* 80484A50  80 1E 00 CC */	lwz r0, 0xcc(r30)
/* 80484A54  90 64 00 24 */	stw r3, 0x24(r4)
/* 80484A58  90 04 00 28 */	stw r0, 0x28(r4)
/* 80484A5C  80 1E 00 D0 */	lwz r0, 0xd0(r30)
/* 80484A60  90 04 00 2C */	stw r0, 0x2c(r4)
/* 80484A64  38 00 00 01 */	li r0, 1
/* 80484A68  98 05 00 00 */	stb r0, 0(r5)
lbl_80484A6C:
/* 80484A6C  7F A3 EB 78 */	mr r3, r29
/* 80484A70  80 1D 05 B0 */	lwz r0, 0x5b0(r29)
/* 80484A74  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80484A78  39 9E 00 D4 */	addi r12, r30, 0xd4
/* 80484A7C  7D 8C 02 14 */	add r12, r12, r0
/* 80484A80  4B ED D6 05 */	bl __ptmf_scall
/* 80484A84  60 00 00 00 */	nop 
/* 80484A88  7F A3 EB 78 */	mr r3, r29
/* 80484A8C  4B FF EF D1 */	bl calc_top_pos__Q211daObjSwpush5Act_cFv
/* 80484A90  88 7D 05 C0 */	lbz r3, 0x5c0(r29)
/* 80484A94  30 03 FF FF */	addic r0, r3, -1
/* 80484A98  7C 00 19 10 */	subfe r0, r0, r3
/* 80484A9C  98 1D 05 C1 */	stb r0, 0x5c1(r29)
/* 80484AA0  88 1D 05 C6 */	lbz r0, 0x5c6(r29)
/* 80484AA4  98 1D 05 C7 */	stb r0, 0x5c7(r29)
/* 80484AA8  38 60 00 00 */	li r3, 0
/* 80484AAC  98 7D 05 C0 */	stb r3, 0x5c0(r29)
/* 80484AB0  98 7D 05 C6 */	stb r3, 0x5c6(r29)
/* 80484AB4  88 1D 05 F2 */	lbz r0, 0x5f2(r29)
/* 80484AB8  98 1D 05 F3 */	stb r0, 0x5f3(r29)
/* 80484ABC  98 7D 05 F2 */	stb r3, 0x5f2(r29)
/* 80484AC0  7F A3 EB 78 */	mr r3, r29
/* 80484AC4  4B FF EA 25 */	bl set_mtx__Q211daObjSwpush5Act_cFv
/* 80484AC8  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 80484ACC  4B BF E5 55 */	bl CopyBackVtx__6dBgWSvFv
/* 80484AD0  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 80484AD4  80 A3 00 9C */	lwz r5, 0x9c(r3)
/* 80484AD8  38 9F 00 F8 */	addi r4, r31, 0xf8
/* 80484ADC  38 00 00 04 */	li r0, 4
/* 80484AE0  7C 09 03 A6 */	mtctr r0
lbl_80484AE4:
/* 80484AE4  C0 3D 05 A4 */	lfs f1, 0x5a4(r29)
/* 80484AE8  C0 1D 05 EC */	lfs f0, 0x5ec(r29)
/* 80484AEC  EC 01 00 2A */	fadds f0, f1, f0
/* 80484AF0  88 04 00 00 */	lbz r0, 0(r4)
/* 80484AF4  1C 60 00 0C */	mulli r3, r0, 0xc
/* 80484AF8  38 03 00 04 */	addi r0, r3, 4
/* 80484AFC  7C 05 05 2E */	stfsx f0, r5, r0
/* 80484B00  38 84 00 01 */	addi r4, r4, 1
/* 80484B04  42 00 FF E0 */	bdnz lbl_80484AE4
/* 80484B08  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 80484B0C  4B BF 6E B5 */	bl Move__4dBgWFv
/* 80484B10  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80484B14  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 80484B18  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80484B1C  C0 1D 05 D8 */	lfs f0, 0x5d8(r29)
/* 80484B20  EC 21 00 2A */	fadds f1, f1, f0
/* 80484B24  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 80484B28  EC 01 00 28 */	fsubs f0, f1, f0
/* 80484B2C  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 80484B30  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80484B34  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 80484B38  7F A3 EB 78 */	mr r3, r29
/* 80484B3C  4B FF EA 35 */	bl set_btp_frame__Q211daObjSwpush5Act_cFv
/* 80484B40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80484B44  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80484B48  83 9E 5D AC */	lwz r28, 0x5dac(r30)
/* 80484B4C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80484B50  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80484B54  4B DE C0 B1 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80484B58  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80484B5C  7C 00 18 50 */	subf r0, r0, r3
/* 80484B60  7C 1B 07 34 */	extsh r27, r0
/* 80484B64  7F A3 EB 78 */	mr r3, r29
/* 80484B68  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80484B6C  4B B9 5D F9 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80484B70  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 80484B74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80484B78  40 80 00 24 */	bge lbl_80484B9C
/* 80484B7C  2C 1B 40 00 */	cmpwi r27, 0x4000
/* 80484B80  40 80 00 1C */	bge lbl_80484B9C
/* 80484B84  7F 83 E3 78 */	mr r3, r28
/* 80484B88  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80484B8C  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 80484B90  81 8C 01 08 */	lwz r12, 0x108(r12)
/* 80484B94  7D 89 03 A6 */	mtctr r12
/* 80484B98  4E 80 04 21 */	bctrl 
lbl_80484B9C:
/* 80484B9C  38 60 00 01 */	li r3, 1
/* 80484BA0  39 61 00 20 */	addi r11, r1, 0x20
/* 80484BA4  4B ED D6 7D */	bl _restgpr_27
/* 80484BA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80484BAC  7C 08 03 A6 */	mtlr r0
/* 80484BB0  38 21 00 20 */	addi r1, r1, 0x20
/* 80484BB4  4E 80 00 20 */	blr 

lbl_80A52898:
/* 80A52898  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 80A5289C  7C 08 02 A6 */	mflr r0
/* 80A528A0  90 01 01 44 */	stw r0, 0x144(r1)
/* 80A528A4  DB E1 01 30 */	stfd f31, 0x130(r1)
/* 80A528A8  F3 E1 01 38 */	psq_st f31, 312(r1), 0, 0 /* qr0 */
/* 80A528AC  DB C1 01 20 */	stfd f30, 0x120(r1)
/* 80A528B0  F3 C1 01 28 */	psq_st f30, 296(r1), 0, 0 /* qr0 */
/* 80A528B4  DB A1 01 10 */	stfd f29, 0x110(r1)
/* 80A528B8  F3 A1 01 18 */	psq_st f29, 280(r1), 0, 0 /* qr0 */
/* 80A528BC  39 61 01 10 */	addi r11, r1, 0x110
/* 80A528C0  4B 90 F9 0D */	bl _savegpr_25
/* 80A528C4  7C 7F 1B 78 */	mr r31, r3
/* 80A528C8  3C 60 80 A6 */	lis r3, lit_4030@ha /* 0x80A5DEFC@ha */
/* 80A528CC  3B A3 DE FC */	addi r29, r3, lit_4030@l /* 0x80A5DEFC@l */
/* 80A528D0  7F FE FB 78 */	mr r30, r31
/* 80A528D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A528D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A528DC  83 83 5D AC */	lwz r28, 0x5dac(r3)
/* 80A528E0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A528E4  7C 05 07 74 */	extsb r5, r0
/* 80A528E8  28 05 00 0C */	cmplwi r5, 0xc
/* 80A528EC  41 81 0A 98 */	bgt lbl_80A53384
/* 80A528F0  3C 80 80 A6 */	lis r4, lit_7658@ha /* 0x80A5E914@ha */
/* 80A528F4  38 84 E9 14 */	addi r4, r4, lit_7658@l /* 0x80A5E914@l */
/* 80A528F8  54 A0 10 3A */	slwi r0, r5, 2
/* 80A528FC  7C 04 00 2E */	lwzx r0, r4, r0
/* 80A52900  7C 09 03 A6 */	mtctr r0
/* 80A52904  4E 80 04 20 */	bctr 
lbl_80A52908:
/* 80A52908  3B 23 0F 38 */	addi r25, r3, 0xf38
/* 80A5290C  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80A52910  28 00 00 00 */	cmplwi r0, 0
/* 80A52914  40 82 02 54 */	bne lbl_80A52B68
/* 80A52918  88 1F 05 B6 */	lbz r0, 0x5b6(r31)
/* 80A5291C  28 00 00 00 */	cmplwi r0, 0
/* 80A52920  40 82 02 48 */	bne lbl_80A52B68
/* 80A52924  3C 80 80 A6 */	lis r4, saru_p@ha /* 0x80A5E478@ha */
/* 80A52928  38 84 E4 78 */	addi r4, r4, saru_p@l /* 0x80A5E478@l */
/* 80A5292C  80 04 00 04 */	lwz r0, 4(r4)
/* 80A52930  28 00 00 00 */	cmplwi r0, 0
/* 80A52934  40 82 01 34 */	bne lbl_80A52A68
/* 80A52938  38 80 00 16 */	li r4, 0x16
/* 80A5293C  4B 5E 2A 25 */	bl isSwitch__10dSv_info_cCFii
/* 80A52940  2C 03 00 00 */	cmpwi r3, 0
/* 80A52944  41 82 00 6C */	beq lbl_80A529B0
/* 80A52948  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80A5294C  C0 1D 00 6C */	lfs f0, 0x6c(r29)
/* 80A52950  EC 41 00 28 */	fsubs f2, f1, f0
/* 80A52954  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80A52958  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80A5295C  C0 1D 03 DC */	lfs f0, 0x3dc(r29)
/* 80A52960  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A52964  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A52968  EC 22 00 B2 */	fmuls f1, f2, f2
/* 80A5296C  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A52970  EC 21 00 2A */	fadds f1, f1, f0
/* 80A52974  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 80A52978  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A5297C  40 81 00 0C */	ble lbl_80A52988
/* 80A52980  FC 00 08 34 */	frsqrte f0, f1
/* 80A52984  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80A52988:
/* 80A52988  C0 1D 01 3C */	lfs f0, 0x13c(r29)
/* 80A5298C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A52990  40 80 01 D8 */	bge lbl_80A52B68
/* 80A52994  38 00 00 6E */	li r0, 0x6e
/* 80A52998  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A5299C  38 00 00 00 */	li r0, 0
/* 80A529A0  B0 1F 05 EA */	sth r0, 0x5ea(r31)
/* 80A529A4  38 00 00 01 */	li r0, 1
/* 80A529A8  98 1F 0A EC */	stb r0, 0xaec(r31)
/* 80A529AC  48 00 09 D8 */	b lbl_80A53384
lbl_80A529B0:
/* 80A529B0  38 61 00 98 */	addi r3, r1, 0x98
/* 80A529B4  4B 62 4B C9 */	bl __ct__11dBgS_GndChkFv
/* 80A529B8  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 80A529BC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A529C0  C0 1D 03 E0 */	lfs f0, 0x3e0(r29)
/* 80A529C4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A529C8  C0 1D 03 E4 */	lfs f0, 0x3e4(r29)
/* 80A529CC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A529D0  38 61 00 98 */	addi r3, r1, 0x98
/* 80A529D4  38 81 00 38 */	addi r4, r1, 0x38
/* 80A529D8  4B 81 53 51 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80A529DC  7F 23 CB 78 */	mr r3, r25
/* 80A529E0  38 81 00 98 */	addi r4, r1, 0x98
/* 80A529E4  4B 62 1A BD */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80A529E8  C0 5D 03 E8 */	lfs f2, 0x3e8(r29)
/* 80A529EC  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80A529F0  40 81 00 68 */	ble lbl_80A52A58
/* 80A529F4  38 00 00 70 */	li r0, 0x70
/* 80A529F8  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A529FC  38 00 00 00 */	li r0, 0
/* 80A52A00  B0 1F 05 EA */	sth r0, 0x5ea(r31)
/* 80A52A04  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A52A08  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80A52A0C  40 80 00 34 */	bge lbl_80A52A40
/* 80A52A10  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80A52A14  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80A52A18  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80A52A1C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80A52A20  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80A52A24  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80A52A28  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A52A2C  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 80A52A30  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A52A34  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80A52A38  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A52A3C  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
lbl_80A52A40:
/* 80A52A40  38 00 00 01 */	li r0, 1
/* 80A52A44  98 1F 0A EC */	stb r0, 0xaec(r31)
/* 80A52A48  38 61 00 98 */	addi r3, r1, 0x98
/* 80A52A4C  38 80 FF FF */	li r4, -1
/* 80A52A50  4B 62 4B A1 */	bl __dt__11dBgS_GndChkFv
/* 80A52A54  48 00 09 30 */	b lbl_80A53384
lbl_80A52A58:
/* 80A52A58  38 61 00 98 */	addi r3, r1, 0x98
/* 80A52A5C  38 80 FF FF */	li r4, -1
/* 80A52A60  4B 62 4B 91 */	bl __dt__11dBgS_GndChkFv
/* 80A52A64  48 00 01 04 */	b lbl_80A52B68
lbl_80A52A68:
/* 80A52A68  41 82 01 00 */	beq lbl_80A52B68
/* 80A52A6C  80 04 00 08 */	lwz r0, 8(r4)
/* 80A52A70  28 00 00 00 */	cmplwi r0, 0
/* 80A52A74  41 82 00 F4 */	beq lbl_80A52B68
/* 80A52A78  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80A52A7C  28 00 00 00 */	cmplwi r0, 0
/* 80A52A80  41 82 00 E8 */	beq lbl_80A52B68
/* 80A52A84  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80A52A88  C0 1D 03 E8 */	lfs f0, 0x3e8(r29)
/* 80A52A8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A52A90  40 80 00 0C */	bge lbl_80A52A9C
/* 80A52A94  38 80 00 52 */	li r4, 0x52
/* 80A52A98  4B 5E 27 69 */	bl onSwitch__10dSv_info_cFii
lbl_80A52A9C:
/* 80A52A9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A52AA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A52AA4  38 80 00 52 */	li r4, 0x52
/* 80A52AA8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80A52AAC  7C 05 07 74 */	extsb r5, r0
/* 80A52AB0  4B 5E 28 B1 */	bl isSwitch__10dSv_info_cCFii
/* 80A52AB4  2C 03 00 00 */	cmpwi r3, 0
/* 80A52AB8  40 82 00 B0 */	bne lbl_80A52B68
/* 80A52ABC  C0 3C 04 D0 */	lfs f1, 0x4d0(r28)
/* 80A52AC0  C0 1D 01 E0 */	lfs f0, 0x1e0(r29)
/* 80A52AC4  EC 41 00 28 */	fsubs f2, f1, f0
/* 80A52AC8  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80A52ACC  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 80A52AD0  C0 1D 03 EC */	lfs f0, 0x3ec(r29)
/* 80A52AD4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A52AD8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A52ADC  EC 22 00 B2 */	fmuls f1, f2, f2
/* 80A52AE0  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A52AE4  EC 21 00 2A */	fadds f1, f1, f0
/* 80A52AE8  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 80A52AEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A52AF0  40 81 00 0C */	ble lbl_80A52AFC
/* 80A52AF4  FC 00 08 34 */	frsqrte f0, f1
/* 80A52AF8  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80A52AFC:
/* 80A52AFC  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80A52B00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A52B04  40 80 00 64 */	bge lbl_80A52B68
/* 80A52B08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A52B0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A52B10  38 80 00 52 */	li r4, 0x52
/* 80A52B14  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80A52B18  7C 05 07 74 */	extsb r5, r0
/* 80A52B1C  4B 5E 26 E5 */	bl onSwitch__10dSv_info_cFii
/* 80A52B20  38 60 00 00 */	li r3, 0
/* 80A52B24  39 00 00 6F */	li r8, 0x6f
/* 80A52B28  3C 80 80 A6 */	lis r4, saru_p@ha /* 0x80A5E478@ha */
/* 80A52B2C  38 E4 E4 78 */	addi r7, r4, saru_p@l /* 0x80A5E478@l */
/* 80A52B30  7C 66 1B 78 */	mr r6, r3
/* 80A52B34  38 A0 00 01 */	li r5, 1
/* 80A52B38  38 00 00 04 */	li r0, 4
/* 80A52B3C  7C 09 03 A6 */	mtctr r0
lbl_80A52B40:
/* 80A52B40  7C 87 18 2E */	lwzx r4, r7, r3
/* 80A52B44  B1 04 05 E8 */	sth r8, 0x5e8(r4)
/* 80A52B48  7C 87 18 2E */	lwzx r4, r7, r3
/* 80A52B4C  B0 C4 05 EA */	sth r6, 0x5ea(r4)
/* 80A52B50  7C 87 18 2E */	lwzx r4, r7, r3
/* 80A52B54  98 A4 0A EC */	stb r5, 0xaec(r4)
/* 80A52B58  38 63 00 04 */	addi r3, r3, 4
/* 80A52B5C  42 00 FF E4 */	bdnz lbl_80A52B40
/* 80A52B60  38 00 00 50 */	li r0, 0x50
/* 80A52B64  B0 1F 0B 42 */	sth r0, 0xb42(r31)
lbl_80A52B68:
/* 80A52B68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A52B6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A52B70  38 80 00 52 */	li r4, 0x52
/* 80A52B74  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80A52B78  7C 05 07 74 */	extsb r5, r0
/* 80A52B7C  4B 5E 27 E5 */	bl isSwitch__10dSv_info_cCFii
/* 80A52B80  2C 03 00 00 */	cmpwi r3, 0
/* 80A52B84  40 82 08 00 */	bne lbl_80A53384
/* 80A52B88  7F E3 FB 78 */	mr r3, r31
/* 80A52B8C  4B FF FC 81 */	bl saru_count_check__FP12npc_ks_class
/* 80A52B90  2C 03 00 00 */	cmpwi r3, 0
/* 80A52B94  41 82 07 F0 */	beq lbl_80A53384
/* 80A52B98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A52B9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A52BA0  38 80 00 16 */	li r4, 0x16
/* 80A52BA4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80A52BA8  7C 05 07 74 */	extsb r5, r0
/* 80A52BAC  4B 5E 27 B5 */	bl isSwitch__10dSv_info_cCFii
/* 80A52BB0  2C 03 00 00 */	cmpwi r3, 0
/* 80A52BB4  41 82 07 D0 */	beq lbl_80A53384
/* 80A52BB8  3B C0 00 00 */	li r30, 0
/* 80A52BBC  3B 20 00 00 */	li r25, 0
/* 80A52BC0  C3 DD 03 F0 */	lfs f30, 0x3f0(r29)
/* 80A52BC4  C3 FD 00 30 */	lfs f31, 0x30(r29)
/* 80A52BC8  C3 BD 00 14 */	lfs f29, 0x14(r29)
lbl_80A52BCC:
/* 80A52BCC  C0 3C 04 D0 */	lfs f1, 0x4d0(r28)
/* 80A52BD0  80 7F 09 34 */	lwz r3, 0x934(r31)
/* 80A52BD4  38 19 09 04 */	addi r0, r25, 0x904
/* 80A52BD8  7C 03 04 2E */	lfsx f0, r3, r0
/* 80A52BDC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A52BE0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A52BE4  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80A52BE8  38 19 09 08 */	addi r0, r25, 0x908
/* 80A52BEC  7C 03 04 2E */	lfsx f0, r3, r0
/* 80A52BF0  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80A52BF4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A52BF8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A52BFC  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 80A52C00  38 19 09 0C */	addi r0, r25, 0x90c
/* 80A52C04  7C 03 04 2E */	lfsx f0, r3, r0
/* 80A52C08  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A52C0C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A52C10  38 61 00 38 */	addi r3, r1, 0x38
/* 80A52C14  4B 8F 45 25 */	bl PSVECSquareMag
/* 80A52C18  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80A52C1C  40 81 00 58 */	ble lbl_80A52C74
/* 80A52C20  FC 00 08 34 */	frsqrte f0, f1
/* 80A52C24  C8 9D 00 50 */	lfd f4, 0x50(r29)
/* 80A52C28  FC 44 00 32 */	fmul f2, f4, f0
/* 80A52C2C  C8 7D 00 58 */	lfd f3, 0x58(r29)
/* 80A52C30  FC 00 00 32 */	fmul f0, f0, f0
/* 80A52C34  FC 01 00 32 */	fmul f0, f1, f0
/* 80A52C38  FC 03 00 28 */	fsub f0, f3, f0
/* 80A52C3C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A52C40  FC 44 00 32 */	fmul f2, f4, f0
/* 80A52C44  FC 00 00 32 */	fmul f0, f0, f0
/* 80A52C48  FC 01 00 32 */	fmul f0, f1, f0
/* 80A52C4C  FC 03 00 28 */	fsub f0, f3, f0
/* 80A52C50  FC 02 00 32 */	fmul f0, f2, f0
/* 80A52C54  FC 44 00 32 */	fmul f2, f4, f0
/* 80A52C58  FC 00 00 32 */	fmul f0, f0, f0
/* 80A52C5C  FC 01 00 32 */	fmul f0, f1, f0
/* 80A52C60  FC 03 00 28 */	fsub f0, f3, f0
/* 80A52C64  FC 02 00 32 */	fmul f0, f2, f0
/* 80A52C68  FC 21 00 32 */	fmul f1, f1, f0
/* 80A52C6C  FC 20 08 18 */	frsp f1, f1
/* 80A52C70  48 00 00 88 */	b lbl_80A52CF8
lbl_80A52C74:
/* 80A52C74  C8 1D 00 60 */	lfd f0, 0x60(r29)
/* 80A52C78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A52C7C  40 80 00 10 */	bge lbl_80A52C8C
/* 80A52C80  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A52C84  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A52C88  48 00 00 70 */	b lbl_80A52CF8
lbl_80A52C8C:
/* 80A52C8C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80A52C90  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80A52C94  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A52C98  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A52C9C  7C 03 00 00 */	cmpw r3, r0
/* 80A52CA0  41 82 00 14 */	beq lbl_80A52CB4
/* 80A52CA4  40 80 00 40 */	bge lbl_80A52CE4
/* 80A52CA8  2C 03 00 00 */	cmpwi r3, 0
/* 80A52CAC  41 82 00 20 */	beq lbl_80A52CCC
/* 80A52CB0  48 00 00 34 */	b lbl_80A52CE4
lbl_80A52CB4:
/* 80A52CB4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A52CB8  41 82 00 0C */	beq lbl_80A52CC4
/* 80A52CBC  38 00 00 01 */	li r0, 1
/* 80A52CC0  48 00 00 28 */	b lbl_80A52CE8
lbl_80A52CC4:
/* 80A52CC4  38 00 00 02 */	li r0, 2
/* 80A52CC8  48 00 00 20 */	b lbl_80A52CE8
lbl_80A52CCC:
/* 80A52CCC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A52CD0  41 82 00 0C */	beq lbl_80A52CDC
/* 80A52CD4  38 00 00 05 */	li r0, 5
/* 80A52CD8  48 00 00 10 */	b lbl_80A52CE8
lbl_80A52CDC:
/* 80A52CDC  38 00 00 03 */	li r0, 3
/* 80A52CE0  48 00 00 08 */	b lbl_80A52CE8
lbl_80A52CE4:
/* 80A52CE4  38 00 00 04 */	li r0, 4
lbl_80A52CE8:
/* 80A52CE8  2C 00 00 01 */	cmpwi r0, 1
/* 80A52CEC  40 82 00 0C */	bne lbl_80A52CF8
/* 80A52CF0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A52CF4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80A52CF8:
/* 80A52CF8  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 80A52CFC  40 80 00 DC */	bge lbl_80A52DD8
/* 80A52D00  38 60 00 00 */	li r3, 0
/* 80A52D04  98 7F 0B D9 */	stb r3, 0xbd9(r31)
/* 80A52D08  38 00 00 14 */	li r0, 0x14
/* 80A52D0C  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A52D10  B0 7F 05 EA */	sth r3, 0x5ea(r31)
/* 80A52D14  98 7F 0A EC */	stb r3, 0xaec(r31)
/* 80A52D18  80 1F 09 34 */	lwz r0, 0x934(r31)
/* 80A52D1C  38 79 09 04 */	addi r3, r25, 0x904
/* 80A52D20  7C 60 1A 14 */	add r3, r0, r3
/* 80A52D24  C0 03 00 00 */	lfs f0, 0(r3)
/* 80A52D28  D0 1F 0B C8 */	stfs f0, 0xbc8(r31)
/* 80A52D2C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A52D30  D0 1F 0B CC */	stfs f0, 0xbcc(r31)
/* 80A52D34  C0 03 00 08 */	lfs f0, 8(r3)
/* 80A52D38  D0 1F 0B D0 */	stfs f0, 0xbd0(r31)
/* 80A52D3C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80A52D40  80 BF 09 34 */	lwz r5, 0x934(r31)
/* 80A52D44  20 1E 00 01 */	subfic r0, r30, 1
/* 80A52D48  1C 80 00 0C */	mulli r4, r0, 0xc
/* 80A52D4C  38 84 09 04 */	addi r4, r4, 0x904
/* 80A52D50  7C 85 22 14 */	add r4, r5, r4
/* 80A52D54  38 BF 0B C8 */	addi r5, r31, 0xbc8
/* 80A52D58  4B 81 3D DD */	bl __mi__4cXyzCFRC3Vec
/* 80A52D5C  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80A52D60  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80A52D64  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80A52D68  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A52D6C  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 80A52D70  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80A52D74  4B 81 49 01 */	bl cM_atan2s__Fff
/* 80A52D78  3C 80 80 A6 */	lis r4, leader@ha /* 0x80A5FEA0@ha */
/* 80A52D7C  38 A4 FE A0 */	addi r5, r4, leader@l /* 0x80A5FEA0@l */
/* 80A52D80  80 85 00 00 */	lwz r4, 0(r5)
/* 80A52D84  B0 64 0B D4 */	sth r3, 0xbd4(r4)
/* 80A52D88  38 00 00 0A */	li r0, 0xa
/* 80A52D8C  80 65 00 00 */	lwz r3, 0(r5)
/* 80A52D90  B0 03 0B 42 */	sth r0, 0xb42(r3)
/* 80A52D94  80 7F 09 34 */	lwz r3, 0x934(r31)
/* 80A52D98  88 03 05 70 */	lbz r0, 0x570(r3)
/* 80A52D9C  80 65 00 00 */	lwz r3, 0(r5)
/* 80A52DA0  98 03 0B 40 */	stb r0, 0xb40(r3)
/* 80A52DA4  88 1F 05 B6 */	lbz r0, 0x5b6(r31)
/* 80A52DA8  28 00 00 00 */	cmplwi r0, 0
/* 80A52DAC  41 82 00 2C */	beq lbl_80A52DD8
/* 80A52DB0  80 1F 09 34 */	lwz r0, 0x934(r31)
/* 80A52DB4  80 65 00 00 */	lwz r3, 0(r5)
/* 80A52DB8  90 03 09 34 */	stw r0, 0x934(r3)
/* 80A52DBC  80 65 00 00 */	lwz r3, 0(r5)
/* 80A52DC0  C0 1F 0B C8 */	lfs f0, 0xbc8(r31)
/* 80A52DC4  D0 03 0B C8 */	stfs f0, 0xbc8(r3)
/* 80A52DC8  C0 1F 0B CC */	lfs f0, 0xbcc(r31)
/* 80A52DCC  D0 03 0B CC */	stfs f0, 0xbcc(r3)
/* 80A52DD0  C0 1F 0B D0 */	lfs f0, 0xbd0(r31)
/* 80A52DD4  D0 03 0B D0 */	stfs f0, 0xbd0(r3)
lbl_80A52DD8:
/* 80A52DD8  3B DE 00 01 */	addi r30, r30, 1
/* 80A52DDC  2C 1E 00 02 */	cmpwi r30, 2
/* 80A52DE0  3B 39 00 0C */	addi r25, r25, 0xc
/* 80A52DE4  41 80 FD E8 */	blt lbl_80A52BCC
/* 80A52DE8  48 00 05 9C */	b lbl_80A53384
lbl_80A52DEC:
/* 80A52DEC  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80A52DF0  28 00 00 00 */	cmplwi r0, 0
/* 80A52DF4  40 82 05 90 */	bne lbl_80A53384
/* 80A52DF8  88 1F 05 B6 */	lbz r0, 0x5b6(r31)
/* 80A52DFC  28 00 00 00 */	cmplwi r0, 0
/* 80A52E00  40 82 05 84 */	bne lbl_80A53384
/* 80A52E04  3C 60 80 A6 */	lis r3, saru_p@ha /* 0x80A5E478@ha */
/* 80A52E08  38 63 E4 78 */	addi r3, r3, saru_p@l /* 0x80A5E478@l */
/* 80A52E0C  80 03 00 04 */	lwz r0, 4(r3)
/* 80A52E10  28 00 00 00 */	cmplwi r0, 0
/* 80A52E14  40 82 05 70 */	bne lbl_80A53384
/* 80A52E18  88 1E 05 67 */	lbz r0, 0x567(r30)
/* 80A52E1C  7C 00 07 75 */	extsb. r0, r0
/* 80A52E20  40 82 05 64 */	bne lbl_80A53384
/* 80A52E24  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80A52E28  C0 1D 03 F4 */	lfs f0, 0x3f4(r29)
/* 80A52E2C  EC 41 00 28 */	fsubs f2, f1, f0
/* 80A52E30  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80A52E34  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80A52E38  C0 1D 03 F8 */	lfs f0, 0x3f8(r29)
/* 80A52E3C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A52E40  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A52E44  EC 22 00 B2 */	fmuls f1, f2, f2
/* 80A52E48  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A52E4C  EC 21 00 2A */	fadds f1, f1, f0
/* 80A52E50  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 80A52E54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A52E58  40 81 00 0C */	ble lbl_80A52E64
/* 80A52E5C  FC 00 08 34 */	frsqrte f0, f1
/* 80A52E60  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80A52E64:
/* 80A52E64  C0 1D 03 FC */	lfs f0, 0x3fc(r29)
/* 80A52E68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A52E6C  40 80 05 18 */	bge lbl_80A53384
/* 80A52E70  38 00 00 71 */	li r0, 0x71
/* 80A52E74  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A52E78  38 00 00 00 */	li r0, 0
/* 80A52E7C  B0 1F 05 EA */	sth r0, 0x5ea(r31)
/* 80A52E80  38 00 00 01 */	li r0, 1
/* 80A52E84  98 1F 0A EC */	stb r0, 0xaec(r31)
/* 80A52E88  98 1E 05 67 */	stb r0, 0x567(r30)
/* 80A52E8C  48 00 04 F8 */	b lbl_80A53384
lbl_80A52E90:
/* 80A52E90  7F E3 FB 78 */	mr r3, r31
/* 80A52E94  4B FF F9 79 */	bl saru_count_check__FP12npc_ks_class
/* 80A52E98  2C 03 00 00 */	cmpwi r3, 0
/* 80A52E9C  41 82 03 80 */	beq lbl_80A5321C
/* 80A52EA0  3B 60 00 01 */	li r27, 1
/* 80A52EA4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80A52EA8  2C 00 00 02 */	cmpwi r0, 2
/* 80A52EAC  40 82 01 58 */	bne lbl_80A53004
/* 80A52EB0  3B 40 00 00 */	li r26, 0
/* 80A52EB4  3B 20 00 00 */	li r25, 0
/* 80A52EB8  3C 60 80 A6 */	lis r3, saru_p@ha /* 0x80A5E478@ha */
/* 80A52EBC  3B C3 E4 78 */	addi r30, r3, saru_p@l /* 0x80A5E478@l */
/* 80A52EC0  C3 FD 00 30 */	lfs f31, 0x30(r29)
/* 80A52EC4  C3 DD 00 70 */	lfs f30, 0x70(r29)
/* 80A52EC8  48 00 01 2C */	b lbl_80A52FF4
lbl_80A52ECC:
/* 80A52ECC  38 61 00 20 */	addi r3, r1, 0x20
/* 80A52ED0  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80A52ED4  7C BE C8 2E */	lwzx r5, r30, r25
/* 80A52ED8  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 80A52EDC  4B 81 3C 59 */	bl __mi__4cXyzCFRC3Vec
/* 80A52EE0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80A52EE4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A52EE8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80A52EEC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A52EF0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80A52EF4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A52EF8  38 61 00 38 */	addi r3, r1, 0x38
/* 80A52EFC  4B 8F 42 3D */	bl PSVECSquareMag
/* 80A52F00  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80A52F04  40 81 00 58 */	ble lbl_80A52F5C
/* 80A52F08  FC 00 08 34 */	frsqrte f0, f1
/* 80A52F0C  C8 9D 00 50 */	lfd f4, 0x50(r29)
/* 80A52F10  FC 44 00 32 */	fmul f2, f4, f0
/* 80A52F14  C8 7D 00 58 */	lfd f3, 0x58(r29)
/* 80A52F18  FC 00 00 32 */	fmul f0, f0, f0
/* 80A52F1C  FC 01 00 32 */	fmul f0, f1, f0
/* 80A52F20  FC 03 00 28 */	fsub f0, f3, f0
/* 80A52F24  FC 02 00 32 */	fmul f0, f2, f0
/* 80A52F28  FC 44 00 32 */	fmul f2, f4, f0
/* 80A52F2C  FC 00 00 32 */	fmul f0, f0, f0
/* 80A52F30  FC 01 00 32 */	fmul f0, f1, f0
/* 80A52F34  FC 03 00 28 */	fsub f0, f3, f0
/* 80A52F38  FC 02 00 32 */	fmul f0, f2, f0
/* 80A52F3C  FC 44 00 32 */	fmul f2, f4, f0
/* 80A52F40  FC 00 00 32 */	fmul f0, f0, f0
/* 80A52F44  FC 01 00 32 */	fmul f0, f1, f0
/* 80A52F48  FC 03 00 28 */	fsub f0, f3, f0
/* 80A52F4C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A52F50  FC 21 00 32 */	fmul f1, f1, f0
/* 80A52F54  FC 20 08 18 */	frsp f1, f1
/* 80A52F58  48 00 00 88 */	b lbl_80A52FE0
lbl_80A52F5C:
/* 80A52F5C  C8 1D 00 60 */	lfd f0, 0x60(r29)
/* 80A52F60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A52F64  40 80 00 10 */	bge lbl_80A52F74
/* 80A52F68  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A52F6C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A52F70  48 00 00 70 */	b lbl_80A52FE0
lbl_80A52F74:
/* 80A52F74  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80A52F78  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80A52F7C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A52F80  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A52F84  7C 03 00 00 */	cmpw r3, r0
/* 80A52F88  41 82 00 14 */	beq lbl_80A52F9C
/* 80A52F8C  40 80 00 40 */	bge lbl_80A52FCC
/* 80A52F90  2C 03 00 00 */	cmpwi r3, 0
/* 80A52F94  41 82 00 20 */	beq lbl_80A52FB4
/* 80A52F98  48 00 00 34 */	b lbl_80A52FCC
lbl_80A52F9C:
/* 80A52F9C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A52FA0  41 82 00 0C */	beq lbl_80A52FAC
/* 80A52FA4  38 00 00 01 */	li r0, 1
/* 80A52FA8  48 00 00 28 */	b lbl_80A52FD0
lbl_80A52FAC:
/* 80A52FAC  38 00 00 02 */	li r0, 2
/* 80A52FB0  48 00 00 20 */	b lbl_80A52FD0
lbl_80A52FB4:
/* 80A52FB4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A52FB8  41 82 00 0C */	beq lbl_80A52FC4
/* 80A52FBC  38 00 00 05 */	li r0, 5
/* 80A52FC0  48 00 00 10 */	b lbl_80A52FD0
lbl_80A52FC4:
/* 80A52FC4  38 00 00 03 */	li r0, 3
/* 80A52FC8  48 00 00 08 */	b lbl_80A52FD0
lbl_80A52FCC:
/* 80A52FCC  38 00 00 04 */	li r0, 4
lbl_80A52FD0:
/* 80A52FD0  2C 00 00 01 */	cmpwi r0, 1
/* 80A52FD4  40 82 00 0C */	bne lbl_80A52FE0
/* 80A52FD8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A52FDC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80A52FE0:
/* 80A52FE0  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80A52FE4  40 81 00 08 */	ble lbl_80A52FEC
/* 80A52FE8  3B 60 00 00 */	li r27, 0
lbl_80A52FEC:
/* 80A52FEC  3B 5A 00 01 */	addi r26, r26, 1
/* 80A52FF0  3B 39 00 04 */	addi r25, r25, 4
lbl_80A52FF4:
/* 80A52FF4  80 7F 09 34 */	lwz r3, 0x934(r31)
/* 80A52FF8  80 03 09 1C */	lwz r0, 0x91c(r3)
/* 80A52FFC  7C 1A 00 00 */	cmpw r26, r0
/* 80A53000  41 80 FE CC */	blt lbl_80A52ECC
lbl_80A53004:
/* 80A53004  2C 1B 00 00 */	cmpwi r27, 0
/* 80A53008  41 82 03 7C */	beq lbl_80A53384
/* 80A5300C  C0 3C 04 D0 */	lfs f1, 0x4d0(r28)
/* 80A53010  80 7F 09 34 */	lwz r3, 0x934(r31)
/* 80A53014  C0 03 09 04 */	lfs f0, 0x904(r3)
/* 80A53018  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A5301C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A53020  C0 5C 04 D4 */	lfs f2, 0x4d4(r28)
/* 80A53024  C0 23 09 08 */	lfs f1, 0x908(r3)
/* 80A53028  C0 1D 03 F0 */	lfs f0, 0x3f0(r29)
/* 80A5302C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A53030  EC 02 00 28 */	fsubs f0, f2, f0
/* 80A53034  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A53038  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 80A5303C  C0 03 09 0C */	lfs f0, 0x90c(r3)
/* 80A53040  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A53044  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A53048  38 61 00 38 */	addi r3, r1, 0x38
/* 80A5304C  4B 8F 40 ED */	bl PSVECSquareMag
/* 80A53050  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 80A53054  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A53058  40 81 00 58 */	ble lbl_80A530B0
/* 80A5305C  FC 00 08 34 */	frsqrte f0, f1
/* 80A53060  C8 9D 00 50 */	lfd f4, 0x50(r29)
/* 80A53064  FC 44 00 32 */	fmul f2, f4, f0
/* 80A53068  C8 7D 00 58 */	lfd f3, 0x58(r29)
/* 80A5306C  FC 00 00 32 */	fmul f0, f0, f0
/* 80A53070  FC 01 00 32 */	fmul f0, f1, f0
/* 80A53074  FC 03 00 28 */	fsub f0, f3, f0
/* 80A53078  FC 02 00 32 */	fmul f0, f2, f0
/* 80A5307C  FC 44 00 32 */	fmul f2, f4, f0
/* 80A53080  FC 00 00 32 */	fmul f0, f0, f0
/* 80A53084  FC 01 00 32 */	fmul f0, f1, f0
/* 80A53088  FC 03 00 28 */	fsub f0, f3, f0
/* 80A5308C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A53090  FC 44 00 32 */	fmul f2, f4, f0
/* 80A53094  FC 00 00 32 */	fmul f0, f0, f0
/* 80A53098  FC 01 00 32 */	fmul f0, f1, f0
/* 80A5309C  FC 03 00 28 */	fsub f0, f3, f0
/* 80A530A0  FC 02 00 32 */	fmul f0, f2, f0
/* 80A530A4  FC 21 00 32 */	fmul f1, f1, f0
/* 80A530A8  FC 20 08 18 */	frsp f1, f1
/* 80A530AC  48 00 00 88 */	b lbl_80A53134
lbl_80A530B0:
/* 80A530B0  C8 1D 00 60 */	lfd f0, 0x60(r29)
/* 80A530B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A530B8  40 80 00 10 */	bge lbl_80A530C8
/* 80A530BC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A530C0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A530C4  48 00 00 70 */	b lbl_80A53134
lbl_80A530C8:
/* 80A530C8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A530CC  80 81 00 08 */	lwz r4, 8(r1)
/* 80A530D0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A530D4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A530D8  7C 03 00 00 */	cmpw r3, r0
/* 80A530DC  41 82 00 14 */	beq lbl_80A530F0
/* 80A530E0  40 80 00 40 */	bge lbl_80A53120
/* 80A530E4  2C 03 00 00 */	cmpwi r3, 0
/* 80A530E8  41 82 00 20 */	beq lbl_80A53108
/* 80A530EC  48 00 00 34 */	b lbl_80A53120
lbl_80A530F0:
/* 80A530F0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A530F4  41 82 00 0C */	beq lbl_80A53100
/* 80A530F8  38 00 00 01 */	li r0, 1
/* 80A530FC  48 00 00 28 */	b lbl_80A53124
lbl_80A53100:
/* 80A53100  38 00 00 02 */	li r0, 2
/* 80A53104  48 00 00 20 */	b lbl_80A53124
lbl_80A53108:
/* 80A53108  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A5310C  41 82 00 0C */	beq lbl_80A53118
/* 80A53110  38 00 00 05 */	li r0, 5
/* 80A53114  48 00 00 10 */	b lbl_80A53124
lbl_80A53118:
/* 80A53118  38 00 00 03 */	li r0, 3
/* 80A5311C  48 00 00 08 */	b lbl_80A53124
lbl_80A53120:
/* 80A53120  38 00 00 04 */	li r0, 4
lbl_80A53124:
/* 80A53124  2C 00 00 01 */	cmpwi r0, 1
/* 80A53128  40 82 00 0C */	bne lbl_80A53134
/* 80A5312C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A53130  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80A53134:
/* 80A53134  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 80A53138  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A5313C  40 80 02 48 */	bge lbl_80A53384
/* 80A53140  80 7F 09 34 */	lwz r3, 0x934(r31)
/* 80A53144  C0 03 09 04 */	lfs f0, 0x904(r3)
/* 80A53148  D0 1F 0B C8 */	stfs f0, 0xbc8(r31)
/* 80A5314C  C0 03 09 08 */	lfs f0, 0x908(r3)
/* 80A53150  D0 1F 0B CC */	stfs f0, 0xbcc(r31)
/* 80A53154  C0 03 09 0C */	lfs f0, 0x90c(r3)
/* 80A53158  D0 1F 0B D0 */	stfs f0, 0xbd0(r31)
/* 80A5315C  88 1F 05 B6 */	lbz r0, 0x5b6(r31)
/* 80A53160  28 00 00 00 */	cmplwi r0, 0
/* 80A53164  40 82 00 98 */	bne lbl_80A531FC
/* 80A53168  38 A0 00 00 */	li r5, 0
/* 80A5316C  98 BF 0B D9 */	stb r5, 0xbd9(r31)
/* 80A53170  38 00 00 14 */	li r0, 0x14
/* 80A53174  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A53178  B0 BF 05 EA */	sth r5, 0x5ea(r31)
/* 80A5317C  98 BF 0A EC */	stb r5, 0xaec(r31)
/* 80A53180  38 00 00 0A */	li r0, 0xa
/* 80A53184  3C 60 80 A6 */	lis r3, leader@ha /* 0x80A5FEA0@ha */
/* 80A53188  38 83 FE A0 */	addi r4, r3, leader@l /* 0x80A5FEA0@l */
/* 80A5318C  80 64 00 00 */	lwz r3, 0(r4)
/* 80A53190  B0 03 0B 42 */	sth r0, 0xb42(r3)
/* 80A53194  80 64 00 00 */	lwz r3, 0(r4)
/* 80A53198  98 A3 0B 40 */	stb r5, 0xb40(r3)
/* 80A5319C  80 64 00 00 */	lwz r3, 0(r4)
/* 80A531A0  C0 1F 0B C8 */	lfs f0, 0xbc8(r31)
/* 80A531A4  D0 03 0B C8 */	stfs f0, 0xbc8(r3)
/* 80A531A8  C0 1F 0B CC */	lfs f0, 0xbcc(r31)
/* 80A531AC  D0 03 0B CC */	stfs f0, 0xbcc(r3)
/* 80A531B0  C0 1F 0B D0 */	lfs f0, 0xbd0(r31)
/* 80A531B4  D0 03 0B D0 */	stfs f0, 0xbd0(r3)
/* 80A531B8  38 61 00 14 */	addi r3, r1, 0x14
/* 80A531BC  80 9F 09 34 */	lwz r4, 0x934(r31)
/* 80A531C0  38 84 09 10 */	addi r4, r4, 0x910
/* 80A531C4  38 BF 0B C8 */	addi r5, r31, 0xbc8
/* 80A531C8  4B 81 39 6D */	bl __mi__4cXyzCFRC3Vec
/* 80A531CC  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80A531D0  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80A531D4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80A531D8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A531DC  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 80A531E0  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80A531E4  4B 81 44 91 */	bl cM_atan2s__Fff
/* 80A531E8  3C 80 80 A6 */	lis r4, leader@ha /* 0x80A5FEA0@ha */
/* 80A531EC  38 84 FE A0 */	addi r4, r4, leader@l /* 0x80A5FEA0@l */
/* 80A531F0  80 84 00 00 */	lwz r4, 0(r4)
/* 80A531F4  B0 64 0B D4 */	sth r3, 0xbd4(r4)
/* 80A531F8  48 00 01 8C */	b lbl_80A53384
lbl_80A531FC:
/* 80A531FC  38 00 00 16 */	li r0, 0x16
/* 80A53200  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A53204  38 00 00 00 */	li r0, 0
/* 80A53208  B0 1F 05 EA */	sth r0, 0x5ea(r31)
/* 80A5320C  3C 60 80 A6 */	lis r3, leader@ha /* 0x80A5FEA0@ha */
/* 80A53210  80 03 FE A0 */	lwz r0, leader@l(r3)  /* 0x80A5FEA0@l */
/* 80A53214  90 1F 09 30 */	stw r0, 0x930(r31)
/* 80A53218  48 00 01 6C */	b lbl_80A53384
lbl_80A5321C:
/* 80A5321C  4B FF 5E 39 */	bl checkDoorDemo__Fv
/* 80A53220  2C 03 00 00 */	cmpwi r3, 0
/* 80A53224  40 82 01 60 */	bne lbl_80A53384
/* 80A53228  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80A5322C  7C 05 07 74 */	extsb r5, r0
/* 80A53230  2C 05 00 04 */	cmpwi r5, 4
/* 80A53234  40 82 01 50 */	bne lbl_80A53384
/* 80A53238  88 1F 05 B6 */	lbz r0, 0x5b6(r31)
/* 80A5323C  28 00 00 00 */	cmplwi r0, 0
/* 80A53240  40 82 01 44 */	bne lbl_80A53384
/* 80A53244  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A53248  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A5324C  38 80 00 16 */	li r4, 0x16
/* 80A53250  4B 5E 21 11 */	bl isSwitch__10dSv_info_cCFii
/* 80A53254  2C 03 00 00 */	cmpwi r3, 0
/* 80A53258  40 82 01 2C */	bne lbl_80A53384
/* 80A5325C  38 00 00 CB */	li r0, 0xcb
/* 80A53260  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A53264  38 00 00 00 */	li r0, 0
/* 80A53268  B0 1F 05 EA */	sth r0, 0x5ea(r31)
/* 80A5326C  48 00 01 18 */	b lbl_80A53384
lbl_80A53270:
/* 80A53270  3B 23 0F 38 */	addi r25, r3, 0xf38
/* 80A53274  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80A53278  28 00 00 00 */	cmplwi r0, 0
/* 80A5327C  40 82 01 08 */	bne lbl_80A53384
/* 80A53280  88 1F 05 B6 */	lbz r0, 0x5b6(r31)
/* 80A53284  28 00 00 04 */	cmplwi r0, 4
/* 80A53288  40 82 00 FC */	bne lbl_80A53384
/* 80A5328C  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 80A53290  C0 1D 04 00 */	lfs f0, 0x400(r29)
/* 80A53294  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A53298  40 80 00 EC */	bge lbl_80A53384
/* 80A5329C  38 80 00 51 */	li r4, 0x51
/* 80A532A0  4B 5E 20 C1 */	bl isSwitch__10dSv_info_cCFii
/* 80A532A4  2C 03 00 00 */	cmpwi r3, 0
/* 80A532A8  40 82 00 DC */	bne lbl_80A53384
/* 80A532AC  38 61 00 44 */	addi r3, r1, 0x44
/* 80A532B0  4B 62 42 CD */	bl __ct__11dBgS_GndChkFv
/* 80A532B4  C0 1D 04 04 */	lfs f0, 0x404(r29)
/* 80A532B8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A532BC  C0 1D 04 08 */	lfs f0, 0x408(r29)
/* 80A532C0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A532C4  C0 1D 04 0C */	lfs f0, 0x40c(r29)
/* 80A532C8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A532CC  38 61 00 44 */	addi r3, r1, 0x44
/* 80A532D0  38 81 00 38 */	addi r4, r1, 0x38
/* 80A532D4  4B 81 4A 55 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80A532D8  7F 23 CB 78 */	mr r3, r25
/* 80A532DC  38 81 00 44 */	addi r4, r1, 0x44
/* 80A532E0  4B 62 11 C1 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80A532E4  C0 1D 03 E8 */	lfs f0, 0x3e8(r29)
/* 80A532E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A532EC  40 81 00 34 */	ble lbl_80A53320
/* 80A532F0  38 00 00 73 */	li r0, 0x73
/* 80A532F4  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A532F8  38 00 00 00 */	li r0, 0
/* 80A532FC  B0 1F 05 EA */	sth r0, 0x5ea(r31)
/* 80A53300  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A53304  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A53308  38 80 00 51 */	li r4, 0x51
/* 80A5330C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80A53310  7C 05 07 74 */	extsb r5, r0
/* 80A53314  4B 5E 1E ED */	bl onSwitch__10dSv_info_cFii
/* 80A53318  38 00 00 01 */	li r0, 1
/* 80A5331C  98 1F 0A EC */	stb r0, 0xaec(r31)
lbl_80A53320:
/* 80A53320  38 61 00 44 */	addi r3, r1, 0x44
/* 80A53324  38 80 FF FF */	li r4, -1
/* 80A53328  4B 62 42 C9 */	bl __dt__11dBgS_GndChkFv
/* 80A5332C  48 00 00 58 */	b lbl_80A53384
lbl_80A53330:
/* 80A53330  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80A53334  28 00 00 00 */	cmplwi r0, 0
/* 80A53338  40 82 00 4C */	bne lbl_80A53384
/* 80A5333C  88 1F 05 B6 */	lbz r0, 0x5b6(r31)
/* 80A53340  28 00 00 04 */	cmplwi r0, 4
/* 80A53344  40 82 00 40 */	bne lbl_80A53384
/* 80A53348  38 80 00 53 */	li r4, 0x53
/* 80A5334C  4B 5E 20 15 */	bl isSwitch__10dSv_info_cCFii
/* 80A53350  2C 03 00 00 */	cmpwi r3, 0
/* 80A53354  40 82 00 30 */	bne lbl_80A53384
/* 80A53358  38 00 00 CC */	li r0, 0xcc
/* 80A5335C  B0 1F 05 E8 */	sth r0, 0x5e8(r31)
/* 80A53360  38 00 00 00 */	li r0, 0
/* 80A53364  B0 1F 05 EA */	sth r0, 0x5ea(r31)
/* 80A53368  7F C3 F3 78 */	mr r3, r30
/* 80A5336C  38 80 00 0C */	li r4, 0xc
/* 80A53370  4B 5C 65 C5 */	bl fopAcM_setRoomLayer__FPvi
/* 80A53374  38 00 00 4D */	li r0, 0x4d
/* 80A53378  B0 1F 0B 42 */	sth r0, 0xb42(r31)
/* 80A5337C  38 00 00 01 */	li r0, 1
/* 80A53380  98 1F 0A EC */	stb r0, 0xaec(r31)
lbl_80A53384:
/* 80A53384  E3 E1 01 38 */	psq_l f31, 312(r1), 0, 0 /* qr0 */
/* 80A53388  CB E1 01 30 */	lfd f31, 0x130(r1)
/* 80A5338C  E3 C1 01 28 */	psq_l f30, 296(r1), 0, 0 /* qr0 */
/* 80A53390  CB C1 01 20 */	lfd f30, 0x120(r1)
/* 80A53394  E3 A1 01 18 */	psq_l f29, 280(r1), 0, 0 /* qr0 */
/* 80A53398  CB A1 01 10 */	lfd f29, 0x110(r1)
/* 80A5339C  39 61 01 10 */	addi r11, r1, 0x110
/* 80A533A0  4B 90 EE 79 */	bl _restgpr_25
/* 80A533A4  80 01 01 44 */	lwz r0, 0x144(r1)
/* 80A533A8  7C 08 03 A6 */	mtlr r0
/* 80A533AC  38 21 01 40 */	addi r1, r1, 0x140
/* 80A533B0  4E 80 00 20 */	blr 

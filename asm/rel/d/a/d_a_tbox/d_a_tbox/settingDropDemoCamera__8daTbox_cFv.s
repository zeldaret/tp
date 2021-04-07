lbl_80494A0C:
/* 80494A0C  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80494A10  7C 08 02 A6 */	mflr r0
/* 80494A14  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80494A18  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 80494A1C  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 80494A20  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80494A24  4B EC D7 AD */	bl _savegpr_26
/* 80494A28  7C 7B 1B 78 */	mr r27, r3
/* 80494A2C  3C 60 80 49 */	lis r3, l_cull_size_box@ha /* 0x804961D4@ha */
/* 80494A30  3B E3 61 D4 */	addi r31, r3, l_cull_size_box@l /* 0x804961D4@l */
/* 80494A34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80494A38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80494A3C  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 80494A40  7C 00 07 74 */	extsb r0, r0
/* 80494A44  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80494A48  7C 63 02 14 */	add r3, r3, r0
/* 80494A4C  83 C3 5D 74 */	lwz r30, 0x5d74(r3)
/* 80494A50  38 7E 02 48 */	addi r3, r30, 0x248
/* 80494A54  4B CC CA 7D */	bl Stop__9dCamera_cFv
/* 80494A58  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 80494A5C  54 03 46 3E */	srwi r3, r0, 0x18
/* 80494A60  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80494A64  7C 04 07 74 */	extsb r4, r0
/* 80494A68  4B BA EA 99 */	bl searchMapEventData__14dEvt_control_cFUcl
/* 80494A6C  7C 7C 1B 78 */	mr r28, r3
/* 80494A70  38 7E 02 48 */	addi r3, r30, 0x248
/* 80494A74  88 9C 00 01 */	lbz r4, 1(r28)
/* 80494A78  4B CC E5 95 */	bl SetTrimSize__9dCamera_cFl
/* 80494A7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80494A80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80494A84  38 63 4E C4 */	addi r3, r3, 0x4ec4
/* 80494A88  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80494A8C  7C 04 07 74 */	extsb r4, r0
/* 80494A90  4B B8 F8 F5 */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 80494A94  7C 7A 1B 78 */	mr r26, r3
/* 80494A98  81 83 00 00 */	lwz r12, 0(r3)
/* 80494A9C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80494AA0  7D 89 03 A6 */	mtctr r12
/* 80494AA4  4E 80 04 21 */	bctrl 
/* 80494AA8  83 A3 00 04 */	lwz r29, 4(r3)
/* 80494AAC  88 1C 00 16 */	lbz r0, 0x16(r28)
/* 80494AB0  1C 00 00 18 */	mulli r0, r0, 0x18
/* 80494AB4  7F BD 02 14 */	add r29, r29, r0
/* 80494AB8  7F 43 D3 78 */	mr r3, r26
/* 80494ABC  81 9A 00 00 */	lwz r12, 0(r26)
/* 80494AC0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80494AC4  7D 89 03 A6 */	mtctr r12
/* 80494AC8  4E 80 04 21 */	bctrl 
/* 80494ACC  83 83 00 04 */	lwz r28, 4(r3)
/* 80494AD0  88 1D 00 10 */	lbz r0, 0x10(r29)
/* 80494AD4  1C 00 00 14 */	mulli r0, r0, 0x14
/* 80494AD8  7F 9C 02 14 */	add r28, r28, r0
/* 80494ADC  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80494AE0  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80494AE4  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80494AE8  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80494AEC  C0 1B 04 A8 */	lfs f0, 0x4a8(r27)
/* 80494AF0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80494AF4  C0 1B 04 B0 */	lfs f0, 0x4b0(r27)
/* 80494AF8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80494AFC  38 61 00 64 */	addi r3, r1, 0x64
/* 80494B00  38 81 00 58 */	addi r4, r1, 0x58
/* 80494B04  4B EB 28 99 */	bl PSVECSquareDistance
/* 80494B08  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80494B0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80494B10  40 81 00 58 */	ble lbl_80494B68
/* 80494B14  FC 00 08 34 */	frsqrte f0, f1
/* 80494B18  C8 9F 01 00 */	lfd f4, 0x100(r31)
/* 80494B1C  FC 44 00 32 */	fmul f2, f4, f0
/* 80494B20  C8 7F 01 08 */	lfd f3, 0x108(r31)
/* 80494B24  FC 00 00 32 */	fmul f0, f0, f0
/* 80494B28  FC 01 00 32 */	fmul f0, f1, f0
/* 80494B2C  FC 03 00 28 */	fsub f0, f3, f0
/* 80494B30  FC 02 00 32 */	fmul f0, f2, f0
/* 80494B34  FC 44 00 32 */	fmul f2, f4, f0
/* 80494B38  FC 00 00 32 */	fmul f0, f0, f0
/* 80494B3C  FC 01 00 32 */	fmul f0, f1, f0
/* 80494B40  FC 03 00 28 */	fsub f0, f3, f0
/* 80494B44  FC 02 00 32 */	fmul f0, f2, f0
/* 80494B48  FC 44 00 32 */	fmul f2, f4, f0
/* 80494B4C  FC 00 00 32 */	fmul f0, f0, f0
/* 80494B50  FC 01 00 32 */	fmul f0, f1, f0
/* 80494B54  FC 03 00 28 */	fsub f0, f3, f0
/* 80494B58  FC 02 00 32 */	fmul f0, f2, f0
/* 80494B5C  FF E1 00 32 */	fmul f31, f1, f0
/* 80494B60  FF E0 F8 18 */	frsp f31, f31
/* 80494B64  48 00 00 90 */	b lbl_80494BF4
lbl_80494B68:
/* 80494B68  C8 1F 01 10 */	lfd f0, 0x110(r31)
/* 80494B6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80494B70  40 80 00 10 */	bge lbl_80494B80
/* 80494B74  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80494B78  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80494B7C  48 00 00 78 */	b lbl_80494BF4
lbl_80494B80:
/* 80494B80  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80494B84  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80494B88  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80494B8C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80494B90  7C 03 00 00 */	cmpw r3, r0
/* 80494B94  41 82 00 14 */	beq lbl_80494BA8
/* 80494B98  40 80 00 40 */	bge lbl_80494BD8
/* 80494B9C  2C 03 00 00 */	cmpwi r3, 0
/* 80494BA0  41 82 00 20 */	beq lbl_80494BC0
/* 80494BA4  48 00 00 34 */	b lbl_80494BD8
lbl_80494BA8:
/* 80494BA8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80494BAC  41 82 00 0C */	beq lbl_80494BB8
/* 80494BB0  38 00 00 01 */	li r0, 1
/* 80494BB4  48 00 00 28 */	b lbl_80494BDC
lbl_80494BB8:
/* 80494BB8  38 00 00 02 */	li r0, 2
/* 80494BBC  48 00 00 20 */	b lbl_80494BDC
lbl_80494BC0:
/* 80494BC0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80494BC4  41 82 00 0C */	beq lbl_80494BD0
/* 80494BC8  38 00 00 05 */	li r0, 5
/* 80494BCC  48 00 00 10 */	b lbl_80494BDC
lbl_80494BD0:
/* 80494BD0  38 00 00 03 */	li r0, 3
/* 80494BD4  48 00 00 08 */	b lbl_80494BDC
lbl_80494BD8:
/* 80494BD8  38 00 00 04 */	li r0, 4
lbl_80494BDC:
/* 80494BDC  2C 00 00 01 */	cmpwi r0, 1
/* 80494BE0  40 82 00 10 */	bne lbl_80494BF0
/* 80494BE4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80494BE8  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80494BEC  48 00 00 08 */	b lbl_80494BF4
lbl_80494BF0:
/* 80494BF0  FF E0 08 90 */	fmr f31, f1
lbl_80494BF4:
/* 80494BF4  3C 60 80 43 */	lis r3, BaseY__4cXyz@ha /* 0x80430D24@ha */
/* 80494BF8  C4 03 0D 24 */	lfsu f0, BaseY__4cXyz@l(r3)  /* 0x80430D24@l */
/* 80494BFC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80494C00  C0 03 00 04 */	lfs f0, 4(r3)
/* 80494C04  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80494C08  C0 03 00 08 */	lfs f0, 8(r3)
/* 80494C0C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80494C10  7F 63 DB 78 */	mr r3, r27
/* 80494C14  38 81 00 08 */	addi r4, r1, 8
/* 80494C18  4B FF DE F9 */	bl getDropSAngle__8daTbox_cFPs
/* 80494C1C  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80494C20  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80494C24  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80494C28  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80494C2C  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80494C30  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80494C34  38 61 00 4C */	addi r3, r1, 0x4c
/* 80494C38  38 9B 04 A8 */	addi r4, r27, 0x4a8
/* 80494C3C  7C 65 1B 78 */	mr r5, r3
/* 80494C40  4B EB 24 75 */	bl PSVECSubtract
/* 80494C44  C0 5F 01 40 */	lfs f2, 0x140(r31)
/* 80494C48  A8 01 00 08 */	lha r0, 8(r1)
/* 80494C4C  C8 3F 00 88 */	lfd f1, 0x88(r31)
/* 80494C50  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80494C54  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80494C58  3C 00 43 30 */	lis r0, 0x4330
/* 80494C5C  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 80494C60  C8 01 00 A0 */	lfd f0, 0xa0(r1)
/* 80494C64  EC 00 08 28 */	fsubs f0, f0, f1
/* 80494C68  EC 22 00 32 */	fmuls f1, f2, f0
/* 80494C6C  38 61 00 70 */	addi r3, r1, 0x70
/* 80494C70  38 81 00 40 */	addi r4, r1, 0x40
/* 80494C74  4B EB 1C 05 */	bl PSMTXRotAxisRad
/* 80494C78  38 61 00 70 */	addi r3, r1, 0x70
/* 80494C7C  38 81 00 4C */	addi r4, r1, 0x4c
/* 80494C80  7C 85 23 78 */	mr r5, r4
/* 80494C84  4B EB 20 E9 */	bl PSMTXMultVec
/* 80494C88  38 61 00 4C */	addi r3, r1, 0x4c
/* 80494C8C  38 9B 04 A8 */	addi r4, r27, 0x4a8
/* 80494C90  7C 65 1B 78 */	mr r5, r3
/* 80494C94  4B EB 23 FD */	bl PSVECAdd
/* 80494C98  C0 3C 00 04 */	lfs f1, 4(r28)
/* 80494C9C  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80494CA0  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80494CA4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80494CA8  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80494CAC  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80494CB0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80494CB4  C0 1B 04 A8 */	lfs f0, 0x4a8(r27)
/* 80494CB8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80494CBC  C0 1B 04 AC */	lfs f0, 0x4ac(r27)
/* 80494CC0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80494CC4  C0 1B 04 B0 */	lfs f0, 0x4b0(r27)
/* 80494CC8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80494CCC  A8 9C 00 0C */	lha r4, 0xc(r28)
/* 80494CD0  54 80 04 38 */	rlwinm r0, r4, 0, 0x10, 0x1c
/* 80494CD4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80494CD8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80494CDC  7C 03 04 2E */	lfsx f0, r3, r0
/* 80494CE0  7C 63 02 14 */	add r3, r3, r0
/* 80494CE4  C0 23 00 04 */	lfs f1, 4(r3)
/* 80494CE8  EC 00 08 24 */	fdivs f0, f0, f1
/* 80494CEC  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80494CF0  7C 80 07 35 */	extsh. r0, r4
/* 80494CF4  40 81 00 08 */	ble lbl_80494CFC
/* 80494CF8  FC 00 00 50 */	fneg f0, f0
lbl_80494CFC:
/* 80494CFC  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 80494D00  EC 22 00 2A */	fadds f1, f2, f0
/* 80494D04  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80494D08  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80494D0C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80494D10  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80494D14  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80494D18  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80494D1C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80494D20  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80494D24  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80494D28  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80494D2C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80494D30  38 7E 02 48 */	addi r3, r30, 0x248
/* 80494D34  38 81 00 1C */	addi r4, r1, 0x1c
/* 80494D38  38 A1 00 10 */	addi r5, r1, 0x10
/* 80494D3C  38 C0 00 00 */	li r6, 0
/* 80494D40  88 1D 00 11 */	lbz r0, 0x11(r29)
/* 80494D44  C8 3F 01 48 */	lfd f1, 0x148(r31)
/* 80494D48  90 01 00 AC */	stw r0, 0xac(r1)
/* 80494D4C  3C 00 43 30 */	lis r0, 0x4330
/* 80494D50  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 80494D54  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 80494D58  EC 20 08 28 */	fsubs f1, f0, f1
/* 80494D5C  4B CE BD E5 */	bl Set__9dCamera_cF4cXyz4cXyzsf
/* 80494D60  38 00 00 01 */	li r0, 1
/* 80494D64  98 1B 09 C9 */	stb r0, 0x9c9(r27)
/* 80494D68  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 80494D6C  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 80494D70  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80494D74  4B EC D4 A9 */	bl _restgpr_26
/* 80494D78  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80494D7C  7C 08 03 A6 */	mtlr r0
/* 80494D80  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80494D84  4E 80 00 20 */	blr 

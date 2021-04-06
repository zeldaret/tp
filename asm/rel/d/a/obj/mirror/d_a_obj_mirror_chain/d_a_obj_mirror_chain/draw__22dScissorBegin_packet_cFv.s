lbl_80C96698:
/* 80C96698  94 21 FE 50 */	stwu r1, -0x1b0(r1)
/* 80C9669C  7C 08 02 A6 */	mflr r0
/* 80C966A0  90 01 01 B4 */	stw r0, 0x1b4(r1)
/* 80C966A4  DB E1 01 A0 */	stfd f31, 0x1a0(r1)
/* 80C966A8  F3 E1 01 A8 */	psq_st f31, 424(r1), 0, 0 /* qr0 */
/* 80C966AC  DB C1 01 90 */	stfd f30, 0x190(r1)
/* 80C966B0  F3 C1 01 98 */	psq_st f30, 408(r1), 0, 0 /* qr0 */
/* 80C966B4  DB A1 01 80 */	stfd f29, 0x180(r1)
/* 80C966B8  F3 A1 01 88 */	psq_st f29, 392(r1), 0, 0 /* qr0 */
/* 80C966BC  DB 81 01 70 */	stfd f28, 0x170(r1)
/* 80C966C0  F3 81 01 78 */	psq_st f28, 376(r1), 0, 0 /* qr0 */
/* 80C966C4  DB 61 01 60 */	stfd f27, 0x160(r1)
/* 80C966C8  F3 61 01 68 */	psq_st f27, 360(r1), 0, 0 /* qr0 */
/* 80C966CC  DB 41 01 50 */	stfd f26, 0x150(r1)
/* 80C966D0  F3 41 01 58 */	psq_st f26, 344(r1), 0, 0 /* qr0 */
/* 80C966D4  DB 21 01 40 */	stfd f25, 0x140(r1)
/* 80C966D8  F3 21 01 48 */	psq_st f25, 328(r1), 0, 0 /* qr0 */
/* 80C966DC  DB 01 01 30 */	stfd f24, 0x130(r1)
/* 80C966E0  F3 01 01 38 */	psq_st f24, 312(r1), 0, 0 /* qr0 */
/* 80C966E4  DA E1 01 20 */	stfd f23, 0x120(r1)
/* 80C966E8  F2 E1 01 28 */	psq_st f23, 296(r1), 0, 0 /* qr0 */
/* 80C966EC  DA C1 01 10 */	stfd f22, 0x110(r1)
/* 80C966F0  F2 C1 01 18 */	psq_st f22, 280(r1), 0, 0 /* qr0 */
/* 80C966F4  39 61 01 10 */	addi r11, r1, 0x110
/* 80C966F8  4B 6C BA C9 */	bl _savegpr_22
/* 80C966FC  7C 7B 1B 78 */	mr r27, r3
/* 80C96700  3C 60 80 CA */	lis r3, lit_3915@ha /* 0x80C98028@ha */
/* 80C96704  3B E3 80 28 */	addi r31, r3, lit_3915@l /* 0x80C98028@l */
/* 80C96708  3C 60 80 CA */	lis r3, l_scissor@ha /* 0x80C98138@ha */
/* 80C9670C  38 63 81 38 */	addi r3, r3, l_scissor@l /* 0x80C98138@l */
/* 80C96710  3B A3 00 04 */	addi r29, r3, 4
/* 80C96714  7F A4 EB 78 */	mr r4, r29
/* 80C96718  3B 83 00 08 */	addi r28, r3, 8
/* 80C9671C  7F 85 E3 78 */	mr r5, r28
/* 80C96720  3B C3 00 0C */	addi r30, r3, 0xc
/* 80C96724  7F C6 F3 78 */	mr r6, r30
/* 80C96728  4B 6C 9E 21 */	bl GXGetScissor
/* 80C9672C  3C 60 80 45 */	lis r3, __float_max@ha /* 0x80450AE8@ha */
/* 80C96730  C0 03 0A E8 */	lfs f0, __float_max@l(r3)  /* 0x80450AE8@l */
/* 80C96734  FF E0 00 90 */	fmr f31, f0
/* 80C96738  FF C0 00 90 */	fmr f30, f0
/* 80C9673C  FC 00 00 50 */	fneg f0, f0
/* 80C96740  FF A0 00 90 */	fmr f29, f0
/* 80C96744  FF 80 00 90 */	fmr f28, f0
/* 80C96748  FF 60 00 90 */	fmr f27, f0
/* 80C9674C  3C 60 80 CA */	lis r3, l_scissor@ha /* 0x80C98138@ha */
/* 80C96750  80 03 81 38 */	lwz r0, l_scissor@l(r3)  /* 0x80C98138@l */
/* 80C96754  C8 3F 00 28 */	lfd f1, 0x28(r31)
/* 80C96758  90 01 00 CC */	stw r0, 0xcc(r1)
/* 80C9675C  3C 60 43 30 */	lis r3, 0x4330
/* 80C96760  90 61 00 C8 */	stw r3, 0xc8(r1)
/* 80C96764  C8 01 00 C8 */	lfd f0, 0xc8(r1)
/* 80C96768  EF 40 08 28 */	fsubs f26, f0, f1
/* 80C9676C  80 1C 00 00 */	lwz r0, 0(r28)
/* 80C96770  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80C96774  90 61 00 D0 */	stw r3, 0xd0(r1)
/* 80C96778  C8 01 00 D0 */	lfd f0, 0xd0(r1)
/* 80C9677C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C96780  EF 3A 00 2A */	fadds f25, f26, f0
/* 80C96784  80 1D 00 00 */	lwz r0, 0(r29)
/* 80C96788  90 01 00 DC */	stw r0, 0xdc(r1)
/* 80C9678C  90 61 00 D8 */	stw r3, 0xd8(r1)
/* 80C96790  C8 01 00 D8 */	lfd f0, 0xd8(r1)
/* 80C96794  EF 00 08 28 */	fsubs f24, f0, f1
/* 80C96798  80 1E 00 00 */	lwz r0, 0(r30)
/* 80C9679C  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80C967A0  90 61 00 E0 */	stw r3, 0xe0(r1)
/* 80C967A4  C8 01 00 E0 */	lfd f0, 0xe0(r1)
/* 80C967A8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C967AC  EE F8 00 2A */	fadds f23, f24, f0
/* 80C967B0  3B A0 00 04 */	li r29, 4
/* 80C967B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C967B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C967BC  83 C3 61 B0 */	lwz r30, 0x61b0(r3)
/* 80C967C0  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80C967C4  FE C0 00 50 */	fneg f22, f0
/* 80C967C8  3A DB 00 10 */	addi r22, r27, 0x10
/* 80C967CC  3A E1 00 8C */	addi r23, r1, 0x8c
/* 80C967D0  3B 00 00 00 */	li r24, 0
/* 80C967D4  3B 80 00 00 */	li r28, 0
/* 80C967D8  3B 20 00 00 */	li r25, 0
lbl_80C967DC:
/* 80C967DC  38 7E 01 40 */	addi r3, r30, 0x140
/* 80C967E0  7E C4 B3 78 */	mr r4, r22
/* 80C967E4  7E E5 BB 78 */	mr r5, r23
/* 80C967E8  4B 6B 05 85 */	bl PSMTXMultVec
/* 80C967EC  C0 17 00 08 */	lfs f0, 8(r23)
/* 80C967F0  FC 00 B0 40 */	fcmpo cr0, f0, f22
/* 80C967F4  4C 41 13 82 */	cror 2, 1, 2
/* 80C967F8  40 82 00 08 */	bne lbl_80C96800
/* 80C967FC  3B 18 00 01 */	addi r24, r24, 1
lbl_80C96800:
/* 80C96800  C0 17 00 08 */	lfs f0, 8(r23)
/* 80C96804  FC 00 B0 40 */	fcmpo cr0, f0, f22
/* 80C96808  4C 41 13 82 */	cror 2, 1, 2
/* 80C9680C  7C 00 00 26 */	mfcr r0
/* 80C96810  54 00 1F FF */	rlwinm. r0, r0, 3, 0x1f, 0x1f
/* 80C96814  40 82 00 08 */	bne lbl_80C9681C
/* 80C96818  7F 3C CB 78 */	mr r28, r25
lbl_80C9681C:
/* 80C9681C  3B 39 00 01 */	addi r25, r25, 1
/* 80C96820  2C 19 00 04 */	cmpwi r25, 4
/* 80C96824  3A D6 00 0C */	addi r22, r22, 0xc
/* 80C96828  3A F7 00 0C */	addi r23, r23, 0xc
/* 80C9682C  41 80 FF B0 */	blt lbl_80C967DC
/* 80C96830  2C 18 00 04 */	cmpwi r24, 4
/* 80C96834  41 80 00 1C */	blt lbl_80C96850
/* 80C96838  38 60 02 61 */	li r3, 0x261
/* 80C9683C  38 80 01 C1 */	li r4, 0x1c1
/* 80C96840  38 A0 00 00 */	li r5, 0
/* 80C96844  38 C0 00 00 */	li r6, 0
/* 80C96848  4B 6C 9C 89 */	bl GXSetScissor
/* 80C9684C  48 00 04 F8 */	b lbl_80C96D44
lbl_80C96850:
/* 80C96850  2C 18 00 00 */	cmpwi r24, 0
/* 80C96854  41 82 01 D8 */	beq lbl_80C96A2C
/* 80C96858  3B 60 FF FF */	li r27, -1
/* 80C9685C  38 00 00 04 */	li r0, 4
/* 80C96860  7C 09 03 A6 */	mtctr r0
lbl_80C96864:
/* 80C96864  38 7C 00 01 */	addi r3, r28, 1
/* 80C96868  54 60 F0 02 */	slwi r0, r3, 0x1e
/* 80C9686C  54 63 0F FE */	srwi r3, r3, 0x1f
/* 80C96870  7C 03 00 50 */	subf r0, r3, r0
/* 80C96874  54 00 10 3E */	rotlwi r0, r0, 2
/* 80C96878  7C A0 1A 14 */	add r5, r0, r3
/* 80C9687C  2C 1B 00 00 */	cmpwi r27, 0
/* 80C96880  40 80 00 28 */	bge lbl_80C968A8
/* 80C96884  1C 85 00 0C */	mulli r4, r5, 0xc
/* 80C96888  38 61 00 8C */	addi r3, r1, 0x8c
/* 80C9688C  38 04 00 08 */	addi r0, r4, 8
/* 80C96890  7C 03 04 2E */	lfsx f0, r3, r0
/* 80C96894  FC 00 B0 40 */	fcmpo cr0, f0, f22
/* 80C96898  4C 41 13 82 */	cror 2, 1, 2
/* 80C9689C  40 82 01 88 */	bne lbl_80C96A24
/* 80C968A0  7C BB 2B 78 */	mr r27, r5
/* 80C968A4  48 00 01 80 */	b lbl_80C96A24
lbl_80C968A8:
/* 80C968A8  1F 05 00 0C */	mulli r24, r5, 0xc
/* 80C968AC  3B 21 00 8C */	addi r25, r1, 0x8c
/* 80C968B0  7F 39 C2 14 */	add r25, r25, r24
/* 80C968B4  C0 19 00 08 */	lfs f0, 8(r25)
/* 80C968B8  FC 00 B0 40 */	fcmpo cr0, f0, f22
/* 80C968BC  40 80 01 68 */	bge lbl_80C96A24
/* 80C968C0  38 7B 00 03 */	addi r3, r27, 3
/* 80C968C4  54 60 F0 02 */	slwi r0, r3, 0x1e
/* 80C968C8  54 63 0F FE */	srwi r3, r3, 0x1f
/* 80C968CC  7C 03 00 50 */	subf r0, r3, r0
/* 80C968D0  54 00 10 3E */	rotlwi r0, r0, 2
/* 80C968D4  7C A0 1A 14 */	add r5, r0, r3
/* 80C968D8  38 61 00 50 */	addi r3, r1, 0x50
/* 80C968DC  1C 1B 00 0C */	mulli r0, r27, 0xc
/* 80C968E0  38 81 00 8C */	addi r4, r1, 0x8c
/* 80C968E4  7C 84 02 14 */	add r4, r4, r0
/* 80C968E8  1F A5 00 0C */	mulli r29, r5, 0xc
/* 80C968EC  3B 41 00 8C */	addi r26, r1, 0x8c
/* 80C968F0  7F 5A EA 14 */	add r26, r26, r29
/* 80C968F4  7F 45 D3 78 */	mr r5, r26
/* 80C968F8  4B 5D 02 3D */	bl __mi__4cXyzCFRC3Vec
/* 80C968FC  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80C96900  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80C96904  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80C96908  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80C9690C  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 80C96910  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 80C96914  3A E1 00 94 */	addi r23, r1, 0x94
/* 80C96918  7C 17 EC 2E */	lfsx f0, r23, r29
/* 80C9691C  EC 16 00 28 */	fsubs f0, f22, f0
/* 80C96920  EC 20 08 24 */	fdivs f1, f0, f1
/* 80C96924  38 61 00 80 */	addi r3, r1, 0x80
/* 80C96928  7C 64 1B 78 */	mr r4, r3
/* 80C9692C  4B 6B 07 AD */	bl PSVECScale
/* 80C96930  38 61 00 44 */	addi r3, r1, 0x44
/* 80C96934  7F 44 D3 78 */	mr r4, r26
/* 80C96938  38 A1 00 80 */	addi r5, r1, 0x80
/* 80C9693C  4B 5D 01 A9 */	bl __pl__4cXyzCFRC3Vec
/* 80C96940  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80C96944  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80C96948  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80C9694C  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80C96950  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80C96954  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 80C96958  38 61 00 38 */	addi r3, r1, 0x38
/* 80C9695C  1E DC 00 0C */	mulli r22, r28, 0xc
/* 80C96960  3B 41 00 8C */	addi r26, r1, 0x8c
/* 80C96964  7F 5A B2 14 */	add r26, r26, r22
/* 80C96968  7F 44 D3 78 */	mr r4, r26
/* 80C9696C  7F 25 CB 78 */	mr r5, r25
/* 80C96970  3B A0 00 05 */	li r29, 5
/* 80C96974  4B 5D 01 C1 */	bl __mi__4cXyzCFRC3Vec
/* 80C96978  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80C9697C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80C96980  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80C96984  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80C96988  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 80C9698C  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 80C96990  38 61 00 80 */	addi r3, r1, 0x80
/* 80C96994  7C 64 1B 78 */	mr r4, r3
/* 80C96998  7C 17 C4 2E */	lfsx f0, r23, r24
/* 80C9699C  EC 16 00 28 */	fsubs f0, f22, f0
/* 80C969A0  EC 20 08 24 */	fdivs f1, f0, f1
/* 80C969A4  4B 6B 07 35 */	bl PSVECScale
/* 80C969A8  38 61 00 2C */	addi r3, r1, 0x2c
/* 80C969AC  7F 24 CB 78 */	mr r4, r25
/* 80C969B0  38 A1 00 80 */	addi r5, r1, 0x80
/* 80C969B4  4B 5D 01 31 */	bl __pl__4cXyzCFRC3Vec
/* 80C969B8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80C969BC  D0 1A 00 00 */	stfs f0, 0(r26)
/* 80C969C0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80C969C4  38 61 00 90 */	addi r3, r1, 0x90
/* 80C969C8  7C 03 B5 2E */	stfsx f0, r3, r22
/* 80C969CC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80C969D0  7C 17 B5 2E */	stfsx f0, r23, r22
/* 80C969D4  7F 64 DB 78 */	mr r4, r27
/* 80C969D8  48 00 00 40 */	b lbl_80C96A18
lbl_80C969DC:
/* 80C969DC  C0 1A 00 00 */	lfs f0, 0(r26)
/* 80C969E0  1C 04 00 0C */	mulli r0, r4, 0xc
/* 80C969E4  38 61 00 8C */	addi r3, r1, 0x8c
/* 80C969E8  7C 63 02 14 */	add r3, r3, r0
/* 80C969EC  D0 03 00 00 */	stfs f0, 0(r3)
/* 80C969F0  C0 1A 00 04 */	lfs f0, 4(r26)
/* 80C969F4  D0 03 00 04 */	stfs f0, 4(r3)
/* 80C969F8  C0 1A 00 08 */	lfs f0, 8(r26)
/* 80C969FC  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C96A00  38 64 00 01 */	addi r3, r4, 1
/* 80C96A04  54 60 F0 02 */	slwi r0, r3, 0x1e
/* 80C96A08  54 63 0F FE */	srwi r3, r3, 0x1f
/* 80C96A0C  7C 03 00 50 */	subf r0, r3, r0
/* 80C96A10  54 00 10 3E */	rotlwi r0, r0, 2
/* 80C96A14  7C 80 1A 14 */	add r4, r0, r3
lbl_80C96A18:
/* 80C96A18  7C 04 E0 00 */	cmpw r4, r28
/* 80C96A1C  40 82 FF C0 */	bne lbl_80C969DC
/* 80C96A20  48 00 00 0C */	b lbl_80C96A2C
lbl_80C96A24:
/* 80C96A24  7C BC 2B 78 */	mr r28, r5
/* 80C96A28  42 00 FE 3C */	bdnz lbl_80C96864
lbl_80C96A2C:
/* 80C96A2C  C2 DE 00 D4 */	lfs f22, 0xd4(r30)
/* 80C96A30  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80C96A34  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80C96A38  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 80C96A3C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C96A40  EC 22 00 32 */	fmuls f1, f2, f0
/* 80C96A44  4B 6D 5C 25 */	bl tan
/* 80C96A48  FC 00 08 18 */	frsp f0, f1
/* 80C96A4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C96A50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C96A54  80 63 61 AC */	lwz r3, 0x61ac(r3)
/* 80C96A58  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80C96A5C  C0 43 00 00 */	lfs f2, 0(r3)
/* 80C96A60  FC 01 10 00 */	fcmpu cr0, f1, f2
/* 80C96A64  41 82 00 2C */	beq lbl_80C96A90
/* 80C96A68  C0 7F 00 04 */	lfs f3, 4(r31)
/* 80C96A6C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80C96A70  EC 41 00 B2 */	fmuls f2, f1, f2
/* 80C96A74  C0 23 00 08 */	lfs f1, 8(r3)
/* 80C96A78  EC 22 08 2A */	fadds f1, f2, f1
/* 80C96A7C  EC 43 00 72 */	fmuls f2, f3, f1
/* 80C96A80  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80C96A84  EC 62 08 28 */	fsubs f3, f2, f1
/* 80C96A88  C0 BF 00 14 */	lfs f5, 0x14(r31)
/* 80C96A8C  48 00 00 0C */	b lbl_80C96A98
lbl_80C96A90:
/* 80C96A90  FC 60 10 90 */	fmr f3, f2
/* 80C96A94  C0 A3 00 08 */	lfs f5, 8(r3)
lbl_80C96A98:
/* 80C96A98  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80C96A9C  C0 43 00 04 */	lfs f2, 4(r3)
/* 80C96AA0  FC 01 10 00 */	fcmpu cr0, f1, f2
/* 80C96AA4  41 82 00 2C */	beq lbl_80C96AD0
/* 80C96AA8  C0 9F 00 04 */	lfs f4, 4(r31)
/* 80C96AAC  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80C96AB0  EC 41 00 B2 */	fmuls f2, f1, f2
/* 80C96AB4  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80C96AB8  EC 22 08 2A */	fadds f1, f2, f1
/* 80C96ABC  EC 44 00 72 */	fmuls f2, f4, f1
/* 80C96AC0  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80C96AC4  EC 82 08 28 */	fsubs f4, f2, f1
/* 80C96AC8  C0 DF 00 1C */	lfs f6, 0x1c(r31)
/* 80C96ACC  48 00 00 0C */	b lbl_80C96AD8
lbl_80C96AD0:
/* 80C96AD0  FC 80 10 90 */	fmr f4, f2
/* 80C96AD4  C0 C3 00 0C */	lfs f6, 0xc(r3)
lbl_80C96AD8:
/* 80C96AD8  38 61 00 8C */	addi r3, r1, 0x8c
/* 80C96ADC  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80C96AE0  EC 22 01 72 */	fmuls f1, f2, f5
/* 80C96AE4  EC 42 01 B2 */	fmuls f2, f2, f6
/* 80C96AE8  C0 DF 00 20 */	lfs f6, 0x20(r31)
/* 80C96AEC  7F A9 03 A6 */	mtctr r29
/* 80C96AF0  2C 1D 00 00 */	cmpwi r29, 0
/* 80C96AF4  40 81 00 AC */	ble lbl_80C96BA0
lbl_80C96AF8:
/* 80C96AF8  C0 E3 00 04 */	lfs f7, 4(r3)
/* 80C96AFC  C0 A3 00 08 */	lfs f5, 8(r3)
/* 80C96B00  EC A5 00 32 */	fmuls f5, f5, f0
/* 80C96B04  EC A7 28 24 */	fdivs f5, f7, f5
/* 80C96B08  D0 A3 00 04 */	stfs f5, 4(r3)
/* 80C96B0C  C0 E3 00 00 */	lfs f7, 0(r3)
/* 80C96B10  C0 A3 00 08 */	lfs f5, 8(r3)
/* 80C96B14  FC A0 28 50 */	fneg f5, f5
/* 80C96B18  EC A5 00 32 */	fmuls f5, f5, f0
/* 80C96B1C  EC B6 01 72 */	fmuls f5, f22, f5
/* 80C96B20  EC A7 28 24 */	fdivs f5, f7, f5
/* 80C96B24  D0 A3 00 00 */	stfs f5, 0(r3)
/* 80C96B28  C0 A3 00 00 */	lfs f5, 0(r3)
/* 80C96B2C  EC A6 28 2A */	fadds f5, f6, f5
/* 80C96B30  EC A5 00 72 */	fmuls f5, f5, f1
/* 80C96B34  EC A3 28 2A */	fadds f5, f3, f5
/* 80C96B38  D0 A3 00 00 */	stfs f5, 0(r3)
/* 80C96B3C  C0 A3 00 04 */	lfs f5, 4(r3)
/* 80C96B40  EC A6 28 2A */	fadds f5, f6, f5
/* 80C96B44  EC A5 00 B2 */	fmuls f5, f5, f2
/* 80C96B48  EC A4 28 2A */	fadds f5, f4, f5
/* 80C96B4C  D0 A3 00 04 */	stfs f5, 4(r3)
/* 80C96B50  C0 A3 00 00 */	lfs f5, 0(r3)
/* 80C96B54  FC 05 F8 40 */	fcmpo cr0, f5, f31
/* 80C96B58  40 80 00 08 */	bge lbl_80C96B60
/* 80C96B5C  FF E0 28 90 */	fmr f31, f5
lbl_80C96B60:
/* 80C96B60  FC 05 E8 40 */	fcmpo cr0, f5, f29
/* 80C96B64  40 81 00 08 */	ble lbl_80C96B6C
/* 80C96B68  FF A0 28 90 */	fmr f29, f5
lbl_80C96B6C:
/* 80C96B6C  C0 A3 00 04 */	lfs f5, 4(r3)
/* 80C96B70  FC 05 F0 40 */	fcmpo cr0, f5, f30
/* 80C96B74  40 80 00 08 */	bge lbl_80C96B7C
/* 80C96B78  FF C0 28 90 */	fmr f30, f5
lbl_80C96B7C:
/* 80C96B7C  FC 05 E0 40 */	fcmpo cr0, f5, f28
/* 80C96B80  40 81 00 08 */	ble lbl_80C96B88
/* 80C96B84  FF 80 28 90 */	fmr f28, f5
lbl_80C96B88:
/* 80C96B88  C0 A3 00 08 */	lfs f5, 8(r3)
/* 80C96B8C  FC 05 D8 40 */	fcmpo cr0, f5, f27
/* 80C96B90  40 81 00 08 */	ble lbl_80C96B98
/* 80C96B94  FF 60 28 90 */	fmr f27, f5
lbl_80C96B98:
/* 80C96B98  38 63 00 0C */	addi r3, r3, 0xc
/* 80C96B9C  42 00 FF 5C */	bdnz lbl_80C96AF8
lbl_80C96BA0:
/* 80C96BA0  3A C1 00 8C */	addi r22, r1, 0x8c
/* 80C96BA4  38 61 00 20 */	addi r3, r1, 0x20
/* 80C96BA8  38 81 00 98 */	addi r4, r1, 0x98
/* 80C96BAC  7E C5 B3 78 */	mr r5, r22
/* 80C96BB0  4B 5C FF 85 */	bl __mi__4cXyzCFRC3Vec
/* 80C96BB4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80C96BB8  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80C96BBC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80C96BC0  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80C96BC4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80C96BC8  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80C96BCC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C96BD0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80C96BD4  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80C96BD8  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80C96BDC  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80C96BE0  3A E0 00 00 */	li r23, 0
lbl_80C96BE4:
/* 80C96BE4  38 61 00 14 */	addi r3, r1, 0x14
/* 80C96BE8  38 96 00 18 */	addi r4, r22, 0x18
/* 80C96BEC  3A D6 00 0C */	addi r22, r22, 0xc
/* 80C96BF0  7E C5 B3 78 */	mr r5, r22
/* 80C96BF4  4B 5C FF 41 */	bl __mi__4cXyzCFRC3Vec
/* 80C96BF8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80C96BFC  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80C96C00  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80C96C04  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80C96C08  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80C96C0C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80C96C10  38 61 00 74 */	addi r3, r1, 0x74
/* 80C96C14  4B 5D 04 99 */	bl isZero__4cXyzCFv
/* 80C96C18  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C96C1C  40 82 00 38 */	bne lbl_80C96C54
/* 80C96C20  38 61 00 08 */	addi r3, r1, 8
/* 80C96C24  38 81 00 74 */	addi r4, r1, 0x74
/* 80C96C28  38 A1 00 68 */	addi r5, r1, 0x68
/* 80C96C2C  4B 5D 00 91 */	bl outprod__4cXyzCFRC3Vec
/* 80C96C30  C0 01 00 08 */	lfs f0, 8(r1)
/* 80C96C34  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80C96C38  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80C96C3C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80C96C40  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80C96C44  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 80C96C48  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C96C4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C96C50  41 80 00 28 */	blt lbl_80C96C78
lbl_80C96C54:
/* 80C96C54  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80C96C58  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80C96C5C  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80C96C60  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80C96C64  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80C96C68  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80C96C6C  3A F7 00 01 */	addi r23, r23, 1
/* 80C96C70  2C 17 00 02 */	cmpwi r23, 2
/* 80C96C74  41 80 FF 70 */	blt lbl_80C96BE4
lbl_80C96C78:
/* 80C96C78  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 80C96C7C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C96C80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C96C84  41 80 00 24 */	blt lbl_80C96CA8
/* 80C96C88  FC 1F C8 40 */	fcmpo cr0, f31, f25
/* 80C96C8C  41 81 00 1C */	bgt lbl_80C96CA8
/* 80C96C90  FC 1D D0 40 */	fcmpo cr0, f29, f26
/* 80C96C94  41 80 00 14 */	blt lbl_80C96CA8
/* 80C96C98  FC 1E B8 40 */	fcmpo cr0, f30, f23
/* 80C96C9C  41 81 00 0C */	bgt lbl_80C96CA8
/* 80C96CA0  FC 1C C0 40 */	fcmpo cr0, f28, f24
/* 80C96CA4  40 80 00 1C */	bge lbl_80C96CC0
lbl_80C96CA8:
/* 80C96CA8  38 60 02 61 */	li r3, 0x261
/* 80C96CAC  38 80 01 C1 */	li r4, 0x1c1
/* 80C96CB0  38 A0 00 00 */	li r5, 0
/* 80C96CB4  38 C0 00 00 */	li r6, 0
/* 80C96CB8  4B 6C 98 19 */	bl GXSetScissor
/* 80C96CBC  48 00 00 88 */	b lbl_80C96D44
lbl_80C96CC0:
/* 80C96CC0  FC 1F D0 40 */	fcmpo cr0, f31, f26
/* 80C96CC4  40 80 00 0C */	bge lbl_80C96CD0
/* 80C96CC8  FE C0 D0 90 */	fmr f22, f26
/* 80C96CCC  48 00 00 08 */	b lbl_80C96CD4
lbl_80C96CD0:
/* 80C96CD0  FE C0 F8 90 */	fmr f22, f31
lbl_80C96CD4:
/* 80C96CD4  FC 1D C8 40 */	fcmpo cr0, f29, f25
/* 80C96CD8  40 81 00 08 */	ble lbl_80C96CE0
/* 80C96CDC  48 00 00 08 */	b lbl_80C96CE4
lbl_80C96CE0:
/* 80C96CE0  FF 20 E8 90 */	fmr f25, f29
lbl_80C96CE4:
/* 80C96CE4  FC 1E C0 40 */	fcmpo cr0, f30, f24
/* 80C96CE8  40 80 00 08 */	bge lbl_80C96CF0
/* 80C96CEC  48 00 00 08 */	b lbl_80C96CF4
lbl_80C96CF0:
/* 80C96CF0  FF 00 F0 90 */	fmr f24, f30
lbl_80C96CF4:
/* 80C96CF4  FC 1C B8 40 */	fcmpo cr0, f28, f23
/* 80C96CF8  40 81 00 0C */	ble lbl_80C96D04
/* 80C96CFC  FC 00 B8 90 */	fmr f0, f23
/* 80C96D00  48 00 00 08 */	b lbl_80C96D08
lbl_80C96D04:
/* 80C96D04  FC 00 E0 90 */	fmr f0, f28
lbl_80C96D08:
/* 80C96D08  EC 20 C0 28 */	fsubs f1, f0, f24
/* 80C96D0C  4B 6C B3 A1 */	bl __cvt_fp2unsigned
/* 80C96D10  7C 7D 1B 78 */	mr r29, r3
/* 80C96D14  EC 39 B0 28 */	fsubs f1, f25, f22
/* 80C96D18  4B 6C B3 95 */	bl __cvt_fp2unsigned
/* 80C96D1C  7C 7C 1B 78 */	mr r28, r3
/* 80C96D20  FC 20 C0 90 */	fmr f1, f24
/* 80C96D24  4B 6C B3 89 */	bl __cvt_fp2unsigned
/* 80C96D28  7C 7B 1B 78 */	mr r27, r3
/* 80C96D2C  FC 20 B0 90 */	fmr f1, f22
/* 80C96D30  4B 6C B3 7D */	bl __cvt_fp2unsigned
/* 80C96D34  7F 64 DB 78 */	mr r4, r27
/* 80C96D38  7F 85 E3 78 */	mr r5, r28
/* 80C96D3C  7F A6 EB 78 */	mr r6, r29
/* 80C96D40  4B 6C 97 91 */	bl GXSetScissor
lbl_80C96D44:
/* 80C96D44  E3 E1 01 A8 */	psq_l f31, 424(r1), 0, 0 /* qr0 */
/* 80C96D48  CB E1 01 A0 */	lfd f31, 0x1a0(r1)
/* 80C96D4C  E3 C1 01 98 */	psq_l f30, 408(r1), 0, 0 /* qr0 */
/* 80C96D50  CB C1 01 90 */	lfd f30, 0x190(r1)
/* 80C96D54  E3 A1 01 88 */	psq_l f29, 392(r1), 0, 0 /* qr0 */
/* 80C96D58  CB A1 01 80 */	lfd f29, 0x180(r1)
/* 80C96D5C  E3 81 01 78 */	psq_l f28, 376(r1), 0, 0 /* qr0 */
/* 80C96D60  CB 81 01 70 */	lfd f28, 0x170(r1)
/* 80C96D64  E3 61 01 68 */	psq_l f27, 360(r1), 0, 0 /* qr0 */
/* 80C96D68  CB 61 01 60 */	lfd f27, 0x160(r1)
/* 80C96D6C  E3 41 01 58 */	psq_l f26, 344(r1), 0, 0 /* qr0 */
/* 80C96D70  CB 41 01 50 */	lfd f26, 0x150(r1)
/* 80C96D74  E3 21 01 48 */	psq_l f25, 328(r1), 0, 0 /* qr0 */
/* 80C96D78  CB 21 01 40 */	lfd f25, 0x140(r1)
/* 80C96D7C  E3 01 01 38 */	psq_l f24, 312(r1), 0, 0 /* qr0 */
/* 80C96D80  CB 01 01 30 */	lfd f24, 0x130(r1)
/* 80C96D84  E2 E1 01 28 */	psq_l f23, 296(r1), 0, 0 /* qr0 */
/* 80C96D88  CA E1 01 20 */	lfd f23, 0x120(r1)
/* 80C96D8C  E2 C1 01 18 */	psq_l f22, 280(r1), 0, 0 /* qr0 */
/* 80C96D90  CA C1 01 10 */	lfd f22, 0x110(r1)
/* 80C96D94  39 61 01 10 */	addi r11, r1, 0x110
/* 80C96D98  4B 6C B4 75 */	bl _restgpr_22
/* 80C96D9C  80 01 01 B4 */	lwz r0, 0x1b4(r1)
/* 80C96DA0  7C 08 03 A6 */	mtlr r0
/* 80C96DA4  38 21 01 B0 */	addi r1, r1, 0x1b0
/* 80C96DA8  4E 80 00 20 */	blr 

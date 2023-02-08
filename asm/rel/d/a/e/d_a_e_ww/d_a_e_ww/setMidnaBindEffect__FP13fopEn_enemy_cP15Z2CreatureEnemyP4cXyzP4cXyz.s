lbl_807EF2F4:
/* 807EF2F4  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 807EF2F8  7C 08 02 A6 */	mflr r0
/* 807EF2FC  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 807EF300  39 61 00 A0 */	addi r11, r1, 0xa0
/* 807EF304  4B B7 2E B1 */	bl _savegpr_19
/* 807EF308  7C 7E 1B 78 */	mr r30, r3
/* 807EF30C  7C 9A 23 78 */	mr r26, r4
/* 807EF310  7C BB 2B 78 */	mr r27, r5
/* 807EF314  7C DC 33 78 */	mr r28, r6
/* 807EF318  3C 60 80 7F */	lis r3, cNullVec__6Z2Calc@ha /* 0x807EF8CC@ha */
/* 807EF31C  3A E3 F8 CC */	addi r23, r3, cNullVec__6Z2Calc@l /* 0x807EF8CC@l */
/* 807EF320  3C 60 80 7F */	lis r3, lit_3905@ha /* 0x807EF770@ha */
/* 807EF324  3B E3 F7 70 */	addi r31, r3, lit_3905@l /* 0x807EF770@l */
/* 807EF328  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807EF32C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807EF330  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807EF334  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 807EF338  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)  /* 0x80451018@l */
/* 807EF33C  28 00 00 00 */	cmplwi r0, 0
/* 807EF340  41 82 03 A4 */	beq lbl_807EF6E4
/* 807EF344  7F C4 F3 78 */	mr r4, r30
/* 807EF348  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807EF34C  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 807EF350  7D 89 03 A6 */	mtctr r12
/* 807EF354  4E 80 04 21 */	bctrl 
/* 807EF358  2C 03 00 00 */	cmpwi r3, 0
/* 807EF35C  41 82 03 88 */	beq lbl_807EF6E4
/* 807EF360  4B 9B D2 1D */	bl dKy_darkworld_check__Fv
/* 807EF364  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 807EF368  30 03 FF FF */	addic r0, r3, -1
/* 807EF36C  7F A0 19 10 */	subfe r29, r0, r3
/* 807EF370  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 807EF374  28 00 00 00 */	cmplwi r0, 0
/* 807EF378  40 82 02 A0 */	bne lbl_807EF618
/* 807EF37C  38 00 00 01 */	li r0, 1
/* 807EF380  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 807EF384  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 807EF388  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l /* 0x80451018@l */
/* 807EF38C  80 63 00 00 */	lwz r3, 0(r3)
/* 807EF390  80 63 05 74 */	lwz r3, 0x574(r3)
/* 807EF394  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807EF398  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807EF39C  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 807EF3A0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807EF3A4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807EF3A8  4B B5 71 09 */	bl PSMTXCopy
/* 807EF3AC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 807EF3B0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807EF3B4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807EF3B8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807EF3BC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807EF3C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807EF3C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807EF3C8  38 81 00 4C */	addi r4, r1, 0x4c
/* 807EF3CC  38 A1 00 58 */	addi r5, r1, 0x58
/* 807EF3D0  4B B5 79 9D */	bl PSMTXMultVec
/* 807EF3D4  38 61 00 34 */	addi r3, r1, 0x34
/* 807EF3D8  38 81 00 58 */	addi r4, r1, 0x58
/* 807EF3DC  7F 65 DB 78 */	mr r5, r27
/* 807EF3E0  4B A7 77 55 */	bl __mi__4cXyzCFRC3Vec
/* 807EF3E4  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 807EF3E8  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 807EF3EC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 807EF3F0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807EF3F4  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 807EF3F8  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 807EF3FC  4B A7 82 79 */	bl cM_atan2s__Fff
/* 807EF400  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 807EF404  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 807EF408  EC 20 00 32 */	fmuls f1, f0, f0
/* 807EF40C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 807EF410  EC 00 00 32 */	fmuls f0, f0, f0
/* 807EF414  EC 41 00 2A */	fadds f2, f1, f0
/* 807EF418  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807EF41C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807EF420  40 81 00 0C */	ble lbl_807EF42C
/* 807EF424  FC 00 10 34 */	frsqrte f0, f2
/* 807EF428  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_807EF42C:
/* 807EF42C  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 807EF430  4B A7 82 45 */	bl cM_atan2s__Fff
/* 807EF434  7C 03 00 D0 */	neg r0, r3
/* 807EF438  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 807EF43C  38 80 00 00 */	li r4, 0
/* 807EF440  B0 81 00 30 */	sth r4, 0x30(r1)
/* 807EF444  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807EF448  7C 00 07 74 */	extsb r0, r0
/* 807EF44C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807EF450  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807EF454  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 807EF458  57 A5 10 3A */	slwi r5, r29, 2
/* 807EF45C  90 81 00 08 */	stw r4, 8(r1)
/* 807EF460  90 01 00 0C */	stw r0, 0xc(r1)
/* 807EF464  3A B7 00 20 */	addi r21, r23, 0x20
/* 807EF468  7E B5 2A 14 */	add r21, r21, r5
/* 807EF46C  92 A1 00 10 */	stw r21, 0x10(r1)
/* 807EF470  3A D7 00 28 */	addi r22, r23, 0x28
/* 807EF474  7E D6 2A 14 */	add r22, r22, r5
/* 807EF478  92 C1 00 14 */	stw r22, 0x14(r1)
/* 807EF47C  90 81 00 18 */	stw r4, 0x18(r1)
/* 807EF480  38 80 00 00 */	li r4, 0
/* 807EF484  38 A0 02 9B */	li r5, 0x29b
/* 807EF488  7F 66 DB 78 */	mr r6, r27
/* 807EF48C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 807EF490  39 01 00 2C */	addi r8, r1, 0x2c
/* 807EF494  7F 89 E3 78 */	mr r9, r28
/* 807EF498  39 40 00 FF */	li r10, 0xff
/* 807EF49C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807EF4A0  4B 85 D5 F1 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807EF4A4  7C 79 1B 79 */	or. r25, r3, r3
/* 807EF4A8  41 82 00 FC */	beq lbl_807EF5A4
/* 807EF4AC  38 61 00 40 */	addi r3, r1, 0x40
/* 807EF4B0  4B B5 7C 89 */	bl PSVECSquareMag
/* 807EF4B4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807EF4B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EF4BC  40 81 00 58 */	ble lbl_807EF514
/* 807EF4C0  FC 00 08 34 */	frsqrte f0, f1
/* 807EF4C4  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807EF4C8  FC 44 00 32 */	fmul f2, f4, f0
/* 807EF4CC  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807EF4D0  FC 00 00 32 */	fmul f0, f0, f0
/* 807EF4D4  FC 01 00 32 */	fmul f0, f1, f0
/* 807EF4D8  FC 03 00 28 */	fsub f0, f3, f0
/* 807EF4DC  FC 02 00 32 */	fmul f0, f2, f0
/* 807EF4E0  FC 44 00 32 */	fmul f2, f4, f0
/* 807EF4E4  FC 00 00 32 */	fmul f0, f0, f0
/* 807EF4E8  FC 01 00 32 */	fmul f0, f1, f0
/* 807EF4EC  FC 03 00 28 */	fsub f0, f3, f0
/* 807EF4F0  FC 02 00 32 */	fmul f0, f2, f0
/* 807EF4F4  FC 44 00 32 */	fmul f2, f4, f0
/* 807EF4F8  FC 00 00 32 */	fmul f0, f0, f0
/* 807EF4FC  FC 01 00 32 */	fmul f0, f1, f0
/* 807EF500  FC 03 00 28 */	fsub f0, f3, f0
/* 807EF504  FC 02 00 32 */	fmul f0, f2, f0
/* 807EF508  FC 21 00 32 */	fmul f1, f1, f0
/* 807EF50C  FC 20 08 18 */	frsp f1, f1
/* 807EF510  48 00 00 88 */	b lbl_807EF598
lbl_807EF514:
/* 807EF514  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807EF518  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807EF51C  40 80 00 10 */	bge lbl_807EF52C
/* 807EF520  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807EF524  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807EF528  48 00 00 70 */	b lbl_807EF598
lbl_807EF52C:
/* 807EF52C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 807EF530  80 81 00 20 */	lwz r4, 0x20(r1)
/* 807EF534  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807EF538  3C 00 7F 80 */	lis r0, 0x7f80
/* 807EF53C  7C 03 00 00 */	cmpw r3, r0
/* 807EF540  41 82 00 14 */	beq lbl_807EF554
/* 807EF544  40 80 00 40 */	bge lbl_807EF584
/* 807EF548  2C 03 00 00 */	cmpwi r3, 0
/* 807EF54C  41 82 00 20 */	beq lbl_807EF56C
/* 807EF550  48 00 00 34 */	b lbl_807EF584
lbl_807EF554:
/* 807EF554  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807EF558  41 82 00 0C */	beq lbl_807EF564
/* 807EF55C  38 00 00 01 */	li r0, 1
/* 807EF560  48 00 00 28 */	b lbl_807EF588
lbl_807EF564:
/* 807EF564  38 00 00 02 */	li r0, 2
/* 807EF568  48 00 00 20 */	b lbl_807EF588
lbl_807EF56C:
/* 807EF56C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807EF570  41 82 00 0C */	beq lbl_807EF57C
/* 807EF574  38 00 00 05 */	li r0, 5
/* 807EF578  48 00 00 10 */	b lbl_807EF588
lbl_807EF57C:
/* 807EF57C  38 00 00 03 */	li r0, 3
/* 807EF580  48 00 00 08 */	b lbl_807EF588
lbl_807EF584:
/* 807EF584  38 00 00 04 */	li r0, 4
lbl_807EF588:
/* 807EF588  2C 00 00 01 */	cmpwi r0, 1
/* 807EF58C  40 82 00 0C */	bne lbl_807EF598
/* 807EF590  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807EF594  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807EF598:
/* 807EF598  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 807EF59C  EC 00 00 72 */	fmuls f0, f0, f1
/* 807EF5A0  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_807EF5A4:
/* 807EF5A4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807EF5A8  7C 04 07 74 */	extsb r4, r0
/* 807EF5AC  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 807EF5B0  38 00 00 00 */	li r0, 0
/* 807EF5B4  90 01 00 08 */	stw r0, 8(r1)
/* 807EF5B8  90 81 00 0C */	stw r4, 0xc(r1)
/* 807EF5BC  92 A1 00 10 */	stw r21, 0x10(r1)
/* 807EF5C0  92 C1 00 14 */	stw r22, 0x14(r1)
/* 807EF5C4  90 01 00 18 */	stw r0, 0x18(r1)
/* 807EF5C8  38 80 00 00 */	li r4, 0
/* 807EF5CC  38 A0 02 9C */	li r5, 0x29c
/* 807EF5D0  7F 66 DB 78 */	mr r6, r27
/* 807EF5D4  38 FE 01 0C */	addi r7, r30, 0x10c
/* 807EF5D8  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 807EF5DC  7F 89 E3 78 */	mr r9, r28
/* 807EF5E0  39 40 00 FF */	li r10, 0xff
/* 807EF5E4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807EF5E8  4B 85 D4 A9 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807EF5EC  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 807EF5F0  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 807EF5F4  90 01 00 28 */	stw r0, 0x28(r1)
/* 807EF5F8  7F 43 D3 78 */	mr r3, r26
/* 807EF5FC  38 81 00 28 */	addi r4, r1, 0x28
/* 807EF600  38 A0 00 00 */	li r5, 0
/* 807EF604  38 C0 FF FF */	li r6, -1
/* 807EF608  81 9A 00 00 */	lwz r12, 0(r26)
/* 807EF60C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807EF610  7D 89 03 A6 */	mtctr r12
/* 807EF614  4E 80 04 21 */	bctrl 
lbl_807EF618:
/* 807EF618  3A A0 00 00 */	li r21, 0
/* 807EF61C  3A C0 00 00 */	li r22, 0
/* 807EF620  3A 80 00 00 */	li r20, 0
/* 807EF624  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807EF628  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807EF62C  57 A0 10 3A */	slwi r0, r29, 2
/* 807EF630  3B 17 00 28 */	addi r24, r23, 0x28
/* 807EF634  7F 18 02 14 */	add r24, r24, r0
/* 807EF638  3B B7 00 20 */	addi r29, r23, 0x20
/* 807EF63C  7F BD 02 14 */	add r29, r29, r0
/* 807EF640  3A 77 00 30 */	addi r19, r23, 0x30
lbl_807EF644:
/* 807EF644  3A F4 05 9C */	addi r23, r20, 0x59c
/* 807EF648  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807EF64C  7C 05 07 74 */	extsb r5, r0
/* 807EF650  7C 9E B8 2E */	lwzx r4, r30, r23
/* 807EF654  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 807EF658  38 00 00 FF */	li r0, 0xff
/* 807EF65C  90 01 00 08 */	stw r0, 8(r1)
/* 807EF660  38 00 00 00 */	li r0, 0
/* 807EF664  90 01 00 0C */	stw r0, 0xc(r1)
/* 807EF668  90 A1 00 10 */	stw r5, 0x10(r1)
/* 807EF66C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 807EF670  93 01 00 18 */	stw r24, 0x18(r1)
/* 807EF674  90 01 00 1C */	stw r0, 0x1c(r1)
/* 807EF678  38 A0 00 00 */	li r5, 0
/* 807EF67C  7C D3 B2 2E */	lhzx r6, r19, r22
/* 807EF680  7F 67 DB 78 */	mr r7, r27
/* 807EF684  39 1E 01 0C */	addi r8, r30, 0x10c
/* 807EF688  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 807EF68C  7F 8A E3 78 */	mr r10, r28
/* 807EF690  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807EF694  4B 85 DE 39 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807EF698  7C 7E B9 2E */	stwx r3, r30, r23
/* 807EF69C  3A B5 00 01 */	addi r21, r21, 1
/* 807EF6A0  2C 15 00 03 */	cmpwi r21, 3
/* 807EF6A4  3A D6 00 02 */	addi r22, r22, 2
/* 807EF6A8  3A 94 00 04 */	addi r20, r20, 4
/* 807EF6AC  41 80 FF 98 */	blt lbl_807EF644
/* 807EF6B0  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 807EF6B4  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 807EF6B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 807EF6BC  7F 43 D3 78 */	mr r3, r26
/* 807EF6C0  38 81 00 24 */	addi r4, r1, 0x24
/* 807EF6C4  38 A0 00 00 */	li r5, 0
/* 807EF6C8  38 C0 FF FF */	li r6, -1
/* 807EF6CC  81 9A 00 00 */	lwz r12, 0(r26)
/* 807EF6D0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 807EF6D4  7D 89 03 A6 */	mtctr r12
/* 807EF6D8  4E 80 04 21 */	bctrl 
/* 807EF6DC  38 60 00 01 */	li r3, 1
/* 807EF6E0  48 00 00 10 */	b lbl_807EF6F0
lbl_807EF6E4:
/* 807EF6E4  38 00 00 00 */	li r0, 0
/* 807EF6E8  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 807EF6EC  38 60 00 00 */	li r3, 0
lbl_807EF6F0:
/* 807EF6F0  39 61 00 A0 */	addi r11, r1, 0xa0
/* 807EF6F4  4B B7 2B 0D */	bl _restgpr_19
/* 807EF6F8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 807EF6FC  7C 08 03 A6 */	mtlr r0
/* 807EF700  38 21 00 A0 */	addi r1, r1, 0xa0
/* 807EF704  4E 80 00 20 */	blr 

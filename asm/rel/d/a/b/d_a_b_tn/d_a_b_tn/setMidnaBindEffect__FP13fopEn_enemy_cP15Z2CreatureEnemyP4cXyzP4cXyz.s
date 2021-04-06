lbl_8062E17C:
/* 8062E17C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8062E180  7C 08 02 A6 */	mflr r0
/* 8062E184  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8062E188  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8062E18C  4B D3 40 29 */	bl _savegpr_19
/* 8062E190  7C 7E 1B 78 */	mr r30, r3
/* 8062E194  7C 9A 23 78 */	mr r26, r4
/* 8062E198  7C BB 2B 78 */	mr r27, r5
/* 8062E19C  7C DC 33 78 */	mr r28, r6
/* 8062E1A0  3C 60 80 63 */	lis r3, cNullVec__6Z2Calc@ha /* 0x8062E904@ha */
/* 8062E1A4  3A E3 E9 04 */	addi r23, r3, cNullVec__6Z2Calc@l /* 0x8062E904@l */
/* 8062E1A8  3C 60 80 63 */	lis r3, lit_3920@ha /* 0x8062E634@ha */
/* 8062E1AC  3B E3 E6 34 */	addi r31, r3, lit_3920@l /* 0x8062E634@l */
/* 8062E1B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8062E1B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8062E1B8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8062E1BC  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 8062E1C0  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)  /* 0x80451018@l */
/* 8062E1C4  28 00 00 00 */	cmplwi r0, 0
/* 8062E1C8  41 82 03 A4 */	beq lbl_8062E56C
/* 8062E1CC  7F C4 F3 78 */	mr r4, r30
/* 8062E1D0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8062E1D4  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 8062E1D8  7D 89 03 A6 */	mtctr r12
/* 8062E1DC  4E 80 04 21 */	bctrl 
/* 8062E1E0  2C 03 00 00 */	cmpwi r3, 0
/* 8062E1E4  41 82 03 88 */	beq lbl_8062E56C
/* 8062E1E8  4B B7 E3 95 */	bl dKy_darkworld_check__Fv
/* 8062E1EC  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8062E1F0  30 03 FF FF */	addic r0, r3, -1
/* 8062E1F4  7F A0 19 10 */	subfe r29, r0, r3
/* 8062E1F8  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 8062E1FC  28 00 00 00 */	cmplwi r0, 0
/* 8062E200  40 82 02 A0 */	bne lbl_8062E4A0
/* 8062E204  38 00 00 01 */	li r0, 1
/* 8062E208  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 8062E20C  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 8062E210  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l /* 0x80451018@l */
/* 8062E214  80 63 00 00 */	lwz r3, 0(r3)
/* 8062E218  80 63 05 74 */	lwz r3, 0x574(r3)
/* 8062E21C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8062E220  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8062E224  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 8062E228  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8062E22C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8062E230  4B D1 82 81 */	bl PSMTXCopy
/* 8062E234  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8062E238  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8062E23C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8062E240  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8062E244  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8062E248  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8062E24C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8062E250  38 81 00 4C */	addi r4, r1, 0x4c
/* 8062E254  38 A1 00 58 */	addi r5, r1, 0x58
/* 8062E258  4B D1 8B 15 */	bl PSMTXMultVec
/* 8062E25C  38 61 00 34 */	addi r3, r1, 0x34
/* 8062E260  38 81 00 58 */	addi r4, r1, 0x58
/* 8062E264  7F 65 DB 78 */	mr r5, r27
/* 8062E268  4B C3 88 CD */	bl __mi__4cXyzCFRC3Vec
/* 8062E26C  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 8062E270  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8062E274  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8062E278  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8062E27C  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 8062E280  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 8062E284  4B C3 93 F1 */	bl cM_atan2s__Fff
/* 8062E288  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 8062E28C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8062E290  EC 20 00 32 */	fmuls f1, f0, f0
/* 8062E294  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8062E298  EC 00 00 32 */	fmuls f0, f0, f0
/* 8062E29C  EC 41 00 2A */	fadds f2, f1, f0
/* 8062E2A0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8062E2A4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8062E2A8  40 81 00 0C */	ble lbl_8062E2B4
/* 8062E2AC  FC 00 10 34 */	frsqrte f0, f2
/* 8062E2B0  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8062E2B4:
/* 8062E2B4  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 8062E2B8  4B C3 93 BD */	bl cM_atan2s__Fff
/* 8062E2BC  7C 03 00 D0 */	neg r0, r3
/* 8062E2C0  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 8062E2C4  38 80 00 00 */	li r4, 0
/* 8062E2C8  B0 81 00 30 */	sth r4, 0x30(r1)
/* 8062E2CC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8062E2D0  7C 00 07 74 */	extsb r0, r0
/* 8062E2D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8062E2D8  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8062E2DC  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 8062E2E0  57 A5 10 3A */	slwi r5, r29, 2
/* 8062E2E4  90 81 00 08 */	stw r4, 8(r1)
/* 8062E2E8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8062E2EC  3A B7 00 20 */	addi r21, r23, 0x20
/* 8062E2F0  7E B5 2A 14 */	add r21, r21, r5
/* 8062E2F4  92 A1 00 10 */	stw r21, 0x10(r1)
/* 8062E2F8  3A D7 00 28 */	addi r22, r23, 0x28
/* 8062E2FC  7E D6 2A 14 */	add r22, r22, r5
/* 8062E300  92 C1 00 14 */	stw r22, 0x14(r1)
/* 8062E304  90 81 00 18 */	stw r4, 0x18(r1)
/* 8062E308  38 80 00 00 */	li r4, 0
/* 8062E30C  38 A0 02 9B */	li r5, 0x29b
/* 8062E310  7F 66 DB 78 */	mr r6, r27
/* 8062E314  38 FE 01 0C */	addi r7, r30, 0x10c
/* 8062E318  39 01 00 2C */	addi r8, r1, 0x2c
/* 8062E31C  7F 89 E3 78 */	mr r9, r28
/* 8062E320  39 40 00 FF */	li r10, 0xff
/* 8062E324  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8062E328  4B A1 E7 69 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8062E32C  7C 79 1B 79 */	or. r25, r3, r3
/* 8062E330  41 82 00 FC */	beq lbl_8062E42C
/* 8062E334  38 61 00 40 */	addi r3, r1, 0x40
/* 8062E338  4B D1 8E 01 */	bl PSVECSquareMag
/* 8062E33C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8062E340  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8062E344  40 81 00 58 */	ble lbl_8062E39C
/* 8062E348  FC 00 08 34 */	frsqrte f0, f1
/* 8062E34C  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8062E350  FC 44 00 32 */	fmul f2, f4, f0
/* 8062E354  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8062E358  FC 00 00 32 */	fmul f0, f0, f0
/* 8062E35C  FC 01 00 32 */	fmul f0, f1, f0
/* 8062E360  FC 03 00 28 */	fsub f0, f3, f0
/* 8062E364  FC 02 00 32 */	fmul f0, f2, f0
/* 8062E368  FC 44 00 32 */	fmul f2, f4, f0
/* 8062E36C  FC 00 00 32 */	fmul f0, f0, f0
/* 8062E370  FC 01 00 32 */	fmul f0, f1, f0
/* 8062E374  FC 03 00 28 */	fsub f0, f3, f0
/* 8062E378  FC 02 00 32 */	fmul f0, f2, f0
/* 8062E37C  FC 44 00 32 */	fmul f2, f4, f0
/* 8062E380  FC 00 00 32 */	fmul f0, f0, f0
/* 8062E384  FC 01 00 32 */	fmul f0, f1, f0
/* 8062E388  FC 03 00 28 */	fsub f0, f3, f0
/* 8062E38C  FC 02 00 32 */	fmul f0, f2, f0
/* 8062E390  FC 21 00 32 */	fmul f1, f1, f0
/* 8062E394  FC 20 08 18 */	frsp f1, f1
/* 8062E398  48 00 00 88 */	b lbl_8062E420
lbl_8062E39C:
/* 8062E39C  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8062E3A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8062E3A4  40 80 00 10 */	bge lbl_8062E3B4
/* 8062E3A8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8062E3AC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8062E3B0  48 00 00 70 */	b lbl_8062E420
lbl_8062E3B4:
/* 8062E3B4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8062E3B8  80 81 00 20 */	lwz r4, 0x20(r1)
/* 8062E3BC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8062E3C0  3C 00 7F 80 */	lis r0, 0x7f80
/* 8062E3C4  7C 03 00 00 */	cmpw r3, r0
/* 8062E3C8  41 82 00 14 */	beq lbl_8062E3DC
/* 8062E3CC  40 80 00 40 */	bge lbl_8062E40C
/* 8062E3D0  2C 03 00 00 */	cmpwi r3, 0
/* 8062E3D4  41 82 00 20 */	beq lbl_8062E3F4
/* 8062E3D8  48 00 00 34 */	b lbl_8062E40C
lbl_8062E3DC:
/* 8062E3DC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8062E3E0  41 82 00 0C */	beq lbl_8062E3EC
/* 8062E3E4  38 00 00 01 */	li r0, 1
/* 8062E3E8  48 00 00 28 */	b lbl_8062E410
lbl_8062E3EC:
/* 8062E3EC  38 00 00 02 */	li r0, 2
/* 8062E3F0  48 00 00 20 */	b lbl_8062E410
lbl_8062E3F4:
/* 8062E3F4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8062E3F8  41 82 00 0C */	beq lbl_8062E404
/* 8062E3FC  38 00 00 05 */	li r0, 5
/* 8062E400  48 00 00 10 */	b lbl_8062E410
lbl_8062E404:
/* 8062E404  38 00 00 03 */	li r0, 3
/* 8062E408  48 00 00 08 */	b lbl_8062E410
lbl_8062E40C:
/* 8062E40C  38 00 00 04 */	li r0, 4
lbl_8062E410:
/* 8062E410  2C 00 00 01 */	cmpwi r0, 1
/* 8062E414  40 82 00 0C */	bne lbl_8062E420
/* 8062E418  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8062E41C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8062E420:
/* 8062E420  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8062E424  EC 00 00 72 */	fmuls f0, f0, f1
/* 8062E428  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_8062E42C:
/* 8062E42C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8062E430  7C 04 07 74 */	extsb r4, r0
/* 8062E434  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 8062E438  38 00 00 00 */	li r0, 0
/* 8062E43C  90 01 00 08 */	stw r0, 8(r1)
/* 8062E440  90 81 00 0C */	stw r4, 0xc(r1)
/* 8062E444  92 A1 00 10 */	stw r21, 0x10(r1)
/* 8062E448  92 C1 00 14 */	stw r22, 0x14(r1)
/* 8062E44C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8062E450  38 80 00 00 */	li r4, 0
/* 8062E454  38 A0 02 9C */	li r5, 0x29c
/* 8062E458  7F 66 DB 78 */	mr r6, r27
/* 8062E45C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 8062E460  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 8062E464  7F 89 E3 78 */	mr r9, r28
/* 8062E468  39 40 00 FF */	li r10, 0xff
/* 8062E46C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8062E470  4B A1 E6 21 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8062E474  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 8062E478  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 8062E47C  90 01 00 28 */	stw r0, 0x28(r1)
/* 8062E480  7F 43 D3 78 */	mr r3, r26
/* 8062E484  38 81 00 28 */	addi r4, r1, 0x28
/* 8062E488  38 A0 00 00 */	li r5, 0
/* 8062E48C  38 C0 FF FF */	li r6, -1
/* 8062E490  81 9A 00 00 */	lwz r12, 0(r26)
/* 8062E494  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8062E498  7D 89 03 A6 */	mtctr r12
/* 8062E49C  4E 80 04 21 */	bctrl 
lbl_8062E4A0:
/* 8062E4A0  3A A0 00 00 */	li r21, 0
/* 8062E4A4  3A C0 00 00 */	li r22, 0
/* 8062E4A8  3A 80 00 00 */	li r20, 0
/* 8062E4AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8062E4B0  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8062E4B4  57 A0 10 3A */	slwi r0, r29, 2
/* 8062E4B8  3B 17 00 28 */	addi r24, r23, 0x28
/* 8062E4BC  7F 18 02 14 */	add r24, r24, r0
/* 8062E4C0  3B B7 00 20 */	addi r29, r23, 0x20
/* 8062E4C4  7F BD 02 14 */	add r29, r29, r0
/* 8062E4C8  3A 77 00 30 */	addi r19, r23, 0x30
lbl_8062E4CC:
/* 8062E4CC  3A F4 05 9C */	addi r23, r20, 0x59c
/* 8062E4D0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8062E4D4  7C 05 07 74 */	extsb r5, r0
/* 8062E4D8  7C 9E B8 2E */	lwzx r4, r30, r23
/* 8062E4DC  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 8062E4E0  38 00 00 FF */	li r0, 0xff
/* 8062E4E4  90 01 00 08 */	stw r0, 8(r1)
/* 8062E4E8  38 00 00 00 */	li r0, 0
/* 8062E4EC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8062E4F0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8062E4F4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8062E4F8  93 01 00 18 */	stw r24, 0x18(r1)
/* 8062E4FC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8062E500  38 A0 00 00 */	li r5, 0
/* 8062E504  7C D3 B2 2E */	lhzx r6, r19, r22
/* 8062E508  7F 67 DB 78 */	mr r7, r27
/* 8062E50C  39 1E 01 0C */	addi r8, r30, 0x10c
/* 8062E510  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 8062E514  7F 8A E3 78 */	mr r10, r28
/* 8062E518  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8062E51C  4B A1 EF B1 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8062E520  7C 7E B9 2E */	stwx r3, r30, r23
/* 8062E524  3A B5 00 01 */	addi r21, r21, 1
/* 8062E528  2C 15 00 03 */	cmpwi r21, 3
/* 8062E52C  3A D6 00 02 */	addi r22, r22, 2
/* 8062E530  3A 94 00 04 */	addi r20, r20, 4
/* 8062E534  41 80 FF 98 */	blt lbl_8062E4CC
/* 8062E538  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 8062E53C  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 8062E540  90 01 00 24 */	stw r0, 0x24(r1)
/* 8062E544  7F 43 D3 78 */	mr r3, r26
/* 8062E548  38 81 00 24 */	addi r4, r1, 0x24
/* 8062E54C  38 A0 00 00 */	li r5, 0
/* 8062E550  38 C0 FF FF */	li r6, -1
/* 8062E554  81 9A 00 00 */	lwz r12, 0(r26)
/* 8062E558  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8062E55C  7D 89 03 A6 */	mtctr r12
/* 8062E560  4E 80 04 21 */	bctrl 
/* 8062E564  38 60 00 01 */	li r3, 1
/* 8062E568  48 00 00 10 */	b lbl_8062E578
lbl_8062E56C:
/* 8062E56C  38 00 00 00 */	li r0, 0
/* 8062E570  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 8062E574  38 60 00 00 */	li r3, 0
lbl_8062E578:
/* 8062E578  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8062E57C  4B D3 3C 85 */	bl _restgpr_19
/* 8062E580  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8062E584  7C 08 03 A6 */	mtlr r0
/* 8062E588  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8062E58C  4E 80 00 20 */	blr 

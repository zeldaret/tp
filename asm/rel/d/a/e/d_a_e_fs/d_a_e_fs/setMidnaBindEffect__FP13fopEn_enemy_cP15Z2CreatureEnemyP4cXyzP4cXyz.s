lbl_806BE028:
/* 806BE028  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 806BE02C  7C 08 02 A6 */	mflr r0
/* 806BE030  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 806BE034  39 61 00 A0 */	addi r11, r1, 0xa0
/* 806BE038  4B CA 41 7D */	bl _savegpr_19
/* 806BE03C  7C 7E 1B 78 */	mr r30, r3
/* 806BE040  7C 9A 23 78 */	mr r26, r4
/* 806BE044  7C BB 2B 78 */	mr r27, r5
/* 806BE048  7C DC 33 78 */	mr r28, r6
/* 806BE04C  3C 60 80 6C */	lis r3, cNullVec__6Z2Calc@ha /* 0x806BE580@ha */
/* 806BE050  3A E3 E5 80 */	addi r23, r3, cNullVec__6Z2Calc@l /* 0x806BE580@l */
/* 806BE054  3C 60 80 6C */	lis r3, lit_3917@ha /* 0x806BE48C@ha */
/* 806BE058  3B E3 E4 8C */	addi r31, r3, lit_3917@l /* 0x806BE48C@l */
/* 806BE05C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806BE060  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806BE064  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806BE068  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 806BE06C  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)  /* 0x80451018@l */
/* 806BE070  28 00 00 00 */	cmplwi r0, 0
/* 806BE074  41 82 03 A4 */	beq lbl_806BE418
/* 806BE078  7F C4 F3 78 */	mr r4, r30
/* 806BE07C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806BE080  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 806BE084  7D 89 03 A6 */	mtctr r12
/* 806BE088  4E 80 04 21 */	bctrl 
/* 806BE08C  2C 03 00 00 */	cmpwi r3, 0
/* 806BE090  41 82 03 88 */	beq lbl_806BE418
/* 806BE094  4B AE E4 E9 */	bl dKy_darkworld_check__Fv
/* 806BE098  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 806BE09C  30 03 FF FF */	addic r0, r3, -1
/* 806BE0A0  7F A0 19 10 */	subfe r29, r0, r3
/* 806BE0A4  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 806BE0A8  28 00 00 00 */	cmplwi r0, 0
/* 806BE0AC  40 82 02 A0 */	bne lbl_806BE34C
/* 806BE0B0  38 00 00 01 */	li r0, 1
/* 806BE0B4  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 806BE0B8  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 806BE0BC  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l /* 0x80451018@l */
/* 806BE0C0  80 63 00 00 */	lwz r3, 0(r3)
/* 806BE0C4  80 63 05 74 */	lwz r3, 0x574(r3)
/* 806BE0C8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806BE0CC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806BE0D0  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 806BE0D4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806BE0D8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806BE0DC  4B C8 83 D5 */	bl PSMTXCopy
/* 806BE0E0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806BE0E4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 806BE0E8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806BE0EC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806BE0F0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 806BE0F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806BE0F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806BE0FC  38 81 00 4C */	addi r4, r1, 0x4c
/* 806BE100  38 A1 00 58 */	addi r5, r1, 0x58
/* 806BE104  4B C8 8C 69 */	bl PSMTXMultVec
/* 806BE108  38 61 00 34 */	addi r3, r1, 0x34
/* 806BE10C  38 81 00 58 */	addi r4, r1, 0x58
/* 806BE110  7F 65 DB 78 */	mr r5, r27
/* 806BE114  4B BA 8A 21 */	bl __mi__4cXyzCFRC3Vec
/* 806BE118  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 806BE11C  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 806BE120  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 806BE124  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 806BE128  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 806BE12C  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 806BE130  4B BA 95 45 */	bl cM_atan2s__Fff
/* 806BE134  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 806BE138  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 806BE13C  EC 20 00 32 */	fmuls f1, f0, f0
/* 806BE140  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 806BE144  EC 00 00 32 */	fmuls f0, f0, f0
/* 806BE148  EC 41 00 2A */	fadds f2, f1, f0
/* 806BE14C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806BE150  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806BE154  40 81 00 0C */	ble lbl_806BE160
/* 806BE158  FC 00 10 34 */	frsqrte f0, f2
/* 806BE15C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_806BE160:
/* 806BE160  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 806BE164  4B BA 95 11 */	bl cM_atan2s__Fff
/* 806BE168  7C 03 00 D0 */	neg r0, r3
/* 806BE16C  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 806BE170  38 80 00 00 */	li r4, 0
/* 806BE174  B0 81 00 30 */	sth r4, 0x30(r1)
/* 806BE178  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806BE17C  7C 00 07 74 */	extsb r0, r0
/* 806BE180  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806BE184  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806BE188  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 806BE18C  57 A5 10 3A */	slwi r5, r29, 2
/* 806BE190  90 81 00 08 */	stw r4, 8(r1)
/* 806BE194  90 01 00 0C */	stw r0, 0xc(r1)
/* 806BE198  3A B7 00 20 */	addi r21, r23, 0x20
/* 806BE19C  7E B5 2A 14 */	add r21, r21, r5
/* 806BE1A0  92 A1 00 10 */	stw r21, 0x10(r1)
/* 806BE1A4  3A D7 00 28 */	addi r22, r23, 0x28
/* 806BE1A8  7E D6 2A 14 */	add r22, r22, r5
/* 806BE1AC  92 C1 00 14 */	stw r22, 0x14(r1)
/* 806BE1B0  90 81 00 18 */	stw r4, 0x18(r1)
/* 806BE1B4  38 80 00 00 */	li r4, 0
/* 806BE1B8  38 A0 02 9B */	li r5, 0x29b
/* 806BE1BC  7F 66 DB 78 */	mr r6, r27
/* 806BE1C0  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806BE1C4  39 01 00 2C */	addi r8, r1, 0x2c
/* 806BE1C8  7F 89 E3 78 */	mr r9, r28
/* 806BE1CC  39 40 00 FF */	li r10, 0xff
/* 806BE1D0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806BE1D4  4B 98 E8 BD */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806BE1D8  7C 79 1B 79 */	or. r25, r3, r3
/* 806BE1DC  41 82 00 FC */	beq lbl_806BE2D8
/* 806BE1E0  38 61 00 40 */	addi r3, r1, 0x40
/* 806BE1E4  4B C8 8F 55 */	bl PSVECSquareMag
/* 806BE1E8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806BE1EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806BE1F0  40 81 00 58 */	ble lbl_806BE248
/* 806BE1F4  FC 00 08 34 */	frsqrte f0, f1
/* 806BE1F8  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806BE1FC  FC 44 00 32 */	fmul f2, f4, f0
/* 806BE200  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806BE204  FC 00 00 32 */	fmul f0, f0, f0
/* 806BE208  FC 01 00 32 */	fmul f0, f1, f0
/* 806BE20C  FC 03 00 28 */	fsub f0, f3, f0
/* 806BE210  FC 02 00 32 */	fmul f0, f2, f0
/* 806BE214  FC 44 00 32 */	fmul f2, f4, f0
/* 806BE218  FC 00 00 32 */	fmul f0, f0, f0
/* 806BE21C  FC 01 00 32 */	fmul f0, f1, f0
/* 806BE220  FC 03 00 28 */	fsub f0, f3, f0
/* 806BE224  FC 02 00 32 */	fmul f0, f2, f0
/* 806BE228  FC 44 00 32 */	fmul f2, f4, f0
/* 806BE22C  FC 00 00 32 */	fmul f0, f0, f0
/* 806BE230  FC 01 00 32 */	fmul f0, f1, f0
/* 806BE234  FC 03 00 28 */	fsub f0, f3, f0
/* 806BE238  FC 02 00 32 */	fmul f0, f2, f0
/* 806BE23C  FC 21 00 32 */	fmul f1, f1, f0
/* 806BE240  FC 20 08 18 */	frsp f1, f1
/* 806BE244  48 00 00 88 */	b lbl_806BE2CC
lbl_806BE248:
/* 806BE248  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806BE24C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806BE250  40 80 00 10 */	bge lbl_806BE260
/* 806BE254  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806BE258  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806BE25C  48 00 00 70 */	b lbl_806BE2CC
lbl_806BE260:
/* 806BE260  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 806BE264  80 81 00 20 */	lwz r4, 0x20(r1)
/* 806BE268  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806BE26C  3C 00 7F 80 */	lis r0, 0x7f80
/* 806BE270  7C 03 00 00 */	cmpw r3, r0
/* 806BE274  41 82 00 14 */	beq lbl_806BE288
/* 806BE278  40 80 00 40 */	bge lbl_806BE2B8
/* 806BE27C  2C 03 00 00 */	cmpwi r3, 0
/* 806BE280  41 82 00 20 */	beq lbl_806BE2A0
/* 806BE284  48 00 00 34 */	b lbl_806BE2B8
lbl_806BE288:
/* 806BE288  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806BE28C  41 82 00 0C */	beq lbl_806BE298
/* 806BE290  38 00 00 01 */	li r0, 1
/* 806BE294  48 00 00 28 */	b lbl_806BE2BC
lbl_806BE298:
/* 806BE298  38 00 00 02 */	li r0, 2
/* 806BE29C  48 00 00 20 */	b lbl_806BE2BC
lbl_806BE2A0:
/* 806BE2A0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806BE2A4  41 82 00 0C */	beq lbl_806BE2B0
/* 806BE2A8  38 00 00 05 */	li r0, 5
/* 806BE2AC  48 00 00 10 */	b lbl_806BE2BC
lbl_806BE2B0:
/* 806BE2B0  38 00 00 03 */	li r0, 3
/* 806BE2B4  48 00 00 08 */	b lbl_806BE2BC
lbl_806BE2B8:
/* 806BE2B8  38 00 00 04 */	li r0, 4
lbl_806BE2BC:
/* 806BE2BC  2C 00 00 01 */	cmpwi r0, 1
/* 806BE2C0  40 82 00 0C */	bne lbl_806BE2CC
/* 806BE2C4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806BE2C8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_806BE2CC:
/* 806BE2CC  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 806BE2D0  EC 00 00 72 */	fmuls f0, f0, f1
/* 806BE2D4  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_806BE2D8:
/* 806BE2D8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806BE2DC  7C 04 07 74 */	extsb r4, r0
/* 806BE2E0  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 806BE2E4  38 00 00 00 */	li r0, 0
/* 806BE2E8  90 01 00 08 */	stw r0, 8(r1)
/* 806BE2EC  90 81 00 0C */	stw r4, 0xc(r1)
/* 806BE2F0  92 A1 00 10 */	stw r21, 0x10(r1)
/* 806BE2F4  92 C1 00 14 */	stw r22, 0x14(r1)
/* 806BE2F8  90 01 00 18 */	stw r0, 0x18(r1)
/* 806BE2FC  38 80 00 00 */	li r4, 0
/* 806BE300  38 A0 02 9C */	li r5, 0x29c
/* 806BE304  7F 66 DB 78 */	mr r6, r27
/* 806BE308  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806BE30C  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 806BE310  7F 89 E3 78 */	mr r9, r28
/* 806BE314  39 40 00 FF */	li r10, 0xff
/* 806BE318  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806BE31C  4B 98 E7 75 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806BE320  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 806BE324  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 806BE328  90 01 00 28 */	stw r0, 0x28(r1)
/* 806BE32C  7F 43 D3 78 */	mr r3, r26
/* 806BE330  38 81 00 28 */	addi r4, r1, 0x28
/* 806BE334  38 A0 00 00 */	li r5, 0
/* 806BE338  38 C0 FF FF */	li r6, -1
/* 806BE33C  81 9A 00 00 */	lwz r12, 0(r26)
/* 806BE340  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806BE344  7D 89 03 A6 */	mtctr r12
/* 806BE348  4E 80 04 21 */	bctrl 
lbl_806BE34C:
/* 806BE34C  3A A0 00 00 */	li r21, 0
/* 806BE350  3A C0 00 00 */	li r22, 0
/* 806BE354  3A 80 00 00 */	li r20, 0
/* 806BE358  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806BE35C  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806BE360  57 A0 10 3A */	slwi r0, r29, 2
/* 806BE364  3B 17 00 28 */	addi r24, r23, 0x28
/* 806BE368  7F 18 02 14 */	add r24, r24, r0
/* 806BE36C  3B B7 00 20 */	addi r29, r23, 0x20
/* 806BE370  7F BD 02 14 */	add r29, r29, r0
/* 806BE374  3A 77 00 30 */	addi r19, r23, 0x30
lbl_806BE378:
/* 806BE378  3A F4 05 9C */	addi r23, r20, 0x59c
/* 806BE37C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806BE380  7C 05 07 74 */	extsb r5, r0
/* 806BE384  7C 9E B8 2E */	lwzx r4, r30, r23
/* 806BE388  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 806BE38C  38 00 00 FF */	li r0, 0xff
/* 806BE390  90 01 00 08 */	stw r0, 8(r1)
/* 806BE394  38 00 00 00 */	li r0, 0
/* 806BE398  90 01 00 0C */	stw r0, 0xc(r1)
/* 806BE39C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 806BE3A0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 806BE3A4  93 01 00 18 */	stw r24, 0x18(r1)
/* 806BE3A8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 806BE3AC  38 A0 00 00 */	li r5, 0
/* 806BE3B0  7C D3 B2 2E */	lhzx r6, r19, r22
/* 806BE3B4  7F 67 DB 78 */	mr r7, r27
/* 806BE3B8  39 1E 01 0C */	addi r8, r30, 0x10c
/* 806BE3BC  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 806BE3C0  7F 8A E3 78 */	mr r10, r28
/* 806BE3C4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806BE3C8  4B 98 F1 05 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806BE3CC  7C 7E B9 2E */	stwx r3, r30, r23
/* 806BE3D0  3A B5 00 01 */	addi r21, r21, 1
/* 806BE3D4  2C 15 00 03 */	cmpwi r21, 3
/* 806BE3D8  3A D6 00 02 */	addi r22, r22, 2
/* 806BE3DC  3A 94 00 04 */	addi r20, r20, 4
/* 806BE3E0  41 80 FF 98 */	blt lbl_806BE378
/* 806BE3E4  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 806BE3E8  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 806BE3EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 806BE3F0  7F 43 D3 78 */	mr r3, r26
/* 806BE3F4  38 81 00 24 */	addi r4, r1, 0x24
/* 806BE3F8  38 A0 00 00 */	li r5, 0
/* 806BE3FC  38 C0 FF FF */	li r6, -1
/* 806BE400  81 9A 00 00 */	lwz r12, 0(r26)
/* 806BE404  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 806BE408  7D 89 03 A6 */	mtctr r12
/* 806BE40C  4E 80 04 21 */	bctrl 
/* 806BE410  38 60 00 01 */	li r3, 1
/* 806BE414  48 00 00 10 */	b lbl_806BE424
lbl_806BE418:
/* 806BE418  38 00 00 00 */	li r0, 0
/* 806BE41C  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 806BE420  38 60 00 00 */	li r3, 0
lbl_806BE424:
/* 806BE424  39 61 00 A0 */	addi r11, r1, 0xa0
/* 806BE428  4B CA 3D D9 */	bl _restgpr_19
/* 806BE42C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 806BE430  7C 08 03 A6 */	mtlr r0
/* 806BE434  38 21 00 A0 */	addi r1, r1, 0xa0
/* 806BE438  4E 80 00 20 */	blr 

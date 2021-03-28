lbl_806D7500:
/* 806D7500  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 806D7504  7C 08 02 A6 */	mflr r0
/* 806D7508  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 806D750C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 806D7510  4B C8 AC A4 */	b _savegpr_19
/* 806D7514  7C 7E 1B 78 */	mr r30, r3
/* 806D7518  7C 9A 23 78 */	mr r26, r4
/* 806D751C  7C BB 2B 78 */	mr r27, r5
/* 806D7520  7C DC 33 78 */	mr r28, r6
/* 806D7524  3C 60 80 6D */	lis r3, cNullVec__6Z2Calc@ha
/* 806D7528  3A E3 7A FC */	addi r23, r3, cNullVec__6Z2Calc@l
/* 806D752C  3C 60 80 6D */	lis r3, lit_3906@ha
/* 806D7530  3B E3 79 A0 */	addi r31, r3, lit_3906@l
/* 806D7534  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806D7538  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806D753C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806D7540  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha
/* 806D7544  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)
/* 806D7548  28 00 00 00 */	cmplwi r0, 0
/* 806D754C  41 82 03 A4 */	beq lbl_806D78F0
/* 806D7550  7F C4 F3 78 */	mr r4, r30
/* 806D7554  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806D7558  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 806D755C  7D 89 03 A6 */	mtctr r12
/* 806D7560  4E 80 04 21 */	bctrl 
/* 806D7564  2C 03 00 00 */	cmpwi r3, 0
/* 806D7568  41 82 03 88 */	beq lbl_806D78F0
/* 806D756C  4B AD 50 10 */	b dKy_darkworld_check__Fv
/* 806D7570  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 806D7574  30 03 FF FF */	addic r0, r3, -1
/* 806D7578  7F A0 19 10 */	subfe r29, r0, r3
/* 806D757C  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 806D7580  28 00 00 00 */	cmplwi r0, 0
/* 806D7584  40 82 02 A0 */	bne lbl_806D7824
/* 806D7588  38 00 00 01 */	li r0, 1
/* 806D758C  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 806D7590  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha
/* 806D7594  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l
/* 806D7598  80 63 00 00 */	lwz r3, 0(r3)
/* 806D759C  80 63 05 74 */	lwz r3, 0x574(r3)
/* 806D75A0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806D75A4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806D75A8  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 806D75AC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806D75B0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806D75B4  4B C6 EE FC */	b PSMTXCopy
/* 806D75B8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806D75BC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 806D75C0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806D75C4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806D75C8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 806D75CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806D75D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806D75D4  38 81 00 4C */	addi r4, r1, 0x4c
/* 806D75D8  38 A1 00 58 */	addi r5, r1, 0x58
/* 806D75DC  4B C6 F7 90 */	b PSMTXMultVec
/* 806D75E0  38 61 00 34 */	addi r3, r1, 0x34
/* 806D75E4  38 81 00 58 */	addi r4, r1, 0x58
/* 806D75E8  7F 65 DB 78 */	mr r5, r27
/* 806D75EC  4B B8 F5 48 */	b __mi__4cXyzCFRC3Vec
/* 806D75F0  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 806D75F4  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 806D75F8  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 806D75FC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 806D7600  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 806D7604  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 806D7608  4B B9 00 6C */	b cM_atan2s__Fff
/* 806D760C  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 806D7610  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 806D7614  EC 20 00 32 */	fmuls f1, f0, f0
/* 806D7618  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 806D761C  EC 00 00 32 */	fmuls f0, f0, f0
/* 806D7620  EC 41 00 2A */	fadds f2, f1, f0
/* 806D7624  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806D7628  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806D762C  40 81 00 0C */	ble lbl_806D7638
/* 806D7630  FC 00 10 34 */	frsqrte f0, f2
/* 806D7634  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_806D7638:
/* 806D7638  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 806D763C  4B B9 00 38 */	b cM_atan2s__Fff
/* 806D7640  7C 03 00 D0 */	neg r0, r3
/* 806D7644  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 806D7648  38 80 00 00 */	li r4, 0
/* 806D764C  B0 81 00 30 */	sth r4, 0x30(r1)
/* 806D7650  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806D7654  7C 00 07 74 */	extsb r0, r0
/* 806D7658  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806D765C  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 806D7660  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 806D7664  57 A5 10 3A */	slwi r5, r29, 2
/* 806D7668  90 81 00 08 */	stw r4, 8(r1)
/* 806D766C  90 01 00 0C */	stw r0, 0xc(r1)
/* 806D7670  3A B7 00 20 */	addi r21, r23, 0x20
/* 806D7674  7E B5 2A 14 */	add r21, r21, r5
/* 806D7678  92 A1 00 10 */	stw r21, 0x10(r1)
/* 806D767C  3A D7 00 28 */	addi r22, r23, 0x28
/* 806D7680  7E D6 2A 14 */	add r22, r22, r5
/* 806D7684  92 C1 00 14 */	stw r22, 0x14(r1)
/* 806D7688  90 81 00 18 */	stw r4, 0x18(r1)
/* 806D768C  38 80 00 00 */	li r4, 0
/* 806D7690  38 A0 02 9B */	li r5, 0x29b
/* 806D7694  7F 66 DB 78 */	mr r6, r27
/* 806D7698  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806D769C  39 01 00 2C */	addi r8, r1, 0x2c
/* 806D76A0  7F 89 E3 78 */	mr r9, r28
/* 806D76A4  39 40 00 FF */	li r10, 0xff
/* 806D76A8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806D76AC  4B 97 53 E4 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806D76B0  7C 79 1B 79 */	or. r25, r3, r3
/* 806D76B4  41 82 00 FC */	beq lbl_806D77B0
/* 806D76B8  38 61 00 40 */	addi r3, r1, 0x40
/* 806D76BC  4B C6 FA 7C */	b PSVECSquareMag
/* 806D76C0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806D76C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806D76C8  40 81 00 58 */	ble lbl_806D7720
/* 806D76CC  FC 00 08 34 */	frsqrte f0, f1
/* 806D76D0  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806D76D4  FC 44 00 32 */	fmul f2, f4, f0
/* 806D76D8  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806D76DC  FC 00 00 32 */	fmul f0, f0, f0
/* 806D76E0  FC 01 00 32 */	fmul f0, f1, f0
/* 806D76E4  FC 03 00 28 */	fsub f0, f3, f0
/* 806D76E8  FC 02 00 32 */	fmul f0, f2, f0
/* 806D76EC  FC 44 00 32 */	fmul f2, f4, f0
/* 806D76F0  FC 00 00 32 */	fmul f0, f0, f0
/* 806D76F4  FC 01 00 32 */	fmul f0, f1, f0
/* 806D76F8  FC 03 00 28 */	fsub f0, f3, f0
/* 806D76FC  FC 02 00 32 */	fmul f0, f2, f0
/* 806D7700  FC 44 00 32 */	fmul f2, f4, f0
/* 806D7704  FC 00 00 32 */	fmul f0, f0, f0
/* 806D7708  FC 01 00 32 */	fmul f0, f1, f0
/* 806D770C  FC 03 00 28 */	fsub f0, f3, f0
/* 806D7710  FC 02 00 32 */	fmul f0, f2, f0
/* 806D7714  FC 21 00 32 */	fmul f1, f1, f0
/* 806D7718  FC 20 08 18 */	frsp f1, f1
/* 806D771C  48 00 00 88 */	b lbl_806D77A4
lbl_806D7720:
/* 806D7720  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806D7724  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806D7728  40 80 00 10 */	bge lbl_806D7738
/* 806D772C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806D7730  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 806D7734  48 00 00 70 */	b lbl_806D77A4
lbl_806D7738:
/* 806D7738  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 806D773C  80 81 00 20 */	lwz r4, 0x20(r1)
/* 806D7740  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806D7744  3C 00 7F 80 */	lis r0, 0x7f80
/* 806D7748  7C 03 00 00 */	cmpw r3, r0
/* 806D774C  41 82 00 14 */	beq lbl_806D7760
/* 806D7750  40 80 00 40 */	bge lbl_806D7790
/* 806D7754  2C 03 00 00 */	cmpwi r3, 0
/* 806D7758  41 82 00 20 */	beq lbl_806D7778
/* 806D775C  48 00 00 34 */	b lbl_806D7790
lbl_806D7760:
/* 806D7760  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806D7764  41 82 00 0C */	beq lbl_806D7770
/* 806D7768  38 00 00 01 */	li r0, 1
/* 806D776C  48 00 00 28 */	b lbl_806D7794
lbl_806D7770:
/* 806D7770  38 00 00 02 */	li r0, 2
/* 806D7774  48 00 00 20 */	b lbl_806D7794
lbl_806D7778:
/* 806D7778  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806D777C  41 82 00 0C */	beq lbl_806D7788
/* 806D7780  38 00 00 05 */	li r0, 5
/* 806D7784  48 00 00 10 */	b lbl_806D7794
lbl_806D7788:
/* 806D7788  38 00 00 03 */	li r0, 3
/* 806D778C  48 00 00 08 */	b lbl_806D7794
lbl_806D7790:
/* 806D7790  38 00 00 04 */	li r0, 4
lbl_806D7794:
/* 806D7794  2C 00 00 01 */	cmpwi r0, 1
/* 806D7798  40 82 00 0C */	bne lbl_806D77A4
/* 806D779C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806D77A0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_806D77A4:
/* 806D77A4  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 806D77A8  EC 00 00 72 */	fmuls f0, f0, f1
/* 806D77AC  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_806D77B0:
/* 806D77B0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806D77B4  7C 04 07 74 */	extsb r4, r0
/* 806D77B8  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 806D77BC  38 00 00 00 */	li r0, 0
/* 806D77C0  90 01 00 08 */	stw r0, 8(r1)
/* 806D77C4  90 81 00 0C */	stw r4, 0xc(r1)
/* 806D77C8  92 A1 00 10 */	stw r21, 0x10(r1)
/* 806D77CC  92 C1 00 14 */	stw r22, 0x14(r1)
/* 806D77D0  90 01 00 18 */	stw r0, 0x18(r1)
/* 806D77D4  38 80 00 00 */	li r4, 0
/* 806D77D8  38 A0 02 9C */	li r5, 0x29c
/* 806D77DC  7F 66 DB 78 */	mr r6, r27
/* 806D77E0  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806D77E4  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 806D77E8  7F 89 E3 78 */	mr r9, r28
/* 806D77EC  39 40 00 FF */	li r10, 0xff
/* 806D77F0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806D77F4  4B 97 52 9C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806D77F8  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 806D77FC  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 806D7800  90 01 00 28 */	stw r0, 0x28(r1)
/* 806D7804  7F 43 D3 78 */	mr r3, r26
/* 806D7808  38 81 00 28 */	addi r4, r1, 0x28
/* 806D780C  38 A0 00 00 */	li r5, 0
/* 806D7810  38 C0 FF FF */	li r6, -1
/* 806D7814  81 9A 00 00 */	lwz r12, 0(r26)
/* 806D7818  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806D781C  7D 89 03 A6 */	mtctr r12
/* 806D7820  4E 80 04 21 */	bctrl 
lbl_806D7824:
/* 806D7824  3A A0 00 00 */	li r21, 0
/* 806D7828  3A C0 00 00 */	li r22, 0
/* 806D782C  3A 80 00 00 */	li r20, 0
/* 806D7830  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806D7834  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 806D7838  57 A0 10 3A */	slwi r0, r29, 2
/* 806D783C  3B 17 00 28 */	addi r24, r23, 0x28
/* 806D7840  7F 18 02 14 */	add r24, r24, r0
/* 806D7844  3B B7 00 20 */	addi r29, r23, 0x20
/* 806D7848  7F BD 02 14 */	add r29, r29, r0
/* 806D784C  3A 77 00 30 */	addi r19, r23, 0x30
lbl_806D7850:
/* 806D7850  3A F4 05 9C */	addi r23, r20, 0x59c
/* 806D7854  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806D7858  7C 05 07 74 */	extsb r5, r0
/* 806D785C  7C 9E B8 2E */	lwzx r4, r30, r23
/* 806D7860  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 806D7864  38 00 00 FF */	li r0, 0xff
/* 806D7868  90 01 00 08 */	stw r0, 8(r1)
/* 806D786C  38 00 00 00 */	li r0, 0
/* 806D7870  90 01 00 0C */	stw r0, 0xc(r1)
/* 806D7874  90 A1 00 10 */	stw r5, 0x10(r1)
/* 806D7878  93 A1 00 14 */	stw r29, 0x14(r1)
/* 806D787C  93 01 00 18 */	stw r24, 0x18(r1)
/* 806D7880  90 01 00 1C */	stw r0, 0x1c(r1)
/* 806D7884  38 A0 00 00 */	li r5, 0
/* 806D7888  7C D3 B2 2E */	lhzx r6, r19, r22
/* 806D788C  7F 67 DB 78 */	mr r7, r27
/* 806D7890  39 1E 01 0C */	addi r8, r30, 0x10c
/* 806D7894  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 806D7898  7F 8A E3 78 */	mr r10, r28
/* 806D789C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806D78A0  4B 97 5C 2C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806D78A4  7C 7E B9 2E */	stwx r3, r30, r23
/* 806D78A8  3A B5 00 01 */	addi r21, r21, 1
/* 806D78AC  2C 15 00 03 */	cmpwi r21, 3
/* 806D78B0  3A D6 00 02 */	addi r22, r22, 2
/* 806D78B4  3A 94 00 04 */	addi r20, r20, 4
/* 806D78B8  41 80 FF 98 */	blt lbl_806D7850
/* 806D78BC  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 806D78C0  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 806D78C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 806D78C8  7F 43 D3 78 */	mr r3, r26
/* 806D78CC  38 81 00 24 */	addi r4, r1, 0x24
/* 806D78D0  38 A0 00 00 */	li r5, 0
/* 806D78D4  38 C0 FF FF */	li r6, -1
/* 806D78D8  81 9A 00 00 */	lwz r12, 0(r26)
/* 806D78DC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 806D78E0  7D 89 03 A6 */	mtctr r12
/* 806D78E4  4E 80 04 21 */	bctrl 
/* 806D78E8  38 60 00 01 */	li r3, 1
/* 806D78EC  48 00 00 10 */	b lbl_806D78FC
lbl_806D78F0:
/* 806D78F0  38 00 00 00 */	li r0, 0
/* 806D78F4  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 806D78F8  38 60 00 00 */	li r3, 0
lbl_806D78FC:
/* 806D78FC  39 61 00 A0 */	addi r11, r1, 0xa0
/* 806D7900  4B C8 A9 00 */	b _restgpr_19
/* 806D7904  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 806D7908  7C 08 03 A6 */	mtlr r0
/* 806D790C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 806D7910  4E 80 00 20 */	blr 

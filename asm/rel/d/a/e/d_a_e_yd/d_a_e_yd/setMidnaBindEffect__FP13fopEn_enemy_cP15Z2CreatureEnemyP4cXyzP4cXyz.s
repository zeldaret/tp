lbl_807F7560:
/* 807F7560  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 807F7564  7C 08 02 A6 */	mflr r0
/* 807F7568  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 807F756C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 807F7570  4B B6 AC 44 */	b _savegpr_19
/* 807F7574  7C 7E 1B 78 */	mr r30, r3
/* 807F7578  7C 9A 23 78 */	mr r26, r4
/* 807F757C  7C BB 2B 78 */	mr r27, r5
/* 807F7580  7C DC 33 78 */	mr r28, r6
/* 807F7584  3C 60 80 7F */	lis r3, cNullVec__6Z2Calc@ha
/* 807F7588  3A E3 7B 38 */	addi r23, r3, cNullVec__6Z2Calc@l
/* 807F758C  3C 60 80 7F */	lis r3, lit_3788@ha
/* 807F7590  3B E3 7A 00 */	addi r31, r3, lit_3788@l
/* 807F7594  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807F7598  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807F759C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807F75A0  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha
/* 807F75A4  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)
/* 807F75A8  28 00 00 00 */	cmplwi r0, 0
/* 807F75AC  41 82 03 A4 */	beq lbl_807F7950
/* 807F75B0  7F C4 F3 78 */	mr r4, r30
/* 807F75B4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807F75B8  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 807F75BC  7D 89 03 A6 */	mtctr r12
/* 807F75C0  4E 80 04 21 */	bctrl 
/* 807F75C4  2C 03 00 00 */	cmpwi r3, 0
/* 807F75C8  41 82 03 88 */	beq lbl_807F7950
/* 807F75CC  4B 9B 4F B0 */	b dKy_darkworld_check__Fv
/* 807F75D0  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 807F75D4  30 03 FF FF */	addic r0, r3, -1
/* 807F75D8  7F A0 19 10 */	subfe r29, r0, r3
/* 807F75DC  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 807F75E0  28 00 00 00 */	cmplwi r0, 0
/* 807F75E4  40 82 02 A0 */	bne lbl_807F7884
/* 807F75E8  38 00 00 01 */	li r0, 1
/* 807F75EC  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 807F75F0  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha
/* 807F75F4  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l
/* 807F75F8  80 63 00 00 */	lwz r3, 0(r3)
/* 807F75FC  80 63 05 74 */	lwz r3, 0x574(r3)
/* 807F7600  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807F7604  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807F7608  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 807F760C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 807F7610  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 807F7614  4B B4 EE 9C */	b PSMTXCopy
/* 807F7618  C0 1F 00 00 */	lfs f0, 0(r31)
/* 807F761C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807F7620  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807F7624  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807F7628  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807F762C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807F7630  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807F7634  38 81 00 4C */	addi r4, r1, 0x4c
/* 807F7638  38 A1 00 58 */	addi r5, r1, 0x58
/* 807F763C  4B B4 F7 30 */	b PSMTXMultVec
/* 807F7640  38 61 00 34 */	addi r3, r1, 0x34
/* 807F7644  38 81 00 58 */	addi r4, r1, 0x58
/* 807F7648  7F 65 DB 78 */	mr r5, r27
/* 807F764C  4B A6 F4 E8 */	b __mi__4cXyzCFRC3Vec
/* 807F7650  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 807F7654  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 807F7658  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 807F765C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807F7660  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 807F7664  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 807F7668  4B A7 00 0C */	b cM_atan2s__Fff
/* 807F766C  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 807F7670  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 807F7674  EC 20 00 32 */	fmuls f1, f0, f0
/* 807F7678  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 807F767C  EC 00 00 32 */	fmuls f0, f0, f0
/* 807F7680  EC 41 00 2A */	fadds f2, f1, f0
/* 807F7684  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807F7688  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807F768C  40 81 00 0C */	ble lbl_807F7698
/* 807F7690  FC 00 10 34 */	frsqrte f0, f2
/* 807F7694  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_807F7698:
/* 807F7698  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 807F769C  4B A6 FF D8 */	b cM_atan2s__Fff
/* 807F76A0  7C 03 00 D0 */	neg r0, r3
/* 807F76A4  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 807F76A8  38 80 00 00 */	li r4, 0
/* 807F76AC  B0 81 00 30 */	sth r4, 0x30(r1)
/* 807F76B0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807F76B4  7C 00 07 74 */	extsb r0, r0
/* 807F76B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807F76BC  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 807F76C0  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 807F76C4  57 A5 10 3A */	slwi r5, r29, 2
/* 807F76C8  90 81 00 08 */	stw r4, 8(r1)
/* 807F76CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 807F76D0  3A B7 00 20 */	addi r21, r23, 0x20
/* 807F76D4  7E B5 2A 14 */	add r21, r21, r5
/* 807F76D8  92 A1 00 10 */	stw r21, 0x10(r1)
/* 807F76DC  3A D7 00 28 */	addi r22, r23, 0x28
/* 807F76E0  7E D6 2A 14 */	add r22, r22, r5
/* 807F76E4  92 C1 00 14 */	stw r22, 0x14(r1)
/* 807F76E8  90 81 00 18 */	stw r4, 0x18(r1)
/* 807F76EC  38 80 00 00 */	li r4, 0
/* 807F76F0  38 A0 02 9B */	li r5, 0x29b
/* 807F76F4  7F 66 DB 78 */	mr r6, r27
/* 807F76F8  38 FE 01 0C */	addi r7, r30, 0x10c
/* 807F76FC  39 01 00 2C */	addi r8, r1, 0x2c
/* 807F7700  7F 89 E3 78 */	mr r9, r28
/* 807F7704  39 40 00 FF */	li r10, 0xff
/* 807F7708  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807F770C  4B 85 53 84 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807F7710  7C 79 1B 79 */	or. r25, r3, r3
/* 807F7714  41 82 00 FC */	beq lbl_807F7810
/* 807F7718  38 61 00 40 */	addi r3, r1, 0x40
/* 807F771C  4B B4 FA 1C */	b PSVECSquareMag
/* 807F7720  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807F7724  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F7728  40 81 00 58 */	ble lbl_807F7780
/* 807F772C  FC 00 08 34 */	frsqrte f0, f1
/* 807F7730  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807F7734  FC 44 00 32 */	fmul f2, f4, f0
/* 807F7738  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807F773C  FC 00 00 32 */	fmul f0, f0, f0
/* 807F7740  FC 01 00 32 */	fmul f0, f1, f0
/* 807F7744  FC 03 00 28 */	fsub f0, f3, f0
/* 807F7748  FC 02 00 32 */	fmul f0, f2, f0
/* 807F774C  FC 44 00 32 */	fmul f2, f4, f0
/* 807F7750  FC 00 00 32 */	fmul f0, f0, f0
/* 807F7754  FC 01 00 32 */	fmul f0, f1, f0
/* 807F7758  FC 03 00 28 */	fsub f0, f3, f0
/* 807F775C  FC 02 00 32 */	fmul f0, f2, f0
/* 807F7760  FC 44 00 32 */	fmul f2, f4, f0
/* 807F7764  FC 00 00 32 */	fmul f0, f0, f0
/* 807F7768  FC 01 00 32 */	fmul f0, f1, f0
/* 807F776C  FC 03 00 28 */	fsub f0, f3, f0
/* 807F7770  FC 02 00 32 */	fmul f0, f2, f0
/* 807F7774  FC 21 00 32 */	fmul f1, f1, f0
/* 807F7778  FC 20 08 18 */	frsp f1, f1
/* 807F777C  48 00 00 88 */	b lbl_807F7804
lbl_807F7780:
/* 807F7780  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807F7784  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F7788  40 80 00 10 */	bge lbl_807F7798
/* 807F778C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807F7790  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807F7794  48 00 00 70 */	b lbl_807F7804
lbl_807F7798:
/* 807F7798  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 807F779C  80 81 00 20 */	lwz r4, 0x20(r1)
/* 807F77A0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807F77A4  3C 00 7F 80 */	lis r0, 0x7f80
/* 807F77A8  7C 03 00 00 */	cmpw r3, r0
/* 807F77AC  41 82 00 14 */	beq lbl_807F77C0
/* 807F77B0  40 80 00 40 */	bge lbl_807F77F0
/* 807F77B4  2C 03 00 00 */	cmpwi r3, 0
/* 807F77B8  41 82 00 20 */	beq lbl_807F77D8
/* 807F77BC  48 00 00 34 */	b lbl_807F77F0
lbl_807F77C0:
/* 807F77C0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807F77C4  41 82 00 0C */	beq lbl_807F77D0
/* 807F77C8  38 00 00 01 */	li r0, 1
/* 807F77CC  48 00 00 28 */	b lbl_807F77F4
lbl_807F77D0:
/* 807F77D0  38 00 00 02 */	li r0, 2
/* 807F77D4  48 00 00 20 */	b lbl_807F77F4
lbl_807F77D8:
/* 807F77D8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807F77DC  41 82 00 0C */	beq lbl_807F77E8
/* 807F77E0  38 00 00 05 */	li r0, 5
/* 807F77E4  48 00 00 10 */	b lbl_807F77F4
lbl_807F77E8:
/* 807F77E8  38 00 00 03 */	li r0, 3
/* 807F77EC  48 00 00 08 */	b lbl_807F77F4
lbl_807F77F0:
/* 807F77F0  38 00 00 04 */	li r0, 4
lbl_807F77F4:
/* 807F77F4  2C 00 00 01 */	cmpwi r0, 1
/* 807F77F8  40 82 00 0C */	bne lbl_807F7804
/* 807F77FC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807F7800  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807F7804:
/* 807F7804  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 807F7808  EC 00 00 72 */	fmuls f0, f0, f1
/* 807F780C  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_807F7810:
/* 807F7810  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807F7814  7C 04 07 74 */	extsb r4, r0
/* 807F7818  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 807F781C  38 00 00 00 */	li r0, 0
/* 807F7820  90 01 00 08 */	stw r0, 8(r1)
/* 807F7824  90 81 00 0C */	stw r4, 0xc(r1)
/* 807F7828  92 A1 00 10 */	stw r21, 0x10(r1)
/* 807F782C  92 C1 00 14 */	stw r22, 0x14(r1)
/* 807F7830  90 01 00 18 */	stw r0, 0x18(r1)
/* 807F7834  38 80 00 00 */	li r4, 0
/* 807F7838  38 A0 02 9C */	li r5, 0x29c
/* 807F783C  7F 66 DB 78 */	mr r6, r27
/* 807F7840  38 FE 01 0C */	addi r7, r30, 0x10c
/* 807F7844  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 807F7848  7F 89 E3 78 */	mr r9, r28
/* 807F784C  39 40 00 FF */	li r10, 0xff
/* 807F7850  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807F7854  4B 85 52 3C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807F7858  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 807F785C  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 807F7860  90 01 00 28 */	stw r0, 0x28(r1)
/* 807F7864  7F 43 D3 78 */	mr r3, r26
/* 807F7868  38 81 00 28 */	addi r4, r1, 0x28
/* 807F786C  38 A0 00 00 */	li r5, 0
/* 807F7870  38 C0 FF FF */	li r6, -1
/* 807F7874  81 9A 00 00 */	lwz r12, 0(r26)
/* 807F7878  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807F787C  7D 89 03 A6 */	mtctr r12
/* 807F7880  4E 80 04 21 */	bctrl 
lbl_807F7884:
/* 807F7884  3A A0 00 00 */	li r21, 0
/* 807F7888  3A C0 00 00 */	li r22, 0
/* 807F788C  3A 80 00 00 */	li r20, 0
/* 807F7890  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807F7894  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 807F7898  57 A0 10 3A */	slwi r0, r29, 2
/* 807F789C  3B 17 00 28 */	addi r24, r23, 0x28
/* 807F78A0  7F 18 02 14 */	add r24, r24, r0
/* 807F78A4  3B B7 00 20 */	addi r29, r23, 0x20
/* 807F78A8  7F BD 02 14 */	add r29, r29, r0
/* 807F78AC  3A 77 00 30 */	addi r19, r23, 0x30
lbl_807F78B0:
/* 807F78B0  3A F4 05 9C */	addi r23, r20, 0x59c
/* 807F78B4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807F78B8  7C 05 07 74 */	extsb r5, r0
/* 807F78BC  7C 9E B8 2E */	lwzx r4, r30, r23
/* 807F78C0  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 807F78C4  38 00 00 FF */	li r0, 0xff
/* 807F78C8  90 01 00 08 */	stw r0, 8(r1)
/* 807F78CC  38 00 00 00 */	li r0, 0
/* 807F78D0  90 01 00 0C */	stw r0, 0xc(r1)
/* 807F78D4  90 A1 00 10 */	stw r5, 0x10(r1)
/* 807F78D8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 807F78DC  93 01 00 18 */	stw r24, 0x18(r1)
/* 807F78E0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 807F78E4  38 A0 00 00 */	li r5, 0
/* 807F78E8  7C D3 B2 2E */	lhzx r6, r19, r22
/* 807F78EC  7F 67 DB 78 */	mr r7, r27
/* 807F78F0  39 1E 01 0C */	addi r8, r30, 0x10c
/* 807F78F4  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 807F78F8  7F 8A E3 78 */	mr r10, r28
/* 807F78FC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807F7900  4B 85 5B CC */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807F7904  7C 7E B9 2E */	stwx r3, r30, r23
/* 807F7908  3A B5 00 01 */	addi r21, r21, 1
/* 807F790C  2C 15 00 03 */	cmpwi r21, 3
/* 807F7910  3A D6 00 02 */	addi r22, r22, 2
/* 807F7914  3A 94 00 04 */	addi r20, r20, 4
/* 807F7918  41 80 FF 98 */	blt lbl_807F78B0
/* 807F791C  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 807F7920  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 807F7924  90 01 00 24 */	stw r0, 0x24(r1)
/* 807F7928  7F 43 D3 78 */	mr r3, r26
/* 807F792C  38 81 00 24 */	addi r4, r1, 0x24
/* 807F7930  38 A0 00 00 */	li r5, 0
/* 807F7934  38 C0 FF FF */	li r6, -1
/* 807F7938  81 9A 00 00 */	lwz r12, 0(r26)
/* 807F793C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 807F7940  7D 89 03 A6 */	mtctr r12
/* 807F7944  4E 80 04 21 */	bctrl 
/* 807F7948  38 60 00 01 */	li r3, 1
/* 807F794C  48 00 00 10 */	b lbl_807F795C
lbl_807F7950:
/* 807F7950  38 00 00 00 */	li r0, 0
/* 807F7954  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 807F7958  38 60 00 00 */	li r3, 0
lbl_807F795C:
/* 807F795C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 807F7960  4B B6 A8 A0 */	b _restgpr_19
/* 807F7964  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 807F7968  7C 08 03 A6 */	mtlr r0
/* 807F796C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 807F7970  4E 80 00 20 */	blr 

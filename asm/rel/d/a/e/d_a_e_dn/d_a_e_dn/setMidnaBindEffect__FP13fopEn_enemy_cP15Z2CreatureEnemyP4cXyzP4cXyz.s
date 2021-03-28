lbl_804EE448:
/* 804EE448  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 804EE44C  7C 08 02 A6 */	mflr r0
/* 804EE450  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 804EE454  39 61 00 A0 */	addi r11, r1, 0xa0
/* 804EE458  4B E7 3D 5C */	b _savegpr_19
/* 804EE45C  7C 7E 1B 78 */	mr r30, r3
/* 804EE460  7C 9A 23 78 */	mr r26, r4
/* 804EE464  7C BB 2B 78 */	mr r27, r5
/* 804EE468  7C DC 33 78 */	mr r28, r6
/* 804EE46C  3C 60 80 4F */	lis r3, cNullVec__6Z2Calc@ha
/* 804EE470  3A E3 EA 40 */	addi r23, r3, cNullVec__6Z2Calc@l
/* 804EE474  3C 60 80 4F */	lis r3, lit_3789@ha
/* 804EE478  3B E3 E8 AC */	addi r31, r3, lit_3789@l
/* 804EE47C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804EE480  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804EE484  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 804EE488  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha
/* 804EE48C  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)
/* 804EE490  28 00 00 00 */	cmplwi r0, 0
/* 804EE494  41 82 03 A4 */	beq lbl_804EE838
/* 804EE498  7F C4 F3 78 */	mr r4, r30
/* 804EE49C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804EE4A0  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 804EE4A4  7D 89 03 A6 */	mtctr r12
/* 804EE4A8  4E 80 04 21 */	bctrl 
/* 804EE4AC  2C 03 00 00 */	cmpwi r3, 0
/* 804EE4B0  41 82 03 88 */	beq lbl_804EE838
/* 804EE4B4  4B CB E0 C8 */	b dKy_darkworld_check__Fv
/* 804EE4B8  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 804EE4BC  30 03 FF FF */	addic r0, r3, -1
/* 804EE4C0  7F A0 19 10 */	subfe r29, r0, r3
/* 804EE4C4  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 804EE4C8  28 00 00 00 */	cmplwi r0, 0
/* 804EE4CC  40 82 02 A0 */	bne lbl_804EE76C
/* 804EE4D0  38 00 00 01 */	li r0, 1
/* 804EE4D4  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 804EE4D8  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha
/* 804EE4DC  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l
/* 804EE4E0  80 63 00 00 */	lwz r3, 0(r3)
/* 804EE4E4  80 63 05 74 */	lwz r3, 0x574(r3)
/* 804EE4E8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804EE4EC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804EE4F0  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 804EE4F4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 804EE4F8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 804EE4FC  4B E5 7F B4 */	b PSMTXCopy
/* 804EE500  C0 1F 00 00 */	lfs f0, 0(r31)
/* 804EE504  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 804EE508  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804EE50C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 804EE510  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 804EE514  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804EE518  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804EE51C  38 81 00 4C */	addi r4, r1, 0x4c
/* 804EE520  38 A1 00 58 */	addi r5, r1, 0x58
/* 804EE524  4B E5 88 48 */	b PSMTXMultVec
/* 804EE528  38 61 00 34 */	addi r3, r1, 0x34
/* 804EE52C  38 81 00 58 */	addi r4, r1, 0x58
/* 804EE530  7F 65 DB 78 */	mr r5, r27
/* 804EE534  4B D7 86 00 */	b __mi__4cXyzCFRC3Vec
/* 804EE538  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 804EE53C  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 804EE540  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 804EE544  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 804EE548  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 804EE54C  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 804EE550  4B D7 91 24 */	b cM_atan2s__Fff
/* 804EE554  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 804EE558  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 804EE55C  EC 20 00 32 */	fmuls f1, f0, f0
/* 804EE560  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 804EE564  EC 00 00 32 */	fmuls f0, f0, f0
/* 804EE568  EC 41 00 2A */	fadds f2, f1, f0
/* 804EE56C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804EE570  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804EE574  40 81 00 0C */	ble lbl_804EE580
/* 804EE578  FC 00 10 34 */	frsqrte f0, f2
/* 804EE57C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_804EE580:
/* 804EE580  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 804EE584  4B D7 90 F0 */	b cM_atan2s__Fff
/* 804EE588  7C 03 00 D0 */	neg r0, r3
/* 804EE58C  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 804EE590  38 80 00 00 */	li r4, 0
/* 804EE594  B0 81 00 30 */	sth r4, 0x30(r1)
/* 804EE598  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 804EE59C  7C 00 07 74 */	extsb r0, r0
/* 804EE5A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804EE5A4  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 804EE5A8  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 804EE5AC  57 A5 10 3A */	slwi r5, r29, 2
/* 804EE5B0  90 81 00 08 */	stw r4, 8(r1)
/* 804EE5B4  90 01 00 0C */	stw r0, 0xc(r1)
/* 804EE5B8  3A B7 00 20 */	addi r21, r23, 0x20
/* 804EE5BC  7E B5 2A 14 */	add r21, r21, r5
/* 804EE5C0  92 A1 00 10 */	stw r21, 0x10(r1)
/* 804EE5C4  3A D7 00 28 */	addi r22, r23, 0x28
/* 804EE5C8  7E D6 2A 14 */	add r22, r22, r5
/* 804EE5CC  92 C1 00 14 */	stw r22, 0x14(r1)
/* 804EE5D0  90 81 00 18 */	stw r4, 0x18(r1)
/* 804EE5D4  38 80 00 00 */	li r4, 0
/* 804EE5D8  38 A0 02 9B */	li r5, 0x29b
/* 804EE5DC  7F 66 DB 78 */	mr r6, r27
/* 804EE5E0  38 FE 01 0C */	addi r7, r30, 0x10c
/* 804EE5E4  39 01 00 2C */	addi r8, r1, 0x2c
/* 804EE5E8  7F 89 E3 78 */	mr r9, r28
/* 804EE5EC  39 40 00 FF */	li r10, 0xff
/* 804EE5F0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 804EE5F4  4B B5 E4 9C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804EE5F8  7C 79 1B 79 */	or. r25, r3, r3
/* 804EE5FC  41 82 00 FC */	beq lbl_804EE6F8
/* 804EE600  38 61 00 40 */	addi r3, r1, 0x40
/* 804EE604  4B E5 8B 34 */	b PSVECSquareMag
/* 804EE608  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804EE60C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804EE610  40 81 00 58 */	ble lbl_804EE668
/* 804EE614  FC 00 08 34 */	frsqrte f0, f1
/* 804EE618  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 804EE61C  FC 44 00 32 */	fmul f2, f4, f0
/* 804EE620  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 804EE624  FC 00 00 32 */	fmul f0, f0, f0
/* 804EE628  FC 01 00 32 */	fmul f0, f1, f0
/* 804EE62C  FC 03 00 28 */	fsub f0, f3, f0
/* 804EE630  FC 02 00 32 */	fmul f0, f2, f0
/* 804EE634  FC 44 00 32 */	fmul f2, f4, f0
/* 804EE638  FC 00 00 32 */	fmul f0, f0, f0
/* 804EE63C  FC 01 00 32 */	fmul f0, f1, f0
/* 804EE640  FC 03 00 28 */	fsub f0, f3, f0
/* 804EE644  FC 02 00 32 */	fmul f0, f2, f0
/* 804EE648  FC 44 00 32 */	fmul f2, f4, f0
/* 804EE64C  FC 00 00 32 */	fmul f0, f0, f0
/* 804EE650  FC 01 00 32 */	fmul f0, f1, f0
/* 804EE654  FC 03 00 28 */	fsub f0, f3, f0
/* 804EE658  FC 02 00 32 */	fmul f0, f2, f0
/* 804EE65C  FC 21 00 32 */	fmul f1, f1, f0
/* 804EE660  FC 20 08 18 */	frsp f1, f1
/* 804EE664  48 00 00 88 */	b lbl_804EE6EC
lbl_804EE668:
/* 804EE668  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 804EE66C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804EE670  40 80 00 10 */	bge lbl_804EE680
/* 804EE674  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804EE678  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 804EE67C  48 00 00 70 */	b lbl_804EE6EC
lbl_804EE680:
/* 804EE680  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 804EE684  80 81 00 20 */	lwz r4, 0x20(r1)
/* 804EE688  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804EE68C  3C 00 7F 80 */	lis r0, 0x7f80
/* 804EE690  7C 03 00 00 */	cmpw r3, r0
/* 804EE694  41 82 00 14 */	beq lbl_804EE6A8
/* 804EE698  40 80 00 40 */	bge lbl_804EE6D8
/* 804EE69C  2C 03 00 00 */	cmpwi r3, 0
/* 804EE6A0  41 82 00 20 */	beq lbl_804EE6C0
/* 804EE6A4  48 00 00 34 */	b lbl_804EE6D8
lbl_804EE6A8:
/* 804EE6A8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804EE6AC  41 82 00 0C */	beq lbl_804EE6B8
/* 804EE6B0  38 00 00 01 */	li r0, 1
/* 804EE6B4  48 00 00 28 */	b lbl_804EE6DC
lbl_804EE6B8:
/* 804EE6B8  38 00 00 02 */	li r0, 2
/* 804EE6BC  48 00 00 20 */	b lbl_804EE6DC
lbl_804EE6C0:
/* 804EE6C0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804EE6C4  41 82 00 0C */	beq lbl_804EE6D0
/* 804EE6C8  38 00 00 05 */	li r0, 5
/* 804EE6CC  48 00 00 10 */	b lbl_804EE6DC
lbl_804EE6D0:
/* 804EE6D0  38 00 00 03 */	li r0, 3
/* 804EE6D4  48 00 00 08 */	b lbl_804EE6DC
lbl_804EE6D8:
/* 804EE6D8  38 00 00 04 */	li r0, 4
lbl_804EE6DC:
/* 804EE6DC  2C 00 00 01 */	cmpwi r0, 1
/* 804EE6E0  40 82 00 0C */	bne lbl_804EE6EC
/* 804EE6E4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804EE6E8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_804EE6EC:
/* 804EE6EC  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 804EE6F0  EC 00 00 72 */	fmuls f0, f0, f1
/* 804EE6F4  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_804EE6F8:
/* 804EE6F8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 804EE6FC  7C 04 07 74 */	extsb r4, r0
/* 804EE700  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 804EE704  38 00 00 00 */	li r0, 0
/* 804EE708  90 01 00 08 */	stw r0, 8(r1)
/* 804EE70C  90 81 00 0C */	stw r4, 0xc(r1)
/* 804EE710  92 A1 00 10 */	stw r21, 0x10(r1)
/* 804EE714  92 C1 00 14 */	stw r22, 0x14(r1)
/* 804EE718  90 01 00 18 */	stw r0, 0x18(r1)
/* 804EE71C  38 80 00 00 */	li r4, 0
/* 804EE720  38 A0 02 9C */	li r5, 0x29c
/* 804EE724  7F 66 DB 78 */	mr r6, r27
/* 804EE728  38 FE 01 0C */	addi r7, r30, 0x10c
/* 804EE72C  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 804EE730  7F 89 E3 78 */	mr r9, r28
/* 804EE734  39 40 00 FF */	li r10, 0xff
/* 804EE738  C0 3F 00 08 */	lfs f1, 8(r31)
/* 804EE73C  4B B5 E3 54 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804EE740  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 804EE744  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 804EE748  90 01 00 28 */	stw r0, 0x28(r1)
/* 804EE74C  7F 43 D3 78 */	mr r3, r26
/* 804EE750  38 81 00 28 */	addi r4, r1, 0x28
/* 804EE754  38 A0 00 00 */	li r5, 0
/* 804EE758  38 C0 FF FF */	li r6, -1
/* 804EE75C  81 9A 00 00 */	lwz r12, 0(r26)
/* 804EE760  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804EE764  7D 89 03 A6 */	mtctr r12
/* 804EE768  4E 80 04 21 */	bctrl 
lbl_804EE76C:
/* 804EE76C  3A A0 00 00 */	li r21, 0
/* 804EE770  3A C0 00 00 */	li r22, 0
/* 804EE774  3A 80 00 00 */	li r20, 0
/* 804EE778  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804EE77C  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 804EE780  57 A0 10 3A */	slwi r0, r29, 2
/* 804EE784  3B 17 00 28 */	addi r24, r23, 0x28
/* 804EE788  7F 18 02 14 */	add r24, r24, r0
/* 804EE78C  3B B7 00 20 */	addi r29, r23, 0x20
/* 804EE790  7F BD 02 14 */	add r29, r29, r0
/* 804EE794  3A 77 00 30 */	addi r19, r23, 0x30
lbl_804EE798:
/* 804EE798  3A F4 05 9C */	addi r23, r20, 0x59c
/* 804EE79C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 804EE7A0  7C 05 07 74 */	extsb r5, r0
/* 804EE7A4  7C 9E B8 2E */	lwzx r4, r30, r23
/* 804EE7A8  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 804EE7AC  38 00 00 FF */	li r0, 0xff
/* 804EE7B0  90 01 00 08 */	stw r0, 8(r1)
/* 804EE7B4  38 00 00 00 */	li r0, 0
/* 804EE7B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 804EE7BC  90 A1 00 10 */	stw r5, 0x10(r1)
/* 804EE7C0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 804EE7C4  93 01 00 18 */	stw r24, 0x18(r1)
/* 804EE7C8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804EE7CC  38 A0 00 00 */	li r5, 0
/* 804EE7D0  7C D3 B2 2E */	lhzx r6, r19, r22
/* 804EE7D4  7F 67 DB 78 */	mr r7, r27
/* 804EE7D8  39 1E 01 0C */	addi r8, r30, 0x10c
/* 804EE7DC  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 804EE7E0  7F 8A E3 78 */	mr r10, r28
/* 804EE7E4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 804EE7E8  4B B5 EC E4 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804EE7EC  7C 7E B9 2E */	stwx r3, r30, r23
/* 804EE7F0  3A B5 00 01 */	addi r21, r21, 1
/* 804EE7F4  2C 15 00 03 */	cmpwi r21, 3
/* 804EE7F8  3A D6 00 02 */	addi r22, r22, 2
/* 804EE7FC  3A 94 00 04 */	addi r20, r20, 4
/* 804EE800  41 80 FF 98 */	blt lbl_804EE798
/* 804EE804  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 804EE808  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 804EE80C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804EE810  7F 43 D3 78 */	mr r3, r26
/* 804EE814  38 81 00 24 */	addi r4, r1, 0x24
/* 804EE818  38 A0 00 00 */	li r5, 0
/* 804EE81C  38 C0 FF FF */	li r6, -1
/* 804EE820  81 9A 00 00 */	lwz r12, 0(r26)
/* 804EE824  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 804EE828  7D 89 03 A6 */	mtctr r12
/* 804EE82C  4E 80 04 21 */	bctrl 
/* 804EE830  38 60 00 01 */	li r3, 1
/* 804EE834  48 00 00 10 */	b lbl_804EE844
lbl_804EE838:
/* 804EE838  38 00 00 00 */	li r0, 0
/* 804EE83C  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 804EE840  38 60 00 00 */	li r3, 0
lbl_804EE844:
/* 804EE844  39 61 00 A0 */	addi r11, r1, 0xa0
/* 804EE848  4B E7 39 B8 */	b _restgpr_19
/* 804EE84C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 804EE850  7C 08 03 A6 */	mtlr r0
/* 804EE854  38 21 00 A0 */	addi r1, r1, 0xa0
/* 804EE858  4E 80 00 20 */	blr 

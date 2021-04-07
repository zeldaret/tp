lbl_806E54BC:
/* 806E54BC  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 806E54C0  7C 08 02 A6 */	mflr r0
/* 806E54C4  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 806E54C8  39 61 00 A0 */	addi r11, r1, 0xa0
/* 806E54CC  4B C7 CC E9 */	bl _savegpr_19
/* 806E54D0  7C 7E 1B 78 */	mr r30, r3
/* 806E54D4  7C 9A 23 78 */	mr r26, r4
/* 806E54D8  7C BB 2B 78 */	mr r27, r5
/* 806E54DC  7C DC 33 78 */	mr r28, r6
/* 806E54E0  3C 60 80 6E */	lis r3, cNullVec__6Z2Calc@ha /* 0x806E5A7C@ha */
/* 806E54E4  3A E3 5A 7C */	addi r23, r3, cNullVec__6Z2Calc@l /* 0x806E5A7C@l */
/* 806E54E8  3C 60 80 6E */	lis r3, lit_3791@ha /* 0x806E5920@ha */
/* 806E54EC  3B E3 59 20 */	addi r31, r3, lit_3791@l /* 0x806E5920@l */
/* 806E54F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806E54F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806E54F8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806E54FC  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 806E5500  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)  /* 0x80451018@l */
/* 806E5504  28 00 00 00 */	cmplwi r0, 0
/* 806E5508  41 82 03 A4 */	beq lbl_806E58AC
/* 806E550C  7F C4 F3 78 */	mr r4, r30
/* 806E5510  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806E5514  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 806E5518  7D 89 03 A6 */	mtctr r12
/* 806E551C  4E 80 04 21 */	bctrl 
/* 806E5520  2C 03 00 00 */	cmpwi r3, 0
/* 806E5524  41 82 03 88 */	beq lbl_806E58AC
/* 806E5528  4B AC 70 55 */	bl dKy_darkworld_check__Fv
/* 806E552C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 806E5530  30 03 FF FF */	addic r0, r3, -1
/* 806E5534  7F A0 19 10 */	subfe r29, r0, r3
/* 806E5538  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 806E553C  28 00 00 00 */	cmplwi r0, 0
/* 806E5540  40 82 02 A0 */	bne lbl_806E57E0
/* 806E5544  38 00 00 01 */	li r0, 1
/* 806E5548  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 806E554C  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 806E5550  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l /* 0x80451018@l */
/* 806E5554  80 63 00 00 */	lwz r3, 0(r3)
/* 806E5558  80 63 05 74 */	lwz r3, 0x574(r3)
/* 806E555C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806E5560  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806E5564  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 806E5568  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806E556C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806E5570  4B C6 0F 41 */	bl PSMTXCopy
/* 806E5574  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806E5578  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 806E557C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806E5580  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806E5584  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 806E5588  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806E558C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806E5590  38 81 00 4C */	addi r4, r1, 0x4c
/* 806E5594  38 A1 00 58 */	addi r5, r1, 0x58
/* 806E5598  4B C6 17 D5 */	bl PSMTXMultVec
/* 806E559C  38 61 00 34 */	addi r3, r1, 0x34
/* 806E55A0  38 81 00 58 */	addi r4, r1, 0x58
/* 806E55A4  7F 65 DB 78 */	mr r5, r27
/* 806E55A8  4B B8 15 8D */	bl __mi__4cXyzCFRC3Vec
/* 806E55AC  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 806E55B0  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 806E55B4  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 806E55B8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 806E55BC  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 806E55C0  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 806E55C4  4B B8 20 B1 */	bl cM_atan2s__Fff
/* 806E55C8  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 806E55CC  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 806E55D0  EC 20 00 32 */	fmuls f1, f0, f0
/* 806E55D4  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 806E55D8  EC 00 00 32 */	fmuls f0, f0, f0
/* 806E55DC  EC 41 00 2A */	fadds f2, f1, f0
/* 806E55E0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806E55E4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806E55E8  40 81 00 0C */	ble lbl_806E55F4
/* 806E55EC  FC 00 10 34 */	frsqrte f0, f2
/* 806E55F0  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_806E55F4:
/* 806E55F4  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 806E55F8  4B B8 20 7D */	bl cM_atan2s__Fff
/* 806E55FC  7C 03 00 D0 */	neg r0, r3
/* 806E5600  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 806E5604  38 80 00 00 */	li r4, 0
/* 806E5608  B0 81 00 30 */	sth r4, 0x30(r1)
/* 806E560C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806E5610  7C 00 07 74 */	extsb r0, r0
/* 806E5614  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806E5618  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806E561C  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 806E5620  57 A5 10 3A */	slwi r5, r29, 2
/* 806E5624  90 81 00 08 */	stw r4, 8(r1)
/* 806E5628  90 01 00 0C */	stw r0, 0xc(r1)
/* 806E562C  3A B7 00 20 */	addi r21, r23, 0x20
/* 806E5630  7E B5 2A 14 */	add r21, r21, r5
/* 806E5634  92 A1 00 10 */	stw r21, 0x10(r1)
/* 806E5638  3A D7 00 28 */	addi r22, r23, 0x28
/* 806E563C  7E D6 2A 14 */	add r22, r22, r5
/* 806E5640  92 C1 00 14 */	stw r22, 0x14(r1)
/* 806E5644  90 81 00 18 */	stw r4, 0x18(r1)
/* 806E5648  38 80 00 00 */	li r4, 0
/* 806E564C  38 A0 02 9B */	li r5, 0x29b
/* 806E5650  7F 66 DB 78 */	mr r6, r27
/* 806E5654  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806E5658  39 01 00 2C */	addi r8, r1, 0x2c
/* 806E565C  7F 89 E3 78 */	mr r9, r28
/* 806E5660  39 40 00 FF */	li r10, 0xff
/* 806E5664  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806E5668  4B 96 74 29 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806E566C  7C 79 1B 79 */	or. r25, r3, r3
/* 806E5670  41 82 00 FC */	beq lbl_806E576C
/* 806E5674  38 61 00 40 */	addi r3, r1, 0x40
/* 806E5678  4B C6 1A C1 */	bl PSVECSquareMag
/* 806E567C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806E5680  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E5684  40 81 00 58 */	ble lbl_806E56DC
/* 806E5688  FC 00 08 34 */	frsqrte f0, f1
/* 806E568C  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806E5690  FC 44 00 32 */	fmul f2, f4, f0
/* 806E5694  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806E5698  FC 00 00 32 */	fmul f0, f0, f0
/* 806E569C  FC 01 00 32 */	fmul f0, f1, f0
/* 806E56A0  FC 03 00 28 */	fsub f0, f3, f0
/* 806E56A4  FC 02 00 32 */	fmul f0, f2, f0
/* 806E56A8  FC 44 00 32 */	fmul f2, f4, f0
/* 806E56AC  FC 00 00 32 */	fmul f0, f0, f0
/* 806E56B0  FC 01 00 32 */	fmul f0, f1, f0
/* 806E56B4  FC 03 00 28 */	fsub f0, f3, f0
/* 806E56B8  FC 02 00 32 */	fmul f0, f2, f0
/* 806E56BC  FC 44 00 32 */	fmul f2, f4, f0
/* 806E56C0  FC 00 00 32 */	fmul f0, f0, f0
/* 806E56C4  FC 01 00 32 */	fmul f0, f1, f0
/* 806E56C8  FC 03 00 28 */	fsub f0, f3, f0
/* 806E56CC  FC 02 00 32 */	fmul f0, f2, f0
/* 806E56D0  FC 21 00 32 */	fmul f1, f1, f0
/* 806E56D4  FC 20 08 18 */	frsp f1, f1
/* 806E56D8  48 00 00 88 */	b lbl_806E5760
lbl_806E56DC:
/* 806E56DC  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806E56E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E56E4  40 80 00 10 */	bge lbl_806E56F4
/* 806E56E8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806E56EC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806E56F0  48 00 00 70 */	b lbl_806E5760
lbl_806E56F4:
/* 806E56F4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 806E56F8  80 81 00 20 */	lwz r4, 0x20(r1)
/* 806E56FC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806E5700  3C 00 7F 80 */	lis r0, 0x7f80
/* 806E5704  7C 03 00 00 */	cmpw r3, r0
/* 806E5708  41 82 00 14 */	beq lbl_806E571C
/* 806E570C  40 80 00 40 */	bge lbl_806E574C
/* 806E5710  2C 03 00 00 */	cmpwi r3, 0
/* 806E5714  41 82 00 20 */	beq lbl_806E5734
/* 806E5718  48 00 00 34 */	b lbl_806E574C
lbl_806E571C:
/* 806E571C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806E5720  41 82 00 0C */	beq lbl_806E572C
/* 806E5724  38 00 00 01 */	li r0, 1
/* 806E5728  48 00 00 28 */	b lbl_806E5750
lbl_806E572C:
/* 806E572C  38 00 00 02 */	li r0, 2
/* 806E5730  48 00 00 20 */	b lbl_806E5750
lbl_806E5734:
/* 806E5734  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806E5738  41 82 00 0C */	beq lbl_806E5744
/* 806E573C  38 00 00 05 */	li r0, 5
/* 806E5740  48 00 00 10 */	b lbl_806E5750
lbl_806E5744:
/* 806E5744  38 00 00 03 */	li r0, 3
/* 806E5748  48 00 00 08 */	b lbl_806E5750
lbl_806E574C:
/* 806E574C  38 00 00 04 */	li r0, 4
lbl_806E5750:
/* 806E5750  2C 00 00 01 */	cmpwi r0, 1
/* 806E5754  40 82 00 0C */	bne lbl_806E5760
/* 806E5758  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806E575C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_806E5760:
/* 806E5760  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 806E5764  EC 00 00 72 */	fmuls f0, f0, f1
/* 806E5768  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_806E576C:
/* 806E576C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806E5770  7C 04 07 74 */	extsb r4, r0
/* 806E5774  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 806E5778  38 00 00 00 */	li r0, 0
/* 806E577C  90 01 00 08 */	stw r0, 8(r1)
/* 806E5780  90 81 00 0C */	stw r4, 0xc(r1)
/* 806E5784  92 A1 00 10 */	stw r21, 0x10(r1)
/* 806E5788  92 C1 00 14 */	stw r22, 0x14(r1)
/* 806E578C  90 01 00 18 */	stw r0, 0x18(r1)
/* 806E5790  38 80 00 00 */	li r4, 0
/* 806E5794  38 A0 02 9C */	li r5, 0x29c
/* 806E5798  7F 66 DB 78 */	mr r6, r27
/* 806E579C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806E57A0  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 806E57A4  7F 89 E3 78 */	mr r9, r28
/* 806E57A8  39 40 00 FF */	li r10, 0xff
/* 806E57AC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806E57B0  4B 96 72 E1 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806E57B4  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 806E57B8  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 806E57BC  90 01 00 28 */	stw r0, 0x28(r1)
/* 806E57C0  7F 43 D3 78 */	mr r3, r26
/* 806E57C4  38 81 00 28 */	addi r4, r1, 0x28
/* 806E57C8  38 A0 00 00 */	li r5, 0
/* 806E57CC  38 C0 FF FF */	li r6, -1
/* 806E57D0  81 9A 00 00 */	lwz r12, 0(r26)
/* 806E57D4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806E57D8  7D 89 03 A6 */	mtctr r12
/* 806E57DC  4E 80 04 21 */	bctrl 
lbl_806E57E0:
/* 806E57E0  3A A0 00 00 */	li r21, 0
/* 806E57E4  3A C0 00 00 */	li r22, 0
/* 806E57E8  3A 80 00 00 */	li r20, 0
/* 806E57EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806E57F0  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806E57F4  57 A0 10 3A */	slwi r0, r29, 2
/* 806E57F8  3B 17 00 28 */	addi r24, r23, 0x28
/* 806E57FC  7F 18 02 14 */	add r24, r24, r0
/* 806E5800  3B B7 00 20 */	addi r29, r23, 0x20
/* 806E5804  7F BD 02 14 */	add r29, r29, r0
/* 806E5808  3A 77 00 30 */	addi r19, r23, 0x30
lbl_806E580C:
/* 806E580C  3A F4 05 9C */	addi r23, r20, 0x59c
/* 806E5810  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806E5814  7C 05 07 74 */	extsb r5, r0
/* 806E5818  7C 9E B8 2E */	lwzx r4, r30, r23
/* 806E581C  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 806E5820  38 00 00 FF */	li r0, 0xff
/* 806E5824  90 01 00 08 */	stw r0, 8(r1)
/* 806E5828  38 00 00 00 */	li r0, 0
/* 806E582C  90 01 00 0C */	stw r0, 0xc(r1)
/* 806E5830  90 A1 00 10 */	stw r5, 0x10(r1)
/* 806E5834  93 A1 00 14 */	stw r29, 0x14(r1)
/* 806E5838  93 01 00 18 */	stw r24, 0x18(r1)
/* 806E583C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 806E5840  38 A0 00 00 */	li r5, 0
/* 806E5844  7C D3 B2 2E */	lhzx r6, r19, r22
/* 806E5848  7F 67 DB 78 */	mr r7, r27
/* 806E584C  39 1E 01 0C */	addi r8, r30, 0x10c
/* 806E5850  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 806E5854  7F 8A E3 78 */	mr r10, r28
/* 806E5858  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806E585C  4B 96 7C 71 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806E5860  7C 7E B9 2E */	stwx r3, r30, r23
/* 806E5864  3A B5 00 01 */	addi r21, r21, 1
/* 806E5868  2C 15 00 03 */	cmpwi r21, 3
/* 806E586C  3A D6 00 02 */	addi r22, r22, 2
/* 806E5870  3A 94 00 04 */	addi r20, r20, 4
/* 806E5874  41 80 FF 98 */	blt lbl_806E580C
/* 806E5878  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 806E587C  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 806E5880  90 01 00 24 */	stw r0, 0x24(r1)
/* 806E5884  7F 43 D3 78 */	mr r3, r26
/* 806E5888  38 81 00 24 */	addi r4, r1, 0x24
/* 806E588C  38 A0 00 00 */	li r5, 0
/* 806E5890  38 C0 FF FF */	li r6, -1
/* 806E5894  81 9A 00 00 */	lwz r12, 0(r26)
/* 806E5898  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 806E589C  7D 89 03 A6 */	mtctr r12
/* 806E58A0  4E 80 04 21 */	bctrl 
/* 806E58A4  38 60 00 01 */	li r3, 1
/* 806E58A8  48 00 00 10 */	b lbl_806E58B8
lbl_806E58AC:
/* 806E58AC  38 00 00 00 */	li r0, 0
/* 806E58B0  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 806E58B4  38 60 00 00 */	li r3, 0
lbl_806E58B8:
/* 806E58B8  39 61 00 A0 */	addi r11, r1, 0xa0
/* 806E58BC  4B C7 C9 45 */	bl _restgpr_19
/* 806E58C0  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 806E58C4  7C 08 03 A6 */	mtlr r0
/* 806E58C8  38 21 00 A0 */	addi r1, r1, 0xa0
/* 806E58CC  4E 80 00 20 */	blr 

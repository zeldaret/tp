lbl_8072543C:
/* 8072543C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80725440  7C 08 02 A6 */	mflr r0
/* 80725444  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80725448  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8072544C  4B C3 CD 69 */	bl _savegpr_19
/* 80725450  7C 7E 1B 78 */	mr r30, r3
/* 80725454  7C 9A 23 78 */	mr r26, r4
/* 80725458  7C BB 2B 78 */	mr r27, r5
/* 8072545C  7C DC 33 78 */	mr r28, r6
/* 80725460  3C 60 80 72 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80725934@ha */
/* 80725464  3A E3 59 34 */	addi r23, r3, cNullVec__6Z2Calc@l /* 0x80725934@l */
/* 80725468  3C 60 80 72 */	lis r3, lit_3789@ha /* 0x80725858@ha */
/* 8072546C  3B E3 58 58 */	addi r31, r3, lit_3789@l /* 0x80725858@l */
/* 80725470  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80725474  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80725478  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8072547C  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 80725480  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)  /* 0x80451018@l */
/* 80725484  28 00 00 00 */	cmplwi r0, 0
/* 80725488  41 82 03 A4 */	beq lbl_8072582C
/* 8072548C  7F C4 F3 78 */	mr r4, r30
/* 80725490  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80725494  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 80725498  7D 89 03 A6 */	mtctr r12
/* 8072549C  4E 80 04 21 */	bctrl 
/* 807254A0  2C 03 00 00 */	cmpwi r3, 0
/* 807254A4  41 82 03 88 */	beq lbl_8072582C
/* 807254A8  4B A8 70 D5 */	bl dKy_darkworld_check__Fv
/* 807254AC  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 807254B0  30 03 FF FF */	addic r0, r3, -1
/* 807254B4  7F A0 19 10 */	subfe r29, r0, r3
/* 807254B8  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 807254BC  28 00 00 00 */	cmplwi r0, 0
/* 807254C0  40 82 02 A0 */	bne lbl_80725760
/* 807254C4  38 00 00 01 */	li r0, 1
/* 807254C8  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 807254CC  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 807254D0  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l /* 0x80451018@l */
/* 807254D4  80 63 00 00 */	lwz r3, 0(r3)
/* 807254D8  80 63 05 74 */	lwz r3, 0x574(r3)
/* 807254DC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807254E0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807254E4  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 807254E8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807254EC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807254F0  4B C2 0F C1 */	bl PSMTXCopy
/* 807254F4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 807254F8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807254FC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80725500  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80725504  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80725508  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8072550C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80725510  38 81 00 4C */	addi r4, r1, 0x4c
/* 80725514  38 A1 00 58 */	addi r5, r1, 0x58
/* 80725518  4B C2 18 55 */	bl PSMTXMultVec
/* 8072551C  38 61 00 34 */	addi r3, r1, 0x34
/* 80725520  38 81 00 58 */	addi r4, r1, 0x58
/* 80725524  7F 65 DB 78 */	mr r5, r27
/* 80725528  4B B4 16 0D */	bl __mi__4cXyzCFRC3Vec
/* 8072552C  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80725530  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80725534  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80725538  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8072553C  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 80725540  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 80725544  4B B4 21 31 */	bl cM_atan2s__Fff
/* 80725548  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 8072554C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80725550  EC 20 00 32 */	fmuls f1, f0, f0
/* 80725554  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80725558  EC 00 00 32 */	fmuls f0, f0, f0
/* 8072555C  EC 41 00 2A */	fadds f2, f1, f0
/* 80725560  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80725564  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80725568  40 81 00 0C */	ble lbl_80725574
/* 8072556C  FC 00 10 34 */	frsqrte f0, f2
/* 80725570  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80725574:
/* 80725574  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 80725578  4B B4 20 FD */	bl cM_atan2s__Fff
/* 8072557C  7C 03 00 D0 */	neg r0, r3
/* 80725580  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 80725584  38 80 00 00 */	li r4, 0
/* 80725588  B0 81 00 30 */	sth r4, 0x30(r1)
/* 8072558C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80725590  7C 00 07 74 */	extsb r0, r0
/* 80725594  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80725598  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8072559C  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 807255A0  57 A5 10 3A */	slwi r5, r29, 2
/* 807255A4  90 81 00 08 */	stw r4, 8(r1)
/* 807255A8  90 01 00 0C */	stw r0, 0xc(r1)
/* 807255AC  3A B7 00 20 */	addi r21, r23, 0x20
/* 807255B0  7E B5 2A 14 */	add r21, r21, r5
/* 807255B4  92 A1 00 10 */	stw r21, 0x10(r1)
/* 807255B8  3A D7 00 28 */	addi r22, r23, 0x28
/* 807255BC  7E D6 2A 14 */	add r22, r22, r5
/* 807255C0  92 C1 00 14 */	stw r22, 0x14(r1)
/* 807255C4  90 81 00 18 */	stw r4, 0x18(r1)
/* 807255C8  38 80 00 00 */	li r4, 0
/* 807255CC  38 A0 02 9B */	li r5, 0x29b
/* 807255D0  7F 66 DB 78 */	mr r6, r27
/* 807255D4  38 FE 01 0C */	addi r7, r30, 0x10c
/* 807255D8  39 01 00 2C */	addi r8, r1, 0x2c
/* 807255DC  7F 89 E3 78 */	mr r9, r28
/* 807255E0  39 40 00 FF */	li r10, 0xff
/* 807255E4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807255E8  4B 92 74 A9 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807255EC  7C 79 1B 79 */	or. r25, r3, r3
/* 807255F0  41 82 00 FC */	beq lbl_807256EC
/* 807255F4  38 61 00 40 */	addi r3, r1, 0x40
/* 807255F8  4B C2 1B 41 */	bl PSVECSquareMag
/* 807255FC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80725600  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80725604  40 81 00 58 */	ble lbl_8072565C
/* 80725608  FC 00 08 34 */	frsqrte f0, f1
/* 8072560C  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80725610  FC 44 00 32 */	fmul f2, f4, f0
/* 80725614  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80725618  FC 00 00 32 */	fmul f0, f0, f0
/* 8072561C  FC 01 00 32 */	fmul f0, f1, f0
/* 80725620  FC 03 00 28 */	fsub f0, f3, f0
/* 80725624  FC 02 00 32 */	fmul f0, f2, f0
/* 80725628  FC 44 00 32 */	fmul f2, f4, f0
/* 8072562C  FC 00 00 32 */	fmul f0, f0, f0
/* 80725630  FC 01 00 32 */	fmul f0, f1, f0
/* 80725634  FC 03 00 28 */	fsub f0, f3, f0
/* 80725638  FC 02 00 32 */	fmul f0, f2, f0
/* 8072563C  FC 44 00 32 */	fmul f2, f4, f0
/* 80725640  FC 00 00 32 */	fmul f0, f0, f0
/* 80725644  FC 01 00 32 */	fmul f0, f1, f0
/* 80725648  FC 03 00 28 */	fsub f0, f3, f0
/* 8072564C  FC 02 00 32 */	fmul f0, f2, f0
/* 80725650  FC 21 00 32 */	fmul f1, f1, f0
/* 80725654  FC 20 08 18 */	frsp f1, f1
/* 80725658  48 00 00 88 */	b lbl_807256E0
lbl_8072565C:
/* 8072565C  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80725660  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80725664  40 80 00 10 */	bge lbl_80725674
/* 80725668  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8072566C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80725670  48 00 00 70 */	b lbl_807256E0
lbl_80725674:
/* 80725674  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80725678  80 81 00 20 */	lwz r4, 0x20(r1)
/* 8072567C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80725680  3C 00 7F 80 */	lis r0, 0x7f80
/* 80725684  7C 03 00 00 */	cmpw r3, r0
/* 80725688  41 82 00 14 */	beq lbl_8072569C
/* 8072568C  40 80 00 40 */	bge lbl_807256CC
/* 80725690  2C 03 00 00 */	cmpwi r3, 0
/* 80725694  41 82 00 20 */	beq lbl_807256B4
/* 80725698  48 00 00 34 */	b lbl_807256CC
lbl_8072569C:
/* 8072569C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807256A0  41 82 00 0C */	beq lbl_807256AC
/* 807256A4  38 00 00 01 */	li r0, 1
/* 807256A8  48 00 00 28 */	b lbl_807256D0
lbl_807256AC:
/* 807256AC  38 00 00 02 */	li r0, 2
/* 807256B0  48 00 00 20 */	b lbl_807256D0
lbl_807256B4:
/* 807256B4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807256B8  41 82 00 0C */	beq lbl_807256C4
/* 807256BC  38 00 00 05 */	li r0, 5
/* 807256C0  48 00 00 10 */	b lbl_807256D0
lbl_807256C4:
/* 807256C4  38 00 00 03 */	li r0, 3
/* 807256C8  48 00 00 08 */	b lbl_807256D0
lbl_807256CC:
/* 807256CC  38 00 00 04 */	li r0, 4
lbl_807256D0:
/* 807256D0  2C 00 00 01 */	cmpwi r0, 1
/* 807256D4  40 82 00 0C */	bne lbl_807256E0
/* 807256D8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807256DC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807256E0:
/* 807256E0  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 807256E4  EC 00 00 72 */	fmuls f0, f0, f1
/* 807256E8  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_807256EC:
/* 807256EC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807256F0  7C 04 07 74 */	extsb r4, r0
/* 807256F4  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 807256F8  38 00 00 00 */	li r0, 0
/* 807256FC  90 01 00 08 */	stw r0, 8(r1)
/* 80725700  90 81 00 0C */	stw r4, 0xc(r1)
/* 80725704  92 A1 00 10 */	stw r21, 0x10(r1)
/* 80725708  92 C1 00 14 */	stw r22, 0x14(r1)
/* 8072570C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80725710  38 80 00 00 */	li r4, 0
/* 80725714  38 A0 02 9C */	li r5, 0x29c
/* 80725718  7F 66 DB 78 */	mr r6, r27
/* 8072571C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80725720  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80725724  7F 89 E3 78 */	mr r9, r28
/* 80725728  39 40 00 FF */	li r10, 0xff
/* 8072572C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80725730  4B 92 73 61 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80725734  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 80725738  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 8072573C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80725740  7F 43 D3 78 */	mr r3, r26
/* 80725744  38 81 00 28 */	addi r4, r1, 0x28
/* 80725748  38 A0 00 00 */	li r5, 0
/* 8072574C  38 C0 FF FF */	li r6, -1
/* 80725750  81 9A 00 00 */	lwz r12, 0(r26)
/* 80725754  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80725758  7D 89 03 A6 */	mtctr r12
/* 8072575C  4E 80 04 21 */	bctrl 
lbl_80725760:
/* 80725760  3A A0 00 00 */	li r21, 0
/* 80725764  3A C0 00 00 */	li r22, 0
/* 80725768  3A 80 00 00 */	li r20, 0
/* 8072576C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80725770  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80725774  57 A0 10 3A */	slwi r0, r29, 2
/* 80725778  3B 17 00 28 */	addi r24, r23, 0x28
/* 8072577C  7F 18 02 14 */	add r24, r24, r0
/* 80725780  3B B7 00 20 */	addi r29, r23, 0x20
/* 80725784  7F BD 02 14 */	add r29, r29, r0
/* 80725788  3A 77 00 30 */	addi r19, r23, 0x30
lbl_8072578C:
/* 8072578C  3A F4 05 9C */	addi r23, r20, 0x59c
/* 80725790  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80725794  7C 05 07 74 */	extsb r5, r0
/* 80725798  7C 9E B8 2E */	lwzx r4, r30, r23
/* 8072579C  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 807257A0  38 00 00 FF */	li r0, 0xff
/* 807257A4  90 01 00 08 */	stw r0, 8(r1)
/* 807257A8  38 00 00 00 */	li r0, 0
/* 807257AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 807257B0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 807257B4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 807257B8  93 01 00 18 */	stw r24, 0x18(r1)
/* 807257BC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 807257C0  38 A0 00 00 */	li r5, 0
/* 807257C4  7C D3 B2 2E */	lhzx r6, r19, r22
/* 807257C8  7F 67 DB 78 */	mr r7, r27
/* 807257CC  39 1E 01 0C */	addi r8, r30, 0x10c
/* 807257D0  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 807257D4  7F 8A E3 78 */	mr r10, r28
/* 807257D8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807257DC  4B 92 7C F1 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807257E0  7C 7E B9 2E */	stwx r3, r30, r23
/* 807257E4  3A B5 00 01 */	addi r21, r21, 1
/* 807257E8  2C 15 00 03 */	cmpwi r21, 3
/* 807257EC  3A D6 00 02 */	addi r22, r22, 2
/* 807257F0  3A 94 00 04 */	addi r20, r20, 4
/* 807257F4  41 80 FF 98 */	blt lbl_8072578C
/* 807257F8  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 807257FC  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 80725800  90 01 00 24 */	stw r0, 0x24(r1)
/* 80725804  7F 43 D3 78 */	mr r3, r26
/* 80725808  38 81 00 24 */	addi r4, r1, 0x24
/* 8072580C  38 A0 00 00 */	li r5, 0
/* 80725810  38 C0 FF FF */	li r6, -1
/* 80725814  81 9A 00 00 */	lwz r12, 0(r26)
/* 80725818  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8072581C  7D 89 03 A6 */	mtctr r12
/* 80725820  4E 80 04 21 */	bctrl 
/* 80725824  38 60 00 01 */	li r3, 1
/* 80725828  48 00 00 10 */	b lbl_80725838
lbl_8072582C:
/* 8072582C  38 00 00 00 */	li r0, 0
/* 80725830  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 80725834  38 60 00 00 */	li r3, 0
lbl_80725838:
/* 80725838  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8072583C  4B C3 C9 C5 */	bl _restgpr_19
/* 80725840  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80725844  7C 08 03 A6 */	mtlr r0
/* 80725848  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8072584C  4E 80 00 20 */	blr 

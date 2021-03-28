lbl_80B86440:
/* 80B86440  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80B86444  7C 08 02 A6 */	mflr r0
/* 80B86448  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B8644C  39 61 00 70 */	addi r11, r1, 0x70
/* 80B86450  4B 7D BD 84 */	b _savegpr_27
/* 80B86454  7C 7B 1B 78 */	mr r27, r3
/* 80B86458  3C 80 80 B9 */	lis r4, m__17daNpc_zrA_Param_c@ha
/* 80B8645C  3B E4 C4 58 */	addi r31, r4, m__17daNpc_zrA_Param_c@l
/* 80B86460  38 9F 00 00 */	addi r4, r31, 0
/* 80B86464  AB 84 00 74 */	lha r28, 0x74(r4)
/* 80B86468  A0 03 14 E6 */	lhz r0, 0x14e6(r3)
/* 80B8646C  2C 00 00 02 */	cmpwi r0, 2
/* 80B86470  41 82 00 F4 */	beq lbl_80B86564
/* 80B86474  40 80 05 9C */	bge lbl_80B86A10
/* 80B86478  2C 00 00 00 */	cmpwi r0, 0
/* 80B8647C  41 82 00 0C */	beq lbl_80B86488
/* 80B86480  48 00 05 90 */	b lbl_80B86A10
/* 80B86484  48 00 05 8C */	b lbl_80B86A10
lbl_80B86488:
/* 80B86488  38 80 00 00 */	li r4, 0
/* 80B8648C  38 A0 00 00 */	li r5, 0
/* 80B86490  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B86494  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80B86498  7D 89 03 A6 */	mtctr r12
/* 80B8649C  4E 80 04 21 */	bctrl 
/* 80B864A0  88 1B 15 76 */	lbz r0, 0x1576(r27)
/* 80B864A4  28 00 00 00 */	cmplwi r0, 0
/* 80B864A8  40 82 00 28 */	bne lbl_80B864D0
/* 80B864AC  7F 63 DB 78 */	mr r3, r27
/* 80B864B0  38 80 00 17 */	li r4, 0x17
/* 80B864B4  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B864B8  38 A0 00 00 */	li r5, 0
/* 80B864BC  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B864C0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B864C4  7D 89 03 A6 */	mtctr r12
/* 80B864C8  4E 80 04 21 */	bctrl 
/* 80B864CC  48 00 00 24 */	b lbl_80B864F0
lbl_80B864D0:
/* 80B864D0  7F 63 DB 78 */	mr r3, r27
/* 80B864D4  38 80 00 16 */	li r4, 0x16
/* 80B864D8  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B864DC  38 A0 00 00 */	li r5, 0
/* 80B864E0  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B864E4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B864E8  7D 89 03 A6 */	mtctr r12
/* 80B864EC  4E 80 04 21 */	bctrl 
lbl_80B864F0:
/* 80B864F0  38 00 00 01 */	li r0, 1
/* 80B864F4  98 1B 15 20 */	stb r0, 0x1520(r27)
/* 80B864F8  38 00 00 00 */	li r0, 0
/* 80B864FC  98 1B 07 BC */	stb r0, 0x7bc(r27)
/* 80B86500  7F 63 DB 78 */	mr r3, r27
/* 80B86504  38 80 00 00 */	li r4, 0
/* 80B86508  4B FF 81 ED */	bl setLookMode__11daNpc_zrA_cFi
/* 80B8650C  A8 1B 04 DC */	lha r0, 0x4dc(r27)
/* 80B86510  B0 1B 15 36 */	sth r0, 0x1536(r27)
/* 80B86514  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80B86518  B0 1B 15 38 */	sth r0, 0x1538(r27)
/* 80B8651C  A8 1B 04 E0 */	lha r0, 0x4e0(r27)
/* 80B86520  B0 1B 15 3A */	sth r0, 0x153a(r27)
/* 80B86524  7F 63 DB 78 */	mr r3, r27
/* 80B86528  4B FF BD 11 */	bl calcWaistAngleInit__11daNpc_zrA_cFv
/* 80B8652C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B86530  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B86534  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B86538  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B8653C  D0 1B 15 00 */	stfs f0, 0x1500(r27)
/* 80B86540  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80B86544  D0 1B 15 04 */	stfs f0, 0x1504(r27)
/* 80B86548  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B8654C  D0 1B 15 08 */	stfs f0, 0x1508(r27)
/* 80B86550  38 7F 00 00 */	addi r3, r31, 0
/* 80B86554  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80B86558  D0 1B 15 24 */	stfs f0, 0x1524(r27)
/* 80B8655C  38 00 00 02 */	li r0, 2
/* 80B86560  B0 1B 14 E6 */	sth r0, 0x14e6(r27)
lbl_80B86564:
/* 80B86564  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B86568  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B8656C  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 80B86570  38 7F 00 00 */	addi r3, r31, 0
/* 80B86574  C0 23 00 84 */	lfs f1, 0x84(r3)
/* 80B86578  38 7B 15 6C */	addi r3, r27, 0x156c
/* 80B8657C  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B86580  EC 41 00 28 */	fsubs f2, f1, f0
/* 80B86584  C0 1F 07 C0 */	lfs f0, 0x7c0(r31)
/* 80B86588  EC 42 00 24 */	fdivs f2, f2, f0
/* 80B8658C  4B 6E A1 B4 */	b cLib_chaseF__FPfff
/* 80B86590  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80B86594  C0 1F 08 48 */	lfs f0, 0x848(r31)
/* 80B86598  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B8659C  40 80 00 A8 */	bge lbl_80B86644
/* 80B865A0  38 60 00 60 */	li r3, 0x60
/* 80B865A4  4B 5C F0 90 */	b daNpcF_chkEvtBit__FUl
/* 80B865A8  2C 03 00 00 */	cmpwi r3, 0
/* 80B865AC  40 82 00 10 */	bne lbl_80B865BC
/* 80B865B0  38 00 00 04 */	li r0, 4
/* 80B865B4  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
/* 80B865B8  48 00 04 58 */	b lbl_80B86A10
lbl_80B865BC:
/* 80B865BC  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80B865C0  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80B865C4  88 03 00 BC */	lbz r0, 0xbc(r3)
/* 80B865C8  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80B865CC  41 80 00 40 */	blt lbl_80B8660C
/* 80B865D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B865D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B865D8  88 9B 15 0E */	lbz r4, 0x150e(r27)
/* 80B865DC  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80B865E0  7C 05 07 74 */	extsb r5, r0
/* 80B865E4  4B 4A EC 1C */	b onSwitch__10dSv_info_cFii
/* 80B865E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B865EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B865F0  88 9B 15 0F */	lbz r4, 0x150f(r27)
/* 80B865F4  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80B865F8  7C 05 07 74 */	extsb r5, r0
/* 80B865FC  4B 4A EC 04 */	b onSwitch__10dSv_info_cFii
/* 80B86600  38 00 00 04 */	li r0, 4
/* 80B86604  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
/* 80B86608  48 00 04 08 */	b lbl_80B86A10
lbl_80B8660C:
/* 80B8660C  2C 00 00 19 */	cmpwi r0, 0x19
/* 80B86610  41 80 00 28 */	blt lbl_80B86638
/* 80B86614  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B86618  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B8661C  88 9B 15 0E */	lbz r4, 0x150e(r27)
/* 80B86620  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80B86624  7C 05 07 74 */	extsb r5, r0
/* 80B86628  4B 4A EB D8 */	b onSwitch__10dSv_info_cFii
/* 80B8662C  38 00 00 04 */	li r0, 4
/* 80B86630  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
/* 80B86634  48 00 03 DC */	b lbl_80B86A10
lbl_80B86638:
/* 80B86638  38 00 00 05 */	li r0, 5
/* 80B8663C  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
/* 80B86640  48 00 03 D0 */	b lbl_80B86A10
lbl_80B86644:
/* 80B86644  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80B86648  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B8664C  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80B86650  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B86654  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80B86658  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B8665C  38 7B 0C 18 */	addi r3, r27, 0xc18
/* 80B86660  38 81 00 28 */	addi r4, r1, 0x28
/* 80B86664  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80B86668  4B 5C A7 78 */	b getDstPos__13daNpcF_Path_cF4cXyzR4cXyz
/* 80B8666C  A3 DB 0C 18 */	lhz r30, 0xc18(r27)
/* 80B86670  38 7B 0C 18 */	addi r3, r27, 0xc18
/* 80B86674  4B 5C A5 A4 */	b getNextIdx__13daNpcF_Path_cFv
/* 80B86678  7C 1E 18 00 */	cmpw r30, r3
/* 80B8667C  41 82 01 38 */	beq lbl_80B867B4
/* 80B86680  38 61 00 1C */	addi r3, r1, 0x1c
/* 80B86684  38 9B 15 00 */	addi r4, r27, 0x1500
/* 80B86688  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80B8668C  4B 6E 04 A8 */	b __mi__4cXyzCFRC3Vec
/* 80B86690  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80B86694  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B86698  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80B8669C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B866A0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80B866A4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B866A8  38 61 00 34 */	addi r3, r1, 0x34
/* 80B866AC  4B 7C 0A 8C */	b PSVECSquareMag
/* 80B866B0  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B866B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B866B8  40 81 00 58 */	ble lbl_80B86710
/* 80B866BC  FC 00 08 34 */	frsqrte f0, f1
/* 80B866C0  C8 9F 00 B8 */	lfd f4, 0xb8(r31)
/* 80B866C4  FC 44 00 32 */	fmul f2, f4, f0
/* 80B866C8  C8 7F 00 C0 */	lfd f3, 0xc0(r31)
/* 80B866CC  FC 00 00 32 */	fmul f0, f0, f0
/* 80B866D0  FC 01 00 32 */	fmul f0, f1, f0
/* 80B866D4  FC 03 00 28 */	fsub f0, f3, f0
/* 80B866D8  FC 02 00 32 */	fmul f0, f2, f0
/* 80B866DC  FC 44 00 32 */	fmul f2, f4, f0
/* 80B866E0  FC 00 00 32 */	fmul f0, f0, f0
/* 80B866E4  FC 01 00 32 */	fmul f0, f1, f0
/* 80B866E8  FC 03 00 28 */	fsub f0, f3, f0
/* 80B866EC  FC 02 00 32 */	fmul f0, f2, f0
/* 80B866F0  FC 44 00 32 */	fmul f2, f4, f0
/* 80B866F4  FC 00 00 32 */	fmul f0, f0, f0
/* 80B866F8  FC 01 00 32 */	fmul f0, f1, f0
/* 80B866FC  FC 03 00 28 */	fsub f0, f3, f0
/* 80B86700  FC 02 00 32 */	fmul f0, f2, f0
/* 80B86704  FC 21 00 32 */	fmul f1, f1, f0
/* 80B86708  FC 20 08 18 */	frsp f1, f1
/* 80B8670C  48 00 00 88 */	b lbl_80B86794
lbl_80B86710:
/* 80B86710  C8 1F 00 C8 */	lfd f0, 0xc8(r31)
/* 80B86714  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B86718  40 80 00 10 */	bge lbl_80B86728
/* 80B8671C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B86720  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B86724  48 00 00 70 */	b lbl_80B86794
lbl_80B86728:
/* 80B86728  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B8672C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B86730  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B86734  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B86738  7C 03 00 00 */	cmpw r3, r0
/* 80B8673C  41 82 00 14 */	beq lbl_80B86750
/* 80B86740  40 80 00 40 */	bge lbl_80B86780
/* 80B86744  2C 03 00 00 */	cmpwi r3, 0
/* 80B86748  41 82 00 20 */	beq lbl_80B86768
/* 80B8674C  48 00 00 34 */	b lbl_80B86780
lbl_80B86750:
/* 80B86750  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B86754  41 82 00 0C */	beq lbl_80B86760
/* 80B86758  38 00 00 01 */	li r0, 1
/* 80B8675C  48 00 00 28 */	b lbl_80B86784
lbl_80B86760:
/* 80B86760  38 00 00 02 */	li r0, 2
/* 80B86764  48 00 00 20 */	b lbl_80B86784
lbl_80B86768:
/* 80B86768  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B8676C  41 82 00 0C */	beq lbl_80B86778
/* 80B86770  38 00 00 05 */	li r0, 5
/* 80B86774  48 00 00 10 */	b lbl_80B86784
lbl_80B86778:
/* 80B86778  38 00 00 03 */	li r0, 3
/* 80B8677C  48 00 00 08 */	b lbl_80B86784
lbl_80B86780:
/* 80B86780  38 00 00 04 */	li r0, 4
lbl_80B86784:
/* 80B86784  2C 00 00 01 */	cmpwi r0, 1
/* 80B86788  40 82 00 0C */	bne lbl_80B86794
/* 80B8678C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B86790  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B86794:
/* 80B86794  C0 1F 07 90 */	lfs f0, 0x790(r31)
/* 80B86798  EC 20 00 72 */	fmuls f1, f0, f1
/* 80B8679C  38 7F 00 00 */	addi r3, r31, 0
/* 80B867A0  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80B867A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B867A8  40 80 00 38 */	bge lbl_80B867E0
/* 80B867AC  FC 20 00 90 */	fmr f1, f0
/* 80B867B0  48 00 00 30 */	b lbl_80B867E0
lbl_80B867B4:
/* 80B867B4  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80B867B8  C0 5B 15 24 */	lfs f2, 0x1524(r27)
/* 80B867BC  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 80B867C0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80B867C4  40 80 00 1C */	bge lbl_80B867E0
/* 80B867C8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80B867CC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80B867D0  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80B867D4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80B867D8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80B867DC  D0 01 00 54 */	stfs f0, 0x54(r1)
lbl_80B867E0:
/* 80B867E0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80B867E4  D0 1B 15 00 */	stfs f0, 0x1500(r27)
/* 80B867E8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80B867EC  D0 1B 15 04 */	stfs f0, 0x1504(r27)
/* 80B867F0  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80B867F4  D0 1B 15 08 */	stfs f0, 0x1508(r27)
/* 80B867F8  38 7B 15 24 */	addi r3, r27, 0x1524
/* 80B867FC  C0 5F 07 7C */	lfs f2, 0x77c(r31)
/* 80B86800  C0 7F 07 B8 */	lfs f3, 0x7b8(r31)
/* 80B86804  4B 6E 92 38 */	b cLib_addCalc2__FPffff
/* 80B86808  38 61 00 4C */	addi r3, r1, 0x4c
/* 80B8680C  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80B86810  4B 6E A4 64 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B86814  B0 61 00 14 */	sth r3, 0x14(r1)
/* 80B86818  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80B8681C  38 81 00 4C */	addi r4, r1, 0x4c
/* 80B86820  4B 6E A3 E4 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B86824  3B A1 00 16 */	addi r29, r1, 0x16
/* 80B86828  B0 61 00 16 */	sth r3, 0x16(r1)
/* 80B8682C  A8 1B 04 E0 */	lha r0, 0x4e0(r27)
/* 80B86830  3B C1 00 18 */	addi r30, r1, 0x18
/* 80B86834  B0 01 00 18 */	sth r0, 0x18(r1)
/* 80B86838  7F 63 DB 78 */	mr r3, r27
/* 80B8683C  38 81 00 14 */	addi r4, r1, 0x14
/* 80B86840  38 BB 15 36 */	addi r5, r27, 0x1536
/* 80B86844  38 C0 00 03 */	li r6, 3
/* 80B86848  7F 87 E3 78 */	mr r7, r28
/* 80B8684C  4B FF BC A9 */	bl calcSwimAngle__11daNpc_zrA_cFR5csXyzR5csXyzss
/* 80B86850  C0 3B 15 24 */	lfs f1, 0x1524(r27)
/* 80B86854  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B86858  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B8685C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B86860  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80B86864  7F 63 DB 78 */	mr r3, r27
/* 80B86868  38 81 00 40 */	addi r4, r1, 0x40
/* 80B8686C  4B FF BD 19 */	bl calcSwimPos__11daNpc_zrA_cFR4cXyz
/* 80B86870  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 80B86874  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B86878  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B8687C  38 61 00 34 */	addi r3, r1, 0x34
/* 80B86880  4B 7C 08 B8 */	b PSVECSquareMag
/* 80B86884  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B86888  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B8688C  40 81 00 58 */	ble lbl_80B868E4
/* 80B86890  FC 00 08 34 */	frsqrte f0, f1
/* 80B86894  C8 9F 00 B8 */	lfd f4, 0xb8(r31)
/* 80B86898  FC 44 00 32 */	fmul f2, f4, f0
/* 80B8689C  C8 7F 00 C0 */	lfd f3, 0xc0(r31)
/* 80B868A0  FC 00 00 32 */	fmul f0, f0, f0
/* 80B868A4  FC 01 00 32 */	fmul f0, f1, f0
/* 80B868A8  FC 03 00 28 */	fsub f0, f3, f0
/* 80B868AC  FC 02 00 32 */	fmul f0, f2, f0
/* 80B868B0  FC 44 00 32 */	fmul f2, f4, f0
/* 80B868B4  FC 00 00 32 */	fmul f0, f0, f0
/* 80B868B8  FC 01 00 32 */	fmul f0, f1, f0
/* 80B868BC  FC 03 00 28 */	fsub f0, f3, f0
/* 80B868C0  FC 02 00 32 */	fmul f0, f2, f0
/* 80B868C4  FC 44 00 32 */	fmul f2, f4, f0
/* 80B868C8  FC 00 00 32 */	fmul f0, f0, f0
/* 80B868CC  FC 01 00 32 */	fmul f0, f1, f0
/* 80B868D0  FC 03 00 28 */	fsub f0, f3, f0
/* 80B868D4  FC 02 00 32 */	fmul f0, f2, f0
/* 80B868D8  FC 21 00 32 */	fmul f1, f1, f0
/* 80B868DC  FC 20 08 18 */	frsp f1, f1
/* 80B868E0  48 00 00 88 */	b lbl_80B86968
lbl_80B868E4:
/* 80B868E4  C8 1F 00 C8 */	lfd f0, 0xc8(r31)
/* 80B868E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B868EC  40 80 00 10 */	bge lbl_80B868FC
/* 80B868F0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B868F4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B868F8  48 00 00 70 */	b lbl_80B86968
lbl_80B868FC:
/* 80B868FC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B86900  80 81 00 08 */	lwz r4, 8(r1)
/* 80B86904  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B86908  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B8690C  7C 03 00 00 */	cmpw r3, r0
/* 80B86910  41 82 00 14 */	beq lbl_80B86924
/* 80B86914  40 80 00 40 */	bge lbl_80B86954
/* 80B86918  2C 03 00 00 */	cmpwi r3, 0
/* 80B8691C  41 82 00 20 */	beq lbl_80B8693C
/* 80B86920  48 00 00 34 */	b lbl_80B86954
lbl_80B86924:
/* 80B86924  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B86928  41 82 00 0C */	beq lbl_80B86934
/* 80B8692C  38 00 00 01 */	li r0, 1
/* 80B86930  48 00 00 28 */	b lbl_80B86958
lbl_80B86934:
/* 80B86934  38 00 00 02 */	li r0, 2
/* 80B86938  48 00 00 20 */	b lbl_80B86958
lbl_80B8693C:
/* 80B8693C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B86940  41 82 00 0C */	beq lbl_80B8694C
/* 80B86944  38 00 00 05 */	li r0, 5
/* 80B86948  48 00 00 10 */	b lbl_80B86958
lbl_80B8694C:
/* 80B8694C  38 00 00 03 */	li r0, 3
/* 80B86950  48 00 00 08 */	b lbl_80B86958
lbl_80B86954:
/* 80B86954  38 00 00 04 */	li r0, 4
lbl_80B86958:
/* 80B86958  2C 00 00 01 */	cmpwi r0, 1
/* 80B8695C  40 82 00 0C */	bne lbl_80B86968
/* 80B86960  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B86964  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B86968:
/* 80B86968  C0 1B 15 24 */	lfs f0, 0x1524(r27)
/* 80B8696C  EC 20 08 28 */	fsubs f1, f0, f1
/* 80B86970  C0 1F 08 28 */	lfs f0, 0x828(r31)
/* 80B86974  EC 41 00 24 */	fdivs f2, f1, f0
/* 80B86978  38 61 00 10 */	addi r3, r1, 0x10
/* 80B8697C  C0 3F 07 80 */	lfs f1, 0x780(r31)
/* 80B86980  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B86984  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80B86988  40 80 00 08 */	bge lbl_80B86990
/* 80B8698C  48 00 00 18 */	b lbl_80B869A4
lbl_80B86990:
/* 80B86990  C0 1F 08 2C */	lfs f0, 0x82c(r31)
/* 80B86994  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80B86998  40 81 00 08 */	ble lbl_80B869A0
/* 80B8699C  48 00 00 08 */	b lbl_80B869A4
lbl_80B869A0:
/* 80B869A0  FC 00 10 90 */	fmr f0, f2
lbl_80B869A4:
/* 80B869A4  EC 21 00 2A */	fadds f1, f1, f0
/* 80B869A8  C0 5F 01 04 */	lfs f2, 0x104(r31)
/* 80B869AC  C0 7F 01 14 */	lfs f3, 0x114(r31)
/* 80B869B0  4B 6E 90 8C */	b cLib_addCalc2__FPffff
/* 80B869B4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80B869B8  80 7B 05 68 */	lwz r3, 0x568(r27)
/* 80B869BC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B869C0  7F 63 DB 78 */	mr r3, r27
/* 80B869C4  7F 84 E3 78 */	mr r4, r28
/* 80B869C8  38 A0 00 03 */	li r5, 3
/* 80B869CC  7F A6 EB 78 */	mr r6, r29
/* 80B869D0  7F C7 F3 78 */	mr r7, r30
/* 80B869D4  4B FF B5 E5 */	bl calcBank__11daNpc_zrA_cFssRsRs
/* 80B869D8  A8 01 00 18 */	lha r0, 0x18(r1)
/* 80B869DC  B0 1B 04 E0 */	sth r0, 0x4e0(r27)
/* 80B869E0  A8 1B 04 DC */	lha r0, 0x4dc(r27)
/* 80B869E4  B0 1B 08 F0 */	sth r0, 0x8f0(r27)
/* 80B869E8  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80B869EC  B0 1B 08 F2 */	sth r0, 0x8f2(r27)
/* 80B869F0  A8 1B 04 E0 */	lha r0, 0x4e0(r27)
/* 80B869F4  B0 1B 08 F4 */	sth r0, 0x8f4(r27)
/* 80B869F8  A8 1B 08 F0 */	lha r0, 0x8f0(r27)
/* 80B869FC  B0 1B 04 E4 */	sth r0, 0x4e4(r27)
/* 80B86A00  A8 1B 08 F2 */	lha r0, 0x8f2(r27)
/* 80B86A04  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 80B86A08  A8 1B 08 F4 */	lha r0, 0x8f4(r27)
/* 80B86A0C  B0 1B 04 E8 */	sth r0, 0x4e8(r27)
lbl_80B86A10:
/* 80B86A10  38 60 00 01 */	li r3, 1
/* 80B86A14  39 61 00 70 */	addi r11, r1, 0x70
/* 80B86A18  4B 7D B8 08 */	b _restgpr_27
/* 80B86A1C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80B86A20  7C 08 03 A6 */	mtlr r0
/* 80B86A24  38 21 00 70 */	addi r1, r1, 0x70
/* 80B86A28  4E 80 00 20 */	blr 

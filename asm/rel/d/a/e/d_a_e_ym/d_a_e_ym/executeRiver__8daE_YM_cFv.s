lbl_808123D0:
/* 808123D0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 808123D4  7C 08 02 A6 */	mflr r0
/* 808123D8  90 01 00 74 */	stw r0, 0x74(r1)
/* 808123DC  39 61 00 70 */	addi r11, r1, 0x70
/* 808123E0  4B B4 FD FC */	b _savegpr_29
/* 808123E4  7C 7D 1B 78 */	mr r29, r3
/* 808123E8  3C 60 80 81 */	lis r3, lit_3925@ha
/* 808123EC  3B E3 59 94 */	addi r31, r3, lit_3925@l
/* 808123F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 808123F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 808123F8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 808123FC  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80812400  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80812404  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80812408  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8081240C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80812410  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80812414  80 7D 06 AC */	lwz r3, 0x6ac(r29)
/* 80812418  88 9D 06 B4 */	lbz r4, 0x6b4(r29)
/* 8081241C  7C 84 07 74 */	extsb r4, r4
/* 80812420  4B 83 F3 90 */	b dPath_GetPnt__FPC5dPathi
/* 80812424  C0 03 00 04 */	lfs f0, 4(r3)
/* 80812428  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8081242C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80812430  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80812434  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80812438  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8081243C  80 1D 06 98 */	lwz r0, 0x698(r29)
/* 80812440  2C 00 00 02 */	cmpwi r0, 2
/* 80812444  41 82 02 E0 */	beq lbl_80812724
/* 80812448  40 80 00 14 */	bge lbl_8081245C
/* 8081244C  2C 00 00 00 */	cmpwi r0, 0
/* 80812450  41 82 00 18 */	beq lbl_80812468
/* 80812454  40 80 01 D8 */	bge lbl_8081262C
/* 80812458  48 00 0A 9C */	b lbl_80812EF4
lbl_8081245C:
/* 8081245C  2C 00 00 04 */	cmpwi r0, 4
/* 80812460  40 80 0A 94 */	bge lbl_80812EF4
/* 80812464  48 00 09 70 */	b lbl_80812DD4
lbl_80812468:
/* 80812468  38 00 00 00 */	li r0, 0
/* 8081246C  90 1D 07 14 */	stw r0, 0x714(r29)
/* 80812470  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80812474  D0 1D 06 D4 */	stfs f0, 0x6d4(r29)
/* 80812478  D0 1D 06 DC */	stfs f0, 0x6dc(r29)
/* 8081247C  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80812480  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80812484  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80812488  D0 1D 06 EC */	stfs f0, 0x6ec(r29)
/* 8081248C  B0 1D 06 F2 */	sth r0, 0x6f2(r29)
/* 80812490  80 7D 06 64 */	lwz r3, 0x664(r29)
/* 80812494  28 03 00 00 */	cmplwi r3, 0
/* 80812498  40 82 00 14 */	bne lbl_808124AC
/* 8081249C  38 60 00 F4 */	li r3, 0xf4
/* 808124A0  38 9D 06 64 */	addi r4, r29, 0x664
/* 808124A4  4B 80 75 88 */	b fopAcM_SearchByName__FsPP10fopAc_ac_c
/* 808124A8  48 00 0A 4C */	b lbl_80812EF4
lbl_808124AC:
/* 808124AC  88 03 07 73 */	lbz r0, 0x773(r3)
/* 808124B0  7C 00 07 75 */	extsb. r0, r0
/* 808124B4  41 82 0A 40 */	beq lbl_80812EF4
/* 808124B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 808124BC  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 808124C0  38 64 01 14 */	addi r3, r4, 0x114
/* 808124C4  88 84 4E 0C */	lbz r4, 0x4e0c(r4)
/* 808124C8  4B 82 1E D4 */	b isLightDropGetFlag__16dSv_light_drop_cCFUc
/* 808124CC  2C 03 00 00 */	cmpwi r3, 0
/* 808124D0  40 82 00 10 */	bne lbl_808124E0
/* 808124D4  38 00 00 01 */	li r0, 1
/* 808124D8  98 1D 07 1D */	stb r0, 0x71d(r29)
/* 808124DC  48 00 0A 18 */	b lbl_80812EF4
lbl_808124E0:
/* 808124E0  80 7D 06 64 */	lwz r3, 0x664(r29)
/* 808124E4  88 03 07 73 */	lbz r0, 0x773(r3)
/* 808124E8  7C 00 07 75 */	extsb. r0, r0
/* 808124EC  40 81 00 28 */	ble lbl_80812514
/* 808124F0  80 1D 06 AC */	lwz r0, 0x6ac(r29)
/* 808124F4  28 00 00 00 */	cmplwi r0, 0
/* 808124F8  41 82 00 10 */	beq lbl_80812508
/* 808124FC  38 00 00 01 */	li r0, 1
/* 80812500  90 1D 06 98 */	stw r0, 0x698(r29)
/* 80812504  48 00 00 3C */	b lbl_80812540
lbl_80812508:
/* 80812508  38 00 00 01 */	li r0, 1
/* 8081250C  98 1D 07 1D */	stb r0, 0x71d(r29)
/* 80812510  48 00 09 E4 */	b lbl_80812EF4
lbl_80812514:
/* 80812514  80 1D 06 B0 */	lwz r0, 0x6b0(r29)
/* 80812518  28 00 00 00 */	cmplwi r0, 0
/* 8081251C  41 82 00 18 */	beq lbl_80812534
/* 80812520  38 00 00 01 */	li r0, 1
/* 80812524  90 1D 06 98 */	stw r0, 0x698(r29)
/* 80812528  80 1D 06 B0 */	lwz r0, 0x6b0(r29)
/* 8081252C  90 1D 06 AC */	stw r0, 0x6ac(r29)
/* 80812530  48 00 00 10 */	b lbl_80812540
lbl_80812534:
/* 80812534  38 00 00 01 */	li r0, 1
/* 80812538  98 1D 07 1D */	stb r0, 0x71d(r29)
/* 8081253C  48 00 09 B8 */	b lbl_80812EF4
lbl_80812540:
/* 80812540  80 1D 06 98 */	lwz r0, 0x698(r29)
/* 80812544  2C 00 00 01 */	cmpwi r0, 1
/* 80812548  40 82 09 AC */	bne lbl_80812EF4
/* 8081254C  7F A3 EB 78 */	mr r3, r29
/* 80812550  38 80 00 0E */	li r4, 0xe
/* 80812554  38 A0 00 02 */	li r5, 2
/* 80812558  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8081255C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80812560  4B FF 5D C9 */	bl bckSetFly__8daE_YM_cFiUcff
/* 80812564  38 00 00 01 */	li r0, 1
/* 80812568  98 1D 06 CC */	stb r0, 0x6cc(r29)
/* 8081256C  38 00 00 00 */	li r0, 0
/* 80812570  98 1D 06 B4 */	stb r0, 0x6b4(r29)
/* 80812574  80 7D 06 AC */	lwz r3, 0x6ac(r29)
/* 80812578  88 9D 06 B4 */	lbz r4, 0x6b4(r29)
/* 8081257C  7C 84 07 74 */	extsb r4, r4
/* 80812580  4B 83 F2 30 */	b dPath_GetPnt__FPC5dPathi
/* 80812584  C0 23 00 04 */	lfs f1, 4(r3)
/* 80812588  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8081258C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80812590  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80812594  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80812598  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8081259C  D0 3D 04 BC */	stfs f1, 0x4bc(r29)
/* 808125A0  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 808125A4  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 808125A8  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 808125AC  D0 1D 04 C4 */	stfs f0, 0x4c4(r29)
/* 808125B0  C0 1D 04 BC */	lfs f0, 0x4bc(r29)
/* 808125B4  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 808125B8  C0 1D 04 C0 */	lfs f0, 0x4c0(r29)
/* 808125BC  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 808125C0  C0 1D 04 C4 */	lfs f0, 0x4c4(r29)
/* 808125C4  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 808125C8  88 7D 06 B4 */	lbz r3, 0x6b4(r29)
/* 808125CC  38 03 00 01 */	addi r0, r3, 1
/* 808125D0  98 1D 06 B4 */	stb r0, 0x6b4(r29)
/* 808125D4  80 7D 06 AC */	lwz r3, 0x6ac(r29)
/* 808125D8  88 9D 06 B4 */	lbz r4, 0x6b4(r29)
/* 808125DC  7C 84 07 74 */	extsb r4, r4
/* 808125E0  4B 83 F1 D0 */	b dPath_GetPnt__FPC5dPathi
/* 808125E4  C0 03 00 04 */	lfs f0, 4(r3)
/* 808125E8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 808125EC  C0 03 00 08 */	lfs f0, 8(r3)
/* 808125F0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 808125F4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 808125F8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 808125FC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80812600  38 81 00 40 */	addi r4, r1, 0x40
/* 80812604  4B A5 E6 00 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80812608  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 8081260C  B0 7D 04 E6 */	sth r3, 0x4e6(r29)
/* 80812610  7F A3 EB 78 */	mr r3, r29
/* 80812614  4B FF 77 71 */	bl setAppear__8daE_YM_cFv
/* 80812618  7F A3 EB 78 */	mr r3, r29
/* 8081261C  4B FF 77 51 */	bl setNormalCc__8daE_YM_cFv
/* 80812620  38 00 00 00 */	li r0, 0
/* 80812624  B0 1D 06 F0 */	sth r0, 0x6f0(r29)
/* 80812628  48 00 08 CC */	b lbl_80812EF4
lbl_8081262C:
/* 8081262C  7F A3 EB 78 */	mr r3, r29
/* 80812630  4B FF 62 55 */	bl setElecEffect1__8daE_YM_cFv
/* 80812634  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070199@ha */
/* 80812638  38 03 01 99 */	addi r0, r3, 0x0199 /* 0x00070199@l */
/* 8081263C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80812640  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 80812644  38 81 00 18 */	addi r4, r1, 0x18
/* 80812648  38 A0 00 00 */	li r5, 0
/* 8081264C  38 C0 FF FF */	li r6, -1
/* 80812650  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 80812654  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80812658  7D 89 03 A6 */	mtctr r12
/* 8081265C  4E 80 04 21 */	bctrl 
/* 80812660  80 7D 06 64 */	lwz r3, 0x664(r29)
/* 80812664  88 03 06 E1 */	lbz r0, 0x6e1(r3)
/* 80812668  28 00 00 00 */	cmplwi r0, 0
/* 8081266C  41 82 08 88 */	beq lbl_80812EF4
/* 80812670  88 9D 06 A3 */	lbz r4, 0x6a3(r29)
/* 80812674  28 04 00 FF */	cmplwi r4, 0xff
/* 80812678  41 82 00 50 */	beq lbl_808126C8
/* 8081267C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80812680  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80812684  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80812688  7C 05 07 74 */	extsb r5, r0
/* 8081268C  4B 82 2C D4 */	b isSwitch__10dSv_info_cCFii
/* 80812690  2C 03 00 00 */	cmpwi r3, 0
/* 80812694  41 82 08 60 */	beq lbl_80812EF4
/* 80812698  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8081269C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 808126A0  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 808126A4  38 00 00 02 */	li r0, 2
/* 808126A8  90 1D 06 98 */	stw r0, 0x698(r29)
/* 808126AC  7F A3 EB 78 */	mr r3, r29
/* 808126B0  38 80 00 0B */	li r4, 0xb
/* 808126B4  38 A0 00 02 */	li r5, 2
/* 808126B8  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 808126BC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 808126C0  4B FF 5C 69 */	bl bckSetFly__8daE_YM_cFiUcff
/* 808126C4  48 00 08 30 */	b lbl_80812EF4
lbl_808126C8:
/* 808126C8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 808126CC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 808126D0  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 808126D4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 808126D8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 808126DC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 808126E0  38 81 00 28 */	addi r4, r1, 0x28
/* 808126E4  48 03 89 A4 */	b checkNextPath__8daKago_cF4cXyz
/* 808126E8  C0 1F 01 30 */	lfs f0, 0x130(r31)
/* 808126EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808126F0  40 80 08 04 */	bge lbl_80812EF4
/* 808126F4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 808126F8  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 808126FC  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80812700  38 00 00 02 */	li r0, 2
/* 80812704  90 1D 06 98 */	stw r0, 0x698(r29)
/* 80812708  7F A3 EB 78 */	mr r3, r29
/* 8081270C  38 80 00 0B */	li r4, 0xb
/* 80812710  38 A0 00 02 */	li r5, 2
/* 80812714  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80812718  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8081271C  4B FF 5C 0D */	bl bckSetFly__8daE_YM_cFiUcff
/* 80812720  48 00 07 D4 */	b lbl_80812EF4
lbl_80812724:
/* 80812724  7F A3 EB 78 */	mr r3, r29
/* 80812728  4B FF F9 89 */	bl setRiverAttention__8daE_YM_cFv
/* 8081272C  A8 7D 06 E8 */	lha r3, 0x6e8(r29)
/* 80812730  38 03 02 00 */	addi r0, r3, 0x200
/* 80812734  B0 1D 06 E8 */	sth r0, 0x6e8(r29)
/* 80812738  A8 1D 06 E8 */	lha r0, 0x6e8(r29)
/* 8081273C  54 00 0C 3C */	rlwinm r0, r0, 1, 0x10, 0x1e
/* 80812740  7C 00 1E 70 */	srawi r0, r0, 3
/* 80812744  54 00 18 38 */	slwi r0, r0, 3
/* 80812748  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8081274C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80812750  7C 03 04 2E */	lfsx f0, r3, r0
/* 80812754  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 80812758  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 8081275C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80812760  EC 02 00 2A */	fadds f0, f2, f0
/* 80812764  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80812768  3B C3 00 04 */	addi r30, r3, 4
/* 8081276C  A8 1D 06 E8 */	lha r0, 0x6e8(r29)
/* 80812770  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80812774  7C 1E 04 2E */	lfsx f0, r30, r0
/* 80812778  EC 41 00 32 */	fmuls f2, f1, f0
/* 8081277C  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80812780  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80812784  7C 03 04 2E */	lfsx f0, r3, r0
/* 80812788  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 8081278C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80812790  EC 01 00 2A */	fadds f0, f1, f0
/* 80812794  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80812798  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8081279C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 808127A0  7C 1E 04 2E */	lfsx f0, r30, r0
/* 808127A4  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 808127A8  EC 02 00 32 */	fmuls f0, f2, f0
/* 808127AC  EC 01 00 2A */	fadds f0, f1, f0
/* 808127B0  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 808127B4  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 808127B8  38 81 00 40 */	addi r4, r1, 0x40
/* 808127BC  4B A5 E4 48 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 808127C0  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 808127C4  B0 7D 04 E6 */	sth r3, 0x4e6(r29)
/* 808127C8  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 808127CC  38 81 00 40 */	addi r4, r1, 0x40
/* 808127D0  4B A5 E4 A4 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 808127D4  B0 7D 04 DC */	sth r3, 0x4dc(r29)
/* 808127D8  B0 7D 04 E4 */	sth r3, 0x4e4(r29)
/* 808127DC  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 808127E0  A8 1D 06 EA */	lha r0, 0x6ea(r29)
/* 808127E4  7C 63 00 50 */	subf r3, r3, r0
/* 808127E8  4B B5 28 E8 */	b abs
/* 808127EC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 808127F0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 808127F4  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 808127F8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 808127FC  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80812800  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80812804  80 7D 06 64 */	lwz r3, 0x664(r29)
/* 80812808  38 81 00 1C */	addi r4, r1, 0x1c
/* 8081280C  48 03 88 7C */	b checkNextPath__8daKago_cF4cXyz
/* 80812810  80 7D 06 64 */	lwz r3, 0x664(r29)
/* 80812814  88 03 06 E1 */	lbz r0, 0x6e1(r3)
/* 80812818  28 00 00 00 */	cmplwi r0, 0
/* 8081281C  41 82 02 08 */	beq lbl_80812A24
/* 80812820  A8 1D 06 F2 */	lha r0, 0x6f2(r29)
/* 80812824  2C 00 00 00 */	cmpwi r0, 0
/* 80812828  41 82 00 60 */	beq lbl_80812888
/* 8081282C  38 00 00 04 */	li r0, 4
/* 80812830  90 1D 07 14 */	stw r0, 0x714(r29)
/* 80812834  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80812838  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081283C  40 80 00 18 */	bge lbl_80812854
/* 80812840  38 7D 06 EC */	addi r3, r29, 0x6ec
/* 80812844  C0 3F 01 0C */	lfs f1, 0x10c(r31)
/* 80812848  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8081284C  4B A5 DE F4 */	b cLib_chaseF__FPfff
/* 80812850  48 00 01 EC */	b lbl_80812A3C
lbl_80812854:
/* 80812854  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 80812858  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081285C  40 81 00 18 */	ble lbl_80812874
/* 80812860  38 7D 06 EC */	addi r3, r29, 0x6ec
/* 80812864  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80812868  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8081286C  4B A5 DE D4 */	b cLib_chaseF__FPfff
/* 80812870  48 00 01 CC */	b lbl_80812A3C
lbl_80812874:
/* 80812874  38 7D 06 EC */	addi r3, r29, 0x6ec
/* 80812878  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8081287C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80812880  4B A5 DE C0 */	b cLib_chaseF__FPfff
/* 80812884  48 00 01 B8 */	b lbl_80812A3C
lbl_80812888:
/* 80812888  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8081288C  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80812890  40 80 00 20 */	bge lbl_808128B0
/* 80812894  38 00 00 96 */	li r0, 0x96
/* 80812898  B0 1D 06 F0 */	sth r0, 0x6f0(r29)
/* 8081289C  38 7D 06 EC */	addi r3, r29, 0x6ec
/* 808128A0  C0 3F 01 0C */	lfs f1, 0x10c(r31)
/* 808128A4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 808128A8  4B A5 DE 98 */	b cLib_chaseF__FPfff
/* 808128AC  48 00 01 90 */	b lbl_80812A3C
lbl_808128B0:
/* 808128B0  A8 1D 06 F0 */	lha r0, 0x6f0(r29)
/* 808128B4  2C 00 00 00 */	cmpwi r0, 0
/* 808128B8  41 82 00 18 */	beq lbl_808128D0
/* 808128BC  38 7D 06 EC */	addi r3, r29, 0x6ec
/* 808128C0  C0 3F 01 0C */	lfs f1, 0x10c(r31)
/* 808128C4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 808128C8  4B A5 DE 78 */	b cLib_chaseF__FPfff
/* 808128CC  48 00 01 70 */	b lbl_80812A3C
lbl_808128D0:
/* 808128D0  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 808128D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808128D8  40 80 01 38 */	bge lbl_80812A10
/* 808128DC  C0 1F 01 34 */	lfs f0, 0x134(r31)
/* 808128E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808128E4  40 80 01 18 */	bge lbl_808129FC
/* 808128E8  38 63 04 F8 */	addi r3, r3, 0x4f8
/* 808128EC  4B B3 48 4C */	b PSVECSquareMag
/* 808128F0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 808128F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808128F8  40 81 00 58 */	ble lbl_80812950
/* 808128FC  FC 00 08 34 */	frsqrte f0, f1
/* 80812900  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80812904  FC 44 00 32 */	fmul f2, f4, f0
/* 80812908  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8081290C  FC 00 00 32 */	fmul f0, f0, f0
/* 80812910  FC 01 00 32 */	fmul f0, f1, f0
/* 80812914  FC 03 00 28 */	fsub f0, f3, f0
/* 80812918  FC 02 00 32 */	fmul f0, f2, f0
/* 8081291C  FC 44 00 32 */	fmul f2, f4, f0
/* 80812920  FC 00 00 32 */	fmul f0, f0, f0
/* 80812924  FC 01 00 32 */	fmul f0, f1, f0
/* 80812928  FC 03 00 28 */	fsub f0, f3, f0
/* 8081292C  FC 02 00 32 */	fmul f0, f2, f0
/* 80812930  FC 44 00 32 */	fmul f2, f4, f0
/* 80812934  FC 00 00 32 */	fmul f0, f0, f0
/* 80812938  FC 01 00 32 */	fmul f0, f1, f0
/* 8081293C  FC 03 00 28 */	fsub f0, f3, f0
/* 80812940  FC 02 00 32 */	fmul f0, f2, f0
/* 80812944  FC 21 00 32 */	fmul f1, f1, f0
/* 80812948  FC 20 08 18 */	frsp f1, f1
/* 8081294C  48 00 00 88 */	b lbl_808129D4
lbl_80812950:
/* 80812950  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80812954  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80812958  40 80 00 10 */	bge lbl_80812968
/* 8081295C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80812960  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80812964  48 00 00 70 */	b lbl_808129D4
lbl_80812968:
/* 80812968  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8081296C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80812970  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80812974  3C 00 7F 80 */	lis r0, 0x7f80
/* 80812978  7C 03 00 00 */	cmpw r3, r0
/* 8081297C  41 82 00 14 */	beq lbl_80812990
/* 80812980  40 80 00 40 */	bge lbl_808129C0
/* 80812984  2C 03 00 00 */	cmpwi r3, 0
/* 80812988  41 82 00 20 */	beq lbl_808129A8
/* 8081298C  48 00 00 34 */	b lbl_808129C0
lbl_80812990:
/* 80812990  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80812994  41 82 00 0C */	beq lbl_808129A0
/* 80812998  38 00 00 01 */	li r0, 1
/* 8081299C  48 00 00 28 */	b lbl_808129C4
lbl_808129A0:
/* 808129A0  38 00 00 02 */	li r0, 2
/* 808129A4  48 00 00 20 */	b lbl_808129C4
lbl_808129A8:
/* 808129A8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 808129AC  41 82 00 0C */	beq lbl_808129B8
/* 808129B0  38 00 00 05 */	li r0, 5
/* 808129B4  48 00 00 10 */	b lbl_808129C4
lbl_808129B8:
/* 808129B8  38 00 00 03 */	li r0, 3
/* 808129BC  48 00 00 08 */	b lbl_808129C4
lbl_808129C0:
/* 808129C0  38 00 00 04 */	li r0, 4
lbl_808129C4:
/* 808129C4  2C 00 00 01 */	cmpwi r0, 1
/* 808129C8  40 82 00 0C */	bne lbl_808129D4
/* 808129CC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 808129D0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_808129D4:
/* 808129D4  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 808129D8  EC 21 00 28 */	fsubs f1, f1, f0
/* 808129DC  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 808129E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808129E4  40 80 00 08 */	bge lbl_808129EC
/* 808129E8  FC 20 00 90 */	fmr f1, f0
lbl_808129EC:
/* 808129EC  38 7D 06 EC */	addi r3, r29, 0x6ec
/* 808129F0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 808129F4  4B A5 DD 4C */	b cLib_chaseF__FPfff
/* 808129F8  48 00 00 44 */	b lbl_80812A3C
lbl_808129FC:
/* 808129FC  38 7D 06 EC */	addi r3, r29, 0x6ec
/* 80812A00  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80812A04  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80812A08  4B A5 DD 38 */	b cLib_chaseF__FPfff
/* 80812A0C  48 00 00 30 */	b lbl_80812A3C
lbl_80812A10:
/* 80812A10  38 7D 06 EC */	addi r3, r29, 0x6ec
/* 80812A14  FC 20 10 90 */	fmr f1, f2
/* 80812A18  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80812A1C  4B A5 DD 24 */	b cLib_chaseF__FPfff
/* 80812A20  48 00 00 1C */	b lbl_80812A3C
lbl_80812A24:
/* 80812A24  38 7D 06 EC */	addi r3, r29, 0x6ec
/* 80812A28  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80812A2C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80812A30  4B A5 DD 10 */	b cLib_chaseF__FPfff
/* 80812A34  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80812A38  D0 1D 06 D4 */	stfs f0, 0x6d4(r29)
lbl_80812A3C:
/* 80812A3C  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80812A40  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80812A44  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80812A48  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80812A4C  7C 23 04 2E */	lfsx f1, r3, r0
/* 80812A50  C0 1D 06 EC */	lfs f0, 0x6ec(r29)
/* 80812A54  EC 00 00 72 */	fmuls f0, f0, f1
/* 80812A58  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80812A5C  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80812A60  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80812A64  7C 3E 04 2E */	lfsx f1, r30, r0
/* 80812A68  C0 1D 06 EC */	lfs f0, 0x6ec(r29)
/* 80812A6C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80812A70  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80812A74  38 61 00 40 */	addi r3, r1, 0x40
/* 80812A78  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80812A7C  4B B3 49 20 */	b PSVECSquareDistance
/* 80812A80  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80812A84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80812A88  40 81 00 58 */	ble lbl_80812AE0
/* 80812A8C  FC 00 08 34 */	frsqrte f0, f1
/* 80812A90  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80812A94  FC 44 00 32 */	fmul f2, f4, f0
/* 80812A98  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80812A9C  FC 00 00 32 */	fmul f0, f0, f0
/* 80812AA0  FC 01 00 32 */	fmul f0, f1, f0
/* 80812AA4  FC 03 00 28 */	fsub f0, f3, f0
/* 80812AA8  FC 02 00 32 */	fmul f0, f2, f0
/* 80812AAC  FC 44 00 32 */	fmul f2, f4, f0
/* 80812AB0  FC 00 00 32 */	fmul f0, f0, f0
/* 80812AB4  FC 01 00 32 */	fmul f0, f1, f0
/* 80812AB8  FC 03 00 28 */	fsub f0, f3, f0
/* 80812ABC  FC 02 00 32 */	fmul f0, f2, f0
/* 80812AC0  FC 44 00 32 */	fmul f2, f4, f0
/* 80812AC4  FC 00 00 32 */	fmul f0, f0, f0
/* 80812AC8  FC 01 00 32 */	fmul f0, f1, f0
/* 80812ACC  FC 03 00 28 */	fsub f0, f3, f0
/* 80812AD0  FC 02 00 32 */	fmul f0, f2, f0
/* 80812AD4  FC 21 00 32 */	fmul f1, f1, f0
/* 80812AD8  FC 20 08 18 */	frsp f1, f1
/* 80812ADC  48 00 00 88 */	b lbl_80812B64
lbl_80812AE0:
/* 80812AE0  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80812AE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80812AE8  40 80 00 10 */	bge lbl_80812AF8
/* 80812AEC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80812AF0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80812AF4  48 00 00 70 */	b lbl_80812B64
lbl_80812AF8:
/* 80812AF8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80812AFC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80812B00  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80812B04  3C 00 7F 80 */	lis r0, 0x7f80
/* 80812B08  7C 03 00 00 */	cmpw r3, r0
/* 80812B0C  41 82 00 14 */	beq lbl_80812B20
/* 80812B10  40 80 00 40 */	bge lbl_80812B50
/* 80812B14  2C 03 00 00 */	cmpwi r3, 0
/* 80812B18  41 82 00 20 */	beq lbl_80812B38
/* 80812B1C  48 00 00 34 */	b lbl_80812B50
lbl_80812B20:
/* 80812B20  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80812B24  41 82 00 0C */	beq lbl_80812B30
/* 80812B28  38 00 00 01 */	li r0, 1
/* 80812B2C  48 00 00 28 */	b lbl_80812B54
lbl_80812B30:
/* 80812B30  38 00 00 02 */	li r0, 2
/* 80812B34  48 00 00 20 */	b lbl_80812B54
lbl_80812B38:
/* 80812B38  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80812B3C  41 82 00 0C */	beq lbl_80812B48
/* 80812B40  38 00 00 05 */	li r0, 5
/* 80812B44  48 00 00 10 */	b lbl_80812B54
lbl_80812B48:
/* 80812B48  38 00 00 03 */	li r0, 3
/* 80812B4C  48 00 00 08 */	b lbl_80812B54
lbl_80812B50:
/* 80812B50  38 00 00 04 */	li r0, 4
lbl_80812B54:
/* 80812B54  2C 00 00 01 */	cmpwi r0, 1
/* 80812B58  40 82 00 0C */	bne lbl_80812B64
/* 80812B5C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80812B60  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80812B64:
/* 80812B64  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80812B68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80812B6C  40 80 00 78 */	bge lbl_80812BE4
/* 80812B70  88 7D 06 B4 */	lbz r3, 0x6b4(r29)
/* 80812B74  38 03 00 01 */	addi r0, r3, 1
/* 80812B78  98 1D 06 B4 */	stb r0, 0x6b4(r29)
/* 80812B7C  88 1D 06 B4 */	lbz r0, 0x6b4(r29)
/* 80812B80  7C 04 07 74 */	extsb r4, r0
/* 80812B84  80 7D 06 AC */	lwz r3, 0x6ac(r29)
/* 80812B88  A0 03 00 00 */	lhz r0, 0(r3)
/* 80812B8C  7C 04 00 00 */	cmpw r4, r0
/* 80812B90  41 80 00 54 */	blt lbl_80812BE4
/* 80812B94  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80812B98  D0 3D 05 2C */	stfs f1, 0x52c(r29)
/* 80812B9C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80812BA0  D0 1D 06 70 */	stfs f0, 0x670(r29)
/* 80812BA4  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80812BA8  D0 1D 06 74 */	stfs f0, 0x674(r29)
/* 80812BAC  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80812BB0  D0 1D 06 78 */	stfs f0, 0x678(r29)
/* 80812BB4  D0 3D 06 DC */	stfs f1, 0x6dc(r29)
/* 80812BB8  38 7D 07 20 */	addi r3, r29, 0x720
/* 80812BBC  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80812BC0  C0 5F 00 B8 */	lfs f2, 0xb8(r31)
/* 80812BC4  4B 86 33 94 */	b SetWall__12dBgS_AcchCirFff
/* 80812BC8  38 00 00 00 */	li r0, 0
/* 80812BCC  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 80812BD0  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 80812BD4  7F A3 EB 78 */	mr r3, r29
/* 80812BD8  38 80 00 00 */	li r4, 0
/* 80812BDC  4B FF 73 C1 */	bl setActionMode__8daE_YM_cFi
/* 80812BE0  48 00 03 14 */	b lbl_80812EF4
lbl_80812BE4:
/* 80812BE4  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80812BE8  80 9D 06 64 */	lwz r4, 0x664(r29)
/* 80812BEC  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80812BF0  4B B3 47 AC */	b PSVECSquareDistance
/* 80812BF4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80812BF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80812BFC  40 81 00 58 */	ble lbl_80812C54
/* 80812C00  FC 00 08 34 */	frsqrte f0, f1
/* 80812C04  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80812C08  FC 44 00 32 */	fmul f2, f4, f0
/* 80812C0C  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80812C10  FC 00 00 32 */	fmul f0, f0, f0
/* 80812C14  FC 01 00 32 */	fmul f0, f1, f0
/* 80812C18  FC 03 00 28 */	fsub f0, f3, f0
/* 80812C1C  FC 02 00 32 */	fmul f0, f2, f0
/* 80812C20  FC 44 00 32 */	fmul f2, f4, f0
/* 80812C24  FC 00 00 32 */	fmul f0, f0, f0
/* 80812C28  FC 01 00 32 */	fmul f0, f1, f0
/* 80812C2C  FC 03 00 28 */	fsub f0, f3, f0
/* 80812C30  FC 02 00 32 */	fmul f0, f2, f0
/* 80812C34  FC 44 00 32 */	fmul f2, f4, f0
/* 80812C38  FC 00 00 32 */	fmul f0, f0, f0
/* 80812C3C  FC 01 00 32 */	fmul f0, f1, f0
/* 80812C40  FC 03 00 28 */	fsub f0, f3, f0
/* 80812C44  FC 02 00 32 */	fmul f0, f2, f0
/* 80812C48  FC 21 00 32 */	fmul f1, f1, f0
/* 80812C4C  FC 20 08 18 */	frsp f1, f1
/* 80812C50  48 00 00 88 */	b lbl_80812CD8
lbl_80812C54:
/* 80812C54  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80812C58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80812C5C  40 80 00 10 */	bge lbl_80812C6C
/* 80812C60  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80812C64  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80812C68  48 00 00 70 */	b lbl_80812CD8
lbl_80812C6C:
/* 80812C6C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80812C70  80 81 00 08 */	lwz r4, 8(r1)
/* 80812C74  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80812C78  3C 00 7F 80 */	lis r0, 0x7f80
/* 80812C7C  7C 03 00 00 */	cmpw r3, r0
/* 80812C80  41 82 00 14 */	beq lbl_80812C94
/* 80812C84  40 80 00 40 */	bge lbl_80812CC4
/* 80812C88  2C 03 00 00 */	cmpwi r3, 0
/* 80812C8C  41 82 00 20 */	beq lbl_80812CAC
/* 80812C90  48 00 00 34 */	b lbl_80812CC4
lbl_80812C94:
/* 80812C94  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80812C98  41 82 00 0C */	beq lbl_80812CA4
/* 80812C9C  38 00 00 01 */	li r0, 1
/* 80812CA0  48 00 00 28 */	b lbl_80812CC8
lbl_80812CA4:
/* 80812CA4  38 00 00 02 */	li r0, 2
/* 80812CA8  48 00 00 20 */	b lbl_80812CC8
lbl_80812CAC:
/* 80812CAC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80812CB0  41 82 00 0C */	beq lbl_80812CBC
/* 80812CB4  38 00 00 05 */	li r0, 5
/* 80812CB8  48 00 00 10 */	b lbl_80812CC8
lbl_80812CBC:
/* 80812CBC  38 00 00 03 */	li r0, 3
/* 80812CC0  48 00 00 08 */	b lbl_80812CC8
lbl_80812CC4:
/* 80812CC4  38 00 00 04 */	li r0, 4
lbl_80812CC8:
/* 80812CC8  2C 00 00 01 */	cmpwi r0, 1
/* 80812CCC  40 82 00 0C */	bne lbl_80812CD8
/* 80812CD0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80812CD4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80812CD8:
/* 80812CD8  C0 1F 01 30 */	lfs f0, 0x130(r31)
/* 80812CDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80812CE0  40 81 00 1C */	ble lbl_80812CFC
/* 80812CE4  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 80812CE8  D0 1D 06 8C */	stfs f0, 0x68c(r29)
/* 80812CEC  7F A3 EB 78 */	mr r3, r29
/* 80812CF0  4B FF 5C ED */	bl setElecEffect2__8daE_YM_cFv
/* 80812CF4  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80812CF8  D0 1D 06 8C */	stfs f0, 0x68c(r29)
lbl_80812CFC:
/* 80812CFC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070199@ha */
/* 80812D00  38 03 01 99 */	addi r0, r3, 0x0199 /* 0x00070199@l */
/* 80812D04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80812D08  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 80812D0C  38 81 00 14 */	addi r4, r1, 0x14
/* 80812D10  38 A0 00 00 */	li r5, 0
/* 80812D14  38 C0 FF FF */	li r6, -1
/* 80812D18  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 80812D1C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80812D20  7D 89 03 A6 */	mtctr r12
/* 80812D24  4E 80 04 21 */	bctrl 
/* 80812D28  38 7D 09 74 */	addi r3, r29, 0x974
/* 80812D2C  4B 87 17 34 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80812D30  28 03 00 00 */	cmplwi r3, 0
/* 80812D34  41 82 01 C0 */	beq lbl_80812EF4
/* 80812D38  38 7D 09 74 */	addi r3, r29, 0x974
/* 80812D3C  4B 87 17 BC */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80812D40  7C 7E 1B 78 */	mr r30, r3
/* 80812D44  4B A5 0D 04 */	b GetAc__8cCcD_ObjFv
/* 80812D48  A8 03 00 08 */	lha r0, 8(r3)
/* 80812D4C  2C 00 00 F4 */	cmpwi r0, 0xf4
/* 80812D50  40 82 01 A4 */	bne lbl_80812EF4
/* 80812D54  7F C3 F3 78 */	mr r3, r30
/* 80812D58  4B A5 0C F0 */	b GetAc__8cCcD_ObjFv
/* 80812D5C  80 9D 06 64 */	lwz r4, 0x664(r29)
/* 80812D60  7C 04 18 40 */	cmplw r4, r3
/* 80812D64  40 82 01 90 */	bne lbl_80812EF4
/* 80812D68  80 04 06 18 */	lwz r0, 0x618(r4)
/* 80812D6C  7C 00 E8 40 */	cmplw r0, r29
/* 80812D70  40 82 00 0C */	bne lbl_80812D7C
/* 80812D74  38 00 00 00 */	li r0, 0
/* 80812D78  90 04 06 18 */	stw r0, 0x618(r4)
lbl_80812D7C:
/* 80812D7C  7F A3 EB 78 */	mr r3, r29
/* 80812D80  4B FF 70 05 */	bl setAppear__8daE_YM_cFv
/* 80812D84  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80812D88  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80812D8C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80812D90  38 00 00 00 */	li r0, 0
/* 80812D94  90 1D 07 14 */	stw r0, 0x714(r29)
/* 80812D98  7F A3 EB 78 */	mr r3, r29
/* 80812D9C  38 80 00 10 */	li r4, 0x10
/* 80812DA0  38 A0 00 02 */	li r5, 2
/* 80812DA4  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80812DA8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80812DAC  4B FF 54 35 */	bl bckSet__8daE_YM_cFiUcff
/* 80812DB0  80 7D 06 64 */	lwz r3, 0x664(r29)
/* 80812DB4  88 03 06 D8 */	lbz r0, 0x6d8(r3)
/* 80812DB8  60 00 00 04 */	ori r0, r0, 4
/* 80812DBC  98 03 06 D8 */	stb r0, 0x6d8(r3)
/* 80812DC0  38 00 00 03 */	li r0, 3
/* 80812DC4  90 1D 06 98 */	stw r0, 0x698(r29)
/* 80812DC8  38 00 00 01 */	li r0, 1
/* 80812DCC  98 1D 06 CE */	stb r0, 0x6ce(r29)
/* 80812DD0  48 00 01 24 */	b lbl_80812EF4
lbl_80812DD4:
/* 80812DD4  7F A3 EB 78 */	mr r3, r29
/* 80812DD8  4B FF 5A AD */	bl setElecEffect1__8daE_YM_cFv
/* 80812DDC  80 7D 06 64 */	lwz r3, 0x664(r29)
/* 80812DE0  28 03 00 00 */	cmplwi r3, 0
/* 80812DE4  41 82 01 10 */	beq lbl_80812EF4
/* 80812DE8  80 63 05 70 */	lwz r3, 0x570(r3)
/* 80812DEC  80 63 00 04 */	lwz r3, 4(r3)
/* 80812DF0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80812DF4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80812DF8  38 63 01 50 */	addi r3, r3, 0x150
/* 80812DFC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80812E00  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80812E04  4B B3 36 AC */	b PSMTXCopy
/* 80812E08  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80812E0C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80812E10  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80812E14  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80812E18  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80812E1C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80812E20  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80812E24  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80812E28  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80812E2C  80 9D 06 64 */	lwz r4, 0x664(r29)
/* 80812E30  38 84 04 F8 */	addi r4, r4, 0x4f8
/* 80812E34  7C 65 1B 78 */	mr r5, r3
/* 80812E38  4B B3 42 58 */	b PSVECAdd
/* 80812E3C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80812E40  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80812E44  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80812E48  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80812E4C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80812E50  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80812E54  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80812E58  38 81 00 34 */	addi r4, r1, 0x34
/* 80812E5C  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80812E60  4B A5 D9 4C */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 80812E64  2C 03 00 00 */	cmpwi r3, 0
/* 80812E68  41 82 00 8C */	beq lbl_80812EF4
/* 80812E6C  88 9D 06 A2 */	lbz r4, 0x6a2(r29)
/* 80812E70  28 04 00 FF */	cmplwi r4, 0xff
/* 80812E74  41 82 00 38 */	beq lbl_80812EAC
/* 80812E78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80812E7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80812E80  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80812E84  7C 05 07 74 */	extsb r5, r0
/* 80812E88  4B 82 24 D8 */	b isSwitch__10dSv_info_cCFii
/* 80812E8C  2C 03 00 00 */	cmpwi r3, 0
/* 80812E90  40 82 00 1C */	bne lbl_80812EAC
/* 80812E94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80812E98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80812E9C  88 9D 06 A2 */	lbz r4, 0x6a2(r29)
/* 80812EA0  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80812EA4  7C 05 07 74 */	extsb r5, r0
/* 80812EA8  4B 82 23 58 */	b onSwitch__10dSv_info_cFii
lbl_80812EAC:
/* 80812EAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80812EB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80812EB4  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80812EB8  38 80 00 03 */	li r4, 3
/* 80812EBC  7F A5 EB 78 */	mr r5, r29
/* 80812EC0  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80812EC4  38 E0 00 00 */	li r7, 0
/* 80812EC8  39 00 00 00 */	li r8, 0
/* 80812ECC  39 20 00 00 */	li r9, 0
/* 80812ED0  4B 83 93 48 */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 80812ED4  7F A3 EB 78 */	mr r3, r29
/* 80812ED8  4B 80 6D A4 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80812EDC  7F A3 EB 78 */	mr r3, r29
/* 80812EE0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80812EE4  38 A0 00 14 */	li r5, 0x14
/* 80812EE8  38 C0 00 01 */	li r6, 1
/* 80812EEC  38 E0 00 FF */	li r7, 0xff
/* 80812EF0  4B 80 9B E8 */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
lbl_80812EF4:
/* 80812EF4  39 61 00 70 */	addi r11, r1, 0x70
/* 80812EF8  4B B4 F3 30 */	b _restgpr_29
/* 80812EFC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80812F00  7C 08 03 A6 */	mtlr r0
/* 80812F04  38 21 00 70 */	addi r1, r1, 0x70
/* 80812F08  4E 80 00 20 */	blr 

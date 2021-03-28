lbl_804A45A0:
/* 804A45A0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804A45A4  7C 08 02 A6 */	mflr r0
/* 804A45A8  90 01 00 54 */	stw r0, 0x54(r1)
/* 804A45AC  39 61 00 50 */	addi r11, r1, 0x50
/* 804A45B0  4B EB DC 2C */	b _savegpr_29
/* 804A45B4  7C 7D 1B 78 */	mr r29, r3
/* 804A45B8  3C 60 80 4B */	lis r3, lit_3727@ha
/* 804A45BC  3B E3 88 60 */	addi r31, r3, lit_3727@l
/* 804A45C0  3B C0 00 00 */	li r30, 0
/* 804A45C4  3C 60 80 4B */	lis r3, __vt__8cM3dGPla@ha
/* 804A45C8  38 03 8C 04 */	addi r0, r3, __vt__8cM3dGPla@l
/* 804A45CC  90 01 00 38 */	stw r0, 0x38(r1)
/* 804A45D0  88 1D 04 87 */	lbz r0, 0x487(r29)
/* 804A45D4  28 00 00 01 */	cmplwi r0, 1
/* 804A45D8  40 82 00 1C */	bne lbl_804A45F4
/* 804A45DC  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 804A45E0  B0 1D 05 74 */	sth r0, 0x574(r29)
/* 804A45E4  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 804A45E8  B0 1D 05 76 */	sth r0, 0x576(r29)
/* 804A45EC  A8 1D 04 E8 */	lha r0, 0x4e8(r29)
/* 804A45F0  B0 1D 05 78 */	sth r0, 0x578(r29)
lbl_804A45F4:
/* 804A45F4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 804A45F8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804A45FC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 804A4600  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804A4604  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 804A4608  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804A460C  88 1D 06 A2 */	lbz r0, 0x6a2(r29)
/* 804A4610  28 00 00 00 */	cmplwi r0, 0
/* 804A4614  40 82 00 10 */	bne lbl_804A4624
/* 804A4618  88 1D 06 A3 */	lbz r0, 0x6a3(r29)
/* 804A461C  28 00 00 00 */	cmplwi r0, 0
/* 804A4620  41 82 00 48 */	beq lbl_804A4668
lbl_804A4624:
/* 804A4624  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 804A4628  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 804A462C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 804A4630  EC 21 00 2A */	fadds f1, f1, f0
/* 804A4634  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 804A4638  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804A463C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 804A4640  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 804A4644  80 7D 05 F8 */	lwz r3, 0x5f8(r29)
/* 804A4648  38 81 00 10 */	addi r4, r1, 0x10
/* 804A464C  4B DC 36 DC */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 804A4650  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804A4654  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804A4658  38 63 0F 38 */	addi r3, r3, 0xf38
/* 804A465C  80 9D 05 F8 */	lwz r4, 0x5f8(r29)
/* 804A4660  4B BC FE 40 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 804A4664  D0 21 00 20 */	stfs f1, 0x20(r1)
lbl_804A4668:
/* 804A4668  88 1D 06 A4 */	lbz r0, 0x6a4(r29)
/* 804A466C  28 00 00 00 */	cmplwi r0, 0
/* 804A4670  41 82 01 68 */	beq lbl_804A47D8
/* 804A4674  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 804A4678  C0 1D 05 68 */	lfs f0, 0x568(r29)
/* 804A467C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804A4680  41 82 01 58 */	beq lbl_804A47D8
/* 804A4684  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 804A4688  38 9D 05 68 */	addi r4, r29, 0x568
/* 804A468C  4B DC 29 E0 */	b __ne__4cXyzCFRC3Vec
/* 804A4690  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804A4694  41 82 01 34 */	beq lbl_804A47C8
/* 804A4698  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 804A469C  38 9D 05 68 */	addi r4, r29, 0x568
/* 804A46A0  4B EA 2C FC */	b PSVECSquareDistance
/* 804A46A4  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 804A46A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A46AC  40 81 00 58 */	ble lbl_804A4704
/* 804A46B0  FC 00 08 34 */	frsqrte f0, f1
/* 804A46B4  C8 9F 00 18 */	lfd f4, 0x18(r31)
/* 804A46B8  FC 44 00 32 */	fmul f2, f4, f0
/* 804A46BC  C8 7F 00 20 */	lfd f3, 0x20(r31)
/* 804A46C0  FC 00 00 32 */	fmul f0, f0, f0
/* 804A46C4  FC 01 00 32 */	fmul f0, f1, f0
/* 804A46C8  FC 03 00 28 */	fsub f0, f3, f0
/* 804A46CC  FC 02 00 32 */	fmul f0, f2, f0
/* 804A46D0  FC 44 00 32 */	fmul f2, f4, f0
/* 804A46D4  FC 00 00 32 */	fmul f0, f0, f0
/* 804A46D8  FC 01 00 32 */	fmul f0, f1, f0
/* 804A46DC  FC 03 00 28 */	fsub f0, f3, f0
/* 804A46E0  FC 02 00 32 */	fmul f0, f2, f0
/* 804A46E4  FC 44 00 32 */	fmul f2, f4, f0
/* 804A46E8  FC 00 00 32 */	fmul f0, f0, f0
/* 804A46EC  FC 01 00 32 */	fmul f0, f1, f0
/* 804A46F0  FC 03 00 28 */	fsub f0, f3, f0
/* 804A46F4  FC 02 00 32 */	fmul f0, f2, f0
/* 804A46F8  FC 21 00 32 */	fmul f1, f1, f0
/* 804A46FC  FC 20 08 18 */	frsp f1, f1
/* 804A4700  48 00 00 88 */	b lbl_804A4788
lbl_804A4704:
/* 804A4704  C8 1F 00 28 */	lfd f0, 0x28(r31)
/* 804A4708  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A470C  40 80 00 10 */	bge lbl_804A471C
/* 804A4710  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804A4714  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 804A4718  48 00 00 70 */	b lbl_804A4788
lbl_804A471C:
/* 804A471C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804A4720  80 81 00 0C */	lwz r4, 0xc(r1)
/* 804A4724  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804A4728  3C 00 7F 80 */	lis r0, 0x7f80
/* 804A472C  7C 03 00 00 */	cmpw r3, r0
/* 804A4730  41 82 00 14 */	beq lbl_804A4744
/* 804A4734  40 80 00 40 */	bge lbl_804A4774
/* 804A4738  2C 03 00 00 */	cmpwi r3, 0
/* 804A473C  41 82 00 20 */	beq lbl_804A475C
/* 804A4740  48 00 00 34 */	b lbl_804A4774
lbl_804A4744:
/* 804A4744  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804A4748  41 82 00 0C */	beq lbl_804A4754
/* 804A474C  38 00 00 01 */	li r0, 1
/* 804A4750  48 00 00 28 */	b lbl_804A4778
lbl_804A4754:
/* 804A4754  38 00 00 02 */	li r0, 2
/* 804A4758  48 00 00 20 */	b lbl_804A4778
lbl_804A475C:
/* 804A475C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804A4760  41 82 00 0C */	beq lbl_804A476C
/* 804A4764  38 00 00 05 */	li r0, 5
/* 804A4768  48 00 00 10 */	b lbl_804A4778
lbl_804A476C:
/* 804A476C  38 00 00 03 */	li r0, 3
/* 804A4770  48 00 00 08 */	b lbl_804A4778
lbl_804A4774:
/* 804A4774  38 00 00 04 */	li r0, 4
lbl_804A4778:
/* 804A4778  2C 00 00 01 */	cmpwi r0, 1
/* 804A477C  40 82 00 0C */	bne lbl_804A4788
/* 804A4780  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804A4784  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_804A4788:
/* 804A4788  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 804A478C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A4790  4C 41 13 82 */	cror 2, 1, 2
/* 804A4794  40 82 00 34 */	bne lbl_804A47C8
/* 804A4798  38 7D 05 68 */	addi r3, r29, 0x568
/* 804A479C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 804A47A0  38 A1 00 0A */	addi r5, r1, 0xa
/* 804A47A4  38 C1 00 08 */	addi r6, r1, 8
/* 804A47A8  4B FF FD 79 */	bl get_foward_angle__FP4cXyzP4cXyzPsPs
/* 804A47AC  A8 01 00 0A */	lha r0, 0xa(r1)
/* 804A47B0  B0 1D 05 74 */	sth r0, 0x574(r29)
/* 804A47B4  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 804A47B8  A8 01 00 08 */	lha r0, 8(r1)
/* 804A47BC  B0 1D 05 76 */	sth r0, 0x576(r29)
/* 804A47C0  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 804A47C4  48 00 00 14 */	b lbl_804A47D8
lbl_804A47C8:
/* 804A47C8  A8 1D 05 74 */	lha r0, 0x574(r29)
/* 804A47CC  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 804A47D0  A8 1D 05 76 */	lha r0, 0x576(r29)
/* 804A47D4  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
lbl_804A47D8:
/* 804A47D8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 804A47DC  D0 1D 05 68 */	stfs f0, 0x568(r29)
/* 804A47E0  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 804A47E4  D0 1D 05 6C */	stfs f0, 0x56c(r29)
/* 804A47E8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 804A47EC  D0 1D 05 70 */	stfs f0, 0x570(r29)
/* 804A47F0  88 1D 06 A3 */	lbz r0, 0x6a3(r29)
/* 804A47F4  28 00 00 00 */	cmplwi r0, 0
/* 804A47F8  41 82 00 5C */	beq lbl_804A4854
/* 804A47FC  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 804A4800  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804A4804  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804A4808  41 82 00 24 */	beq lbl_804A482C
/* 804A480C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804A4810  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804A4814  38 63 0F 38 */	addi r3, r3, 0xf38
/* 804A4818  80 9D 05 F8 */	lwz r4, 0x5f8(r29)
/* 804A481C  38 84 00 14 */	addi r4, r4, 0x14
/* 804A4820  38 A1 00 28 */	addi r5, r1, 0x28
/* 804A4824  4B BC FF 20 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 804A4828  7C 7E 1B 78 */	mr r30, r3
lbl_804A482C:
/* 804A482C  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 804A4830  41 82 00 24 */	beq lbl_804A4854
/* 804A4834  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 804A4838  4B DC 39 AC */	b cBgW_CheckBGround__Ff
/* 804A483C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804A4840  41 82 00 14 */	beq lbl_804A4854
/* 804A4844  38 61 00 28 */	addi r3, r1, 0x28
/* 804A4848  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 804A484C  4B B7 93 8C */	b fopAcM_getPolygonAngle__FPC8cM3dGPlas
/* 804A4850  B0 7D 04 E4 */	sth r3, 0x4e4(r29)
lbl_804A4854:
/* 804A4854  88 1D 04 87 */	lbz r0, 0x487(r29)
/* 804A4858  28 00 00 00 */	cmplwi r0, 0
/* 804A485C  40 82 00 10 */	bne lbl_804A486C
/* 804A4860  88 1D 06 A3 */	lbz r0, 0x6a3(r29)
/* 804A4864  28 00 00 00 */	cmplwi r0, 0
/* 804A4868  40 82 00 20 */	bne lbl_804A4888
lbl_804A486C:
/* 804A486C  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 804A4870  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 804A4874  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 804A4878  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 804A487C  A8 1D 04 E8 */	lha r0, 0x4e8(r29)
/* 804A4880  B0 1D 04 E0 */	sth r0, 0x4e0(r29)
/* 804A4884  48 00 00 40 */	b lbl_804A48C4
lbl_804A4888:
/* 804A4888  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 804A488C  A8 9D 04 E4 */	lha r4, 0x4e4(r29)
/* 804A4890  38 A0 00 04 */	li r5, 4
/* 804A4894  38 C0 20 00 */	li r6, 0x2000
/* 804A4898  4B DC BD 70 */	b cLib_addCalcAngleS2__FPssss
/* 804A489C  38 7D 04 DE */	addi r3, r29, 0x4de
/* 804A48A0  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 804A48A4  38 A0 00 04 */	li r5, 4
/* 804A48A8  38 C0 20 00 */	li r6, 0x2000
/* 804A48AC  4B DC BD 5C */	b cLib_addCalcAngleS2__FPssss
/* 804A48B0  38 7D 04 E0 */	addi r3, r29, 0x4e0
/* 804A48B4  A8 9D 04 E8 */	lha r4, 0x4e8(r29)
/* 804A48B8  38 A0 00 04 */	li r5, 4
/* 804A48BC  38 C0 20 00 */	li r6, 0x2000
/* 804A48C0  4B DC BD 48 */	b cLib_addCalcAngleS2__FPssss
lbl_804A48C4:
/* 804A48C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804A48C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804A48CC  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 804A48D0  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 804A48D4  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 804A48D8  4B EA 20 10 */	b PSMTXTrans
/* 804A48DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804A48E0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804A48E4  A8 9D 04 DC */	lha r4, 0x4dc(r29)
/* 804A48E8  A8 BD 04 DE */	lha r5, 0x4de(r29)
/* 804A48EC  A8 DD 04 E0 */	lha r6, 0x4e0(r29)
/* 804A48F0  4B B6 78 74 */	b mDoMtx_XYZrotM__FPA4_fsss
/* 804A48F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804A48F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804A48FC  80 9D 05 D4 */	lwz r4, 0x5d4(r29)
/* 804A4900  38 84 00 24 */	addi r4, r4, 0x24
/* 804A4904  4B EA 1B AC */	b PSMTXCopy
/* 804A4908  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 804A490C  C0 1D 04 EC */	lfs f0, 0x4ec(r29)
/* 804A4910  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 804A4914  C0 1D 04 F0 */	lfs f0, 0x4f0(r29)
/* 804A4918  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 804A491C  C0 1D 04 F4 */	lfs f0, 0x4f4(r29)
/* 804A4920  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 804A4924  3C 60 80 4B */	lis r3, __vt__8cM3dGPla@ha
/* 804A4928  38 03 8C 04 */	addi r0, r3, __vt__8cM3dGPla@l
/* 804A492C  90 01 00 38 */	stw r0, 0x38(r1)
/* 804A4930  39 61 00 50 */	addi r11, r1, 0x50
/* 804A4934  4B EB D8 F4 */	b _restgpr_29
/* 804A4938  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804A493C  7C 08 03 A6 */	mtlr r0
/* 804A4940  38 21 00 50 */	addi r1, r1, 0x50
/* 804A4944  4E 80 00 20 */	blr 

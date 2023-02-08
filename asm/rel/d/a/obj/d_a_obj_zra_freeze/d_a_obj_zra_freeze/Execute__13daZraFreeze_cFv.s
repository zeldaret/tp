lbl_80D44698:
/* 80D44698  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80D4469C  7C 08 02 A6 */	mflr r0
/* 80D446A0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80D446A4  39 61 00 50 */	addi r11, r1, 0x50
/* 80D446A8  4B 61 DB 35 */	bl _savegpr_29
/* 80D446AC  7C 7D 1B 78 */	mr r29, r3
/* 80D446B0  3C 60 80 D4 */	lis r3, l_DATA@ha /* 0x80D44B48@ha */
/* 80D446B4  3B C3 4B 48 */	addi r30, r3, l_DATA@l /* 0x80D44B48@l */
/* 80D446B8  88 9D 05 B0 */	lbz r4, 0x5b0(r29)
/* 80D446BC  28 04 00 FF */	cmplwi r4, 0xff
/* 80D446C0  41 82 00 20 */	beq lbl_80D446E0
/* 80D446C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D446C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D446CC  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80D446D0  7C 05 07 74 */	extsb r5, r0
/* 80D446D4  4B 2F 0C 8D */	bl isSwitch__10dSv_info_cCFii
/* 80D446D8  2C 03 00 00 */	cmpwi r3, 0
/* 80D446DC  41 82 02 E8 */	beq lbl_80D449C4
lbl_80D446E0:
/* 80D446E0  7F A3 EB 78 */	mr r3, r29
/* 80D446E4  4B FF F9 D5 */	bl setBaseMtx__13daZraFreeze_cFv
/* 80D446E8  80 1D 04 E4 */	lwz r0, 0x4e4(r29)
/* 80D446EC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D446F0  A0 1D 04 E8 */	lhz r0, 0x4e8(r29)
/* 80D446F4  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80D446F8  38 00 00 00 */	li r0, 0
/* 80D446FC  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 80D44700  B0 1D 04 E8 */	sth r0, 0x4e8(r29)
/* 80D44704  7F A3 EB 78 */	mr r3, r29
/* 80D44708  4B FF FD B9 */	bl setHitodamaPrtcl__13daZraFreeze_cFv
/* 80D4470C  A8 01 00 0C */	lha r0, 0xc(r1)
/* 80D44710  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 80D44714  A8 01 00 0E */	lha r0, 0xe(r1)
/* 80D44718  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80D4471C  A8 01 00 10 */	lha r0, 0x10(r1)
/* 80D44720  B0 1D 04 E8 */	sth r0, 0x4e8(r29)
/* 80D44724  88 9D 05 B1 */	lbz r4, 0x5b1(r29)
/* 80D44728  28 04 00 FF */	cmplwi r4, 0xff
/* 80D4472C  41 82 02 98 */	beq lbl_80D449C4
/* 80D44730  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D44734  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D44738  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80D4473C  7C 05 07 74 */	extsb r5, r0
/* 80D44740  4B 2F 0C 21 */	bl isSwitch__10dSv_info_cCFii
/* 80D44744  2C 03 00 00 */	cmpwi r3, 0
/* 80D44748  41 82 02 7C */	beq lbl_80D449C4
/* 80D4474C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D44750  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D44754  88 9D 05 B2 */	lbz r4, 0x5b2(r29)
/* 80D44758  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80D4475C  7C 05 07 74 */	extsb r5, r0
/* 80D44760  4B 2F 0C 01 */	bl isSwitch__10dSv_info_cCFii
/* 80D44764  2C 03 00 00 */	cmpwi r3, 0
/* 80D44768  40 82 01 EC */	bne lbl_80D44954
/* 80D4476C  80 1D 05 A4 */	lwz r0, 0x5a4(r29)
/* 80D44770  2C 00 00 00 */	cmpwi r0, 0
/* 80D44774  41 82 02 50 */	beq lbl_80D449C4
/* 80D44778  4B 41 AC AD */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 80D4477C  2C 03 00 00 */	cmpwi r3, 0
/* 80D44780  41 82 02 44 */	beq lbl_80D449C4
/* 80D44784  38 61 00 20 */	addi r3, r1, 0x20
/* 80D44788  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80D4478C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D44790  3B E5 61 C0 */	addi r31, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D44794  80 BF 5D AC */	lwz r5, 0x5dac(r31)
/* 80D44798  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 80D4479C  4B 52 23 99 */	bl __mi__4cXyzCFRC3Vec
/* 80D447A0  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80D447A4  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80D447A8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80D447AC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80D447B0  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80D447B4  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80D447B8  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80D447BC  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80D447C0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D447C4  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80D447C8  38 61 00 14 */	addi r3, r1, 0x14
/* 80D447CC  4B 60 29 6D */	bl PSVECSquareMag
/* 80D447D0  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80D447D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D447D8  40 81 00 58 */	ble lbl_80D44830
/* 80D447DC  FC 00 08 34 */	frsqrte f0, f1
/* 80D447E0  C8 9E 00 28 */	lfd f4, 0x28(r30)
/* 80D447E4  FC 44 00 32 */	fmul f2, f4, f0
/* 80D447E8  C8 7E 00 30 */	lfd f3, 0x30(r30)
/* 80D447EC  FC 00 00 32 */	fmul f0, f0, f0
/* 80D447F0  FC 01 00 32 */	fmul f0, f1, f0
/* 80D447F4  FC 03 00 28 */	fsub f0, f3, f0
/* 80D447F8  FC 02 00 32 */	fmul f0, f2, f0
/* 80D447FC  FC 44 00 32 */	fmul f2, f4, f0
/* 80D44800  FC 00 00 32 */	fmul f0, f0, f0
/* 80D44804  FC 01 00 32 */	fmul f0, f1, f0
/* 80D44808  FC 03 00 28 */	fsub f0, f3, f0
/* 80D4480C  FC 02 00 32 */	fmul f0, f2, f0
/* 80D44810  FC 44 00 32 */	fmul f2, f4, f0
/* 80D44814  FC 00 00 32 */	fmul f0, f0, f0
/* 80D44818  FC 01 00 32 */	fmul f0, f1, f0
/* 80D4481C  FC 03 00 28 */	fsub f0, f3, f0
/* 80D44820  FC 02 00 32 */	fmul f0, f2, f0
/* 80D44824  FC 21 00 32 */	fmul f1, f1, f0
/* 80D44828  FC 20 08 18 */	frsp f1, f1
/* 80D4482C  48 00 00 88 */	b lbl_80D448B4
lbl_80D44830:
/* 80D44830  C8 1E 00 38 */	lfd f0, 0x38(r30)
/* 80D44834  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D44838  40 80 00 10 */	bge lbl_80D44848
/* 80D4483C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D44840  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D44844  48 00 00 70 */	b lbl_80D448B4
lbl_80D44848:
/* 80D44848  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D4484C  80 81 00 08 */	lwz r4, 8(r1)
/* 80D44850  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D44854  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D44858  7C 03 00 00 */	cmpw r3, r0
/* 80D4485C  41 82 00 14 */	beq lbl_80D44870
/* 80D44860  40 80 00 40 */	bge lbl_80D448A0
/* 80D44864  2C 03 00 00 */	cmpwi r3, 0
/* 80D44868  41 82 00 20 */	beq lbl_80D44888
/* 80D4486C  48 00 00 34 */	b lbl_80D448A0
lbl_80D44870:
/* 80D44870  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D44874  41 82 00 0C */	beq lbl_80D44880
/* 80D44878  38 00 00 01 */	li r0, 1
/* 80D4487C  48 00 00 28 */	b lbl_80D448A4
lbl_80D44880:
/* 80D44880  38 00 00 02 */	li r0, 2
/* 80D44884  48 00 00 20 */	b lbl_80D448A4
lbl_80D44888:
/* 80D44888  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D4488C  41 82 00 0C */	beq lbl_80D44898
/* 80D44890  38 00 00 05 */	li r0, 5
/* 80D44894  48 00 00 10 */	b lbl_80D448A4
lbl_80D44898:
/* 80D44898  38 00 00 03 */	li r0, 3
/* 80D4489C  48 00 00 08 */	b lbl_80D448A4
lbl_80D448A0:
/* 80D448A0  38 00 00 04 */	li r0, 4
lbl_80D448A4:
/* 80D448A4  2C 00 00 01 */	cmpwi r0, 1
/* 80D448A8  40 82 00 0C */	bne lbl_80D448B4
/* 80D448AC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D448B0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80D448B4:
/* 80D448B4  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80D448B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D448BC  40 80 01 08 */	bge lbl_80D449C4
/* 80D448C0  7F A3 EB 78 */	mr r3, r29
/* 80D448C4  4B FF F8 61 */	bl chkActorInScreen__13daZraFreeze_cFv
/* 80D448C8  2C 03 00 00 */	cmpwi r3, 0
/* 80D448CC  41 82 00 F8 */	beq lbl_80D449C4
/* 80D448D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D448D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D448D8  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80D448DC  7F A4 EB 78 */	mr r4, r29
/* 80D448E0  3C A0 80 D4 */	lis r5, d_a_obj_zra_freeze__stringBase0@ha /* 0x80D44B88@ha */
/* 80D448E4  38 A5 4B 88 */	addi r5, r5, d_a_obj_zra_freeze__stringBase0@l /* 0x80D44B88@l */
/* 80D448E8  38 A5 00 30 */	addi r5, r5, 0x30
/* 80D448EC  38 C0 00 FF */	li r6, 0xff
/* 80D448F0  4B 30 2E 69 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80D448F4  B0 7D 05 CC */	sth r3, 0x5cc(r29)
/* 80D448F8  7F A3 EB 78 */	mr r3, r29
/* 80D448FC  A8 9D 05 CC */	lha r4, 0x5cc(r29)
/* 80D44900  88 BD 05 CE */	lbz r5, 0x5ce(r29)
/* 80D44904  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80D44908  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80D4490C  38 E0 00 04 */	li r7, 4
/* 80D44910  39 00 00 01 */	li r8, 1
/* 80D44914  4B 2D 6D 69 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80D44918  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D4491C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D44920  88 9D 05 B2 */	lbz r4, 0x5b2(r29)
/* 80D44924  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80D44928  7C 05 07 74 */	extsb r5, r0
/* 80D4492C  4B 2F 08 D5 */	bl onSwitch__10dSv_info_cFii
/* 80D44930  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80D44934  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 80D44938  60 00 02 00 */	ori r0, r0, 0x200
/* 80D4493C  90 03 05 8C */	stw r0, 0x58c(r3)
/* 80D44940  38 60 00 01 */	li r3, 1
/* 80D44944  4B 2E 8F E1 */	bl dComIfGs_sense_type_change_Set__FSc
/* 80D44948  38 00 00 01 */	li r0, 1
/* 80D4494C  98 1D 05 CF */	stb r0, 0x5cf(r29)
/* 80D44950  48 00 00 74 */	b lbl_80D449C4
lbl_80D44954:
/* 80D44954  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D44958  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D4495C  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80D44960  28 00 00 00 */	cmplwi r0, 0
/* 80D44964  41 82 00 44 */	beq lbl_80D449A8
/* 80D44968  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 80D4496C  28 00 00 02 */	cmplwi r0, 2
/* 80D44970  40 82 00 18 */	bne lbl_80D44988
/* 80D44974  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80D44978  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 80D4497C  60 00 02 00 */	ori r0, r0, 0x200
/* 80D44980  90 03 05 8C */	stw r0, 0x58c(r3)
/* 80D44984  48 00 00 40 */	b lbl_80D449C4
lbl_80D44988:
/* 80D44988  88 1D 05 CF */	lbz r0, 0x5cf(r29)
/* 80D4498C  28 00 00 01 */	cmplwi r0, 1
/* 80D44990  40 82 00 34 */	bne lbl_80D449C4
/* 80D44994  38 60 FF FF */	li r3, -1
/* 80D44998  4B 2E 8F 8D */	bl dComIfGs_sense_type_change_Set__FSc
/* 80D4499C  38 00 00 00 */	li r0, 0
/* 80D449A0  98 1D 05 CF */	stb r0, 0x5cf(r29)
/* 80D449A4  48 00 00 20 */	b lbl_80D449C4
lbl_80D449A8:
/* 80D449A8  88 1D 05 CF */	lbz r0, 0x5cf(r29)
/* 80D449AC  28 00 00 01 */	cmplwi r0, 1
/* 80D449B0  40 82 00 14 */	bne lbl_80D449C4
/* 80D449B4  38 60 FF FF */	li r3, -1
/* 80D449B8  4B 2E 8F 6D */	bl dComIfGs_sense_type_change_Set__FSc
/* 80D449BC  38 00 00 00 */	li r0, 0
/* 80D449C0  98 1D 05 CF */	stb r0, 0x5cf(r29)
lbl_80D449C4:
/* 80D449C4  38 60 00 01 */	li r3, 1
/* 80D449C8  39 61 00 50 */	addi r11, r1, 0x50
/* 80D449CC  4B 61 D8 5D */	bl _restgpr_29
/* 80D449D0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80D449D4  7C 08 03 A6 */	mtlr r0
/* 80D449D8  38 21 00 50 */	addi r1, r1, 0x50
/* 80D449DC  4E 80 00 20 */	blr 

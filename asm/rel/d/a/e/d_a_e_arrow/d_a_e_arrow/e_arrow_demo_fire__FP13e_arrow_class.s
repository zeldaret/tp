lbl_8067D68C:
/* 8067D68C  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 8067D690  7C 08 02 A6 */	mflr r0
/* 8067D694  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8067D698  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 8067D69C  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 8067D6A0  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8067D6A4  4B CE 4B 24 */	b _savegpr_24
/* 8067D6A8  7C 7D 1B 78 */	mr r29, r3
/* 8067D6AC  3C 60 80 68 */	lis r3, lit_3983@ha
/* 8067D6B0  3B E3 E8 80 */	addi r31, r3, lit_3983@l
/* 8067D6B4  A8 1D 05 C4 */	lha r0, 0x5c4(r29)
/* 8067D6B8  2C 00 00 01 */	cmpwi r0, 1
/* 8067D6BC  41 82 00 6C */	beq lbl_8067D728
/* 8067D6C0  40 80 00 10 */	bge lbl_8067D6D0
/* 8067D6C4  2C 00 00 00 */	cmpwi r0, 0
/* 8067D6C8  40 80 00 14 */	bge lbl_8067D6DC
/* 8067D6CC  48 00 03 84 */	b lbl_8067DA50
lbl_8067D6D0:
/* 8067D6D0  2C 00 00 03 */	cmpwi r0, 3
/* 8067D6D4  40 80 03 7C */	bge lbl_8067DA50
/* 8067D6D8  48 00 03 68 */	b lbl_8067DA40
lbl_8067D6DC:
/* 8067D6DC  38 00 00 01 */	li r0, 1
/* 8067D6E0  B0 1D 05 C4 */	sth r0, 0x5c4(r29)
/* 8067D6E4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8067D6E8  D0 1D 0A 00 */	stfs f0, 0xa00(r29)
/* 8067D6EC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8067D6F0  D0 1D 0A 04 */	stfs f0, 0xa04(r29)
/* 8067D6F4  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8067D6F8  D0 1D 0A 08 */	stfs f0, 0xa08(r29)
/* 8067D6FC  C0 3D 0A 08 */	lfs f1, 0xa08(r29)
/* 8067D700  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 8067D704  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8067D708  40 81 00 10 */	ble lbl_8067D718
/* 8067D70C  38 00 80 00 */	li r0, -32768
/* 8067D710  B0 1D 0A 0C */	sth r0, 0xa0c(r29)
/* 8067D714  48 00 00 0C */	b lbl_8067D720
lbl_8067D718:
/* 8067D718  38 00 00 00 */	li r0, 0
/* 8067D71C  B0 1D 0A 0C */	sth r0, 0xa0c(r29)
lbl_8067D720:
/* 8067D720  38 00 00 14 */	li r0, 0x14
/* 8067D724  B0 1D 05 C6 */	sth r0, 0x5c6(r29)
lbl_8067D728:
/* 8067D728  A8 1D 0A 0C */	lha r0, 0xa0c(r29)
/* 8067D72C  3B 40 00 00 */	li r26, 0
/* 8067D730  B3 41 00 24 */	sth r26, 0x24(r1)
/* 8067D734  B0 01 00 26 */	sth r0, 0x26(r1)
/* 8067D738  B3 41 00 28 */	sth r26, 0x28(r1)
/* 8067D73C  3B 00 00 00 */	li r24, 0
/* 8067D740  3B C0 00 00 */	li r30, 0
/* 8067D744  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8067D748  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 8067D74C  3C 60 80 68 */	lis r3, fire_name@ha
/* 8067D750  3B 83 E9 98 */	addi r28, r3, fire_name@l
lbl_8067D754:
/* 8067D754  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 8067D758  38 00 00 FF */	li r0, 0xff
/* 8067D75C  90 01 00 08 */	stw r0, 8(r1)
/* 8067D760  38 80 00 00 */	li r4, 0
/* 8067D764  90 81 00 0C */	stw r4, 0xc(r1)
/* 8067D768  38 00 FF FF */	li r0, -1
/* 8067D76C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8067D770  90 81 00 14 */	stw r4, 0x14(r1)
/* 8067D774  90 81 00 18 */	stw r4, 0x18(r1)
/* 8067D778  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8067D77C  3B 3A 09 F0 */	addi r25, r26, 0x9f0
/* 8067D780  7C 9D C8 2E */	lwzx r4, r29, r25
/* 8067D784  38 A0 00 00 */	li r5, 0
/* 8067D788  7C DC F2 2E */	lhzx r6, r28, r30
/* 8067D78C  38 FD 0A 00 */	addi r7, r29, 0xa00
/* 8067D790  39 00 00 00 */	li r8, 0
/* 8067D794  39 21 00 24 */	addi r9, r1, 0x24
/* 8067D798  39 40 00 00 */	li r10, 0
/* 8067D79C  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8067D7A0  4B 9C FD 2C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8067D7A4  7C 7D C9 2E */	stwx r3, r29, r25
/* 8067D7A8  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 8067D7AC  38 63 02 10 */	addi r3, r3, 0x210
/* 8067D7B0  7C 9D C8 2E */	lwzx r4, r29, r25
/* 8067D7B4  4B 9C E1 00 */	b forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 8067D7B8  3B 18 00 01 */	addi r24, r24, 1
/* 8067D7BC  2C 18 00 04 */	cmpwi r24, 4
/* 8067D7C0  3B DE 00 02 */	addi r30, r30, 2
/* 8067D7C4  3B 5A 00 04 */	addi r26, r26, 4
/* 8067D7C8  41 80 FF 8C */	blt lbl_8067D754
/* 8067D7CC  A8 1D 05 C6 */	lha r0, 0x5c6(r29)
/* 8067D7D0  2C 00 00 00 */	cmpwi r0, 0
/* 8067D7D4  40 82 02 28 */	bne lbl_8067D9FC
/* 8067D7D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8067D7DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8067D7E0  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 8067D7E4  A8 1D 0A 0C */	lha r0, 0xa0c(r29)
/* 8067D7E8  2C 00 00 00 */	cmpwi r0, 0
/* 8067D7EC  40 82 00 14 */	bne lbl_8067D800
/* 8067D7F0  C3 FF 00 8C */	lfs f31, 0x8c(r31)
/* 8067D7F4  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 8067D7F8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8067D7FC  48 00 00 10 */	b lbl_8067D80C
lbl_8067D800:
/* 8067D800  C3 FF 00 94 */	lfs f31, 0x94(r31)
/* 8067D804  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8067D808  D0 01 00 40 */	stfs f0, 0x40(r1)
lbl_8067D80C:
/* 8067D80C  7F C3 F3 78 */	mr r3, r30
/* 8067D810  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8067D814  81 8C 00 B4 */	lwz r12, 0xb4(r12)
/* 8067D818  7D 89 03 A6 */	mtctr r12
/* 8067D81C  4E 80 04 21 */	bctrl 
/* 8067D820  2C 03 00 00 */	cmpwi r3, 0
/* 8067D824  40 82 00 60 */	bne lbl_8067D884
/* 8067D828  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8067D82C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 8067D830  88 04 4F AD */	lbz r0, 0x4fad(r4)
/* 8067D834  28 00 00 00 */	cmplwi r0, 0
/* 8067D838  41 82 00 1C */	beq lbl_8067D854
/* 8067D83C  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha
/* 8067D840  83 43 10 18 */	lwz r26, m_midnaActor__9daPy_py_c@l(r3)
/* 8067D844  80 64 5D B4 */	lwz r3, 0x5db4(r4)
/* 8067D848  4B 99 E2 CC */	b fopAcM_getTalkEventPartner__FPC10fopAc_ac_c
/* 8067D84C  7C 03 D0 40 */	cmplw r3, r26
/* 8067D850  41 82 00 34 */	beq lbl_8067D884
lbl_8067D854:
/* 8067D854  4B BB A9 D8 */	b getStatus__12dMsgObject_cFv
/* 8067D858  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8067D85C  20 60 00 01 */	subfic r3, r0, 1
/* 8067D860  30 03 FF FF */	addic r0, r3, -1
/* 8067D864  7C 00 19 10 */	subfe r0, r0, r3
/* 8067D868  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8067D86C  40 82 00 18 */	bne lbl_8067D884
/* 8067D870  38 7D 0A 08 */	addi r3, r29, 0xa08
/* 8067D874  FC 20 F8 90 */	fmr f1, f31
/* 8067D878  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 8067D87C  C0 7D 0A 10 */	lfs f3, 0xa10(r29)
/* 8067D880  4B BF 21 BC */	b cLib_addCalc2__FPffff
lbl_8067D884:
/* 8067D884  A8 1D 0A 0C */	lha r0, 0xa0c(r29)
/* 8067D888  2C 00 00 00 */	cmpwi r0, 0
/* 8067D88C  40 82 00 F8 */	bne lbl_8067D984
/* 8067D890  3C 60 80 68 */	lis r3, s_limit_sub__FPvPv@ha
/* 8067D894  38 63 D5 FC */	addi r3, r3, s_limit_sub__FPvPv@l
/* 8067D898  7F A4 EB 78 */	mr r4, r29
/* 8067D89C  4B 9A 3A 9C */	b fpcEx_Search__FPFPvPv_PvPv
/* 8067D8A0  28 03 00 00 */	cmplwi r3, 0
/* 8067D8A4  41 82 00 E0 */	beq lbl_8067D984
/* 8067D8A8  3B 01 00 44 */	addi r24, r1, 0x44
/* 8067D8AC  7F 03 C3 78 */	mr r3, r24
/* 8067D8B0  4B 9F 9C CC */	b __ct__11dBgS_GndChkFv
/* 8067D8B4  3C 60 80 68 */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 8067D8B8  38 63 EA E0 */	addi r3, r3, __vt__14dBgS_ObjGndChk@l
/* 8067D8BC  90 61 00 54 */	stw r3, 0x54(r1)
/* 8067D8C0  3B 23 00 0C */	addi r25, r3, 0xc
/* 8067D8C4  93 21 00 64 */	stw r25, 0x64(r1)
/* 8067D8C8  3B 43 00 18 */	addi r26, r3, 0x18
/* 8067D8CC  93 41 00 80 */	stw r26, 0x80(r1)
/* 8067D8D0  3B 63 00 24 */	addi r27, r3, 0x24
/* 8067D8D4  93 61 00 90 */	stw r27, 0x90(r1)
/* 8067D8D8  38 78 00 3C */	addi r3, r24, 0x3c
/* 8067D8DC  4B 9F B5 8C */	b SetObj__16dBgS_PolyPassChkFv
/* 8067D8E0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8067D8E4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8067D8E8  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8067D8EC  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8067D8F0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8067D8F4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8067D8F8  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8067D8FC  EC 01 00 2A */	fadds f0, f1, f0
/* 8067D900  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8067D904  7F 03 C3 78 */	mr r3, r24
/* 8067D908  38 81 00 38 */	addi r4, r1, 0x38
/* 8067D90C  4B BE A4 1C */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 8067D910  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8067D914  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8067D918  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8067D91C  7F 04 C3 78 */	mr r4, r24
/* 8067D920  4B 9F 6B 80 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 8067D924  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 8067D928  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8067D92C  40 81 00 34 */	ble lbl_8067D960
/* 8067D930  38 00 00 02 */	li r0, 2
/* 8067D934  B0 1D 05 C4 */	sth r0, 0x5c4(r29)
/* 8067D938  3C 60 80 68 */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 8067D93C  38 03 EA E0 */	addi r0, r3, __vt__14dBgS_ObjGndChk@l
/* 8067D940  90 01 00 54 */	stw r0, 0x54(r1)
/* 8067D944  93 21 00 64 */	stw r25, 0x64(r1)
/* 8067D948  93 41 00 80 */	stw r26, 0x80(r1)
/* 8067D94C  93 61 00 90 */	stw r27, 0x90(r1)
/* 8067D950  7F 03 C3 78 */	mr r3, r24
/* 8067D954  38 80 00 00 */	li r4, 0
/* 8067D958  4B 9F 9C 98 */	b __dt__11dBgS_GndChkFv
/* 8067D95C  48 00 00 F4 */	b lbl_8067DA50
lbl_8067D960:
/* 8067D960  3C 60 80 68 */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 8067D964  38 03 EA E0 */	addi r0, r3, __vt__14dBgS_ObjGndChk@l
/* 8067D968  90 01 00 54 */	stw r0, 0x54(r1)
/* 8067D96C  93 21 00 64 */	stw r25, 0x64(r1)
/* 8067D970  93 41 00 80 */	stw r26, 0x80(r1)
/* 8067D974  93 61 00 90 */	stw r27, 0x90(r1)
/* 8067D978  7F 03 C3 78 */	mr r3, r24
/* 8067D97C  38 80 00 00 */	li r4, 0
/* 8067D980  4B 9F 9C 70 */	b __dt__11dBgS_GndChkFv
lbl_8067D984:
/* 8067D984  38 7D 0A 10 */	addi r3, r29, 0xa10
/* 8067D988  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 8067D98C  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 8067D990  FC 60 10 90 */	fmr f3, f2
/* 8067D994  4B BF 20 A8 */	b cLib_addCalc2__FPffff
/* 8067D998  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8067D99C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8067D9A0  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8067D9A4  28 00 00 00 */	cmplwi r0, 0
/* 8067D9A8  40 82 00 4C */	bne lbl_8067D9F4
/* 8067D9AC  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8067D9B0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8067D9B4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8067D9B8  38 61 00 2C */	addi r3, r1, 0x2c
/* 8067D9BC  38 9D 0A 00 */	addi r4, r29, 0xa00
/* 8067D9C0  38 A1 00 38 */	addi r5, r1, 0x38
/* 8067D9C4  4B BE 91 20 */	b __pl__4cXyzCFRC3Vec
/* 8067D9C8  38 7D 09 B4 */	addi r3, r29, 0x9b4
/* 8067D9CC  38 81 00 2C */	addi r4, r1, 0x2c
/* 8067D9D0  4B BF 1C 78 */	b SetC__8cM3dGSphFRC4cXyz
/* 8067D9D4  38 7D 09 B4 */	addi r3, r29, 0x9b4
/* 8067D9D8  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 8067D9DC  4B BF 1D 2C */	b SetR__8cM3dGSphFf
/* 8067D9E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8067D9E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8067D9E8  38 63 23 3C */	addi r3, r3, 0x233c
/* 8067D9EC  38 9D 08 90 */	addi r4, r29, 0x890
/* 8067D9F0  4B BE 71 B8 */	b Set__4cCcSFP8cCcD_Obj
lbl_8067D9F4:
/* 8067D9F4  38 00 00 00 */	li r0, 0
/* 8067D9F8  90 1D 05 B4 */	stw r0, 0x5b4(r29)
lbl_8067D9FC:
/* 8067D9FC  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800D3@ha */
/* 8067DA00  38 03 00 D3 */	addi r0, r3, 0x00D3 /* 0x000800D3@l */
/* 8067DA04  90 01 00 20 */	stw r0, 0x20(r1)
/* 8067DA08  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8067DA0C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8067DA10  80 63 00 00 */	lwz r3, 0(r3)
/* 8067DA14  38 81 00 20 */	addi r4, r1, 0x20
/* 8067DA18  38 BD 0A 00 */	addi r5, r29, 0xa00
/* 8067DA1C  38 C0 00 00 */	li r6, 0
/* 8067DA20  38 E0 00 00 */	li r7, 0
/* 8067DA24  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8067DA28  FC 40 08 90 */	fmr f2, f1
/* 8067DA2C  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 8067DA30  FC 80 18 90 */	fmr f4, f3
/* 8067DA34  39 00 00 00 */	li r8, 0
/* 8067DA38  4B C2 EA D4 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8067DA3C  48 00 00 14 */	b lbl_8067DA50
lbl_8067DA40:
/* 8067DA40  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8067DA44  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8067DA48  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8067DA4C  4B BA 1D 34 */	b setLifeZero__9dMeter2_cFv
lbl_8067DA50:
/* 8067DA50  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 8067DA54  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 8067DA58  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8067DA5C  4B CE 47 B8 */	b _restgpr_24
/* 8067DA60  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 8067DA64  7C 08 03 A6 */	mtlr r0
/* 8067DA68  38 21 00 D0 */	addi r1, r1, 0xd0
/* 8067DA6C  4E 80 00 20 */	blr 

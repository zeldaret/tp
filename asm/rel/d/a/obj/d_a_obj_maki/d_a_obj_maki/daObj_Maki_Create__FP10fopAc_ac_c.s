lbl_80C9058C:
/* 80C9058C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C90590  7C 08 02 A6 */	mflr r0
/* 80C90594  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C90598  39 61 00 20 */	addi r11, r1, 0x20
/* 80C9059C  4B 6D 1C 40 */	b _savegpr_29
/* 80C905A0  7C 7E 1B 78 */	mr r30, r3
/* 80C905A4  3C 80 80 C9 */	lis r4, lit_3928@ha
/* 80C905A8  3B E4 09 34 */	addi r31, r4, lit_3928@l
/* 80C905AC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C905B0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C905B4  40 82 00 A8 */	bne lbl_80C9065C
/* 80C905B8  7F C0 F3 79 */	or. r0, r30, r30
/* 80C905BC  41 82 00 94 */	beq lbl_80C90650
/* 80C905C0  7C 1D 03 78 */	mr r29, r0
/* 80C905C4  4B 38 85 A0 */	b __ct__10fopAc_ac_cFv
/* 80C905C8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80C905CC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80C905D0  90 1D 05 9C */	stw r0, 0x59c(r29)
/* 80C905D4  38 7D 05 A0 */	addi r3, r29, 0x5a0
/* 80C905D8  4B 3F 31 88 */	b __ct__10dCcD_GSttsFv
/* 80C905DC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80C905E0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80C905E4  90 7D 05 9C */	stw r3, 0x59c(r29)
/* 80C905E8  38 03 00 20 */	addi r0, r3, 0x20
/* 80C905EC  90 1D 05 A0 */	stw r0, 0x5a0(r29)
/* 80C905F0  3B BD 05 C0 */	addi r29, r29, 0x5c0
/* 80C905F4  7F A3 EB 78 */	mr r3, r29
/* 80C905F8  4B 3F 34 30 */	b __ct__12dCcD_GObjInfFv
/* 80C905FC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C90600  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C90604  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80C90608  3C 60 80 C9 */	lis r3, __vt__8cM3dGAab@ha
/* 80C9060C  38 03 0A 20 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C90610  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80C90614  3C 60 80 C9 */	lis r3, __vt__8cM3dGSph@ha
/* 80C90618  38 03 0A 14 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80C9061C  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80C90620  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80C90624  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80C90628  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80C9062C  38 03 00 58 */	addi r0, r3, 0x58
/* 80C90630  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80C90634  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80C90638  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80C9063C  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80C90640  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C90644  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80C90648  38 03 00 84 */	addi r0, r3, 0x84
/* 80C9064C  90 1D 01 34 */	stw r0, 0x134(r29)
lbl_80C90650:
/* 80C90650  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80C90654  60 00 00 08 */	ori r0, r0, 8
/* 80C90658  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80C9065C:
/* 80C9065C  38 7E 05 68 */	addi r3, r30, 0x568
/* 80C90660  3C 80 80 C9 */	lis r4, stringBase0@ha
/* 80C90664  38 84 09 60 */	addi r4, r4, stringBase0@l
/* 80C90668  4B 39 C8 54 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C9066C  7C 7D 1B 78 */	mr r29, r3
/* 80C90670  2C 1D 00 04 */	cmpwi r29, 4
/* 80C90674  40 82 01 7C */	bne lbl_80C907F0
/* 80C90678  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C9067C  98 1E 05 7C */	stb r0, 0x57c(r30)
/* 80C90680  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C90684  54 04 46 3E */	srwi r4, r0, 0x18
/* 80C90688  28 04 00 FF */	cmplwi r4, 0xff
/* 80C9068C  41 82 00 28 */	beq lbl_80C906B4
/* 80C90690  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C90694  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C90698  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C9069C  7C 05 07 74 */	extsb r5, r0
/* 80C906A0  4B 3A 4C C0 */	b isSwitch__10dSv_info_cCFii
/* 80C906A4  2C 03 00 00 */	cmpwi r3, 0
/* 80C906A8  41 82 00 0C */	beq lbl_80C906B4
/* 80C906AC  38 00 00 01 */	li r0, 1
/* 80C906B0  B0 1E 05 7E */	sth r0, 0x57e(r30)
lbl_80C906B4:
/* 80C906B4  7F C3 F3 78 */	mr r3, r30
/* 80C906B8  3C 80 80 C9 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 80C906BC  38 84 03 F0 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80C906C0  38 A0 10 20 */	li r5, 0x1020
/* 80C906C4  4B 38 9D EC */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C906C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C906CC  40 82 00 0C */	bne lbl_80C906D8
/* 80C906D0  38 60 00 05 */	li r3, 5
/* 80C906D4  48 00 01 20 */	b lbl_80C907F4
lbl_80C906D8:
/* 80C906D8  3C 60 80 C9 */	lis r3, data_80C90A50@ha
/* 80C906DC  8C 03 0A 50 */	lbzu r0, data_80C90A50@l(r3)
/* 80C906E0  28 00 00 00 */	cmplwi r0, 0
/* 80C906E4  40 82 00 20 */	bne lbl_80C90704
/* 80C906E8  38 00 00 01 */	li r0, 1
/* 80C906EC  98 1E 07 2C */	stb r0, 0x72c(r30)
/* 80C906F0  98 03 00 00 */	stb r0, 0(r3)
/* 80C906F4  38 00 FF FF */	li r0, -1
/* 80C906F8  3C 60 80 C9 */	lis r3, l_HIO@ha
/* 80C906FC  38 63 0A 60 */	addi r3, r3, l_HIO@l
/* 80C90700  98 03 00 04 */	stb r0, 4(r3)
lbl_80C90704:
/* 80C90704  7F C3 F3 78 */	mr r3, r30
/* 80C90708  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80C9070C  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 80C90710  FC 60 08 90 */	fmr f3, f1
/* 80C90714  4B 38 9E 14 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80C90718  7F C3 F3 78 */	mr r3, r30
/* 80C9071C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80C90720  FC 40 08 90 */	fmr f2, f1
/* 80C90724  FC 60 08 90 */	fmr f3, f1
/* 80C90728  4B 38 9E 10 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80C9072C  38 7E 05 84 */	addi r3, r30, 0x584
/* 80C90730  38 80 00 FF */	li r4, 0xff
/* 80C90734  38 A0 00 00 */	li r5, 0
/* 80C90738  7F C6 F3 78 */	mr r6, r30
/* 80C9073C  4B 3F 31 24 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C90740  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 80C90744  3C 80 80 C9 */	lis r4, cc_sph_src@ha
/* 80C90748  38 84 09 84 */	addi r4, r4, cc_sph_src@l
/* 80C9074C  4B 3F 42 E8 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80C90750  38 1E 05 84 */	addi r0, r30, 0x584
/* 80C90754  90 1E 06 04 */	stw r0, 0x604(r30)
/* 80C90758  88 1E 05 7C */	lbz r0, 0x57c(r30)
/* 80C9075C  28 00 00 01 */	cmplwi r0, 1
/* 80C90760  40 82 00 10 */	bne lbl_80C90770
/* 80C90764  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80C90768  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80C9076C  90 1E 05 E8 */	stw r0, 0x5e8(r30)
lbl_80C90770:
/* 80C90770  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C90774  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C90778  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80C9077C  3C 80 80 C9 */	lis r4, stringBase0@ha
/* 80C90780  38 84 09 60 */	addi r4, r4, stringBase0@l
/* 80C90784  38 84 00 09 */	addi r4, r4, 9
/* 80C90788  4B 6D 82 0C */	b strcmp
/* 80C9078C  2C 03 00 00 */	cmpwi r3, 0
/* 80C90790  41 82 00 58 */	beq lbl_80C907E8
/* 80C90794  A8 1E 05 7E */	lha r0, 0x57e(r30)
/* 80C90798  2C 00 00 01 */	cmpwi r0, 1
/* 80C9079C  41 82 00 4C */	beq lbl_80C907E8
/* 80C907A0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C907A4  D0 1E 07 0C */	stfs f0, 0x70c(r30)
/* 80C907A8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C907AC  D0 1E 07 10 */	stfs f0, 0x710(r30)
/* 80C907B0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C907B4  D0 1E 07 14 */	stfs f0, 0x714(r30)
/* 80C907B8  38 00 00 AF */	li r0, 0xaf
/* 80C907BC  B0 1E 07 18 */	sth r0, 0x718(r30)
/* 80C907C0  38 00 00 5D */	li r0, 0x5d
/* 80C907C4  B0 1E 07 1A */	sth r0, 0x71a(r30)
/* 80C907C8  38 00 00 00 */	li r0, 0
/* 80C907CC  B0 1E 07 1C */	sth r0, 0x71c(r30)
/* 80C907D0  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80C907D4  D0 1E 07 20 */	stfs f0, 0x720(r30)
/* 80C907D8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80C907DC  D0 1E 07 24 */	stfs f0, 0x724(r30)
/* 80C907E0  38 7E 07 0C */	addi r3, r30, 0x70c
/* 80C907E4  4B 51 6F AC */	b dKy_plight_set__FP15LIGHT_INFLUENCE
lbl_80C907E8:
/* 80C907E8  7F C3 F3 78 */	mr r3, r30
/* 80C907EC  4B FF F6 F1 */	bl daObj_Maki_Execute__FP14obj_maki_class
lbl_80C907F0:
/* 80C907F0  7F A3 EB 78 */	mr r3, r29
lbl_80C907F4:
/* 80C907F4  39 61 00 20 */	addi r11, r1, 0x20
/* 80C907F8  4B 6D 1A 30 */	b _restgpr_29
/* 80C907FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C90800  7C 08 03 A6 */	mtlr r0
/* 80C90804  38 21 00 20 */	addi r1, r1, 0x20
/* 80C90808  4E 80 00 20 */	blr 

lbl_80BD4764:
/* 80BD4764  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BD4768  7C 08 02 A6 */	mflr r0
/* 80BD476C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BD4770  39 61 00 30 */	addi r11, r1, 0x30
/* 80BD4774  4B 78 DA 68 */	b _savegpr_29
/* 80BD4778  7C 7E 1B 78 */	mr r30, r3
/* 80BD477C  3C 80 80 BD */	lis r4, ccCylSrc@ha
/* 80BD4780  3B E4 4D 04 */	addi r31, r4, ccCylSrc@l
/* 80BD4784  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BD4788  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BD478C  40 82 00 B4 */	bne lbl_80BD4840
/* 80BD4790  7F C0 F3 79 */	or. r0, r30, r30
/* 80BD4794  41 82 00 A0 */	beq lbl_80BD4834
/* 80BD4798  7C 1D 03 78 */	mr r29, r0
/* 80BD479C  4B 4A 3E 88 */	b __ct__16dBgS_MoveBgActorFv
/* 80BD47A0  3C 60 80 BD */	lis r3, __vt__15daObjCRVLH_DW_c@ha
/* 80BD47A4  38 03 4E 30 */	addi r0, r3, __vt__15daObjCRVLH_DW_c@l
/* 80BD47A8  90 1D 05 9C */	stw r0, 0x59c(r29)
/* 80BD47AC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80BD47B0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80BD47B4  90 1D 05 E8 */	stw r0, 0x5e8(r29)
/* 80BD47B8  38 7D 05 EC */	addi r3, r29, 0x5ec
/* 80BD47BC  4B 4A EF A4 */	b __ct__10dCcD_GSttsFv
/* 80BD47C0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80BD47C4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80BD47C8  90 7D 05 E8 */	stw r3, 0x5e8(r29)
/* 80BD47CC  38 03 00 20 */	addi r0, r3, 0x20
/* 80BD47D0  90 1D 05 EC */	stw r0, 0x5ec(r29)
/* 80BD47D4  3B BD 06 0C */	addi r29, r29, 0x60c
/* 80BD47D8  7F A3 EB 78 */	mr r3, r29
/* 80BD47DC  4B 4A F2 4C */	b __ct__12dCcD_GObjInfFv
/* 80BD47E0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80BD47E4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80BD47E8  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80BD47EC  3C 60 80 BD */	lis r3, __vt__8cM3dGAab@ha
/* 80BD47F0  38 03 4E 24 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80BD47F4  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80BD47F8  3C 60 80 BD */	lis r3, __vt__8cM3dGCyl@ha
/* 80BD47FC  38 03 4E 18 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80BD4800  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80BD4804  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80BD4808  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80BD480C  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80BD4810  38 03 00 58 */	addi r0, r3, 0x58
/* 80BD4814  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80BD4818  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80BD481C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80BD4820  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80BD4824  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BD4828  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80BD482C  38 03 00 84 */	addi r0, r3, 0x84
/* 80BD4830  90 1D 01 38 */	stw r0, 0x138(r29)
lbl_80BD4834:
/* 80BD4834  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80BD4838  60 00 00 08 */	ori r0, r0, 8
/* 80BD483C  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80BD4840:
/* 80BD4840  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 80BD4844  3C 80 80 BD */	lis r4, l_arcName@ha
/* 80BD4848  38 84 4D C4 */	addi r4, r4, l_arcName@l
/* 80BD484C  80 84 00 00 */	lwz r4, 0(r4)
/* 80BD4850  4B 45 86 6C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BD4854  7C 7D 1B 78 */	mr r29, r3
/* 80BD4858  2C 1D 00 04 */	cmpwi r29, 4
/* 80BD485C  40 82 01 74 */	bne lbl_80BD49D0
/* 80BD4860  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BD4864  98 1E 05 BC */	stb r0, 0x5bc(r30)
/* 80BD4868  88 9E 05 BC */	lbz r4, 0x5bc(r30)
/* 80BD486C  28 04 00 FF */	cmplwi r4, 0xff
/* 80BD4870  41 82 00 28 */	beq lbl_80BD4898
/* 80BD4874  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BD4878  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BD487C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BD4880  7C 05 07 74 */	extsb r5, r0
/* 80BD4884  4B 46 0A DC */	b isSwitch__10dSv_info_cCFii
/* 80BD4888  2C 03 00 00 */	cmpwi r3, 0
/* 80BD488C  41 82 00 0C */	beq lbl_80BD4898
/* 80BD4890  38 60 00 05 */	li r3, 5
/* 80BD4894  48 00 01 40 */	b lbl_80BD49D4
lbl_80BD4898:
/* 80BD4898  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80BD489C  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80BD48A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BD48A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BD48A8  3C 63 00 02 */	addis r3, r3, 2
/* 80BD48AC  3C 80 80 BD */	lis r4, l_arcName@ha
/* 80BD48B0  38 84 4D C4 */	addi r4, r4, l_arcName@l
/* 80BD48B4  80 84 00 00 */	lwz r4, 0(r4)
/* 80BD48B8  3C A0 80 BD */	lis r5, stringBase0@ha
/* 80BD48BC  38 A5 4D 88 */	addi r5, r5, stringBase0@l
/* 80BD48C0  38 A5 00 29 */	addi r5, r5, 0x29
/* 80BD48C4  38 63 C2 F8 */	addi r3, r3, -15624
/* 80BD48C8  4B 46 7D F0 */	b getObjectResName2Index__14dRes_control_cFPCcPCc
/* 80BD48CC  7C 65 1B 78 */	mr r5, r3
/* 80BD48D0  7F C3 F3 78 */	mr r3, r30
/* 80BD48D4  3C 80 80 BD */	lis r4, l_arcName@ha
/* 80BD48D8  38 84 4D C4 */	addi r4, r4, l_arcName@l
/* 80BD48DC  80 84 00 00 */	lwz r4, 0(r4)
/* 80BD48E0  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80BD48E4  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80BD48E8  38 E0 0B 40 */	li r7, 0xb40
/* 80BD48EC  39 00 00 00 */	li r8, 0
/* 80BD48F0  4B 4A 3E CC */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80BD48F4  7C 7D 1B 78 */	mr r29, r3
/* 80BD48F8  2C 1D 00 05 */	cmpwi r29, 5
/* 80BD48FC  40 82 00 08 */	bne lbl_80BD4904
/* 80BD4900  48 00 00 D4 */	b lbl_80BD49D4
lbl_80BD4904:
/* 80BD4904  7F C3 F3 78 */	mr r3, r30
/* 80BD4908  4B FF F8 31 */	bl initCcCylinder__15daObjCRVLH_DW_cFv
/* 80BD490C  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 80BD4910  38 03 00 24 */	addi r0, r3, 0x24
/* 80BD4914  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80BD4918  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80BD491C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80BD4920  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BD4924  EC 21 00 2A */	fadds f1, f1, f0
/* 80BD4928  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BD492C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BD4930  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80BD4934  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80BD4938  38 61 00 10 */	addi r3, r1, 0x10
/* 80BD493C  4B 44 93 80 */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80BD4940  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BD4944  41 82 00 18 */	beq lbl_80BD495C
/* 80BD4948  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 80BD494C  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 80BD4950  D0 1E 05 B4 */	stfs f0, 0x5b4(r30)
/* 80BD4954  C0 1E 05 B4 */	lfs f0, 0x5b4(r30)
/* 80BD4958  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
lbl_80BD495C:
/* 80BD495C  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80BD4960  D0 1E 05 20 */	stfs f0, 0x520(r30)
/* 80BD4964  7F C3 F3 78 */	mr r3, r30
/* 80BD4968  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80BD496C  FC 40 08 90 */	fmr f2, f1
/* 80BD4970  FC 60 08 90 */	fmr f3, f1
/* 80BD4974  C0 9F 00 60 */	lfs f4, 0x60(r31)
/* 80BD4978  C0 BF 00 64 */	lfs f5, 0x64(r31)
/* 80BD497C  FC C0 20 90 */	fmr f6, f4
/* 80BD4980  4B 44 5B C8 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80BD4984  7F C3 F3 78 */	mr r3, r30
/* 80BD4988  4B FF FD 45 */	bl daObjCRVLH_DW_Execute__FP15daObjCRVLH_DW_c
/* 80BD498C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BD4990  7C 07 07 74 */	extsb r7, r0
/* 80BD4994  38 00 00 00 */	li r0, 0
/* 80BD4998  90 01 00 08 */	stw r0, 8(r1)
/* 80BD499C  38 60 00 73 */	li r3, 0x73
/* 80BD49A0  28 1E 00 00 */	cmplwi r30, 0
/* 80BD49A4  41 82 00 0C */	beq lbl_80BD49B0
/* 80BD49A8  80 9E 00 04 */	lwz r4, 4(r30)
/* 80BD49AC  48 00 00 08 */	b lbl_80BD49B4
lbl_80BD49B0:
/* 80BD49B0  38 80 FF FF */	li r4, -1
lbl_80BD49B4:
/* 80BD49B4  38 A0 00 01 */	li r5, 1
/* 80BD49B8  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80BD49BC  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80BD49C0  39 20 00 00 */	li r9, 0
/* 80BD49C4  39 40 FF FF */	li r10, -1
/* 80BD49C8  4B 44 55 28 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80BD49CC  90 7E 05 A0 */	stw r3, 0x5a0(r30)
lbl_80BD49D0:
/* 80BD49D0  7F A3 EB 78 */	mr r3, r29
lbl_80BD49D4:
/* 80BD49D4  39 61 00 30 */	addi r11, r1, 0x30
/* 80BD49D8  4B 78 D8 50 */	b _restgpr_29
/* 80BD49DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BD49E0  7C 08 03 A6 */	mtlr r0
/* 80BD49E4  38 21 00 30 */	addi r1, r1, 0x30
/* 80BD49E8  4E 80 00 20 */	blr 

lbl_805993E8:
/* 805993E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805993EC  7C 08 02 A6 */	mflr r0
/* 805993F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805993F4  39 61 00 20 */	addi r11, r1, 0x20
/* 805993F8  4B DC 8D E0 */	b _savegpr_28
/* 805993FC  7C 7D 1B 78 */	mr r29, r3
/* 80599400  3C 80 80 5A */	lis r4, m__19daObj_Stick_Param_c@ha
/* 80599404  3B E4 9E 3C */	addi r31, r4, m__19daObj_Stick_Param_c@l
/* 80599408  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8059940C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80599410  40 82 00 F4 */	bne lbl_80599504
/* 80599414  7F A0 EB 79 */	or. r0, r29, r29
/* 80599418  41 82 00 E0 */	beq lbl_805994F8
/* 8059941C  7C 1E 03 78 */	mr r30, r0
/* 80599420  4B A7 F7 44 */	b __ct__10fopAc_ac_cFv
/* 80599424  3C 60 80 5A */	lis r3, __vt__13daObj_Stick_c@ha
/* 80599428  38 03 9F 64 */	addi r0, r3, __vt__13daObj_Stick_c@l
/* 8059942C  90 1E 09 4C */	stw r0, 0x94c(r30)
/* 80599430  3B 9E 05 78 */	addi r28, r30, 0x578
/* 80599434  7F 83 E3 78 */	mr r3, r28
/* 80599438  4B AD CC 68 */	b __ct__9dBgS_AcchFv
/* 8059943C  3C 60 80 5A */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80599440  38 63 9F 04 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80599444  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80599448  38 03 00 0C */	addi r0, r3, 0xc
/* 8059944C  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80599450  38 03 00 18 */	addi r0, r3, 0x18
/* 80599454  90 1C 00 24 */	stw r0, 0x24(r28)
/* 80599458  38 7C 00 14 */	addi r3, r28, 0x14
/* 8059945C  4B AD FA 0C */	b SetObj__16dBgS_PolyPassChkFv
/* 80599460  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80599464  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80599468  90 1E 07 68 */	stw r0, 0x768(r30)
/* 8059946C  38 7E 07 6C */	addi r3, r30, 0x76c
/* 80599470  4B AE A2 F0 */	b __ct__10dCcD_GSttsFv
/* 80599474  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80599478  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 8059947C  90 7E 07 68 */	stw r3, 0x768(r30)
/* 80599480  38 03 00 20 */	addi r0, r3, 0x20
/* 80599484  90 1E 07 6C */	stw r0, 0x76c(r30)
/* 80599488  38 7E 07 8C */	addi r3, r30, 0x78c
/* 8059948C  4B AD CA 20 */	b __ct__12dBgS_AcchCirFv
/* 80599490  38 7E 07 CC */	addi r3, r30, 0x7cc
/* 80599494  4B CC E7 88 */	b __ct__11cBgS_GndChkFv
/* 80599498  3B 9E 08 08 */	addi r28, r30, 0x808
/* 8059949C  7F 83 E3 78 */	mr r3, r28
/* 805994A0  4B AE A5 88 */	b __ct__12dCcD_GObjInfFv
/* 805994A4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 805994A8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 805994AC  90 1C 01 20 */	stw r0, 0x120(r28)
/* 805994B0  3C 60 80 5A */	lis r3, __vt__8cM3dGAab@ha
/* 805994B4  38 03 9F 4C */	addi r0, r3, __vt__8cM3dGAab@l
/* 805994B8  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 805994BC  3C 60 80 5A */	lis r3, __vt__8cM3dGSph@ha
/* 805994C0  38 03 9F 58 */	addi r0, r3, __vt__8cM3dGSph@l
/* 805994C4  90 1C 01 34 */	stw r0, 0x134(r28)
/* 805994C8  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 805994CC  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 805994D0  90 7C 01 20 */	stw r3, 0x120(r28)
/* 805994D4  38 03 00 58 */	addi r0, r3, 0x58
/* 805994D8  90 1C 01 34 */	stw r0, 0x134(r28)
/* 805994DC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 805994E0  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 805994E4  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 805994E8  38 03 00 2C */	addi r0, r3, 0x2c
/* 805994EC  90 1C 01 20 */	stw r0, 0x120(r28)
/* 805994F0  38 03 00 84 */	addi r0, r3, 0x84
/* 805994F4  90 1C 01 34 */	stw r0, 0x134(r28)
lbl_805994F8:
/* 805994F8  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 805994FC  60 00 00 08 */	ori r0, r0, 8
/* 80599500  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80599504:
/* 80599504  38 00 00 00 */	li r0, 0
/* 80599508  98 1D 09 48 */	stb r0, 0x948(r29)
/* 8059950C  7F A3 EB 78 */	mr r3, r29
/* 80599510  48 00 06 4D */	bl getResName__13daObj_Stick_cFv
/* 80599514  7C 64 1B 78 */	mr r4, r3
/* 80599518  38 7D 05 6C */	addi r3, r29, 0x56c
/* 8059951C  4B A9 39 A0 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80599520  7C 7E 1B 78 */	mr r30, r3
/* 80599524  2C 1E 00 04 */	cmpwi r30, 4
/* 80599528  40 82 01 78 */	bne lbl_805996A0
/* 8059952C  7F A3 EB 78 */	mr r3, r29
/* 80599530  48 00 06 3D */	bl isDelete__13daObj_Stick_cFv
/* 80599534  2C 03 00 00 */	cmpwi r3, 0
/* 80599538  41 82 00 0C */	beq lbl_80599544
/* 8059953C  38 60 00 05 */	li r3, 5
/* 80599540  48 00 01 64 */	b lbl_805996A4
lbl_80599544:
/* 80599544  7F A3 EB 78 */	mr r3, r29
/* 80599548  3C 80 80 5A */	lis r4, createHeapCallBack__13daObj_Stick_cFP10fopAc_ac_c@ha
/* 8059954C  38 84 9B 3C */	addi r4, r4, createHeapCallBack__13daObj_Stick_cFP10fopAc_ac_c@l
/* 80599550  38 A0 08 10 */	li r5, 0x810
/* 80599554  4B A8 0F 5C */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80599558  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8059955C  40 82 00 0C */	bne lbl_80599568
/* 80599560  38 60 00 05 */	li r3, 5
/* 80599564  48 00 01 40 */	b lbl_805996A4
lbl_80599568:
/* 80599568  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 8059956C  38 03 00 24 */	addi r0, r3, 0x24
/* 80599570  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80599574  7F A3 EB 78 */	mr r3, r29
/* 80599578  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8059957C  FC 40 08 90 */	fmr f2, f1
/* 80599580  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 80599584  C0 9F 00 18 */	lfs f4, 0x18(r31)
/* 80599588  FC A0 20 90 */	fmr f5, f4
/* 8059958C  C0 DF 00 1C */	lfs f6, 0x1c(r31)
/* 80599590  4B A8 0F B8 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80599594  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80599598  90 01 00 08 */	stw r0, 8(r1)
/* 8059959C  38 7D 05 78 */	addi r3, r29, 0x578
/* 805995A0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805995A4  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 805995A8  7F A6 EB 78 */	mr r6, r29
/* 805995AC  38 E0 00 01 */	li r7, 1
/* 805995B0  39 1D 07 8C */	addi r8, r29, 0x78c
/* 805995B4  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 805995B8  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 805995BC  4B AD CC 8C */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 805995C0  38 7D 07 50 */	addi r3, r29, 0x750
/* 805995C4  38 80 00 FF */	li r4, 0xff
/* 805995C8  38 A0 00 00 */	li r5, 0
/* 805995CC  7F A6 EB 78 */	mr r6, r29
/* 805995D0  4B AE A2 90 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 805995D4  38 7D 08 08 */	addi r3, r29, 0x808
/* 805995D8  3C 80 80 5A */	lis r4, mCcDSph__13daObj_Stick_c@ha
/* 805995DC  38 84 9E 70 */	addi r4, r4, mCcDSph__13daObj_Stick_c@l
/* 805995E0  4B AE B4 54 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 805995E4  38 1D 07 50 */	addi r0, r29, 0x750
/* 805995E8  90 1D 08 4C */	stw r0, 0x84c(r29)
/* 805995EC  38 7D 05 78 */	addi r3, r29, 0x578
/* 805995F0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 805995F4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 805995F8  38 84 0F 38 */	addi r4, r4, 0xf38
/* 805995FC  4B AD D4 B0 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80599600  80 1D 06 54 */	lwz r0, 0x654(r29)
/* 80599604  90 1D 07 CC */	stw r0, 0x7cc(r29)
/* 80599608  80 1D 06 58 */	lwz r0, 0x658(r29)
/* 8059960C  90 1D 07 D0 */	stw r0, 0x7d0(r29)
/* 80599610  80 1D 06 5C */	lwz r0, 0x65c(r29)
/* 80599614  90 1D 07 D4 */	stw r0, 0x7d4(r29)
/* 80599618  88 1D 06 60 */	lbz r0, 0x660(r29)
/* 8059961C  98 1D 07 D8 */	stb r0, 0x7d8(r29)
/* 80599620  A0 1D 06 68 */	lhz r0, 0x668(r29)
/* 80599624  B0 1D 07 E0 */	sth r0, 0x7e0(r29)
/* 80599628  A0 1D 06 6A */	lhz r0, 0x66a(r29)
/* 8059962C  B0 1D 07 E2 */	sth r0, 0x7e2(r29)
/* 80599630  80 1D 06 6C */	lwz r0, 0x66c(r29)
/* 80599634  90 1D 07 E4 */	stw r0, 0x7e4(r29)
/* 80599638  80 1D 06 70 */	lwz r0, 0x670(r29)
/* 8059963C  90 1D 07 E8 */	stw r0, 0x7e8(r29)
/* 80599640  C0 1D 06 78 */	lfs f0, 0x678(r29)
/* 80599644  D0 1D 07 F0 */	stfs f0, 0x7f0(r29)
/* 80599648  C0 1D 06 7C */	lfs f0, 0x67c(r29)
/* 8059964C  D0 1D 07 F4 */	stfs f0, 0x7f4(r29)
/* 80599650  C0 1D 06 80 */	lfs f0, 0x680(r29)
/* 80599654  D0 1D 07 F8 */	stfs f0, 0x7f8(r29)
/* 80599658  80 1D 06 84 */	lwz r0, 0x684(r29)
/* 8059965C  90 1D 07 FC */	stw r0, 0x7fc(r29)
/* 80599660  C0 1D 06 88 */	lfs f0, 0x688(r29)
/* 80599664  D0 1D 08 00 */	stfs f0, 0x800(r29)
/* 80599668  80 1D 06 8C */	lwz r0, 0x68c(r29)
/* 8059966C  90 1D 08 04 */	stw r0, 0x804(r29)
/* 80599670  C0 1D 06 10 */	lfs f0, 0x610(r29)
/* 80599674  D0 1D 09 40 */	stfs f0, 0x940(r29)
/* 80599678  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8059967C  C0 1D 09 40 */	lfs f0, 0x940(r29)
/* 80599680  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80599684  41 82 00 14 */	beq lbl_80599698
/* 80599688  7F A3 EB 78 */	mr r3, r29
/* 8059968C  48 00 05 01 */	bl setEnvTevColor__13daObj_Stick_cFv
/* 80599690  7F A3 EB 78 */	mr r3, r29
/* 80599694  48 00 05 55 */	bl setRoomNo__13daObj_Stick_cFv
lbl_80599698:
/* 80599698  7F A3 EB 78 */	mr r3, r29
/* 8059969C  48 00 02 99 */	bl Execute__13daObj_Stick_cFv
lbl_805996A0:
/* 805996A0  7F C3 F3 78 */	mr r3, r30
lbl_805996A4:
/* 805996A4  39 61 00 20 */	addi r11, r1, 0x20
/* 805996A8  4B DC 8B 7C */	b _restgpr_28
/* 805996AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805996B0  7C 08 03 A6 */	mtlr r0
/* 805996B4  38 21 00 20 */	addi r1, r1, 0x20
/* 805996B8  4E 80 00 20 */	blr 

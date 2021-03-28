lbl_808544D8:
/* 808544D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 808544DC  7C 08 02 A6 */	mflr r0
/* 808544E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 808544E4  39 61 00 20 */	addi r11, r1, 0x20
/* 808544E8  4B B0 DC F0 */	b _savegpr_28
/* 808544EC  7C 7D 1B 78 */	mr r29, r3
/* 808544F0  3C 80 80 85 */	lis r4, lit_3929@ha
/* 808544F4  3B E4 4B 04 */	addi r31, r4, lit_3929@l
/* 808544F8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 808544FC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80854500  40 82 01 10 */	bne lbl_80854610
/* 80854504  7F A0 EB 79 */	or. r0, r29, r29
/* 80854508  41 82 00 FC */	beq lbl_80854604
/* 8085450C  7C 1E 03 78 */	mr r30, r0
/* 80854510  4B 7C 46 54 */	b __ct__10fopAc_ac_cFv
/* 80854514  38 7E 05 74 */	addi r3, r30, 0x574
/* 80854518  4B A6 CA 4C */	b __ct__15Z2CreatureEnemyFv
/* 8085451C  38 7E 06 50 */	addi r3, r30, 0x650
/* 80854520  3C 80 80 85 */	lis r4, __ct__4cXyzFv@ha
/* 80854524  38 84 4A 28 */	addi r4, r4, __ct__4cXyzFv@l
/* 80854528  3C A0 80 85 */	lis r5, __dt__4cXyzFv@ha
/* 8085452C  38 A5 99 24 */	addi r5, r5, __dt__4cXyzFv@l
/* 80854530  38 C0 00 0C */	li r6, 0xc
/* 80854534  38 E0 00 03 */	li r7, 3
/* 80854538  4B B0 D8 28 */	b __construct_array
/* 8085453C  38 7E 07 78 */	addi r3, r30, 0x778
/* 80854540  4B 82 19 6C */	b __ct__12dBgS_AcchCirFv
/* 80854544  3B 9E 07 B8 */	addi r28, r30, 0x7b8
/* 80854548  7F 83 E3 78 */	mr r3, r28
/* 8085454C  4B 82 1B 54 */	b __ct__9dBgS_AcchFv
/* 80854550  3C 60 80 85 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80854554  38 63 4F 24 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80854558  90 7C 00 10 */	stw r3, 0x10(r28)
/* 8085455C  38 03 00 0C */	addi r0, r3, 0xc
/* 80854560  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80854564  38 03 00 18 */	addi r0, r3, 0x18
/* 80854568  90 1C 00 24 */	stw r0, 0x24(r28)
/* 8085456C  38 7C 00 14 */	addi r3, r28, 0x14
/* 80854570  4B 82 48 F8 */	b SetObj__16dBgS_PolyPassChkFv
/* 80854574  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80854578  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8085457C  90 1E 09 A8 */	stw r0, 0x9a8(r30)
/* 80854580  38 7E 09 AC */	addi r3, r30, 0x9ac
/* 80854584  4B 82 F1 DC */	b __ct__10dCcD_GSttsFv
/* 80854588  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8085458C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80854590  90 7E 09 A8 */	stw r3, 0x9a8(r30)
/* 80854594  38 03 00 20 */	addi r0, r3, 0x20
/* 80854598  90 1E 09 AC */	stw r0, 0x9ac(r30)
/* 8085459C  3B 9E 09 CC */	addi r28, r30, 0x9cc
/* 808545A0  7F 83 E3 78 */	mr r3, r28
/* 808545A4  4B 82 F4 84 */	b __ct__12dCcD_GObjInfFv
/* 808545A8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 808545AC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 808545B0  90 1C 01 20 */	stw r0, 0x120(r28)
/* 808545B4  3C 60 80 85 */	lis r3, __vt__8cM3dGAab@ha
/* 808545B8  38 03 4F 18 */	addi r0, r3, __vt__8cM3dGAab@l
/* 808545BC  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 808545C0  3C 60 80 85 */	lis r3, __vt__8cM3dGSph@ha
/* 808545C4  38 03 4F 0C */	addi r0, r3, __vt__8cM3dGSph@l
/* 808545C8  90 1C 01 34 */	stw r0, 0x134(r28)
/* 808545CC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 808545D0  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 808545D4  90 7C 01 20 */	stw r3, 0x120(r28)
/* 808545D8  38 03 00 58 */	addi r0, r3, 0x58
/* 808545DC  90 1C 01 34 */	stw r0, 0x134(r28)
/* 808545E0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 808545E4  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 808545E8  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 808545EC  38 03 00 2C */	addi r0, r3, 0x2c
/* 808545F0  90 1C 01 20 */	stw r0, 0x120(r28)
/* 808545F4  38 03 00 84 */	addi r0, r3, 0x84
/* 808545F8  90 1C 01 34 */	stw r0, 0x134(r28)
/* 808545FC  38 7E 0B 58 */	addi r3, r30, 0xb58
/* 80854600  4B 9F 59 00 */	b __ct__10dMsgFlow_cFv
lbl_80854604:
/* 80854604  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80854608  60 00 00 08 */	ori r0, r0, 8
/* 8085460C  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80854610:
/* 80854610  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80854614  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80854618  28 03 00 FF */	cmplwi r3, 0xff
/* 8085461C  41 82 00 28 */	beq lbl_80854644
/* 80854620  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80854624  7C 04 07 74 */	extsb r4, r0
/* 80854628  4B 7F D1 C4 */	b dPath_GetRoomPath__Fii
/* 8085462C  90 7D 07 68 */	stw r3, 0x768(r29)
/* 80854630  80 1D 07 68 */	lwz r0, 0x768(r29)
/* 80854634  28 00 00 00 */	cmplwi r0, 0
/* 80854638  40 82 00 0C */	bne lbl_80854644
/* 8085463C  38 60 00 05 */	li r3, 5
/* 80854640  48 00 02 D0 */	b lbl_80854910
lbl_80854644:
/* 80854644  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80854648  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 8085464C  98 1D 06 E7 */	stb r0, 0x6e7(r29)
/* 80854650  88 1D 06 E7 */	lbz r0, 0x6e7(r29)
/* 80854654  28 00 00 FF */	cmplwi r0, 0xff
/* 80854658  40 82 00 0C */	bne lbl_80854664
/* 8085465C  38 00 00 00 */	li r0, 0
/* 80854660  98 1D 06 E7 */	stb r0, 0x6e7(r29)
lbl_80854664:
/* 80854664  88 1D 06 E7 */	lbz r0, 0x6e7(r29)
/* 80854668  28 00 00 00 */	cmplwi r0, 0
/* 8085466C  40 82 00 20 */	bne lbl_8085468C
/* 80854670  3C 60 80 85 */	lis r3, stringBase0@ha
/* 80854674  38 63 4D 14 */	addi r3, r3, stringBase0@l
/* 80854678  38 03 00 08 */	addi r0, r3, 8
/* 8085467C  90 1D 07 5C */	stw r0, 0x75c(r29)
/* 80854680  38 03 00 0D */	addi r0, r3, 0xd
/* 80854684  90 1D 07 60 */	stw r0, 0x760(r29)
/* 80854688  48 00 00 1C */	b lbl_808546A4
lbl_8085468C:
/* 8085468C  3C 60 80 85 */	lis r3, stringBase0@ha
/* 80854690  38 63 4D 14 */	addi r3, r3, stringBase0@l
/* 80854694  38 03 00 17 */	addi r0, r3, 0x17
/* 80854698  90 1D 07 5C */	stw r0, 0x75c(r29)
/* 8085469C  38 03 00 1C */	addi r0, r3, 0x1c
/* 808546A0  90 1D 07 60 */	stw r0, 0x760(r29)
lbl_808546A4:
/* 808546A4  38 7D 05 68 */	addi r3, r29, 0x568
/* 808546A8  80 9D 07 5C */	lwz r4, 0x75c(r29)
/* 808546AC  4B 7D 88 10 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 808546B0  7C 7E 1B 78 */	mr r30, r3
/* 808546B4  2C 1E 00 04 */	cmpwi r30, 4
/* 808546B8  40 82 02 54 */	bne lbl_8085490C
/* 808546BC  7F A3 EB 78 */	mr r3, r29
/* 808546C0  3C 80 80 85 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 808546C4  38 84 44 B8 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 808546C8  38 A0 23 A0 */	li r5, 0x23a0
/* 808546CC  4B 7C 5D E4 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 808546D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 808546D4  40 82 00 0C */	bne lbl_808546E0
/* 808546D8  38 60 00 05 */	li r3, 5
/* 808546DC  48 00 02 34 */	b lbl_80854910
lbl_808546E0:
/* 808546E0  3C 60 80 85 */	lis r3, data_80854F68@ha
/* 808546E4  8C 03 4F 68 */	lbzu r0, data_80854F68@l(r3)
/* 808546E8  28 00 00 00 */	cmplwi r0, 0
/* 808546EC  40 82 00 20 */	bne lbl_8085470C
/* 808546F0  38 00 00 01 */	li r0, 1
/* 808546F4  98 1D 0B 54 */	stb r0, 0xb54(r29)
/* 808546F8  98 03 00 00 */	stb r0, 0(r3)
/* 808546FC  38 00 FF FF */	li r0, -1
/* 80854700  3C 60 80 85 */	lis r3, l_HIO@ha
/* 80854704  38 63 4F 78 */	addi r3, r3, l_HIO@l
/* 80854708  98 03 00 04 */	stb r0, 4(r3)
lbl_8085470C:
/* 8085470C  38 00 00 00 */	li r0, 0
/* 80854710  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80854714  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 80854718  80 63 00 04 */	lwz r3, 4(r3)
/* 8085471C  38 03 00 24 */	addi r0, r3, 0x24
/* 80854720  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80854724  7F A3 EB 78 */	mr r3, r29
/* 80854728  C0 3F 01 4C */	lfs f1, 0x14c(r31)
/* 8085472C  FC 40 08 90 */	fmr f2, f1
/* 80854730  FC 60 08 90 */	fmr f3, f1
/* 80854734  4B 7C 5D F4 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80854738  7F A3 EB 78 */	mr r3, r29
/* 8085473C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80854740  FC 40 08 90 */	fmr f2, f1
/* 80854744  FC 60 08 90 */	fmr f3, f1
/* 80854748  4B 7C 5D F0 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 8085474C  38 00 00 00 */	li r0, 0
/* 80854750  90 01 00 08 */	stw r0, 8(r1)
/* 80854754  38 7D 07 B8 */	addi r3, r29, 0x7b8
/* 80854758  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8085475C  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80854760  7F A6 EB 78 */	mr r6, r29
/* 80854764  38 E0 00 01 */	li r7, 1
/* 80854768  39 1D 07 78 */	addi r8, r29, 0x778
/* 8085476C  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80854770  39 40 00 00 */	li r10, 0
/* 80854774  4B 82 1A D4 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80854778  38 7D 07 78 */	addi r3, r29, 0x778
/* 8085477C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80854780  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80854784  4B 82 17 D4 */	b SetWall__12dBgS_AcchCirFff
/* 80854788  80 1D 07 E4 */	lwz r0, 0x7e4(r29)
/* 8085478C  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 80854790  90 1D 07 E4 */	stw r0, 0x7e4(r29)
/* 80854794  C0 1F 01 6C */	lfs f0, 0x16c(r31)
/* 80854798  D0 1D 08 80 */	stfs f0, 0x880(r29)
/* 8085479C  38 00 00 64 */	li r0, 0x64
/* 808547A0  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 808547A4  B0 1D 05 60 */	sth r0, 0x560(r29)
/* 808547A8  38 7D 09 90 */	addi r3, r29, 0x990
/* 808547AC  38 80 00 FF */	li r4, 0xff
/* 808547B0  38 A0 00 00 */	li r5, 0
/* 808547B4  7F A6 EB 78 */	mr r6, r29
/* 808547B8  4B 82 F0 A8 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 808547BC  38 7D 09 CC */	addi r3, r29, 0x9cc
/* 808547C0  3C 80 80 85 */	lis r4, data_80854D4C@ha
/* 808547C4  38 84 4D 4C */	addi r4, r4, data_80854D4C@l
/* 808547C8  4B 83 02 6C */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 808547CC  38 1D 09 90 */	addi r0, r29, 0x990
/* 808547D0  90 1D 0A 10 */	stw r0, 0xa10(r29)
/* 808547D4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 808547D8  D0 1D 06 74 */	stfs f0, 0x674(r29)
/* 808547DC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 808547E0  D0 1D 06 78 */	stfs f0, 0x678(r29)
/* 808547E4  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 808547E8  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 808547EC  38 7D 05 74 */	addi r3, r29, 0x574
/* 808547F0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 808547F4  38 BD 05 38 */	addi r5, r29, 0x538
/* 808547F8  38 C0 00 03 */	li r6, 3
/* 808547FC  38 E0 00 01 */	li r7, 1
/* 80854800  4B A6 C8 94 */	b init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 80854804  38 1D 05 74 */	addi r0, r29, 0x574
/* 80854808  90 1D 0B 0C */	stw r0, 0xb0c(r29)
/* 8085480C  C0 1F 01 28 */	lfs f0, 0x128(r31)
/* 80854810  D0 1D 05 34 */	stfs f0, 0x534(r29)
/* 80854814  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80854818  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 8085481C  38 00 00 01 */	li r0, 1
/* 80854820  98 1D 07 72 */	stb r0, 0x772(r29)
/* 80854824  7F A3 EB 78 */	mr r3, r29
/* 80854828  38 80 00 04 */	li r4, 4
/* 8085482C  38 A0 00 00 */	li r5, 0
/* 80854830  4B FF 62 69 */	bl setActionMode__8daKago_cFii
/* 80854834  38 00 00 03 */	li r0, 3
/* 80854838  90 1D 07 3C */	stw r0, 0x73c(r29)
/* 8085483C  3C 60 80 85 */	lis r3, stringBase0@ha
/* 80854840  38 63 4D 14 */	addi r3, r3, stringBase0@l
/* 80854844  38 63 00 28 */	addi r3, r3, 0x28
/* 80854848  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8085484C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80854850  3B E4 4E 00 */	addi r31, r4, 0x4e00
/* 80854854  7F E4 FB 78 */	mr r4, r31
/* 80854858  4B B1 41 3C */	b strcmp
/* 8085485C  2C 03 00 00 */	cmpwi r3, 0
/* 80854860  40 82 00 24 */	bne lbl_80854884
/* 80854864  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80854868  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8085486C  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80854870  7C 00 07 75 */	extsb. r0, r0
/* 80854874  40 82 00 80 */	bne lbl_808548F4
/* 80854878  38 00 00 00 */	li r0, 0
/* 8085487C  90 1D 07 3C */	stw r0, 0x73c(r29)
/* 80854880  48 00 00 74 */	b lbl_808548F4
lbl_80854884:
/* 80854884  3C 60 80 85 */	lis r3, stringBase0@ha
/* 80854888  38 63 4D 14 */	addi r3, r3, stringBase0@l
/* 8085488C  7F E4 FB 78 */	mr r4, r31
/* 80854890  4B B1 41 04 */	b strcmp
/* 80854894  2C 03 00 00 */	cmpwi r3, 0
/* 80854898  40 82 00 24 */	bne lbl_808548BC
/* 8085489C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 808548A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 808548A4  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 808548A8  2C 00 00 01 */	cmpwi r0, 1
/* 808548AC  40 82 00 48 */	bne lbl_808548F4
/* 808548B0  38 00 00 01 */	li r0, 1
/* 808548B4  90 1D 07 3C */	stw r0, 0x73c(r29)
/* 808548B8  48 00 00 3C */	b lbl_808548F4
lbl_808548BC:
/* 808548BC  3C 60 80 85 */	lis r3, stringBase0@ha
/* 808548C0  38 63 4D 14 */	addi r3, r3, stringBase0@l
/* 808548C4  38 63 00 30 */	addi r3, r3, 0x30
/* 808548C8  7F E4 FB 78 */	mr r4, r31
/* 808548CC  4B B1 40 C8 */	b strcmp
/* 808548D0  2C 03 00 00 */	cmpwi r3, 0
/* 808548D4  40 82 00 20 */	bne lbl_808548F4
/* 808548D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 808548DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 808548E0  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 808548E4  7C 00 07 75 */	extsb. r0, r0
/* 808548E8  40 82 00 0C */	bne lbl_808548F4
/* 808548EC  38 00 00 02 */	li r0, 2
/* 808548F0  90 1D 07 3C */	stw r0, 0x73c(r29)
lbl_808548F4:
/* 808548F4  38 00 FF FF */	li r0, -1
/* 808548F8  90 1D 06 1C */	stw r0, 0x61c(r29)
/* 808548FC  7F A3 EB 78 */	mr r3, r29
/* 80854900  4B FF F5 F1 */	bl mtx_set__8daKago_cFv
/* 80854904  7F A3 EB 78 */	mr r3, r29
/* 80854908  4B FF F8 61 */	bl daKago_Execute__FP8daKago_c
lbl_8085490C:
/* 8085490C  7F C3 F3 78 */	mr r3, r30
lbl_80854910:
/* 80854910  39 61 00 20 */	addi r11, r1, 0x20
/* 80854914  4B B0 D9 10 */	b _restgpr_28
/* 80854918  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8085491C  7C 08 03 A6 */	mtlr r0
/* 80854920  38 21 00 20 */	addi r1, r1, 0x20
/* 80854924  4E 80 00 20 */	blr 

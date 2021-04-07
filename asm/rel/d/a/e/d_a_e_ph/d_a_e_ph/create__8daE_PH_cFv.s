lbl_80741428:
/* 80741428  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8074142C  7C 08 02 A6 */	mflr r0
/* 80741430  90 01 00 54 */	stw r0, 0x54(r1)
/* 80741434  39 61 00 50 */	addi r11, r1, 0x50
/* 80741438  4B C2 0D A1 */	bl _savegpr_28
/* 8074143C  7C 7D 1B 78 */	mr r29, r3
/* 80741440  3C 80 80 74 */	lis r4, lit_3767@ha /* 0x80741BF4@ha */
/* 80741444  3B E4 1B F4 */	addi r31, r4, lit_3767@l /* 0x80741BF4@l */
/* 80741448  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8074144C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80741450  40 82 00 E8 */	bne lbl_80741538
/* 80741454  7F A0 EB 79 */	or. r0, r29, r29
/* 80741458  41 82 00 D4 */	beq lbl_8074152C
/* 8074145C  7C 1C 03 78 */	mr r28, r0
/* 80741460  4B 8D 77 05 */	bl __ct__10fopAc_ac_cFv
/* 80741464  38 7C 06 74 */	addi r3, r28, 0x674
/* 80741468  4B B7 FA FD */	bl __ct__15Z2CreatureEnemyFv
/* 8074146C  38 7C 07 20 */	addi r3, r28, 0x720
/* 80741470  4B 93 4A 3D */	bl __ct__12dBgS_AcchCirFv
/* 80741474  3B DC 07 60 */	addi r30, r28, 0x760
/* 80741478  7F C3 F3 78 */	mr r3, r30
/* 8074147C  4B 93 4C 25 */	bl __ct__9dBgS_AcchFv
/* 80741480  3C 60 80 74 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80741D84@ha */
/* 80741484  38 63 1D 84 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80741D84@l */
/* 80741488  90 7E 00 10 */	stw r3, 0x10(r30)
/* 8074148C  38 03 00 0C */	addi r0, r3, 0xc
/* 80741490  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80741494  38 03 00 18 */	addi r0, r3, 0x18
/* 80741498  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8074149C  38 7E 00 14 */	addi r3, r30, 0x14
/* 807414A0  4B 93 79 C9 */	bl SetObj__16dBgS_PolyPassChkFv
/* 807414A4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 807414A8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 807414AC  90 1C 09 50 */	stw r0, 0x950(r28)
/* 807414B0  38 7C 09 54 */	addi r3, r28, 0x954
/* 807414B4  4B 94 22 AD */	bl __ct__10dCcD_GSttsFv
/* 807414B8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 807414BC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 807414C0  90 7C 09 50 */	stw r3, 0x950(r28)
/* 807414C4  38 03 00 20 */	addi r0, r3, 0x20
/* 807414C8  90 1C 09 54 */	stw r0, 0x954(r28)
/* 807414CC  3B 9C 09 74 */	addi r28, r28, 0x974
/* 807414D0  7F 83 E3 78 */	mr r3, r28
/* 807414D4  4B 94 25 55 */	bl __ct__12dCcD_GObjInfFv
/* 807414D8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 807414DC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 807414E0  90 1C 01 20 */	stw r0, 0x120(r28)
/* 807414E4  3C 60 80 74 */	lis r3, __vt__8cM3dGAab@ha /* 0x80741D78@ha */
/* 807414E8  38 03 1D 78 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80741D78@l */
/* 807414EC  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 807414F0  3C 60 80 74 */	lis r3, __vt__8cM3dGSph@ha /* 0x80741D6C@ha */
/* 807414F4  38 03 1D 6C */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80741D6C@l */
/* 807414F8  90 1C 01 34 */	stw r0, 0x134(r28)
/* 807414FC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80741500  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80741504  90 7C 01 20 */	stw r3, 0x120(r28)
/* 80741508  38 03 00 58 */	addi r0, r3, 0x58
/* 8074150C  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80741510  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80741514  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80741518  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 8074151C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80741520  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80741524  38 03 00 84 */	addi r0, r3, 0x84
/* 80741528  90 1C 01 34 */	stw r0, 0x134(r28)
lbl_8074152C:
/* 8074152C  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80741530  60 00 00 08 */	ori r0, r0, 8
/* 80741534  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80741538:
/* 80741538  38 7D 06 6C */	addi r3, r29, 0x66c
/* 8074153C  3C 80 80 74 */	lis r4, d_a_e_ph__stringBase0@ha /* 0x80741D0C@ha */
/* 80741540  38 84 1D 0C */	addi r4, r4, d_a_e_ph__stringBase0@l /* 0x80741D0C@l */
/* 80741544  4B 8E B9 79 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80741548  7C 7E 1B 78 */	mr r30, r3
/* 8074154C  2C 1E 00 04 */	cmpwi r30, 4
/* 80741550  40 82 04 D8 */	bne lbl_80741A28
/* 80741554  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80741558  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 8074155C  98 1D 06 60 */	stb r0, 0x660(r29)
/* 80741560  38 60 00 02 */	li r3, 2
/* 80741564  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80741568  7C 04 07 74 */	extsb r4, r0
/* 8074156C  4B 8E C4 C5 */	bl dComIfGs_isZoneSwitch__Fii
/* 80741570  2C 03 00 00 */	cmpwi r3, 0
/* 80741574  41 82 00 18 */	beq lbl_8074158C
/* 80741578  88 1D 06 60 */	lbz r0, 0x660(r29)
/* 8074157C  28 00 00 04 */	cmplwi r0, 4
/* 80741580  40 82 00 0C */	bne lbl_8074158C
/* 80741584  38 60 00 05 */	li r3, 5
/* 80741588  48 00 04 A4 */	b lbl_80741A2C
lbl_8074158C:
/* 8074158C  38 60 00 02 */	li r3, 2
/* 80741590  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80741594  7C 04 07 74 */	extsb r4, r0
/* 80741598  4B 8E C4 99 */	bl dComIfGs_isZoneSwitch__Fii
/* 8074159C  2C 03 00 00 */	cmpwi r3, 0
/* 807415A0  41 82 00 18 */	beq lbl_807415B8
/* 807415A4  88 1D 06 60 */	lbz r0, 0x660(r29)
/* 807415A8  28 00 00 05 */	cmplwi r0, 5
/* 807415AC  40 82 00 0C */	bne lbl_807415B8
/* 807415B0  38 60 00 05 */	li r3, 5
/* 807415B4  48 00 04 78 */	b lbl_80741A2C
lbl_807415B8:
/* 807415B8  7F A3 EB 78 */	mr r3, r29
/* 807415BC  3C 80 80 74 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x8073D9EC@ha */
/* 807415C0  38 84 D9 EC */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x8073D9EC@l */
/* 807415C4  38 A0 11 E0 */	li r5, 0x11e0
/* 807415C8  4B 8D 8E E9 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 807415CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807415D0  40 82 00 0C */	bne lbl_807415DC
/* 807415D4  38 60 00 05 */	li r3, 5
/* 807415D8  48 00 04 54 */	b lbl_80741A2C
lbl_807415DC:
/* 807415DC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 807415E0  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 807415E4  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 807415E8  54 00 E7 3E */	rlwinm r0, r0, 0x1c, 0x1c, 0x1f
/* 807415EC  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 807415F0  A8 7D 05 B4 */	lha r3, 0x5b4(r29)
/* 807415F4  7C 60 07 35 */	extsh. r0, r3
/* 807415F8  41 82 00 0C */	beq lbl_80741604
/* 807415FC  2C 03 00 0F */	cmpwi r3, 0xf
/* 80741600  40 82 00 0C */	bne lbl_8074160C
lbl_80741604:
/* 80741604  38 00 00 46 */	li r0, 0x46
/* 80741608  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
lbl_8074160C:
/* 8074160C  88 1D 06 60 */	lbz r0, 0x660(r29)
/* 80741610  28 00 00 03 */	cmplwi r0, 3
/* 80741614  41 82 00 34 */	beq lbl_80741648
/* 80741618  28 00 00 02 */	cmplwi r0, 2
/* 8074161C  41 82 00 2C */	beq lbl_80741648
/* 80741620  28 00 00 04 */	cmplwi r0, 4
/* 80741624  41 82 00 24 */	beq lbl_80741648
/* 80741628  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 8074162C  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80741630  98 1D 06 61 */	stb r0, 0x661(r29)
/* 80741634  88 7D 06 61 */	lbz r3, 0x661(r29)
/* 80741638  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8074163C  7C 04 07 74 */	extsb r4, r0
/* 80741640  4B 91 01 AD */	bl dPath_GetRoomPath__Fii
/* 80741644  90 7D 06 44 */	stw r3, 0x644(r29)
lbl_80741648:
/* 80741648  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 8074164C  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80741650  98 1D 06 63 */	stb r0, 0x663(r29)
/* 80741654  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80741658  54 00 46 3E */	srwi r0, r0, 0x18
/* 8074165C  98 1D 06 64 */	stb r0, 0x664(r29)
/* 80741660  88 1D 06 63 */	lbz r0, 0x663(r29)
/* 80741664  28 00 00 FF */	cmplwi r0, 0xff
/* 80741668  40 82 00 0C */	bne lbl_80741674
/* 8074166C  38 00 00 00 */	li r0, 0
/* 80741670  98 1D 06 63 */	stb r0, 0x663(r29)
lbl_80741674:
/* 80741674  88 1D 06 64 */	lbz r0, 0x664(r29)
/* 80741678  28 00 00 FF */	cmplwi r0, 0xff
/* 8074167C  40 82 00 0C */	bne lbl_80741688
/* 80741680  38 00 00 00 */	li r0, 0
/* 80741684  98 1D 06 64 */	stb r0, 0x664(r29)
lbl_80741688:
/* 80741688  80 7D 07 1C */	lwz r3, 0x71c(r29)
/* 8074168C  80 63 00 04 */	lwz r3, 4(r3)
/* 80741690  38 03 00 24 */	addi r0, r3, 0x24
/* 80741694  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80741698  38 7D 07 20 */	addi r3, r29, 0x720
/* 8074169C  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 807416A0  FC 40 08 90 */	fmr f2, f1
/* 807416A4  4B 93 48 B5 */	bl SetWall__12dBgS_AcchCirFff
/* 807416A8  3C 60 80 74 */	lis r3, data_80741DC0@ha /* 0x80741DC0@ha */
/* 807416AC  8C 03 1D C0 */	lbzu r0, data_80741DC0@l(r3)  /* 0x80741DC0@l */
/* 807416B0  28 00 00 00 */	cmplwi r0, 0
/* 807416B4  40 82 00 20 */	bne lbl_807416D4
/* 807416B8  38 00 00 01 */	li r0, 1
/* 807416BC  98 03 00 00 */	stb r0, 0(r3)
/* 807416C0  98 1D 0A D0 */	stb r0, 0xad0(r29)
/* 807416C4  38 00 FF FF */	li r0, -1
/* 807416C8  3C 60 80 74 */	lis r3, l_HIO@ha /* 0x80741DD0@ha */
/* 807416CC  38 63 1D D0 */	addi r3, r3, l_HIO@l /* 0x80741DD0@l */
/* 807416D0  98 03 00 04 */	stb r0, 4(r3)
lbl_807416D4:
/* 807416D4  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 807416D8  D0 1D 05 20 */	stfs f0, 0x520(r29)
/* 807416DC  7F A3 EB 78 */	mr r3, r29
/* 807416E0  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
/* 807416E4  FC 40 08 90 */	fmr f2, f1
/* 807416E8  FC 60 08 90 */	fmr f3, f1
/* 807416EC  C0 9F 00 E0 */	lfs f4, 0xe0(r31)
/* 807416F0  FC A0 20 90 */	fmr f5, f4
/* 807416F4  FC C0 20 90 */	fmr f6, f4
/* 807416F8  4B 8D 8E 51 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 807416FC  38 00 00 00 */	li r0, 0
/* 80741700  90 01 00 08 */	stw r0, 8(r1)
/* 80741704  38 7D 07 60 */	addi r3, r29, 0x760
/* 80741708  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8074170C  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80741710  7F A6 EB 78 */	mr r6, r29
/* 80741714  38 E0 00 01 */	li r7, 1
/* 80741718  39 1D 07 20 */	addi r8, r29, 0x720
/* 8074171C  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80741720  39 40 00 00 */	li r10, 0
/* 80741724  4B 93 4B 25 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80741728  38 00 00 04 */	li r0, 4
/* 8074172C  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80741730  38 00 00 22 */	li r0, 0x22
/* 80741734  98 1D 05 46 */	stb r0, 0x546(r29)
/* 80741738  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 8074173C  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 80741740  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80741744  EC 21 00 2A */	fadds f1, f1, f0
/* 80741748  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8074174C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80741750  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80741754  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80741758  38 7D 06 74 */	addi r3, r29, 0x674
/* 8074175C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80741760  38 A1 00 28 */	addi r5, r1, 0x28
/* 80741764  38 C0 00 03 */	li r6, 3
/* 80741768  38 E0 00 01 */	li r7, 1
/* 8074176C  4B B7 F9 29 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 80741770  38 1D 06 74 */	addi r0, r29, 0x674
/* 80741774  90 1D 0A B4 */	stw r0, 0xab4(r29)
/* 80741778  80 7D 07 1C */	lwz r3, 0x71c(r29)
/* 8074177C  80 A3 00 04 */	lwz r5, 4(r3)
/* 80741780  93 A5 00 14 */	stw r29, 0x14(r5)
/* 80741784  38 E0 00 00 */	li r7, 0
/* 80741788  3C 60 80 74 */	lis r3, JointCallBack__FP8J3DJointi@ha /* 0x8073D904@ha */
/* 8074178C  38 83 D9 04 */	addi r4, r3, JointCallBack__FP8J3DJointi@l /* 0x8073D904@l */
/* 80741790  48 00 00 20 */	b lbl_807417B0
lbl_80741794:
/* 80741794  54 E0 04 3F */	clrlwi. r0, r7, 0x10
/* 80741798  41 82 00 14 */	beq lbl_807417AC
/* 8074179C  80 66 00 28 */	lwz r3, 0x28(r6)
/* 807417A0  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 807417A4  7C 63 00 2E */	lwzx r3, r3, r0
/* 807417A8  90 83 00 04 */	stw r4, 4(r3)
lbl_807417AC:
/* 807417AC  38 E7 00 01 */	addi r7, r7, 1
lbl_807417B0:
/* 807417B0  80 C5 00 04 */	lwz r6, 4(r5)
/* 807417B4  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 807417B8  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 807417BC  7C 00 18 40 */	cmplw r0, r3
/* 807417C0  41 80 FF D4 */	blt lbl_80741794
/* 807417C4  38 00 10 00 */	li r0, 0x1000
/* 807417C8  B0 1D 06 10 */	sth r0, 0x610(r29)
/* 807417CC  38 00 05 00 */	li r0, 0x500
/* 807417D0  B0 1D 06 12 */	sth r0, 0x612(r29)
/* 807417D4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807417D8  D0 1D 06 24 */	stfs f0, 0x624(r29)
/* 807417DC  7F A3 EB 78 */	mr r3, r29
/* 807417E0  4B FF BC AD */	bl initCcSph__8daE_PH_cFv
/* 807417E4  38 7D 06 74 */	addi r3, r29, 0x674
/* 807417E8  3C 80 80 74 */	lis r4, d_a_e_ph__stringBase0@ha /* 0x80741D0C@ha */
/* 807417EC  38 84 1D 0C */	addi r4, r4, d_a_e_ph__stringBase0@l /* 0x80741D0C@l */
/* 807417F0  4B B8 03 A1 */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 807417F4  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 807417F8  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 807417FC  38 00 00 01 */	li r0, 1
/* 80741800  98 1D 05 B2 */	stb r0, 0x5b2(r29)
/* 80741804  88 1D 06 60 */	lbz r0, 0x660(r29)
/* 80741808  28 00 00 03 */	cmplwi r0, 3
/* 8074180C  40 82 00 4C */	bne lbl_80741858
/* 80741810  80 1D 0A 10 */	lwz r0, 0xa10(r29)
/* 80741814  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80741818  90 1D 0A 10 */	stw r0, 0xa10(r29)
/* 8074181C  80 1D 0A 10 */	lwz r0, 0xa10(r29)
/* 80741820  60 00 00 04 */	ori r0, r0, 4
/* 80741824  90 1D 0A 10 */	stw r0, 0xa10(r29)
/* 80741828  38 00 00 00 */	li r0, 0
/* 8074182C  98 1D 05 46 */	stb r0, 0x546(r29)
/* 80741830  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80741834  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80741838  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 8074183C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80741840  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 80741844  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 80741848  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8074184C  EC 01 00 2A */	fadds f0, f1, f0
/* 80741850  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80741854  48 00 00 38 */	b lbl_8074188C
lbl_80741858:
/* 80741858  28 00 00 02 */	cmplwi r0, 2
/* 8074185C  41 82 00 14 */	beq lbl_80741870
/* 80741860  28 00 00 04 */	cmplwi r0, 4
/* 80741864  41 82 00 0C */	beq lbl_80741870
/* 80741868  28 00 00 05 */	cmplwi r0, 5
/* 8074186C  40 82 00 18 */	bne lbl_80741884
lbl_80741870:
/* 80741870  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80741874  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80741878  38 00 00 00 */	li r0, 0
/* 8074187C  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80741880  48 00 00 0C */	b lbl_8074188C
lbl_80741884:
/* 80741884  7F A3 EB 78 */	mr r3, r29
/* 80741888  4B FF C3 4D */	bl SearchNearP__8daE_PH_cFv
lbl_8074188C:
/* 8074188C  88 1D 06 60 */	lbz r0, 0x660(r29)
/* 80741890  28 00 00 05 */	cmplwi r0, 5
/* 80741894  40 82 00 94 */	bne lbl_80741928
/* 80741898  4B A3 FD A9 */	bl dCam_getBody__Fv
/* 8074189C  7C 7C 1B 78 */	mr r28, r3
/* 807418A0  C0 23 00 58 */	lfs f1, 0x58(r3)
/* 807418A4  C0 03 06 F4 */	lfs f0, 0x6f4(r3)
/* 807418A8  EC 01 00 2A */	fadds f0, f1, f0
/* 807418AC  D0 1D 05 F4 */	stfs f0, 0x5f4(r29)
/* 807418B0  38 61 00 1C */	addi r3, r1, 0x1c
/* 807418B4  7F 84 E3 78 */	mr r4, r28
/* 807418B8  4B A4 05 E1 */	bl Center__9dCamera_cFv
/* 807418BC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 807418C0  D0 1D 05 D4 */	stfs f0, 0x5d4(r29)
/* 807418C4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 807418C8  D0 1D 05 D8 */	stfs f0, 0x5d8(r29)
/* 807418CC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 807418D0  D0 1D 05 DC */	stfs f0, 0x5dc(r29)
/* 807418D4  C0 1D 05 D4 */	lfs f0, 0x5d4(r29)
/* 807418D8  D0 1D 05 E0 */	stfs f0, 0x5e0(r29)
/* 807418DC  C0 1D 05 D8 */	lfs f0, 0x5d8(r29)
/* 807418E0  D0 1D 05 E4 */	stfs f0, 0x5e4(r29)
/* 807418E4  C0 1D 05 DC */	lfs f0, 0x5dc(r29)
/* 807418E8  D0 1D 05 E8 */	stfs f0, 0x5e8(r29)
/* 807418EC  38 61 00 10 */	addi r3, r1, 0x10
/* 807418F0  7F 84 E3 78 */	mr r4, r28
/* 807418F4  4B A4 05 71 */	bl Eye__9dCamera_cFv
/* 807418F8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 807418FC  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
/* 80741900  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80741904  D0 1D 05 C0 */	stfs f0, 0x5c0(r29)
/* 80741908  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8074190C  D0 1D 05 C4 */	stfs f0, 0x5c4(r29)
/* 80741910  C0 1D 05 BC */	lfs f0, 0x5bc(r29)
/* 80741914  D0 1D 05 C8 */	stfs f0, 0x5c8(r29)
/* 80741918  C0 1D 05 C0 */	lfs f0, 0x5c0(r29)
/* 8074191C  D0 1D 05 CC */	stfs f0, 0x5cc(r29)
/* 80741920  C0 1D 05 C4 */	lfs f0, 0x5c4(r29)
/* 80741924  D0 1D 05 D0 */	stfs f0, 0x5d0(r29)
lbl_80741928:
/* 80741928  88 1D 06 60 */	lbz r0, 0x660(r29)
/* 8074192C  28 00 00 04 */	cmplwi r0, 4
/* 80741930  41 82 00 0C */	beq lbl_8074193C
/* 80741934  28 00 00 05 */	cmplwi r0, 5
/* 80741938  40 82 00 2C */	bne lbl_80741964
lbl_8074193C:
/* 8074193C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80741940  80 7D 07 1C */	lwz r3, 0x71c(r29)
/* 80741944  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 80741948  7F A3 EB 78 */	mr r3, r29
/* 8074194C  38 80 00 04 */	li r4, 4
/* 80741950  38 A0 00 00 */	li r5, 0
/* 80741954  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 80741958  4B FF C1 D1 */	bl SetAnm__8daE_PH_cFiiff
/* 8074195C  38 00 00 0E */	li r0, 0xe
/* 80741960  90 1D 06 28 */	stw r0, 0x628(r29)
lbl_80741964:
/* 80741964  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80741968  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8074196C  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80741970  3C 80 80 74 */	lis r4, d_a_e_ph__stringBase0@ha /* 0x80741D0C@ha */
/* 80741974  38 84 1D 0C */	addi r4, r4, d_a_e_ph__stringBase0@l /* 0x80741D0C@l */
/* 80741978  38 84 00 05 */	addi r4, r4, 5
/* 8074197C  4B C2 70 19 */	bl strcmp
/* 80741980  2C 03 00 00 */	cmpwi r3, 0
/* 80741984  40 82 00 60 */	bne lbl_807419E4
/* 80741988  88 1D 06 60 */	lbz r0, 0x660(r29)
/* 8074198C  28 00 00 02 */	cmplwi r0, 2
/* 80741990  40 82 00 54 */	bne lbl_807419E4
/* 80741994  38 60 00 02 */	li r3, 2
/* 80741998  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8074199C  7C 04 07 74 */	extsb r4, r0
/* 807419A0  4B 8E C0 91 */	bl dComIfGs_isZoneSwitch__Fii
/* 807419A4  2C 03 00 00 */	cmpwi r3, 0
/* 807419A8  40 82 00 3C */	bne lbl_807419E4
/* 807419AC  38 00 00 00 */	li r0, 0
/* 807419B0  98 1D 05 B2 */	stb r0, 0x5b2(r29)
/* 807419B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807419B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807419BC  38 80 00 10 */	li r4, 0x10
/* 807419C0  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 807419C4  7C 05 07 74 */	extsb r5, r0
/* 807419C8  4B 8F 38 E9 */	bl offSwitch__10dSv_info_cFii
/* 807419CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807419D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807419D4  38 80 00 3F */	li r4, 0x3f
/* 807419D8  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 807419DC  7C 05 07 74 */	extsb r5, r0
/* 807419E0  4B 8F 38 D1 */	bl offSwitch__10dSv_info_cFii
lbl_807419E4:
/* 807419E4  88 1D 06 63 */	lbz r0, 0x663(r29)
/* 807419E8  C8 3F 00 A8 */	lfd f1, 0xa8(r31)
/* 807419EC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 807419F0  3C 00 43 30 */	lis r0, 0x4330
/* 807419F4  90 01 00 38 */	stw r0, 0x38(r1)
/* 807419F8  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 807419FC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80741A00  3C 60 80 74 */	lis r3, l_HIO@ha /* 0x80741DD0@ha */
/* 80741A04  38 63 1D D0 */	addi r3, r3, l_HIO@l /* 0x80741DD0@l */
/* 80741A08  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80741A0C  38 00 00 00 */	li r0, 0
/* 80741A10  98 1D 05 B1 */	stb r0, 0x5b1(r29)
/* 80741A14  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80741A18  60 00 40 00 */	ori r0, r0, 0x4000
/* 80741A1C  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 80741A20  7F A3 EB 78 */	mr r3, r29
/* 80741A24  4B FF F9 E5 */	bl daE_PH_Execute__FP8daE_PH_c
lbl_80741A28:
/* 80741A28  7F C3 F3 78 */	mr r3, r30
lbl_80741A2C:
/* 80741A2C  39 61 00 50 */	addi r11, r1, 0x50
/* 80741A30  4B C2 07 F5 */	bl _restgpr_28
/* 80741A34  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80741A38  7C 08 03 A6 */	mtlr r0
/* 80741A3C  38 21 00 50 */	addi r1, r1, 0x50
/* 80741A40  4E 80 00 20 */	blr 

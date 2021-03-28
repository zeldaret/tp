lbl_80C56E14:
/* 80C56E14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C56E18  7C 08 02 A6 */	mflr r0
/* 80C56E1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C56E20  39 61 00 20 */	addi r11, r1, 0x20
/* 80C56E24  4B 70 B3 B8 */	b _savegpr_29
/* 80C56E28  7C 7E 1B 78 */	mr r30, r3
/* 80C56E2C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C56E30  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C56E34  40 82 00 BC */	bne lbl_80C56EF0
/* 80C56E38  7F C0 F3 79 */	or. r0, r30, r30
/* 80C56E3C  41 82 00 A8 */	beq lbl_80C56EE4
/* 80C56E40  7C 1F 03 78 */	mr r31, r0
/* 80C56E44  4B 42 17 E0 */	b __ct__16dBgS_MoveBgActorFv
/* 80C56E48  3C 60 80 C5 */	lis r3, __vt__12daLv1Cdl01_c@ha
/* 80C56E4C  38 03 79 78 */	addi r0, r3, __vt__12daLv1Cdl01_c@l
/* 80C56E50  90 1F 05 9C */	stw r0, 0x59c(r31)
/* 80C56E54  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80C56E58  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80C56E5C  90 1F 05 C4 */	stw r0, 0x5c4(r31)
/* 80C56E60  38 7F 05 C8 */	addi r3, r31, 0x5c8
/* 80C56E64  4B 42 C8 FC */	b __ct__10dCcD_GSttsFv
/* 80C56E68  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80C56E6C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80C56E70  90 7F 05 C4 */	stw r3, 0x5c4(r31)
/* 80C56E74  38 03 00 20 */	addi r0, r3, 0x20
/* 80C56E78  90 1F 05 C8 */	stw r0, 0x5c8(r31)
/* 80C56E7C  3B BF 05 E8 */	addi r29, r31, 0x5e8
/* 80C56E80  7F A3 EB 78 */	mr r3, r29
/* 80C56E84  4B 42 CB A4 */	b __ct__12dCcD_GObjInfFv
/* 80C56E88  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C56E8C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C56E90  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80C56E94  3C 60 80 C5 */	lis r3, __vt__8cM3dGAab@ha
/* 80C56E98  38 03 79 6C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C56E9C  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80C56EA0  3C 60 80 C5 */	lis r3, __vt__8cM3dGCyl@ha
/* 80C56EA4  38 03 79 60 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80C56EA8  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80C56EAC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80C56EB0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80C56EB4  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80C56EB8  38 03 00 58 */	addi r0, r3, 0x58
/* 80C56EBC  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80C56EC0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80C56EC4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80C56EC8  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80C56ECC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C56ED0  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80C56ED4  38 03 00 84 */	addi r0, r3, 0x84
/* 80C56ED8  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80C56EDC  38 7F 07 6C */	addi r3, r31, 0x76c
/* 80C56EE0  4B 66 79 64 */	b __ct__16Z2SoundObjSimpleFv
lbl_80C56EE4:
/* 80C56EE4  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80C56EE8  60 00 00 08 */	ori r0, r0, 8
/* 80C56EEC  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80C56EF0:
/* 80C56EF0  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80C56EF4  3C 80 80 C5 */	lis r4, stringBase0@ha
/* 80C56EF8  38 84 78 C0 */	addi r4, r4, stringBase0@l
/* 80C56EFC  4B 3D 5F C0 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C56F00  7C 7F 1B 78 */	mr r31, r3
/* 80C56F04  2C 1F 00 04 */	cmpwi r31, 4
/* 80C56F08  40 82 01 24 */	bne lbl_80C5702C
/* 80C56F0C  7F C3 F3 78 */	mr r3, r30
/* 80C56F10  3C 80 80 C5 */	lis r4, stringBase0@ha
/* 80C56F14  38 84 78 C0 */	addi r4, r4, stringBase0@l
/* 80C56F18  38 A0 FF FF */	li r5, -1
/* 80C56F1C  38 C0 00 00 */	li r6, 0
/* 80C56F20  38 E0 08 20 */	li r7, 0x820
/* 80C56F24  39 00 00 00 */	li r8, 0
/* 80C56F28  4B 42 18 94 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C56F2C  2C 03 00 05 */	cmpwi r3, 5
/* 80C56F30  40 82 00 0C */	bne lbl_80C56F3C
/* 80C56F34  38 60 00 05 */	li r3, 5
/* 80C56F38  48 00 00 F8 */	b lbl_80C57030
lbl_80C56F3C:
/* 80C56F3C  7F C3 F3 78 */	mr r3, r30
/* 80C56F40  4B FF FD E1 */	bl setBaseMtx__12daLv1Cdl01_cFv
/* 80C56F44  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C56F48  38 03 00 24 */	addi r0, r3, 0x24
/* 80C56F4C  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80C56F50  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C56F54  80 83 00 04 */	lwz r4, 4(r3)
/* 80C56F58  7F C3 F3 78 */	mr r3, r30
/* 80C56F5C  4B 3C 36 1C */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C56F60  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C56F64  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80C56F68  98 1E 07 40 */	stb r0, 0x740(r30)
/* 80C56F6C  88 1E 07 40 */	lbz r0, 0x740(r30)
/* 80C56F70  28 00 00 FF */	cmplwi r0, 0xff
/* 80C56F74  40 82 00 0C */	bne lbl_80C56F80
/* 80C56F78  38 00 00 01 */	li r0, 1
/* 80C56F7C  98 1E 07 40 */	stb r0, 0x740(r30)
lbl_80C56F80:
/* 80C56F80  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C56F84  D0 1E 07 24 */	stfs f0, 0x724(r30)
/* 80C56F88  3C 60 80 C5 */	lis r3, lit_3723@ha
/* 80C56F8C  C0 23 78 8C */	lfs f1, lit_3723@l(r3)
/* 80C56F90  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C56F94  EC 01 00 2A */	fadds f0, f1, f0
/* 80C56F98  D0 1E 07 28 */	stfs f0, 0x728(r30)
/* 80C56F9C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C56FA0  D0 1E 07 2C */	stfs f0, 0x72c(r30)
/* 80C56FA4  7F C3 F3 78 */	mr r3, r30
/* 80C56FA8  48 00 01 31 */	bl lightInit__12daLv1Cdl01_cFv
/* 80C56FAC  38 00 00 01 */	li r0, 1
/* 80C56FB0  98 1E 07 30 */	stb r0, 0x730(r30)
/* 80C56FB4  38 00 00 00 */	li r0, 0
/* 80C56FB8  98 1E 07 31 */	stb r0, 0x731(r30)
/* 80C56FBC  7F C3 F3 78 */	mr r3, r30
/* 80C56FC0  48 00 01 A5 */	bl setLight__12daLv1Cdl01_cFv
/* 80C56FC4  C0 1E 07 24 */	lfs f0, 0x724(r30)
/* 80C56FC8  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80C56FCC  C0 1E 07 28 */	lfs f0, 0x728(r30)
/* 80C56FD0  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80C56FD4  C0 1E 07 2C */	lfs f0, 0x72c(r30)
/* 80C56FD8  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80C56FDC  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 80C56FE0  38 80 00 FF */	li r4, 0xff
/* 80C56FE4  38 A0 00 FF */	li r5, 0xff
/* 80C56FE8  7F C6 F3 78 */	mr r6, r30
/* 80C56FEC  4B 42 C8 74 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C56FF0  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 80C56FF4  3C 80 80 C5 */	lis r4, mCcDCyl__12daLv1Cdl01_c@ha
/* 80C56FF8  38 84 78 CC */	addi r4, r4, mCcDCyl__12daLv1Cdl01_c@l
/* 80C56FFC  4B 42 D8 B8 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80C57000  38 1E 05 AC */	addi r0, r30, 0x5ac
/* 80C57004  90 1E 06 2C */	stw r0, 0x62c(r30)
/* 80C57008  38 7E 07 6C */	addi r3, r30, 0x76c
/* 80C5700C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C57010  38 A0 00 01 */	li r5, 1
/* 80C57014  81 9E 07 7C */	lwz r12, 0x77c(r30)
/* 80C57018  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C5701C  7D 89 03 A6 */	mtctr r12
/* 80C57020  4E 80 04 21 */	bctrl 
/* 80C57024  38 00 00 00 */	li r0, 0
/* 80C57028  98 1E 07 68 */	stb r0, 0x768(r30)
lbl_80C5702C:
/* 80C5702C  7F E3 FB 78 */	mr r3, r31
lbl_80C57030:
/* 80C57030  39 61 00 20 */	addi r11, r1, 0x20
/* 80C57034  4B 70 B1 F4 */	b _restgpr_29
/* 80C57038  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C5703C  7C 08 03 A6 */	mtlr r0
/* 80C57040  38 21 00 20 */	addi r1, r1, 0x20
/* 80C57044  4E 80 00 20 */	blr 

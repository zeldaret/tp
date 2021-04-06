lbl_80C55E74:
/* 80C55E74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C55E78  7C 08 02 A6 */	mflr r0
/* 80C55E7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C55E80  39 61 00 20 */	addi r11, r1, 0x20
/* 80C55E84  4B 70 C3 59 */	bl _savegpr_29
/* 80C55E88  7C 7E 1B 78 */	mr r30, r3
/* 80C55E8C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C55E90  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C55E94  40 82 00 B0 */	bne lbl_80C55F44
/* 80C55E98  7F C0 F3 79 */	or. r0, r30, r30
/* 80C55E9C  41 82 00 9C */	beq lbl_80C55F38
/* 80C55EA0  7C 1F 03 78 */	mr r31, r0
/* 80C55EA4  4B 3C 2C C1 */	bl __ct__10fopAc_ac_cFv
/* 80C55EA8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80C55EAC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80C55EB0  90 1F 05 8C */	stw r0, 0x58c(r31)
/* 80C55EB4  38 7F 05 90 */	addi r3, r31, 0x590
/* 80C55EB8  4B 42 D8 A9 */	bl __ct__10dCcD_GSttsFv
/* 80C55EBC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80C55EC0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80C55EC4  90 7F 05 8C */	stw r3, 0x58c(r31)
/* 80C55EC8  38 03 00 20 */	addi r0, r3, 0x20
/* 80C55ECC  90 1F 05 90 */	stw r0, 0x590(r31)
/* 80C55ED0  3B BF 05 B0 */	addi r29, r31, 0x5b0
/* 80C55ED4  7F A3 EB 78 */	mr r3, r29
/* 80C55ED8  4B 42 DB 51 */	bl __ct__12dCcD_GObjInfFv
/* 80C55EDC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C55EE0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C55EE4  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80C55EE8  3C 60 80 C5 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C56B60@ha */
/* 80C55EEC  38 03 6B 60 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C56B60@l */
/* 80C55EF0  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80C55EF4  3C 60 80 C5 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80C56B54@ha */
/* 80C55EF8  38 03 6B 54 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80C56B54@l */
/* 80C55EFC  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80C55F00  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80C55F04  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80C55F08  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80C55F0C  38 03 00 58 */	addi r0, r3, 0x58
/* 80C55F10  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80C55F14  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80C55F18  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80C55F1C  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80C55F20  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C55F24  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80C55F28  38 03 00 84 */	addi r0, r3, 0x84
/* 80C55F2C  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80C55F30  38 7F 07 34 */	addi r3, r31, 0x734
/* 80C55F34  4B 66 89 11 */	bl __ct__16Z2SoundObjSimpleFv
lbl_80C55F38:
/* 80C55F38  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80C55F3C  60 00 00 08 */	ori r0, r0, 8
/* 80C55F40  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80C55F44:
/* 80C55F44  38 7E 05 68 */	addi r3, r30, 0x568
/* 80C55F48  3C 80 80 C5 */	lis r4, d_a_obj_lv1Candle00__stringBase0@ha /* 0x80C56AB4@ha */
/* 80C55F4C  38 84 6A B4 */	addi r4, r4, d_a_obj_lv1Candle00__stringBase0@l /* 0x80C56AB4@l */
/* 80C55F50  4B 3D 6F 6D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C55F54  7C 7F 1B 78 */	mr r31, r3
/* 80C55F58  2C 1F 00 04 */	cmpwi r31, 4
/* 80C55F5C  40 82 01 98 */	bne lbl_80C560F4
/* 80C55F60  7F C3 F3 78 */	mr r3, r30
/* 80C55F64  3C 80 80 C5 */	lis r4, createHeapCallBack__12daLv1Cdl00_cFP10fopAc_ac_c@ha /* 0x80C561A0@ha */
/* 80C55F68  38 84 61 A0 */	addi r4, r4, createHeapCallBack__12daLv1Cdl00_cFP10fopAc_ac_c@l /* 0x80C561A0@l */
/* 80C55F6C  38 A0 08 20 */	li r5, 0x820
/* 80C55F70  4B 3C 45 41 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C55F74  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C55F78  40 82 00 0C */	bne lbl_80C55F84
/* 80C55F7C  38 60 00 05 */	li r3, 5
/* 80C55F80  48 00 01 78 */	b lbl_80C560F8
lbl_80C55F84:
/* 80C55F84  7F C3 F3 78 */	mr r3, r30
/* 80C55F88  4B FF FD F9 */	bl setBaseMtx__12daLv1Cdl00_cFv
/* 80C55F8C  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80C55F90  38 03 00 24 */	addi r0, r3, 0x24
/* 80C55F94  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80C55F98  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80C55F9C  80 83 00 04 */	lwz r4, 4(r3)
/* 80C55FA0  7F C3 F3 78 */	mr r3, r30
/* 80C55FA4  4B 3C 45 D5 */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C55FA8  38 7E 05 74 */	addi r3, r30, 0x574
/* 80C55FAC  38 80 00 FF */	li r4, 0xff
/* 80C55FB0  38 A0 00 FF */	li r5, 0xff
/* 80C55FB4  7F C6 F3 78 */	mr r6, r30
/* 80C55FB8  4B 42 D8 A9 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C55FBC  38 7E 05 B0 */	addi r3, r30, 0x5b0
/* 80C55FC0  3C 80 80 C5 */	lis r4, mCcDCyl__12daLv1Cdl00_c@ha /* 0x80C56AC0@ha */
/* 80C55FC4  38 84 6A C0 */	addi r4, r4, mCcDCyl__12daLv1Cdl00_c@l /* 0x80C56AC0@l */
/* 80C55FC8  4B 42 E8 ED */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80C55FCC  38 1E 05 74 */	addi r0, r30, 0x574
/* 80C55FD0  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 80C55FD4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C55FD8  D0 1E 06 EC */	stfs f0, 0x6ec(r30)
/* 80C55FDC  3C 60 80 C5 */	lis r3, lit_3753@ha /* 0x80C56A80@ha */
/* 80C55FE0  C0 23 6A 80 */	lfs f1, lit_3753@l(r3)  /* 0x80C56A80@l */
/* 80C55FE4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C55FE8  EC 01 00 2A */	fadds f0, f1, f0
/* 80C55FEC  D0 1E 06 F0 */	stfs f0, 0x6f0(r30)
/* 80C55FF0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C55FF4  D0 1E 06 F4 */	stfs f0, 0x6f4(r30)
/* 80C55FF8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C55FFC  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80C56000  98 1E 07 08 */	stb r0, 0x708(r30)
/* 80C56004  88 1E 07 08 */	lbz r0, 0x708(r30)
/* 80C56008  28 00 00 FF */	cmplwi r0, 0xff
/* 80C5600C  40 82 00 0C */	bne lbl_80C56018
/* 80C56010  38 00 00 00 */	li r0, 0
/* 80C56014  98 1E 07 08 */	stb r0, 0x708(r30)
lbl_80C56018:
/* 80C56018  7F C3 F3 78 */	mr r3, r30
/* 80C5601C  48 00 01 A5 */	bl lightInit__12daLv1Cdl00_cFv
/* 80C56020  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C56024  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80C56028  98 1E 06 FA */	stb r0, 0x6fa(r30)
/* 80C5602C  88 1E 06 FA */	lbz r0, 0x6fa(r30)
/* 80C56030  28 00 00 FF */	cmplwi r0, 0xff
/* 80C56034  40 82 00 0C */	bne lbl_80C56040
/* 80C56038  38 00 00 00 */	li r0, 0
/* 80C5603C  98 1E 06 FA */	stb r0, 0x6fa(r30)
lbl_80C56040:
/* 80C56040  C0 1E 06 EC */	lfs f0, 0x6ec(r30)
/* 80C56044  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80C56048  C0 1E 06 F0 */	lfs f0, 0x6f0(r30)
/* 80C5604C  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80C56050  C0 1E 06 F4 */	lfs f0, 0x6f4(r30)
/* 80C56054  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80C56058  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C5605C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C56060  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C56064  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C56068  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C5606C  7C 05 07 74 */	extsb r5, r0
/* 80C56070  4B 3D F2 F1 */	bl isSwitch__10dSv_info_cCFii
/* 80C56074  98 7E 06 F9 */	stb r3, 0x6f9(r30)
/* 80C56078  38 00 00 00 */	li r0, 0
/* 80C5607C  98 1E 06 F8 */	stb r0, 0x6f8(r30)
/* 80C56080  88 1E 06 FA */	lbz r0, 0x6fa(r30)
/* 80C56084  28 00 00 00 */	cmplwi r0, 0
/* 80C56088  40 82 00 28 */	bne lbl_80C560B0
/* 80C5608C  88 1E 06 F9 */	lbz r0, 0x6f9(r30)
/* 80C56090  28 00 00 00 */	cmplwi r0, 0
/* 80C56094  41 82 00 3C */	beq lbl_80C560D0
/* 80C56098  38 00 00 01 */	li r0, 1
/* 80C5609C  98 1E 06 F8 */	stb r0, 0x6f8(r30)
/* 80C560A0  98 1E 06 25 */	stb r0, 0x625(r30)
/* 80C560A4  7F C3 F3 78 */	mr r3, r30
/* 80C560A8  48 00 01 C1 */	bl setLight__12daLv1Cdl00_cFv
/* 80C560AC  48 00 00 24 */	b lbl_80C560D0
lbl_80C560B0:
/* 80C560B0  88 1E 06 F9 */	lbz r0, 0x6f9(r30)
/* 80C560B4  28 00 00 00 */	cmplwi r0, 0
/* 80C560B8  40 82 00 18 */	bne lbl_80C560D0
/* 80C560BC  38 00 00 01 */	li r0, 1
/* 80C560C0  98 1E 06 F8 */	stb r0, 0x6f8(r30)
/* 80C560C4  98 1E 06 25 */	stb r0, 0x625(r30)
/* 80C560C8  7F C3 F3 78 */	mr r3, r30
/* 80C560CC  48 00 01 9D */	bl setLight__12daLv1Cdl00_cFv
lbl_80C560D0:
/* 80C560D0  38 7E 07 34 */	addi r3, r30, 0x734
/* 80C560D4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C560D8  38 A0 00 01 */	li r5, 1
/* 80C560DC  81 9E 07 44 */	lwz r12, 0x744(r30)
/* 80C560E0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C560E4  7D 89 03 A6 */	mtctr r12
/* 80C560E8  4E 80 04 21 */	bctrl 
/* 80C560EC  38 00 00 00 */	li r0, 0
/* 80C560F0  98 1E 07 30 */	stb r0, 0x730(r30)
lbl_80C560F4:
/* 80C560F4  7F E3 FB 78 */	mr r3, r31
lbl_80C560F8:
/* 80C560F8  39 61 00 20 */	addi r11, r1, 0x20
/* 80C560FC  4B 70 C1 2D */	bl _restgpr_29
/* 80C56100  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C56104  7C 08 03 A6 */	mtlr r0
/* 80C56108  38 21 00 20 */	addi r1, r1, 0x20
/* 80C5610C  4E 80 00 20 */	blr 

lbl_80B9EE34:
/* 80B9EE34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B9EE38  7C 08 02 A6 */	mflr r0
/* 80B9EE3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B9EE40  39 61 00 20 */	addi r11, r1, 0x20
/* 80B9EE44  4B 7C 33 98 */	b _savegpr_29
/* 80B9EE48  7C 7E 1B 78 */	mr r30, r3
/* 80B9EE4C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80B9EE50  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80B9EE54  40 82 00 B0 */	bne lbl_80B9EF04
/* 80B9EE58  7F C0 F3 79 */	or. r0, r30, r30
/* 80B9EE5C  41 82 00 9C */	beq lbl_80B9EEF8
/* 80B9EE60  7C 1F 03 78 */	mr r31, r0
/* 80B9EE64  4B 47 9D 00 */	b __ct__10fopAc_ac_cFv
/* 80B9EE68  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80B9EE6C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80B9EE70  90 1F 05 8C */	stw r0, 0x58c(r31)
/* 80B9EE74  38 7F 05 90 */	addi r3, r31, 0x590
/* 80B9EE78  4B 4E 48 E8 */	b __ct__10dCcD_GSttsFv
/* 80B9EE7C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80B9EE80  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80B9EE84  90 7F 05 8C */	stw r3, 0x58c(r31)
/* 80B9EE88  38 03 00 20 */	addi r0, r3, 0x20
/* 80B9EE8C  90 1F 05 90 */	stw r0, 0x590(r31)
/* 80B9EE90  3B BF 05 B0 */	addi r29, r31, 0x5b0
/* 80B9EE94  7F A3 EB 78 */	mr r3, r29
/* 80B9EE98  4B 4E 4B 90 */	b __ct__12dCcD_GObjInfFv
/* 80B9EE9C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80B9EEA0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80B9EEA4  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80B9EEA8  3C 60 80 BA */	lis r3, __vt__8cM3dGAab@ha
/* 80B9EEAC  38 03 F9 A0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80B9EEB0  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80B9EEB4  3C 60 80 BA */	lis r3, __vt__8cM3dGCyl@ha
/* 80B9EEB8  38 03 F9 94 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80B9EEBC  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80B9EEC0  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80B9EEC4  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80B9EEC8  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80B9EECC  38 03 00 58 */	addi r0, r3, 0x58
/* 80B9EED0  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80B9EED4  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80B9EED8  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80B9EEDC  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80B9EEE0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80B9EEE4  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80B9EEE8  38 03 00 84 */	addi r0, r3, 0x84
/* 80B9EEEC  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80B9EEF0  38 7F 07 34 */	addi r3, r31, 0x734
/* 80B9EEF4  4B 71 F9 50 */	b __ct__16Z2SoundObjSimpleFv
lbl_80B9EEF8:
/* 80B9EEF8  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80B9EEFC  60 00 00 08 */	ori r0, r0, 8
/* 80B9EF00  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80B9EF04:
/* 80B9EF04  38 7E 05 68 */	addi r3, r30, 0x568
/* 80B9EF08  3C 80 80 BA */	lis r4, stringBase0@ha
/* 80B9EF0C  38 84 F8 F4 */	addi r4, r4, stringBase0@l
/* 80B9EF10  4B 48 DF AC */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80B9EF14  7C 7F 1B 78 */	mr r31, r3
/* 80B9EF18  2C 1F 00 04 */	cmpwi r31, 4
/* 80B9EF1C  40 82 01 7C */	bne lbl_80B9F098
/* 80B9EF20  7F C3 F3 78 */	mr r3, r30
/* 80B9EF24  3C 80 80 BA */	lis r4, createHeapCallBack__11daTvCdlst_cFP10fopAc_ac_c@ha
/* 80B9EF28  38 84 F1 44 */	addi r4, r4, createHeapCallBack__11daTvCdlst_cFP10fopAc_ac_c@l
/* 80B9EF2C  38 A0 08 20 */	li r5, 0x820
/* 80B9EF30  4B 47 B5 80 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80B9EF34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B9EF38  40 82 00 0C */	bne lbl_80B9EF44
/* 80B9EF3C  38 60 00 05 */	li r3, 5
/* 80B9EF40  48 00 01 5C */	b lbl_80B9F09C
lbl_80B9EF44:
/* 80B9EF44  7F C3 F3 78 */	mr r3, r30
/* 80B9EF48  4B FF FD F9 */	bl setBaseMtx__11daTvCdlst_cFv
/* 80B9EF4C  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80B9EF50  38 03 00 24 */	addi r0, r3, 0x24
/* 80B9EF54  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80B9EF58  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80B9EF5C  80 83 00 04 */	lwz r4, 4(r3)
/* 80B9EF60  7F C3 F3 78 */	mr r3, r30
/* 80B9EF64  4B 47 B6 14 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80B9EF68  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B9EF6C  D0 1E 06 EC */	stfs f0, 0x6ec(r30)
/* 80B9EF70  3C 60 80 BA */	lis r3, lit_3750@ha
/* 80B9EF74  C0 23 F8 C0 */	lfs f1, lit_3750@l(r3)
/* 80B9EF78  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B9EF7C  EC 01 00 2A */	fadds f0, f1, f0
/* 80B9EF80  D0 1E 06 F0 */	stfs f0, 0x6f0(r30)
/* 80B9EF84  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B9EF88  D0 1E 06 F4 */	stfs f0, 0x6f4(r30)
/* 80B9EF8C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80B9EF90  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80B9EF94  98 1E 07 0C */	stb r0, 0x70c(r30)
/* 80B9EF98  88 1E 07 0C */	lbz r0, 0x70c(r30)
/* 80B9EF9C  28 00 00 FF */	cmplwi r0, 0xff
/* 80B9EFA0  40 82 00 0C */	bne lbl_80B9EFAC
/* 80B9EFA4  38 00 00 00 */	li r0, 0
/* 80B9EFA8  98 1E 07 0C */	stb r0, 0x70c(r30)
lbl_80B9EFAC:
/* 80B9EFAC  7F C3 F3 78 */	mr r3, r30
/* 80B9EFB0  48 00 01 B5 */	bl lightInit__11daTvCdlst_cFv
/* 80B9EFB4  C0 1E 06 EC */	lfs f0, 0x6ec(r30)
/* 80B9EFB8  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80B9EFBC  C0 1E 06 F0 */	lfs f0, 0x6f0(r30)
/* 80B9EFC0  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80B9EFC4  C0 1E 06 F4 */	lfs f0, 0x6f4(r30)
/* 80B9EFC8  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80B9EFCC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80B9EFD0  98 1E 06 FB */	stb r0, 0x6fb(r30)
/* 80B9EFD4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80B9EFD8  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80B9EFDC  98 1E 06 FC */	stb r0, 0x6fc(r30)
/* 80B9EFE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B9EFE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B9EFE8  88 9E 06 FB */	lbz r4, 0x6fb(r30)
/* 80B9EFEC  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80B9EFF0  7C 05 07 74 */	extsb r5, r0
/* 80B9EFF4  4B 49 63 6C */	b isSwitch__10dSv_info_cCFii
/* 80B9EFF8  98 7E 06 F9 */	stb r3, 0x6f9(r30)
/* 80B9EFFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B9F000  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B9F004  88 9E 06 FC */	lbz r4, 0x6fc(r30)
/* 80B9F008  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80B9F00C  7C 05 07 74 */	extsb r5, r0
/* 80B9F010  4B 49 63 50 */	b isSwitch__10dSv_info_cCFii
/* 80B9F014  98 7E 06 FA */	stb r3, 0x6fa(r30)
/* 80B9F018  38 60 00 00 */	li r3, 0
/* 80B9F01C  98 7E 06 FD */	stb r3, 0x6fd(r30)
/* 80B9F020  98 7E 06 F8 */	stb r3, 0x6f8(r30)
/* 80B9F024  88 1E 06 F9 */	lbz r0, 0x6f9(r30)
/* 80B9F028  28 00 00 00 */	cmplwi r0, 0
/* 80B9F02C  41 82 00 24 */	beq lbl_80B9F050
/* 80B9F030  88 1E 06 FA */	lbz r0, 0x6fa(r30)
/* 80B9F034  28 00 00 00 */	cmplwi r0, 0
/* 80B9F038  40 82 00 18 */	bne lbl_80B9F050
/* 80B9F03C  38 00 00 01 */	li r0, 1
/* 80B9F040  98 1E 06 F8 */	stb r0, 0x6f8(r30)
/* 80B9F044  98 7E 06 FD */	stb r3, 0x6fd(r30)
/* 80B9F048  7F C3 F3 78 */	mr r3, r30
/* 80B9F04C  48 00 01 A5 */	bl setLight__11daTvCdlst_cFv
lbl_80B9F050:
/* 80B9F050  38 7E 05 74 */	addi r3, r30, 0x574
/* 80B9F054  38 80 00 FF */	li r4, 0xff
/* 80B9F058  38 A0 00 FF */	li r5, 0xff
/* 80B9F05C  7F C6 F3 78 */	mr r6, r30
/* 80B9F060  4B 4E 48 00 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80B9F064  38 7E 05 B0 */	addi r3, r30, 0x5b0
/* 80B9F068  3C 80 80 BA */	lis r4, mCcDCyl__11daTvCdlst_c@ha
/* 80B9F06C  38 84 F9 00 */	addi r4, r4, mCcDCyl__11daTvCdlst_c@l
/* 80B9F070  4B 4E 58 44 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80B9F074  38 1E 05 74 */	addi r0, r30, 0x574
/* 80B9F078  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 80B9F07C  38 7E 07 34 */	addi r3, r30, 0x734
/* 80B9F080  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80B9F084  38 A0 00 01 */	li r5, 1
/* 80B9F088  81 9E 07 44 */	lwz r12, 0x744(r30)
/* 80B9F08C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80B9F090  7D 89 03 A6 */	mtctr r12
/* 80B9F094  4E 80 04 21 */	bctrl 
lbl_80B9F098:
/* 80B9F098  7F E3 FB 78 */	mr r3, r31
lbl_80B9F09C:
/* 80B9F09C  39 61 00 20 */	addi r11, r1, 0x20
/* 80B9F0A0  4B 7C 31 88 */	b _restgpr_29
/* 80B9F0A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B9F0A8  7C 08 03 A6 */	mtlr r0
/* 80B9F0AC  38 21 00 20 */	addi r1, r1, 0x20
/* 80B9F0B0  4E 80 00 20 */	blr 

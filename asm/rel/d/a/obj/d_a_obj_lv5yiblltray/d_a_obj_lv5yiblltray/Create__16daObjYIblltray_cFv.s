lbl_80C6EEFC:
/* 80C6EEFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C6EF00  7C 08 02 A6 */	mflr r0
/* 80C6EF04  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C6EF08  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C6EF0C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C6EF10  7C 7E 1B 78 */	mr r30, r3
/* 80C6EF14  3C 60 80 C7 */	lis r3, l_cull_box@ha
/* 80C6EF18  3B E3 09 A0 */	addi r31, r3, l_cull_box@l
/* 80C6EF1C  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 80C6EF20  80 9E 06 20 */	lwz r4, 0x620(r30)
/* 80C6EF24  38 84 00 24 */	addi r4, r4, 0x24
/* 80C6EF28  4B 6D 75 88 */	b PSMTXCopy
/* 80C6EF2C  38 1E 05 F0 */	addi r0, r30, 0x5f0
/* 80C6EF30  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80C6EF34  80 7E 00 B0 */	lwz r3, 0xb0(r30)
/* 80C6EF38  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80C6EF3C  40 82 00 A0 */	bne lbl_80C6EFDC
/* 80C6EF40  54 64 FE 3E */	rlwinm r4, r3, 0x1f, 0x18, 0x1f
/* 80C6EF44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C6EF48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C6EF4C  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C6EF50  7C 05 07 74 */	extsb r5, r0
/* 80C6EF54  4B 3C 64 0C */	b isSwitch__10dSv_info_cCFii
/* 80C6EF58  2C 03 00 00 */	cmpwi r3, 0
/* 80C6EF5C  40 82 00 40 */	bne lbl_80C6EF9C
/* 80C6EF60  38 00 1A 4F */	li r0, 0x1a4f
/* 80C6EF64  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 80C6EF68  38 60 00 00 */	li r3, 0
/* 80C6EF6C  90 7E 06 40 */	stw r3, 0x640(r30)
/* 80C6EF70  A8 1E 0A 40 */	lha r0, 0xa40(r30)
/* 80C6EF74  C8 3F 00 38 */	lfd f1, 0x38(r31)
/* 80C6EF78  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C6EF7C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C6EF80  3C 00 43 30 */	lis r0, 0x4330
/* 80C6EF84  90 01 00 08 */	stw r0, 8(r1)
/* 80C6EF88  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C6EF8C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C6EF90  D0 1E 0A 48 */	stfs f0, 0xa48(r30)
/* 80C6EF94  98 7E 0A 3C */	stb r3, 0xa3c(r30)
/* 80C6EF98  48 00 00 DC */	b lbl_80C6F074
lbl_80C6EF9C:
/* 80C6EF9C  38 00 E5 B1 */	li r0, -6735
/* 80C6EFA0  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 80C6EFA4  38 00 00 04 */	li r0, 4
/* 80C6EFA8  90 1E 06 40 */	stw r0, 0x640(r30)
/* 80C6EFAC  A8 1E 0A 3E */	lha r0, 0xa3e(r30)
/* 80C6EFB0  C8 3F 00 38 */	lfd f1, 0x38(r31)
/* 80C6EFB4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C6EFB8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C6EFBC  3C 00 43 30 */	lis r0, 0x4330
/* 80C6EFC0  90 01 00 08 */	stw r0, 8(r1)
/* 80C6EFC4  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C6EFC8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C6EFCC  D0 1E 0A 48 */	stfs f0, 0xa48(r30)
/* 80C6EFD0  38 00 00 01 */	li r0, 1
/* 80C6EFD4  98 1E 0A 3C */	stb r0, 0xa3c(r30)
/* 80C6EFD8  48 00 00 9C */	b lbl_80C6F074
lbl_80C6EFDC:
/* 80C6EFDC  54 64 FE 3E */	rlwinm r4, r3, 0x1f, 0x18, 0x1f
/* 80C6EFE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C6EFE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C6EFE8  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C6EFEC  7C 05 07 74 */	extsb r5, r0
/* 80C6EFF0  4B 3C 63 70 */	b isSwitch__10dSv_info_cCFii
/* 80C6EFF4  2C 03 00 00 */	cmpwi r3, 0
/* 80C6EFF8  40 82 00 44 */	bne lbl_80C6F03C
/* 80C6EFFC  38 00 E5 B1 */	li r0, -6735
/* 80C6F000  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 80C6F004  38 00 00 04 */	li r0, 4
/* 80C6F008  90 1E 06 40 */	stw r0, 0x640(r30)
/* 80C6F00C  A8 1E 0A 3E */	lha r0, 0xa3e(r30)
/* 80C6F010  C8 3F 00 38 */	lfd f1, 0x38(r31)
/* 80C6F014  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C6F018  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C6F01C  3C 00 43 30 */	lis r0, 0x4330
/* 80C6F020  90 01 00 08 */	stw r0, 8(r1)
/* 80C6F024  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C6F028  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C6F02C  D0 1E 0A 48 */	stfs f0, 0xa48(r30)
/* 80C6F030  38 00 00 01 */	li r0, 1
/* 80C6F034  98 1E 0A 3C */	stb r0, 0xa3c(r30)
/* 80C6F038  48 00 00 3C */	b lbl_80C6F074
lbl_80C6F03C:
/* 80C6F03C  38 00 1A 4F */	li r0, 0x1a4f
/* 80C6F040  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 80C6F044  38 60 00 00 */	li r3, 0
/* 80C6F048  90 7E 06 40 */	stw r3, 0x640(r30)
/* 80C6F04C  A8 1E 0A 40 */	lha r0, 0xa40(r30)
/* 80C6F050  C8 3F 00 38 */	lfd f1, 0x38(r31)
/* 80C6F054  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C6F058  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C6F05C  3C 00 43 30 */	lis r0, 0x4330
/* 80C6F060  90 01 00 08 */	stw r0, 8(r1)
/* 80C6F064  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C6F068  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C6F06C  D0 1E 0A 48 */	stfs f0, 0xa48(r30)
/* 80C6F070  98 7E 0A 3C */	stb r3, 0xa3c(r30)
lbl_80C6F074:
/* 80C6F074  38 7E 0A 38 */	addi r3, r30, 0xa38
/* 80C6F078  4B 39 E3 B0 */	b play__14mDoExt_baseAnmFv
/* 80C6F07C  7F C3 F3 78 */	mr r3, r30
/* 80C6F080  4B FF FC 09 */	bl setMtx__16daObjYIblltray_cFv
/* 80C6F084  38 00 00 00 */	li r0, 0
/* 80C6F088  B0 1E 06 24 */	sth r0, 0x624(r30)
/* 80C6F08C  7F C3 F3 78 */	mr r3, r30
/* 80C6F090  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80C6F094  38 9F 00 00 */	addi r4, r31, 0
/* 80C6F098  C0 44 00 04 */	lfs f2, 4(r4)
/* 80C6F09C  C0 64 00 08 */	lfs f3, 8(r4)
/* 80C6F0A0  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 80C6F0A4  C0 A4 00 10 */	lfs f5, 0x10(r4)
/* 80C6F0A8  C0 C4 00 14 */	lfs f6, 0x14(r4)
/* 80C6F0AC  4B 3A B4 9C */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80C6F0B0  38 00 FF FF */	li r0, -1
/* 80C6F0B4  90 1E 06 34 */	stw r0, 0x634(r30)
/* 80C6F0B8  90 1E 06 38 */	stw r0, 0x638(r30)
/* 80C6F0BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C6F0C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C6F0C4  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80C6F0C8  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80C6F0CC  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80C6F0D0  4B 6D 78 18 */	b PSMTXTrans
/* 80C6F0D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C6F0D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C6F0DC  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80C6F0E0  4B 39 D3 54 */	b mDoMtx_YrotM__FPA4_fs
/* 80C6F0E4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C6F0E8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80C6F0EC  40 82 00 18 */	bne lbl_80C6F104
/* 80C6F0F0  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80C6F0F4  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80C6F0F8  C0 7F 00 20 */	lfs f3, 0x20(r31)
/* 80C6F0FC  4B 39 DC A0 */	b transM__14mDoMtx_stack_cFfff
/* 80C6F100  48 00 00 14 */	b lbl_80C6F114
lbl_80C6F104:
/* 80C6F104  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80C6F108  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80C6F10C  C0 7F 00 20 */	lfs f3, 0x20(r31)
/* 80C6F110  4B 39 DC 8C */	b transM__14mDoMtx_stack_cFfff
lbl_80C6F114:
/* 80C6F114  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C6F118  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C6F11C  3C 80 80 C7 */	lis r4, l_back_pos@ha
/* 80C6F120  38 84 0A 54 */	addi r4, r4, l_back_pos@l
/* 80C6F124  38 BE 05 B4 */	addi r5, r30, 0x5b4
/* 80C6F128  4B 6D 7C 44 */	b PSMTXMultVec
/* 80C6F12C  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 80C6F130  38 80 00 FF */	li r4, 0xff
/* 80C6F134  38 A0 00 00 */	li r5, 0
/* 80C6F138  7F C6 F3 78 */	mr r6, r30
/* 80C6F13C  4B 41 47 24 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C6F140  38 7E 06 44 */	addi r3, r30, 0x644
/* 80C6F144  3C 80 80 C7 */	lis r4, l_cc_cyl_src@ha
/* 80C6F148  38 84 0A 60 */	addi r4, r4, l_cc_cyl_src@l
/* 80C6F14C  4B 41 57 68 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80C6F150  38 1E 09 F8 */	addi r0, r30, 0x9f8
/* 80C6F154  90 1E 06 88 */	stw r0, 0x688(r30)
/* 80C6F158  38 7E 07 80 */	addi r3, r30, 0x780
/* 80C6F15C  3C 80 80 C7 */	lis r4, l_cc_cyl_src@ha
/* 80C6F160  38 84 0A 60 */	addi r4, r4, l_cc_cyl_src@l
/* 80C6F164  4B 41 57 50 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80C6F168  38 1E 09 F8 */	addi r0, r30, 0x9f8
/* 80C6F16C  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80C6F170  38 7E 08 A4 */	addi r3, r30, 0x8a4
/* 80C6F174  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80C6F178  4B 60 00 88 */	b SetR__8cM3dGCylFf
/* 80C6F17C  38 7E 08 A4 */	addi r3, r30, 0x8a4
/* 80C6F180  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80C6F184  4B 60 00 74 */	b SetH__8cM3dGCylFf
/* 80C6F188  38 7E 08 BC */	addi r3, r30, 0x8bc
/* 80C6F18C  3C 80 80 C7 */	lis r4, l_cc_cyl_src@ha
/* 80C6F190  38 84 0A 60 */	addi r4, r4, l_cc_cyl_src@l
/* 80C6F194  4B 41 57 20 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80C6F198  38 1E 09 F8 */	addi r0, r30, 0x9f8
/* 80C6F19C  90 1E 09 00 */	stw r0, 0x900(r30)
/* 80C6F1A0  38 7E 09 E0 */	addi r3, r30, 0x9e0
/* 80C6F1A4  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80C6F1A8  4B 60 00 58 */	b SetR__8cM3dGCylFf
/* 80C6F1AC  38 7E 09 E0 */	addi r3, r30, 0x9e0
/* 80C6F1B0  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80C6F1B4  4B 60 00 44 */	b SetH__8cM3dGCylFf
/* 80C6F1B8  38 7E 08 E8 */	addi r3, r30, 0x8e8
/* 80C6F1BC  38 80 00 60 */	li r4, 0x60
/* 80C6F1C0  4B 5F 57 5C */	b SetVsGrp__10cCcD_ObjCoFUl
/* 80C6F1C4  38 00 00 54 */	li r0, 0x54
/* 80C6F1C8  98 1E 05 4B */	stb r0, 0x54b(r30)
/* 80C6F1CC  38 60 00 01 */	li r3, 1
/* 80C6F1D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C6F1D4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C6F1D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C6F1DC  7C 08 03 A6 */	mtlr r0
/* 80C6F1E0  38 21 00 20 */	addi r1, r1, 0x20
/* 80C6F1E4  4E 80 00 20 */	blr 

lbl_80A7DE04:
/* 80A7DE04  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80A7DE08  7C 08 02 A6 */	mflr r0
/* 80A7DE0C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80A7DE10  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80A7DE14  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80A7DE18  39 61 00 60 */	addi r11, r1, 0x60
/* 80A7DE1C  4B 8E 43 B9 */	bl _savegpr_27
/* 80A7DE20  7C 7D 1B 78 */	mr r29, r3
/* 80A7DE24  3C 80 80 A8 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80A838B0@ha */
/* 80A7DE28  3B C4 38 B0 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x80A838B0@l */
/* 80A7DE2C  3C 80 80 A8 */	lis r4, m__17daNpcMoiR_Param_c@ha /* 0x80A832AC@ha */
/* 80A7DE30  3B E4 32 AC */	addi r31, r4, m__17daNpcMoiR_Param_c@l /* 0x80A832AC@l */
/* 80A7DE34  A0 03 0E 08 */	lhz r0, 0xe08(r3)
/* 80A7DE38  2C 00 00 02 */	cmpwi r0, 2
/* 80A7DE3C  41 82 00 7C */	beq lbl_80A7DEB8
/* 80A7DE40  40 80 08 04 */	bge lbl_80A7E644
/* 80A7DE44  2C 00 00 00 */	cmpwi r0, 0
/* 80A7DE48  41 82 00 0C */	beq lbl_80A7DE54
/* 80A7DE4C  48 00 07 F8 */	b lbl_80A7E644
/* 80A7DE50  48 00 07 F4 */	b lbl_80A7E644
lbl_80A7DE54:
/* 80A7DE54  38 80 00 12 */	li r4, 0x12
/* 80A7DE58  C0 3F 04 E4 */	lfs f1, 0x4e4(r31)
/* 80A7DE5C  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A7DE60  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A7DE64  7D 89 03 A6 */	mtctr r12
/* 80A7DE68  4E 80 04 21 */	bctrl 
/* 80A7DE6C  7F A3 EB 78 */	mr r3, r29
/* 80A7DE70  38 80 00 07 */	li r4, 7
/* 80A7DE74  C0 3F 04 E4 */	lfs f1, 0x4e4(r31)
/* 80A7DE78  38 A0 00 00 */	li r5, 0
/* 80A7DE7C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A7DE80  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A7DE84  7D 89 03 A6 */	mtctr r12
/* 80A7DE88  4E 80 04 21 */	bctrl 
/* 80A7DE8C  38 60 00 03 */	li r3, 3
/* 80A7DE90  38 80 00 05 */	li r4, 5
/* 80A7DE94  48 00 52 75 */	bl func_80A83108
/* 80A7DE98  90 7D 0E 00 */	stw r3, 0xe00(r29)
/* 80A7DE9C  38 00 00 00 */	li r0, 0
/* 80A7DEA0  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80A7DEA4  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80A7DEA8  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A7DEAC  38 00 00 02 */	li r0, 2
/* 80A7DEB0  B0 1D 0E 08 */	sth r0, 0xe08(r29)
/* 80A7DEB4  48 00 07 90 */	b lbl_80A7E644
lbl_80A7DEB8:
/* 80A7DEB8  38 7D 0C 7C */	addi r3, r29, 0xc7c
/* 80A7DEBC  4B 6D 28 31 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80A7DEC0  28 03 00 00 */	cmplwi r3, 0
/* 80A7DEC4  41 82 00 C4 */	beq lbl_80A7DF88
/* 80A7DEC8  88 1D 0E 0B */	lbz r0, 0xe0b(r29)
/* 80A7DECC  28 00 00 00 */	cmplwi r0, 0
/* 80A7DED0  40 82 00 0C */	bne lbl_80A7DEDC
/* 80A7DED4  C0 3F 04 E8 */	lfs f1, 0x4e8(r31)
/* 80A7DED8  48 00 00 0C */	b lbl_80A7DEE4
lbl_80A7DEDC:
/* 80A7DEDC  38 7F 00 00 */	addi r3, r31, 0
/* 80A7DEE0  C0 23 00 50 */	lfs f1, 0x50(r3)
lbl_80A7DEE4:
/* 80A7DEE4  7F A3 EB 78 */	mr r3, r29
/* 80A7DEE8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A7DEEC  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A7DEF0  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A7DEF4  4B 6D 5A FD */	bl chkActorInSight__8daNpcF_cFP10fopAc_ac_cf
/* 80A7DEF8  2C 03 00 00 */	cmpwi r3, 0
/* 80A7DEFC  40 82 00 14 */	bne lbl_80A7DF10
/* 80A7DF00  38 7D 0C 7C */	addi r3, r29, 0xc7c
/* 80A7DF04  4B 6D 27 DD */	bl remove__18daNpcF_ActorMngr_cFv
/* 80A7DF08  3B 60 00 00 */	li r27, 0
/* 80A7DF0C  48 00 00 68 */	b lbl_80A7DF74
lbl_80A7DF10:
/* 80A7DF10  38 7D 0C 7C */	addi r3, r29, 0xc7c
/* 80A7DF14  4B 6D 27 D9 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80A7DF18  28 03 00 00 */	cmplwi r3, 0
/* 80A7DF1C  40 82 00 20 */	bne lbl_80A7DF3C
/* 80A7DF20  7F A3 EB 78 */	mr r3, r29
/* 80A7DF24  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A7DF28  7F A5 EB 78 */	mr r5, r29
/* 80A7DF2C  88 DD 05 47 */	lbz r6, 0x547(r29)
/* 80A7DF30  4B 6D 5C AD */	bl chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80A7DF34  7C 7B 1B 78 */	mr r27, r3
/* 80A7DF38  48 00 00 1C */	b lbl_80A7DF54
lbl_80A7DF3C:
/* 80A7DF3C  7F A3 EB 78 */	mr r3, r29
/* 80A7DF40  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A7DF44  7F A5 EB 78 */	mr r5, r29
/* 80A7DF48  88 DD 05 45 */	lbz r6, 0x545(r29)
/* 80A7DF4C  4B 6D 5C 91 */	bl chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80A7DF50  7C 7B 1B 78 */	mr r27, r3
lbl_80A7DF54:
/* 80A7DF54  2C 1B 00 00 */	cmpwi r27, 0
/* 80A7DF58  41 82 00 14 */	beq lbl_80A7DF6C
/* 80A7DF5C  38 7D 0C 7C */	addi r3, r29, 0xc7c
/* 80A7DF60  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A7DF64  4B 6D 27 59 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80A7DF68  48 00 00 0C */	b lbl_80A7DF74
lbl_80A7DF6C:
/* 80A7DF6C  38 7D 0C 7C */	addi r3, r29, 0xc7c
/* 80A7DF70  4B 6D 27 71 */	bl remove__18daNpcF_ActorMngr_cFv
lbl_80A7DF74:
/* 80A7DF74  2C 1B 00 00 */	cmpwi r27, 0
/* 80A7DF78  40 82 00 CC */	bne lbl_80A7E044
/* 80A7DF7C  38 00 00 00 */	li r0, 0
/* 80A7DF80  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80A7DF84  48 00 00 C0 */	b lbl_80A7E044
lbl_80A7DF88:
/* 80A7DF88  88 1D 0E 0B */	lbz r0, 0xe0b(r29)
/* 80A7DF8C  28 00 00 00 */	cmplwi r0, 0
/* 80A7DF90  40 82 00 0C */	bne lbl_80A7DF9C
/* 80A7DF94  C0 3F 04 E8 */	lfs f1, 0x4e8(r31)
/* 80A7DF98  48 00 00 0C */	b lbl_80A7DFA4
lbl_80A7DF9C:
/* 80A7DF9C  38 7F 00 00 */	addi r3, r31, 0
/* 80A7DFA0  C0 23 00 50 */	lfs f1, 0x50(r3)
lbl_80A7DFA4:
/* 80A7DFA4  7F A3 EB 78 */	mr r3, r29
/* 80A7DFA8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A7DFAC  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A7DFB0  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A7DFB4  4B 6D 5A 3D */	bl chkActorInSight__8daNpcF_cFP10fopAc_ac_cf
/* 80A7DFB8  2C 03 00 00 */	cmpwi r3, 0
/* 80A7DFBC  40 82 00 14 */	bne lbl_80A7DFD0
/* 80A7DFC0  38 7D 0C 7C */	addi r3, r29, 0xc7c
/* 80A7DFC4  4B 6D 27 1D */	bl remove__18daNpcF_ActorMngr_cFv
/* 80A7DFC8  3B 60 00 00 */	li r27, 0
/* 80A7DFCC  48 00 00 68 */	b lbl_80A7E034
lbl_80A7DFD0:
/* 80A7DFD0  38 7D 0C 7C */	addi r3, r29, 0xc7c
/* 80A7DFD4  4B 6D 27 19 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80A7DFD8  28 03 00 00 */	cmplwi r3, 0
/* 80A7DFDC  40 82 00 20 */	bne lbl_80A7DFFC
/* 80A7DFE0  7F A3 EB 78 */	mr r3, r29
/* 80A7DFE4  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A7DFE8  7F A5 EB 78 */	mr r5, r29
/* 80A7DFEC  88 DD 05 47 */	lbz r6, 0x547(r29)
/* 80A7DFF0  4B 6D 5B ED */	bl chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80A7DFF4  7C 7B 1B 78 */	mr r27, r3
/* 80A7DFF8  48 00 00 1C */	b lbl_80A7E014
lbl_80A7DFFC:
/* 80A7DFFC  7F A3 EB 78 */	mr r3, r29
/* 80A7E000  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A7E004  7F A5 EB 78 */	mr r5, r29
/* 80A7E008  88 DD 05 45 */	lbz r6, 0x545(r29)
/* 80A7E00C  4B 6D 5B D1 */	bl chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80A7E010  7C 7B 1B 78 */	mr r27, r3
lbl_80A7E014:
/* 80A7E014  2C 1B 00 00 */	cmpwi r27, 0
/* 80A7E018  41 82 00 14 */	beq lbl_80A7E02C
/* 80A7E01C  38 7D 0C 7C */	addi r3, r29, 0xc7c
/* 80A7E020  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A7E024  4B 6D 26 99 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80A7E028  48 00 00 0C */	b lbl_80A7E034
lbl_80A7E02C:
/* 80A7E02C  38 7D 0C 7C */	addi r3, r29, 0xc7c
/* 80A7E030  4B 6D 26 B1 */	bl remove__18daNpcF_ActorMngr_cFv
lbl_80A7E034:
/* 80A7E034  2C 1B 00 00 */	cmpwi r27, 0
/* 80A7E038  41 82 00 0C */	beq lbl_80A7E044
/* 80A7E03C  38 00 00 00 */	li r0, 0
/* 80A7E040  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80A7E044:
/* 80A7E044  38 7D 0C 7C */	addi r3, r29, 0xc7c
/* 80A7E048  4B 6D 26 A5 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80A7E04C  28 03 00 00 */	cmplwi r3, 0
/* 80A7E050  41 82 00 1C */	beq lbl_80A7E06C
/* 80A7E054  A8 1D 0E 06 */	lha r0, 0xe06(r29)
/* 80A7E058  2C 00 00 02 */	cmpwi r0, 2
/* 80A7E05C  41 82 00 24 */	beq lbl_80A7E080
/* 80A7E060  38 00 00 02 */	li r0, 2
/* 80A7E064  B0 1D 0E 06 */	sth r0, 0xe06(r29)
/* 80A7E068  48 00 00 18 */	b lbl_80A7E080
lbl_80A7E06C:
/* 80A7E06C  A8 1D 0E 06 */	lha r0, 0xe06(r29)
/* 80A7E070  2C 00 00 00 */	cmpwi r0, 0
/* 80A7E074  41 82 00 0C */	beq lbl_80A7E080
/* 80A7E078  38 00 00 00 */	li r0, 0
/* 80A7E07C  B0 1D 0E 06 */	sth r0, 0xe06(r29)
lbl_80A7E080:
/* 80A7E080  A0 1D 09 E6 */	lhz r0, 0x9e6(r29)
/* 80A7E084  28 00 00 00 */	cmplwi r0, 0
/* 80A7E088  40 82 02 28 */	bne lbl_80A7E2B0
/* 80A7E08C  AB 7D 04 B6 */	lha r27, 0x4b6(r29)
/* 80A7E090  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80A7E094  7C 1B 00 00 */	cmpw r27, r0
/* 80A7E098  41 82 02 18 */	beq lbl_80A7E2B0
/* 80A7E09C  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80A7E0A0  2C 03 00 00 */	cmpwi r3, 0
/* 80A7E0A4  40 82 01 20 */	bne lbl_80A7E1C4
/* 80A7E0A8  C0 5F 04 EC */	lfs f2, 0x4ec(r31)
/* 80A7E0AC  7C 00 D8 50 */	subf r0, r0, r27
/* 80A7E0B0  7C 00 07 34 */	extsh r0, r0
/* 80A7E0B4  C8 3F 05 08 */	lfd f1, 0x508(r31)
/* 80A7E0B8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A7E0BC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80A7E0C0  3C 00 43 30 */	lis r0, 0x4330
/* 80A7E0C4  90 01 00 38 */	stw r0, 0x38(r1)
/* 80A7E0C8  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80A7E0CC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A7E0D0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A7E0D4  FC 00 02 10 */	fabs f0, f0
/* 80A7E0D8  FC 00 00 18 */	frsp f0, f0
/* 80A7E0DC  FC 00 00 1E */	fctiwz f0, f0
/* 80A7E0E0  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80A7E0E4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A7E0E8  2C 00 00 28 */	cmpwi r0, 0x28
/* 80A7E0EC  40 81 00 90 */	ble lbl_80A7E17C
/* 80A7E0F0  7F A3 EB 78 */	mr r3, r29
/* 80A7E0F4  38 80 00 12 */	li r4, 0x12
/* 80A7E0F8  C0 3F 04 E4 */	lfs f1, 0x4e4(r31)
/* 80A7E0FC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A7E100  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A7E104  7D 89 03 A6 */	mtctr r12
/* 80A7E108  4E 80 04 21 */	bctrl 
/* 80A7E10C  80 7E 03 10 */	lwz r3, 0x310(r30)
/* 80A7E110  80 1E 03 14 */	lwz r0, 0x314(r30)
/* 80A7E114  90 61 00 08 */	stw r3, 8(r1)
/* 80A7E118  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A7E11C  80 1E 03 18 */	lwz r0, 0x318(r30)
/* 80A7E120  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A7E124  38 61 00 08 */	addi r3, r1, 8
/* 80A7E128  38 9D 0D DC */	addi r4, r29, 0xddc
/* 80A7E12C  4B 8E 3F 1D */	bl __ptmf_cmpr
/* 80A7E130  2C 03 00 00 */	cmpwi r3, 0
/* 80A7E134  40 82 00 28 */	bne lbl_80A7E15C
/* 80A7E138  7F A3 EB 78 */	mr r3, r29
/* 80A7E13C  38 80 00 26 */	li r4, 0x26
/* 80A7E140  C0 3F 04 E4 */	lfs f1, 0x4e4(r31)
/* 80A7E144  38 A0 00 00 */	li r5, 0
/* 80A7E148  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A7E14C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A7E150  7D 89 03 A6 */	mtctr r12
/* 80A7E154  4E 80 04 21 */	bctrl 
/* 80A7E158  48 00 00 24 */	b lbl_80A7E17C
lbl_80A7E15C:
/* 80A7E15C  7F A3 EB 78 */	mr r3, r29
/* 80A7E160  38 80 00 2A */	li r4, 0x2a
/* 80A7E164  C0 3F 04 E4 */	lfs f1, 0x4e4(r31)
/* 80A7E168  38 A0 00 00 */	li r5, 0
/* 80A7E16C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A7E170  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A7E174  7D 89 03 A6 */	mtctr r12
/* 80A7E178  4E 80 04 21 */	bctrl 
lbl_80A7E17C:
/* 80A7E17C  B3 7D 09 96 */	sth r27, 0x996(r29)
/* 80A7E180  38 00 00 00 */	li r0, 0
/* 80A7E184  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80A7E188  A8 7D 08 F2 */	lha r3, 0x8f2(r29)
/* 80A7E18C  A8 1D 09 96 */	lha r0, 0x996(r29)
/* 80A7E190  7C 03 00 00 */	cmpw r3, r0
/* 80A7E194  40 82 00 10 */	bne lbl_80A7E1A4
/* 80A7E198  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80A7E19C  38 03 00 01 */	addi r0, r3, 1
/* 80A7E1A0  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80A7E1A4:
/* 80A7E1A4  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80A7E1A8  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80A7E1AC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A7E1B0  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80A7E1B4  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80A7E1B8  38 03 00 01 */	addi r0, r3, 1
/* 80A7E1BC  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80A7E1C0  48 00 00 90 */	b lbl_80A7E250
lbl_80A7E1C4:
/* 80A7E1C4  2C 03 00 01 */	cmpwi r3, 1
/* 80A7E1C8  40 82 00 88 */	bne lbl_80A7E250
/* 80A7E1CC  7F A3 EB 78 */	mr r3, r29
/* 80A7E1D0  A8 9D 09 96 */	lha r4, 0x996(r29)
/* 80A7E1D4  38 A0 00 00 */	li r5, 0
/* 80A7E1D8  A8 1D 09 E0 */	lha r0, 0x9e0(r29)
/* 80A7E1DC  2C 00 00 25 */	cmpwi r0, 0x25
/* 80A7E1E0  40 82 00 14 */	bne lbl_80A7E1F4
/* 80A7E1E4  A8 1D 09 DA */	lha r0, 0x9da(r29)
/* 80A7E1E8  2C 00 00 00 */	cmpwi r0, 0
/* 80A7E1EC  41 81 00 08 */	bgt lbl_80A7E1F4
/* 80A7E1F0  38 A0 00 01 */	li r5, 1
lbl_80A7E1F4:
/* 80A7E1F4  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80A7E1F8  41 82 00 0C */	beq lbl_80A7E204
/* 80A7E1FC  C0 3F 04 F0 */	lfs f1, 0x4f0(r31)
/* 80A7E200  48 00 00 08 */	b lbl_80A7E208
lbl_80A7E204:
/* 80A7E204  C0 3F 04 F4 */	lfs f1, 0x4f4(r31)
lbl_80A7E208:
/* 80A7E208  38 A0 00 00 */	li r5, 0
/* 80A7E20C  4B 6D 5C E9 */	bl turn__8daNpcF_cFsfi
/* 80A7E210  2C 03 00 00 */	cmpwi r3, 0
/* 80A7E214  41 82 00 2C */	beq lbl_80A7E240
/* 80A7E218  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A7E21C  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80A7E220  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A7E224  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
/* 80A7E228  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A7E22C  B0 1D 08 F8 */	sth r0, 0x8f8(r29)
/* 80A7E230  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80A7E234  38 03 00 01 */	addi r0, r3, 1
/* 80A7E238  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80A7E23C  48 00 00 14 */	b lbl_80A7E250
lbl_80A7E240:
/* 80A7E240  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A7E244  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80A7E248  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A7E24C  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
lbl_80A7E250:
/* 80A7E250  80 1D 09 6C */	lwz r0, 0x96c(r29)
/* 80A7E254  2C 00 00 01 */	cmpwi r0, 1
/* 80A7E258  40 81 00 58 */	ble lbl_80A7E2B0
/* 80A7E25C  7F A3 EB 78 */	mr r3, r29
/* 80A7E260  38 80 00 12 */	li r4, 0x12
/* 80A7E264  C0 3F 04 E4 */	lfs f1, 0x4e4(r31)
/* 80A7E268  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A7E26C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A7E270  7D 89 03 A6 */	mtctr r12
/* 80A7E274  4E 80 04 21 */	bctrl 
/* 80A7E278  7F A3 EB 78 */	mr r3, r29
/* 80A7E27C  38 80 00 07 */	li r4, 7
/* 80A7E280  C0 3F 04 E4 */	lfs f1, 0x4e4(r31)
/* 80A7E284  38 A0 00 00 */	li r5, 0
/* 80A7E288  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A7E28C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A7E290  7D 89 03 A6 */	mtctr r12
/* 80A7E294  4E 80 04 21 */	bctrl 
/* 80A7E298  38 60 00 03 */	li r3, 3
/* 80A7E29C  38 80 00 05 */	li r4, 5
/* 80A7E2A0  48 00 4E 69 */	bl func_80A83108
/* 80A7E2A4  90 7D 0E 00 */	stw r3, 0xe00(r29)
/* 80A7E2A8  38 00 00 00 */	li r0, 0
/* 80A7E2AC  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80A7E2B0:
/* 80A7E2B0  A0 7D 09 E2 */	lhz r3, 0x9e2(r29)
/* 80A7E2B4  80 1D 0E 00 */	lwz r0, 0xe00(r29)
/* 80A7E2B8  7C 03 00 00 */	cmpw r3, r0
/* 80A7E2BC  41 80 00 6C */	blt lbl_80A7E328
/* 80A7E2C0  A8 1D 09 E0 */	lha r0, 0x9e0(r29)
/* 80A7E2C4  2C 00 00 29 */	cmpwi r0, 0x29
/* 80A7E2C8  40 82 00 38 */	bne lbl_80A7E300
/* 80A7E2CC  7F A3 EB 78 */	mr r3, r29
/* 80A7E2D0  38 80 00 07 */	li r4, 7
/* 80A7E2D4  C0 3F 04 E4 */	lfs f1, 0x4e4(r31)
/* 80A7E2D8  38 A0 00 00 */	li r5, 0
/* 80A7E2DC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A7E2E0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A7E2E4  7D 89 03 A6 */	mtctr r12
/* 80A7E2E8  4E 80 04 21 */	bctrl 
/* 80A7E2EC  38 60 00 03 */	li r3, 3
/* 80A7E2F0  38 80 00 05 */	li r4, 5
/* 80A7E2F4  48 00 4E 15 */	bl func_80A83108
/* 80A7E2F8  90 7D 0E 00 */	stw r3, 0xe00(r29)
/* 80A7E2FC  48 00 00 2C */	b lbl_80A7E328
lbl_80A7E300:
/* 80A7E300  7F A3 EB 78 */	mr r3, r29
/* 80A7E304  38 80 00 29 */	li r4, 0x29
/* 80A7E308  C0 3F 04 E4 */	lfs f1, 0x4e4(r31)
/* 80A7E30C  38 A0 00 00 */	li r5, 0
/* 80A7E310  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A7E314  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A7E318  7D 89 03 A6 */	mtctr r12
/* 80A7E31C  4E 80 04 21 */	bctrl 
/* 80A7E320  38 00 00 01 */	li r0, 1
/* 80A7E324  90 1D 0E 00 */	stw r0, 0xe00(r29)
lbl_80A7E328:
/* 80A7E328  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A7E32C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A7E330  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80A7E334  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80A7E338  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80A7E33C  41 82 00 BC */	beq lbl_80A7E3F8
/* 80A7E340  C8 3F 04 F8 */	lfd f1, 0x4f8(r31)
/* 80A7E344  C8 5F 05 00 */	lfd f2, 0x500(r31)
/* 80A7E348  4B 8E E4 39 */	bl pow
/* 80A7E34C  FF E0 08 18 */	frsp f31, f1
/* 80A7E350  7F A3 EB 78 */	mr r3, r29
/* 80A7E354  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A7E358  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A7E35C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A7E360  4B 59 C7 35 */	bl fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A7E364  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80A7E368  40 80 00 FC */	bge lbl_80A7E464
/* 80A7E36C  80 7E 03 40 */	lwz r3, 0x340(r30)
/* 80A7E370  80 1E 03 44 */	lwz r0, 0x344(r30)
/* 80A7E374  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80A7E378  90 01 00 30 */	stw r0, 0x30(r1)
/* 80A7E37C  80 1E 03 48 */	lwz r0, 0x348(r30)
/* 80A7E380  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A7E384  38 00 00 03 */	li r0, 3
/* 80A7E388  B0 1D 0E 08 */	sth r0, 0xe08(r29)
/* 80A7E38C  38 7D 0D DC */	addi r3, r29, 0xddc
/* 80A7E390  4B 8E 3C 89 */	bl __ptmf_test
/* 80A7E394  2C 03 00 00 */	cmpwi r3, 0
/* 80A7E398  41 82 00 18 */	beq lbl_80A7E3B0
/* 80A7E39C  7F A3 EB 78 */	mr r3, r29
/* 80A7E3A0  38 80 00 00 */	li r4, 0
/* 80A7E3A4  39 9D 0D DC */	addi r12, r29, 0xddc
/* 80A7E3A8  4B 8E 3C DD */	bl __ptmf_scall
/* 80A7E3AC  60 00 00 00 */	nop 
lbl_80A7E3B0:
/* 80A7E3B0  38 00 00 00 */	li r0, 0
/* 80A7E3B4  B0 1D 0E 08 */	sth r0, 0xe08(r29)
/* 80A7E3B8  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80A7E3BC  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80A7E3C0  90 7D 0D DC */	stw r3, 0xddc(r29)
/* 80A7E3C4  90 1D 0D E0 */	stw r0, 0xde0(r29)
/* 80A7E3C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A7E3CC  90 1D 0D E4 */	stw r0, 0xde4(r29)
/* 80A7E3D0  38 7D 0D DC */	addi r3, r29, 0xddc
/* 80A7E3D4  4B 8E 3C 45 */	bl __ptmf_test
/* 80A7E3D8  2C 03 00 00 */	cmpwi r3, 0
/* 80A7E3DC  41 82 00 88 */	beq lbl_80A7E464
/* 80A7E3E0  7F A3 EB 78 */	mr r3, r29
/* 80A7E3E4  38 80 00 00 */	li r4, 0
/* 80A7E3E8  39 9D 0D DC */	addi r12, r29, 0xddc
/* 80A7E3EC  4B 8E 3C 99 */	bl __ptmf_scall
/* 80A7E3F0  60 00 00 00 */	nop 
/* 80A7E3F4  48 00 00 70 */	b lbl_80A7E464
lbl_80A7E3F8:
/* 80A7E3F8  38 60 02 1F */	li r3, 0x21f
/* 80A7E3FC  4B 6D 72 39 */	bl daNpcF_chkEvtBit__FUl
/* 80A7E400  2C 03 00 00 */	cmpwi r3, 0
/* 80A7E404  40 82 00 60 */	bne lbl_80A7E464
/* 80A7E408  7F A3 EB 78 */	mr r3, r29
/* 80A7E40C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A7E410  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A7E414  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A7E418  4B 59 C3 C9 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A7E41C  38 7F 00 00 */	addi r3, r31, 0
/* 80A7E420  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80A7E424  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A7E428  40 80 00 3C */	bge lbl_80A7E464
/* 80A7E42C  38 60 02 1F */	li r3, 0x21f
/* 80A7E430  4B 6D 72 45 */	bl daNpcF_onEvtBit__FUl
/* 80A7E434  38 60 00 0B */	li r3, 0xb
/* 80A7E438  4B 6D 72 FD */	bl daNpcF_offTmpBit__FUl
/* 80A7E43C  38 60 00 0C */	li r3, 0xc
/* 80A7E440  4B 6D 72 F5 */	bl daNpcF_offTmpBit__FUl
/* 80A7E444  38 60 00 0D */	li r3, 0xd
/* 80A7E448  4B 6D 72 ED */	bl daNpcF_offTmpBit__FUl
/* 80A7E44C  38 60 00 0E */	li r3, 0xe
/* 80A7E450  4B 6D 72 E5 */	bl daNpcF_offTmpBit__FUl
/* 80A7E454  38 60 00 0F */	li r3, 0xf
/* 80A7E458  4B 6D 72 DD */	bl daNpcF_offTmpBit__FUl
/* 80A7E45C  38 00 00 02 */	li r0, 2
/* 80A7E460  B0 1D 09 E6 */	sth r0, 0x9e6(r29)
lbl_80A7E464:
/* 80A7E464  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A7E468  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A7E46C  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80A7E470  28 00 00 00 */	cmplwi r0, 0
/* 80A7E474  41 82 01 78 */	beq lbl_80A7E5EC
/* 80A7E478  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 80A7E47C  28 00 00 01 */	cmplwi r0, 1
/* 80A7E480  40 82 00 C4 */	bne lbl_80A7E544
/* 80A7E484  38 00 00 00 */	li r0, 0
/* 80A7E488  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80A7E48C  28 04 00 01 */	cmplwi r4, 1
/* 80A7E490  41 82 00 0C */	beq lbl_80A7E49C
/* 80A7E494  28 04 00 02 */	cmplwi r4, 2
/* 80A7E498  40 82 00 08 */	bne lbl_80A7E4A0
lbl_80A7E49C:
/* 80A7E49C  38 00 00 01 */	li r0, 1
lbl_80A7E4A0:
/* 80A7E4A0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A7E4A4  41 82 00 14 */	beq lbl_80A7E4B8
/* 80A7E4A8  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80A7E4AC  4B 5C A3 45 */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 80A7E4B0  2C 03 00 00 */	cmpwi r3, 0
/* 80A7E4B4  41 82 01 90 */	beq lbl_80A7E644
lbl_80A7E4B8:
/* 80A7E4B8  80 7E 03 58 */	lwz r3, 0x358(r30)
/* 80A7E4BC  80 1E 03 5C */	lwz r0, 0x35c(r30)
/* 80A7E4C0  90 61 00 20 */	stw r3, 0x20(r1)
/* 80A7E4C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A7E4C8  80 1E 03 60 */	lwz r0, 0x360(r30)
/* 80A7E4CC  90 01 00 28 */	stw r0, 0x28(r1)
/* 80A7E4D0  38 00 00 03 */	li r0, 3
/* 80A7E4D4  B0 1D 0E 08 */	sth r0, 0xe08(r29)
/* 80A7E4D8  38 7D 0D DC */	addi r3, r29, 0xddc
/* 80A7E4DC  4B 8E 3B 3D */	bl __ptmf_test
/* 80A7E4E0  2C 03 00 00 */	cmpwi r3, 0
/* 80A7E4E4  41 82 00 18 */	beq lbl_80A7E4FC
/* 80A7E4E8  7F A3 EB 78 */	mr r3, r29
/* 80A7E4EC  38 80 00 00 */	li r4, 0
/* 80A7E4F0  39 9D 0D DC */	addi r12, r29, 0xddc
/* 80A7E4F4  4B 8E 3B 91 */	bl __ptmf_scall
/* 80A7E4F8  60 00 00 00 */	nop 
lbl_80A7E4FC:
/* 80A7E4FC  38 00 00 00 */	li r0, 0
/* 80A7E500  B0 1D 0E 08 */	sth r0, 0xe08(r29)
/* 80A7E504  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80A7E508  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A7E50C  90 7D 0D DC */	stw r3, 0xddc(r29)
/* 80A7E510  90 1D 0D E0 */	stw r0, 0xde0(r29)
/* 80A7E514  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80A7E518  90 1D 0D E4 */	stw r0, 0xde4(r29)
/* 80A7E51C  38 7D 0D DC */	addi r3, r29, 0xddc
/* 80A7E520  4B 8E 3A F9 */	bl __ptmf_test
/* 80A7E524  2C 03 00 00 */	cmpwi r3, 0
/* 80A7E528  41 82 01 1C */	beq lbl_80A7E644
/* 80A7E52C  7F A3 EB 78 */	mr r3, r29
/* 80A7E530  38 80 00 00 */	li r4, 0
/* 80A7E534  39 9D 0D DC */	addi r12, r29, 0xddc
/* 80A7E538  4B 8E 3B 4D */	bl __ptmf_scall
/* 80A7E53C  60 00 00 00 */	nop 
/* 80A7E540  48 00 01 04 */	b lbl_80A7E644
lbl_80A7E544:
/* 80A7E544  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80A7E548  80 9E 02 68 */	lwz r4, 0x268(r30)
/* 80A7E54C  38 A0 00 00 */	li r5, 0
/* 80A7E550  38 C0 00 00 */	li r6, 0
/* 80A7E554  4B 5C 95 C9 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80A7E558  2C 03 FF FF */	cmpwi r3, -1
/* 80A7E55C  41 82 00 E8 */	beq lbl_80A7E644
/* 80A7E560  80 7E 03 64 */	lwz r3, 0x364(r30)
/* 80A7E564  80 1E 03 68 */	lwz r0, 0x368(r30)
/* 80A7E568  90 61 00 14 */	stw r3, 0x14(r1)
/* 80A7E56C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A7E570  80 1E 03 6C */	lwz r0, 0x36c(r30)
/* 80A7E574  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A7E578  38 00 00 03 */	li r0, 3
/* 80A7E57C  B0 1D 0E 08 */	sth r0, 0xe08(r29)
/* 80A7E580  38 7D 0D DC */	addi r3, r29, 0xddc
/* 80A7E584  4B 8E 3A 95 */	bl __ptmf_test
/* 80A7E588  2C 03 00 00 */	cmpwi r3, 0
/* 80A7E58C  41 82 00 18 */	beq lbl_80A7E5A4
/* 80A7E590  7F A3 EB 78 */	mr r3, r29
/* 80A7E594  38 80 00 00 */	li r4, 0
/* 80A7E598  39 9D 0D DC */	addi r12, r29, 0xddc
/* 80A7E59C  4B 8E 3A E9 */	bl __ptmf_scall
/* 80A7E5A0  60 00 00 00 */	nop 
lbl_80A7E5A4:
/* 80A7E5A4  38 00 00 00 */	li r0, 0
/* 80A7E5A8  B0 1D 0E 08 */	sth r0, 0xe08(r29)
/* 80A7E5AC  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80A7E5B0  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80A7E5B4  90 7D 0D DC */	stw r3, 0xddc(r29)
/* 80A7E5B8  90 1D 0D E0 */	stw r0, 0xde0(r29)
/* 80A7E5BC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80A7E5C0  90 1D 0D E4 */	stw r0, 0xde4(r29)
/* 80A7E5C4  38 7D 0D DC */	addi r3, r29, 0xddc
/* 80A7E5C8  4B 8E 3A 51 */	bl __ptmf_test
/* 80A7E5CC  2C 03 00 00 */	cmpwi r3, 0
/* 80A7E5D0  41 82 00 74 */	beq lbl_80A7E644
/* 80A7E5D4  7F A3 EB 78 */	mr r3, r29
/* 80A7E5D8  38 80 00 00 */	li r4, 0
/* 80A7E5DC  39 9D 0D DC */	addi r12, r29, 0xddc
/* 80A7E5E0  4B 8E 3A A5 */	bl __ptmf_scall
/* 80A7E5E4  60 00 00 00 */	nop 
/* 80A7E5E8  48 00 00 5C */	b lbl_80A7E644
lbl_80A7E5EC:
/* 80A7E5EC  A0 1D 09 E6 */	lhz r0, 0x9e6(r29)
/* 80A7E5F0  28 00 00 00 */	cmplwi r0, 0
/* 80A7E5F4  41 82 00 10 */	beq lbl_80A7E604
/* 80A7E5F8  38 7E 02 48 */	addi r3, r30, 0x248
/* 80A7E5FC  80 03 00 08 */	lwz r0, 8(r3)
/* 80A7E600  90 1D 01 00 */	stw r0, 0x100(r29)
lbl_80A7E604:
/* 80A7E604  A0 1D 09 E6 */	lhz r0, 0x9e6(r29)
/* 80A7E608  28 00 00 00 */	cmplwi r0, 0
/* 80A7E60C  41 82 00 14 */	beq lbl_80A7E620
/* 80A7E610  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 80A7E614  38 7E 02 58 */	addi r3, r30, 0x258
/* 80A7E618  7C A3 00 2E */	lwzx r5, r3, r0
/* 80A7E61C  48 00 00 08 */	b lbl_80A7E624
lbl_80A7E620:
/* 80A7E620  38 A0 00 00 */	li r5, 0
lbl_80A7E624:
/* 80A7E624  7F A3 EB 78 */	mr r3, r29
/* 80A7E628  88 9D 09 E9 */	lbz r4, 0x9e9(r29)
/* 80A7E62C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80A7E630  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80A7E634  38 E0 00 28 */	li r7, 0x28
/* 80A7E638  39 00 00 FF */	li r8, 0xff
/* 80A7E63C  39 20 00 01 */	li r9, 1
/* 80A7E640  4B 6D 52 3D */	bl orderEvent__8daNpcF_cFiPcUsUsUcUs
lbl_80A7E644:
/* 80A7E644  38 60 00 01 */	li r3, 1
/* 80A7E648  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80A7E64C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80A7E650  39 61 00 60 */	addi r11, r1, 0x60
/* 80A7E654  4B 8E 3B CD */	bl _restgpr_27
/* 80A7E658  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80A7E65C  7C 08 03 A6 */	mtlr r0
/* 80A7E660  38 21 00 70 */	addi r1, r1, 0x70
/* 80A7E664  4E 80 00 20 */	blr 

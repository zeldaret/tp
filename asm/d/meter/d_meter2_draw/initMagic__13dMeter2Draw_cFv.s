lbl_80211E64:
/* 80211E64  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80211E68  7C 08 02 A6 */	mflr r0
/* 80211E6C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80211E70  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80211E74  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80211E78  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 80211E7C  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 80211E80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80211E84  93 C1 00 08 */	stw r30, 8(r1)
/* 80211E88  7C 7F 1B 78 */	mr r31, r3
/* 80211E8C  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 80211E90  D0 03 05 50 */	stfs f0, 0x550(r3)
/* 80211E94  D0 03 05 54 */	stfs f0, 0x554(r3)
/* 80211E98  38 60 00 6C */	li r3, 0x6c
/* 80211E9C  48 0B CD B1 */	bl __nw__FUl
/* 80211EA0  7C 60 1B 79 */	or. r0, r3, r3
/* 80211EA4  41 82 00 28 */	beq lbl_80211ECC
/* 80211EA8  80 9F 00 7C */	lwz r4, 0x7c(r31)
/* 80211EAC  3C A0 69 63 */	lis r5, 0x6963 /* 0x69635F6E@ha */
/* 80211EB0  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x69635F6E@l */
/* 80211EB4  3C A0 00 6D */	lis r5, 0x006D /* 0x006D6167@ha */
/* 80211EB8  38 A5 61 67 */	addi r5, r5, 0x6167 /* 0x006D6167@l */
/* 80211EBC  38 E0 00 02 */	li r7, 2
/* 80211EC0  39 00 00 00 */	li r8, 0
/* 80211EC4  48 04 1A C1 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80211EC8  7C 60 1B 78 */	mr r0, r3
lbl_80211ECC:
/* 80211ECC  90 1F 01 CC */	stw r0, 0x1cc(r31)
/* 80211ED0  38 60 00 6C */	li r3, 0x6c
/* 80211ED4  48 0B CD 79 */	bl __nw__FUl
/* 80211ED8  7C 60 1B 79 */	or. r0, r3, r3
/* 80211EDC  41 82 00 28 */	beq lbl_80211F04
/* 80211EE0  80 9F 00 7C */	lwz r4, 0x7c(r31)
/* 80211EE4  3C A0 62 61 */	lis r5, 0x6261 /* 0x62617365@ha */
/* 80211EE8  38 C5 73 65 */	addi r6, r5, 0x7365 /* 0x62617365@l */
/* 80211EEC  3C A0 00 6D */	lis r5, 0x006D /* 0x006D6D5F@ha */
/* 80211EF0  38 A5 6D 5F */	addi r5, r5, 0x6D5F /* 0x006D6D5F@l */
/* 80211EF4  38 E0 00 00 */	li r7, 0
/* 80211EF8  39 00 00 00 */	li r8, 0
/* 80211EFC  48 04 1A 89 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80211F00  7C 60 1B 78 */	mr r0, r3
lbl_80211F04:
/* 80211F04  90 1F 01 D0 */	stw r0, 0x1d0(r31)
/* 80211F08  38 60 00 6C */	li r3, 0x6c
/* 80211F0C  48 0B CD 41 */	bl __nw__FUl
/* 80211F10  7C 60 1B 79 */	or. r0, r3, r3
/* 80211F14  41 82 00 28 */	beq lbl_80211F3C
/* 80211F18  80 9F 00 7C */	lwz r4, 0x7c(r31)
/* 80211F1C  3C A0 5F 6C */	lis r5, 0x5F6C /* 0x5F6C5F6E@ha */
/* 80211F20  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x5F6C5F6E@l */
/* 80211F24  3C A0 00 6D */	lis r5, 0x006D /* 0x006D5F77@ha */
/* 80211F28  38 A5 5F 77 */	addi r5, r5, 0x5F77 /* 0x006D5F77@l */
/* 80211F2C  38 E0 00 02 */	li r7, 2
/* 80211F30  39 00 00 00 */	li r8, 0
/* 80211F34  48 04 1A 51 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80211F38  7C 60 1B 78 */	mr r0, r3
lbl_80211F3C:
/* 80211F3C  90 1F 01 D4 */	stw r0, 0x1d4(r31)
/* 80211F40  38 60 00 6C */	li r3, 0x6c
/* 80211F44  48 0B CD 09 */	bl __nw__FUl
/* 80211F48  7C 60 1B 79 */	or. r0, r3, r3
/* 80211F4C  41 82 00 28 */	beq lbl_80211F74
/* 80211F50  80 9F 00 7C */	lwz r4, 0x7c(r31)
/* 80211F54  3C A0 5F 72 */	lis r5, 0x5F72 /* 0x5F725F6E@ha */
/* 80211F58  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x5F725F6E@l */
/* 80211F5C  3C A0 00 6D */	lis r5, 0x006D /* 0x006D5F77@ha */
/* 80211F60  38 A5 5F 77 */	addi r5, r5, 0x5F77 /* 0x006D5F77@l */
/* 80211F64  38 E0 00 02 */	li r7, 2
/* 80211F68  39 00 00 00 */	li r8, 0
/* 80211F6C  48 04 1A 19 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80211F70  7C 60 1B 78 */	mr r0, r3
lbl_80211F74:
/* 80211F74  90 1F 01 DC */	stw r0, 0x1dc(r31)
/* 80211F78  38 60 00 6C */	li r3, 0x6c
/* 80211F7C  48 0B CC D1 */	bl __nw__FUl
/* 80211F80  7C 60 1B 79 */	or. r0, r3, r3
/* 80211F84  41 82 00 24 */	beq lbl_80211FA8
/* 80211F88  80 9F 00 7C */	lwz r4, 0x7c(r31)
/* 80211F8C  3C A0 6D 5F */	lis r5, 0x6D5F /* 0x6D5F3030@ha */
/* 80211F90  38 C5 30 30 */	addi r6, r5, 0x3030 /* 0x6D5F3030@l */
/* 80211F94  38 A0 00 6D */	li r5, 0x6d
/* 80211F98  38 E0 00 00 */	li r7, 0
/* 80211F9C  39 00 00 00 */	li r8, 0
/* 80211FA0  48 04 19 E5 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80211FA4  7C 60 1B 78 */	mr r0, r3
lbl_80211FA8:
/* 80211FA8  90 1F 01 D8 */	stw r0, 0x1d8(r31)
/* 80211FAC  38 60 00 04 */	li r3, 4
/* 80211FB0  64 63 00 04 */	oris r3, r3, 4
/* 80211FB4  7C 72 E3 A6 */	mtspr 0x392, r3
/* 80211FB8  38 60 00 05 */	li r3, 5
/* 80211FBC  64 63 00 05 */	oris r3, r3, 5
/* 80211FC0  7C 73 E3 A6 */	mtspr 0x393, r3
/* 80211FC4  38 60 00 06 */	li r3, 6
/* 80211FC8  64 63 00 06 */	oris r3, r3, 6
/* 80211FCC  7C 74 E3 A6 */	mtspr 0x394, r3
/* 80211FD0  38 60 00 07 */	li r3, 7
/* 80211FD4  64 63 00 07 */	oris r3, r3, 7
/* 80211FD8  7C 75 E3 A6 */	mtspr 0x395, r3
/* 80211FDC  3C 80 80 3A */	lis r4, d_meter_d_meter2_draw__stringBase0@ha /* 0x803988D0@ha */
/* 80211FE0  38 84 88 D0 */	addi r4, r4, d_meter_d_meter2_draw__stringBase0@l /* 0x803988D0@l */
/* 80211FE4  38 64 00 F0 */	addi r3, r4, 0xf0
/* 80211FE8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80211FEC  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80211FF0  80 9E 5D 30 */	lwz r4, 0x5d30(r30)
/* 80211FF4  48 0C 22 7D */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 80211FF8  48 0F 6A 75 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 80211FFC  90 7F 05 3C */	stw r3, 0x53c(r31)
/* 80212000  80 7F 05 3C */	lwz r3, 0x53c(r31)
/* 80212004  80 9F 00 7C */	lwz r4, 0x7c(r31)
/* 80212008  81 83 00 00 */	lwz r12, 0(r3)
/* 8021200C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80212010  7D 89 03 A6 */	mtctr r12
/* 80212014  4E 80 04 21 */	bctrl 
/* 80212018  3C 80 80 3A */	lis r4, d_meter_d_meter2_draw__stringBase0@ha /* 0x803988D0@ha */
/* 8021201C  38 84 88 D0 */	addi r4, r4, d_meter_d_meter2_draw__stringBase0@l /* 0x803988D0@l */
/* 80212020  38 64 01 15 */	addi r3, r4, 0x115
/* 80212024  80 9E 5D 30 */	lwz r4, 0x5d30(r30)
/* 80212028  48 0C 22 49 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 8021202C  48 0F 6A 41 */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 80212030  90 7F 05 40 */	stw r3, 0x540(r31)
/* 80212034  80 7F 05 40 */	lwz r3, 0x540(r31)
/* 80212038  80 9F 00 7C */	lwz r4, 0x7c(r31)
/* 8021203C  81 83 00 00 */	lwz r12, 0(r3)
/* 80212040  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80212044  7D 89 03 A6 */	mtctr r12
/* 80212048  4E 80 04 21 */	bctrl 
/* 8021204C  3C 80 80 3A */	lis r4, d_meter_d_meter2_draw__stringBase0@ha /* 0x803988D0@ha */
/* 80212050  38 84 88 D0 */	addi r4, r4, d_meter_d_meter2_draw__stringBase0@l /* 0x803988D0@l */
/* 80212054  38 64 01 3A */	addi r3, r4, 0x13a
/* 80212058  80 9E 5D 30 */	lwz r4, 0x5d30(r30)
/* 8021205C  48 0C 22 15 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 80212060  48 0F 6A 0D */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 80212064  90 7F 05 44 */	stw r3, 0x544(r31)
/* 80212068  80 7F 05 44 */	lwz r3, 0x544(r31)
/* 8021206C  80 9F 00 7C */	lwz r4, 0x7c(r31)
/* 80212070  81 83 00 00 */	lwz r12, 0(r3)
/* 80212074  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80212078  7D 89 03 A6 */	mtctr r12
/* 8021207C  4E 80 04 21 */	bctrl 
/* 80212080  C0 22 AE 80 */	lfs f1, lit_4182(r2)
/* 80212084  D0 3F 05 58 */	stfs f1, 0x558(r31)
/* 80212088  80 7F 01 CC */	lwz r3, 0x1cc(r31)
/* 8021208C  48 04 37 45 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80212090  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80212094  38 A4 EB C8 */	addi r5, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 80212098  C3 E5 00 08 */	lfs f31, 8(r5)
/* 8021209C  C3 C2 AE 80 */	lfs f30, lit_4182(r2)
/* 802120A0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802120A4  A0 04 61 C0 */	lhz r0, g_dComIfG_gameInfo@l(r4)  /* 0x804061C0@l */
/* 802120A8  28 00 00 32 */	cmplwi r0, 0x32
/* 802120AC  41 81 00 08 */	bgt lbl_802120B4
/* 802120B0  C3 C5 00 0C */	lfs f30, 0xc(r5)
lbl_802120B4:
/* 802120B4  38 80 00 00 */	li r4, 0
/* 802120B8  38 A0 00 00 */	li r5, 0
/* 802120BC  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 802120C0  7C A6 2B 78 */	mr r6, r5
/* 802120C4  38 00 00 03 */	li r0, 3
/* 802120C8  7C 09 03 A6 */	mtctr r0
lbl_802120CC:
/* 802120CC  38 05 05 FC */	addi r0, r5, 0x5fc
/* 802120D0  7C 1F 05 2E */	stfsx f0, r31, r0
/* 802120D4  38 04 07 42 */	addi r0, r4, 0x742
/* 802120D8  7C DF 03 2E */	sthx r6, r31, r0
/* 802120DC  38 84 00 02 */	addi r4, r4, 2
/* 802120E0  38 A5 00 04 */	addi r5, r5, 4
/* 802120E4  42 00 FF E8 */	bdnz lbl_802120CC
/* 802120E8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802120EC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802120F0  88 A4 00 1B */	lbz r5, 0x1b(r4)
/* 802120F4  88 84 00 1A */	lbz r4, 0x1a(r4)
/* 802120F8  7F E3 FB 78 */	mr r3, r31
/* 802120FC  3C C0 80 43 */	lis r6, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80212100  38 C6 EB C8 */	addi r6, r6, g_drawHIO@l /* 0x8042EBC8@l */
/* 80212104  C0 06 00 4C */	lfs f0, 0x4c(r6)
/* 80212108  EC 20 F8 2A */	fadds f1, f0, f31
/* 8021210C  C0 06 00 50 */	lfs f0, 0x50(r6)
/* 80212110  EC 40 F0 2A */	fadds f2, f0, f30
/* 80212114  48 00 31 7D */	bl drawMagic__13dMeter2Draw_cFssff
/* 80212118  7F E3 FB 78 */	mr r3, r31
/* 8021211C  38 80 00 01 */	li r4, 1
/* 80212120  48 00 32 61 */	bl setAlphaMagicChange__13dMeter2Draw_cFb
/* 80212124  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80212128  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021212C  A0 A4 00 08 */	lhz r5, 8(r4)
/* 80212130  A0 84 00 06 */	lhz r4, 6(r4)
/* 80212134  7F E3 FB 78 */	mr r3, r31
/* 80212138  3C C0 80 43 */	lis r6, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8021213C  38 C6 EB C8 */	addi r6, r6, g_drawHIO@l /* 0x8042EBC8@l */
/* 80212140  C0 06 00 60 */	lfs f0, 0x60(r6)
/* 80212144  EC 20 F8 2A */	fadds f1, f0, f31
/* 80212148  C0 46 00 10 */	lfs f2, 0x10(r6)
/* 8021214C  C0 06 00 64 */	lfs f0, 0x64(r6)
/* 80212150  EC 00 F0 2A */	fadds f0, f0, f30
/* 80212154  EC 42 00 2A */	fadds f2, f2, f0
/* 80212158  48 00 33 51 */	bl drawKantera__13dMeter2Draw_cFllff
/* 8021215C  7F E3 FB 78 */	mr r3, r31
/* 80212160  38 80 00 01 */	li r4, 1
/* 80212164  48 00 34 55 */	bl setAlphaKanteraChange__13dMeter2Draw_cFb
/* 80212168  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8021216C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80212170  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 80212174  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 80212178  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8021217C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80212180  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80212184  7C 08 03 A6 */	mtlr r0
/* 80212188  38 21 00 30 */	addi r1, r1, 0x30
/* 8021218C  4E 80 00 20 */	blr 

lbl_800CBC18:
/* 800CBC18  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800CBC1C  7C 08 02 A6 */	mflr r0
/* 800CBC20  90 01 00 44 */	stw r0, 0x44(r1)
/* 800CBC24  39 61 00 40 */	addi r11, r1, 0x40
/* 800CBC28  48 29 65 AD */	bl _savegpr_27
/* 800CBC2C  7C 7D 1B 78 */	mr r29, r3
/* 800CBC30  83 ED 8A 98 */	lwz r31, m_midnaActor__9daPy_py_c(r13)
/* 800CBC34  28 1F 00 00 */	cmplwi r31, 0
/* 800CBC38  41 82 00 60 */	beq lbl_800CBC98
/* 800CBC3C  38 60 00 00 */	li r3, 0
/* 800CBC40  80 1F 08 94 */	lwz r0, 0x894(r31)
/* 800CBC44  54 04 07 BD */	rlwinm. r4, r0, 0, 0x1e, 0x1e
/* 800CBC48  40 82 00 20 */	bne lbl_800CBC68
/* 800CBC4C  88 1F 08 4E */	lbz r0, 0x84e(r31)
/* 800CBC50  28 00 00 03 */	cmplwi r0, 3
/* 800CBC54  41 82 00 14 */	beq lbl_800CBC68
/* 800CBC58  28 00 00 04 */	cmplwi r0, 4
/* 800CBC5C  41 82 00 0C */	beq lbl_800CBC68
/* 800CBC60  28 00 00 02 */	cmplwi r0, 2
/* 800CBC64  40 82 00 08 */	bne lbl_800CBC6C
lbl_800CBC68:
/* 800CBC68  38 60 00 01 */	li r3, 1
lbl_800CBC6C:
/* 800CBC6C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800CBC70  41 82 00 1C */	beq lbl_800CBC8C
/* 800CBC74  A8 1D 2F F4 */	lha r0, 0x2ff4(r29)
/* 800CBC78  2C 00 3F F0 */	cmpwi r0, 0x3ff0
/* 800CBC7C  40 80 05 C8 */	bge lbl_800CC244
/* 800CBC80  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 800CBC84  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800CBC88  41 82 05 BC */	beq lbl_800CC244
lbl_800CBC8C:
/* 800CBC8C  28 04 00 00 */	cmplwi r4, 0
/* 800CBC90  41 82 00 08 */	beq lbl_800CBC98
/* 800CBC94  48 00 05 B0 */	b lbl_800CC244
lbl_800CBC98:
/* 800CBC98  7F A3 EB 78 */	mr r3, r29
/* 800CBC9C  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 800CBCA0  81 8C 01 8C */	lwz r12, 0x18c(r12)
/* 800CBCA4  7D 89 03 A6 */	mtctr r12
/* 800CBCA8  4E 80 04 21 */	bctrl 
/* 800CBCAC  28 03 00 00 */	cmplwi r3, 0
/* 800CBCB0  40 82 05 94 */	bne lbl_800CC244
/* 800CBCB4  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 800CBCB8  28 00 01 4F */	cmplwi r0, 0x14f
/* 800CBCBC  40 82 00 0C */	bne lbl_800CBCC8
/* 800CBCC0  C0 1D 34 84 */	lfs f0, 0x3484(r29)
/* 800CBCC4  D0 1D 04 50 */	stfs f0, 0x450(r29)
lbl_800CBCC8:
/* 800CBCC8  7F A3 EB 78 */	mr r3, r29
/* 800CBCCC  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 800CBCD0  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800CBCD4  7D 89 03 A6 */	mtctr r12
/* 800CBCD8  4E 80 04 21 */	bctrl 
/* 800CBCDC  28 03 00 00 */	cmplwi r3, 0
/* 800CBCE0  41 82 00 30 */	beq lbl_800CBD10
/* 800CBCE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800CBCE8  38 A3 61 C0 */	addi r5, r3, g_dComIfG_gameInfo@l
/* 800CBCEC  80 65 5D B8 */	lwz r3, 0x5db8(r5)
/* 800CBCF0  80 83 17 34 */	lwz r4, 0x1734(r3)
/* 800CBCF4  7C 9E 23 78 */	mr r30, r4
/* 800CBCF8  28 04 00 00 */	cmplwi r4, 0
/* 800CBCFC  41 82 00 C4 */	beq lbl_800CBDC0
/* 800CBD00  38 65 61 C0 */	addi r3, r5, 0x61c0
/* 800CBD04  80 BD 06 50 */	lwz r5, 0x650(r29)
/* 800CBD08  4B F8 A2 15 */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
/* 800CBD0C  48 00 00 B4 */	b lbl_800CBDC0
lbl_800CBD10:
/* 800CBD10  80 1D 31 A0 */	lwz r0, 0x31a0(r29)
/* 800CBD14  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800CBD18  41 82 00 0C */	beq lbl_800CBD24
/* 800CBD1C  C0 9D 33 D8 */	lfs f4, 0x33d8(r29)
/* 800CBD20  48 00 00 08 */	b lbl_800CBD28
lbl_800CBD24:
/* 800CBD24  C0 9D 1A 08 */	lfs f4, 0x1a08(r29)
lbl_800CBD28:
/* 800CBD28  C0 5D 38 3C */	lfs f2, 0x383c(r29)
/* 800CBD2C  C0 3D 34 54 */	lfs f1, 0x3454(r29)
/* 800CBD30  C0 1D 38 34 */	lfs f0, 0x3834(r29)
/* 800CBD34  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800CBD38  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 800CBD3C  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 800CBD40  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 800CBD44  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800CBD48  40 82 00 24 */	bne lbl_800CBD6C
/* 800CBD4C  C0 3D 09 78 */	lfs f1, 0x978(r29)
/* 800CBD50  C0 1D 0B F0 */	lfs f0, 0xbf0(r29)
/* 800CBD54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800CBD58  40 81 00 0C */	ble lbl_800CBD64
/* 800CBD5C  FC 60 00 90 */	fmr f3, f0
/* 800CBD60  48 00 00 10 */	b lbl_800CBD70
lbl_800CBD64:
/* 800CBD64  FC 60 08 90 */	fmr f3, f1
/* 800CBD68  48 00 00 08 */	b lbl_800CBD70
lbl_800CBD6C:
/* 800CBD6C  C0 7D 09 78 */	lfs f3, 0x978(r29)
lbl_800CBD70:
/* 800CBD70  80 7D 31 A4 */	lwz r3, 0x31a4(r29)
/* 800CBD74  C0 1D 33 B4 */	lfs f0, 0x33b4(r29)
/* 800CBD78  FC 00 20 40 */	fcmpo cr0, f0, f4
/* 800CBD7C  40 81 00 0C */	ble lbl_800CBD88
/* 800CBD80  38 80 00 01 */	li r4, 1
/* 800CBD84  48 00 00 08 */	b lbl_800CBD8C
lbl_800CBD88:
/* 800CBD88  38 80 00 00 */	li r4, 0
lbl_800CBD8C:
/* 800CBD8C  80 BD 06 50 */	lwz r5, 0x650(r29)
/* 800CBD90  38 C1 00 14 */	addi r6, r1, 0x14
/* 800CBD94  C0 22 93 58 */	lfs f1, lit_8249(r2)
/* 800CBD98  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 800CBD9C  38 FD 1A 60 */	addi r7, r29, 0x1a60
/* 800CBDA0  39 1D 01 0C */	addi r8, r29, 0x10c
/* 800CBDA4  39 20 00 00 */	li r9, 0
/* 800CBDA8  C0 A2 92 B8 */	lfs f5, lit_6040(r2)
/* 800CBDAC  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 800CBDB0  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 800CBDB4  4B F6 2B 5D */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 800CBDB8  90 7D 31 A4 */	stw r3, 0x31a4(r29)
/* 800CBDBC  83 DD 31 A4 */	lwz r30, 0x31a4(r29)
lbl_800CBDC0:
/* 800CBDC0  28 1E 00 00 */	cmplwi r30, 0
/* 800CBDC4  41 82 04 80 */	beq lbl_800CC244
/* 800CBDC8  7F A3 EB 78 */	mr r3, r29
/* 800CBDCC  4B FF F6 B5 */	bl checkSwordDraw__9daAlink_cFv
/* 800CBDD0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800CBDD4  41 82 00 4C */	beq lbl_800CBE20
/* 800CBDD8  80 1D 05 7C */	lwz r0, 0x57c(r29)
/* 800CBDDC  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 800CBDE0  40 82 00 1C */	bne lbl_800CBDFC
/* 800CBDE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800CBDE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800CBDEC  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 800CBDF0  7F C4 F3 78 */	mr r4, r30
/* 800CBDF4  80 BD 06 B8 */	lwz r5, 0x6b8(r29)
/* 800CBDF8  4B F8 A1 25 */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_800CBDFC:
/* 800CBDFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800CBE00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800CBE04  88 03 00 14 */	lbz r0, 0x14(r3)
/* 800CBE08  28 00 00 3F */	cmplwi r0, 0x3f
/* 800CBE0C  41 82 00 14 */	beq lbl_800CBE20
/* 800CBE10  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 800CBE14  7F C4 F3 78 */	mr r4, r30
/* 800CBE18  80 BD 06 BC */	lwz r5, 0x6bc(r29)
/* 800CBE1C  4B F8 A1 01 */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_800CBE20:
/* 800CBE20  7F A3 EB 78 */	mr r3, r29
/* 800CBE24  4B FF F7 19 */	bl checkShieldDraw__9daAlink_cFv
/* 800CBE28  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800CBE2C  41 82 00 1C */	beq lbl_800CBE48
/* 800CBE30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800CBE34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800CBE38  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 800CBE3C  7F C4 F3 78 */	mr r4, r30
/* 800CBE40  80 BD 06 78 */	lwz r5, 0x678(r29)
/* 800CBE44  4B F8 A0 D9 */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_800CBE48:
/* 800CBE48  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 800CBE4C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800CBE50  41 82 00 A8 */	beq lbl_800CBEF8
/* 800CBE54  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 800CBE58  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800CBE5C  41 82 03 3C */	beq lbl_800CC198
/* 800CBE60  4B FF 45 41 */	bl checkCloudSea__9daAlink_cFv
/* 800CBE64  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800CBE68  40 82 03 30 */	bne lbl_800CC198
/* 800CBE6C  80 9F 08 94 */	lwz r4, 0x894(r31)
/* 800CBE70  54 80 04 E7 */	rlwinm. r0, r4, 0, 0x13, 0x13
/* 800CBE74  40 82 03 24 */	bne lbl_800CC198
/* 800CBE78  38 60 00 00 */	li r3, 0
/* 800CBE7C  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 800CBE80  40 82 00 20 */	bne lbl_800CBEA0
/* 800CBE84  88 1F 08 4E */	lbz r0, 0x84e(r31)
/* 800CBE88  28 00 00 03 */	cmplwi r0, 3
/* 800CBE8C  41 82 00 14 */	beq lbl_800CBEA0
/* 800CBE90  28 00 00 04 */	cmplwi r0, 4
/* 800CBE94  41 82 00 0C */	beq lbl_800CBEA0
/* 800CBE98  28 00 00 02 */	cmplwi r0, 2
/* 800CBE9C  40 82 00 08 */	bne lbl_800CBEA4
lbl_800CBEA0:
/* 800CBEA0  38 60 00 01 */	li r3, 1
lbl_800CBEA4:
/* 800CBEA4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800CBEA8  40 82 02 F0 */	bne lbl_800CC198
/* 800CBEAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800CBEB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800CBEB4  3B 83 61 C0 */	addi r28, r3, 0x61c0
/* 800CBEB8  7F 83 E3 78 */	mr r3, r28
/* 800CBEBC  7F C4 F3 78 */	mr r4, r30
/* 800CBEC0  80 BD 07 9C */	lwz r5, 0x79c(r29)
/* 800CBEC4  4B F8 A0 59 */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
/* 800CBEC8  80 1F 08 94 */	lwz r0, 0x894(r31)
/* 800CBECC  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 800CBED0  40 82 00 14 */	bne lbl_800CBEE4
/* 800CBED4  7F 83 E3 78 */	mr r3, r28
/* 800CBED8  7F C4 F3 78 */	mr r4, r30
/* 800CBEDC  80 BD 07 A0 */	lwz r5, 0x7a0(r29)
/* 800CBEE0  4B F8 A0 3D */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_800CBEE4:
/* 800CBEE4  7F 83 E3 78 */	mr r3, r28
/* 800CBEE8  7F C4 F3 78 */	mr r4, r30
/* 800CBEEC  80 BD 07 A8 */	lwz r5, 0x7a8(r29)
/* 800CBEF0  4B F8 A0 2D */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
/* 800CBEF4  48 00 02 A4 */	b lbl_800CC198
lbl_800CBEF8:
/* 800CBEF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800CBEFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800CBF00  3B E3 61 C0 */	addi r31, r3, 0x61c0
/* 800CBF04  7F E3 FB 78 */	mr r3, r31
/* 800CBF08  7F C4 F3 78 */	mr r4, r30
/* 800CBF0C  80 BD 06 54 */	lwz r5, 0x654(r29)
/* 800CBF10  4B F8 A0 0D */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
/* 800CBF14  7F E3 FB 78 */	mr r3, r31
/* 800CBF18  7F C4 F3 78 */	mr r4, r30
/* 800CBF1C  80 BD 06 58 */	lwz r5, 0x658(r29)
/* 800CBF20  4B F8 9F FD */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
/* 800CBF24  7F E3 FB 78 */	mr r3, r31
/* 800CBF28  7F C4 F3 78 */	mr r4, r30
/* 800CBF2C  80 BD 06 5C */	lwz r5, 0x65c(r29)
/* 800CBF30  4B F8 9F ED */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
/* 800CBF34  88 1D 2F 92 */	lbz r0, 0x2f92(r29)
/* 800CBF38  28 00 00 FB */	cmplwi r0, 0xfb
/* 800CBF3C  40 82 00 14 */	bne lbl_800CBF50
/* 800CBF40  7F E3 FB 78 */	mr r3, r31
/* 800CBF44  7F C4 F3 78 */	mr r4, r30
/* 800CBF48  80 BD 06 A0 */	lwz r5, 0x6a0(r29)
/* 800CBF4C  4B F8 9F D1 */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_800CBF50:
/* 800CBF50  88 1D 2F 93 */	lbz r0, 0x2f93(r29)
/* 800CBF54  28 00 00 FB */	cmplwi r0, 0xfb
/* 800CBF58  40 82 00 14 */	bne lbl_800CBF6C
/* 800CBF5C  7F E3 FB 78 */	mr r3, r31
/* 800CBF60  7F C4 F3 78 */	mr r4, r30
/* 800CBF64  80 BD 06 A8 */	lwz r5, 0x6a8(r29)
/* 800CBF68  4B F8 9F B5 */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_800CBF6C:
/* 800CBF6C  A0 1D 2F DC */	lhz r0, 0x2fdc(r29)
/* 800CBF70  28 00 00 40 */	cmplwi r0, 0x40
/* 800CBF74  40 82 00 24 */	bne lbl_800CBF98
/* 800CBF78  80 BD 28 28 */	lwz r5, 0x2828(r29)
/* 800CBF7C  28 05 00 00 */	cmplwi r5, 0
/* 800CBF80  41 82 01 78 */	beq lbl_800CC0F8
/* 800CBF84  7F E3 FB 78 */	mr r3, r31
/* 800CBF88  7F C4 F3 78 */	mr r4, r30
/* 800CBF8C  80 A5 05 24 */	lwz r5, 0x524(r5)
/* 800CBF90  4B F8 9F 8D */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
/* 800CBF94  48 00 01 64 */	b lbl_800CC0F8
lbl_800CBF98:
/* 800CBF98  7F A3 EB 78 */	mr r3, r29
/* 800CBF9C  4B FF F6 5D */	bl checkItemDraw__9daAlink_cFv
/* 800CBFA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800CBFA4  41 82 01 54 */	beq lbl_800CC0F8
/* 800CBFA8  A0 1D 2F DC */	lhz r0, 0x2fdc(r29)
/* 800CBFAC  28 00 00 42 */	cmplwi r0, 0x42
/* 800CBFB0  40 82 00 88 */	bne lbl_800CC038
/* 800CBFB4  A8 7D 30 18 */	lha r3, 0x3018(r29)
/* 800CBFB8  7C 60 07 35 */	extsh. r0, r3
/* 800CBFBC  41 82 00 0C */	beq lbl_800CBFC8
/* 800CBFC0  2C 03 00 08 */	cmpwi r3, 8
/* 800CBFC4  40 82 00 18 */	bne lbl_800CBFDC
lbl_800CBFC8:
/* 800CBFC8  7F E3 FB 78 */	mr r3, r31
/* 800CBFCC  7F C4 F3 78 */	mr r4, r30
/* 800CBFD0  80 BD 07 08 */	lwz r5, 0x708(r29)
/* 800CBFD4  4B F8 9F 49 */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
/* 800CBFD8  48 00 01 20 */	b lbl_800CC0F8
lbl_800CBFDC:
/* 800CBFDC  38 7D 38 04 */	addi r3, r29, 0x3804
/* 800CBFE0  4B F5 1C DD */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 800CBFE4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800CBFE8  41 82 01 10 */	beq lbl_800CC0F8
/* 800CBFEC  80 7D 32 D4 */	lwz r3, 0x32d4(r29)
/* 800CBFF0  38 80 00 00 */	li r4, 0
/* 800CBFF4  80 BD 07 08 */	lwz r5, 0x708(r29)
/* 800CBFF8  38 DD 37 F8 */	addi r6, r29, 0x37f8
/* 800CBFFC  C0 22 93 E0 */	lfs f1, lit_11673(r2)
/* 800CC000  C0 42 94 28 */	lfs f2, lit_14621(r2)
/* 800CC004  C0 7D 38 08 */	lfs f3, 0x3808(r29)
/* 800CC008  C0 8D 87 50 */	lfs f4, mGroundY__11fopAcM_gc_c(r13)
/* 800CC00C  3C E0 80 3F */	lis r7, mGndCheck__11fopAcM_gc_c@ha
/* 800CC010  38 E7 1C C4 */	addi r7, r7, mGndCheck__11fopAcM_gc_c@l
/* 800CC014  38 E7 00 14 */	addi r7, r7, 0x14
/* 800CC018  39 1D 01 0C */	addi r8, r29, 0x10c
/* 800CC01C  39 20 00 00 */	li r9, 0
/* 800CC020  C0 A2 92 B8 */	lfs f5, lit_6040(r2)
/* 800CC024  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 800CC028  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 800CC02C  4B F6 28 E5 */	bl dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 800CC030  90 7D 32 D4 */	stw r3, 0x32d4(r29)
/* 800CC034  48 00 00 C4 */	b lbl_800CC0F8
lbl_800CC038:
/* 800CC038  7F A3 EB 78 */	mr r3, r29
/* 800CC03C  48 03 C8 29 */	bl changeHookshotDrawModel__9daAlink_cFv
/* 800CC040  7F E3 FB 78 */	mr r3, r31
/* 800CC044  7F C4 F3 78 */	mr r4, r30
/* 800CC048  80 BD 07 08 */	lwz r5, 0x708(r29)
/* 800CC04C  4B F8 9E D1 */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
/* 800CC050  A0 7D 2F DC */	lhz r3, 0x2fdc(r29)
/* 800CC054  48 09 2B 65 */	bl checkHookshotItem__9daPy_py_cFi
/* 800CC058  2C 03 00 00 */	cmpwi r3, 0
/* 800CC05C  41 82 00 94 */	beq lbl_800CC0F0
/* 800CC060  7F A3 EB 78 */	mr r3, r29
/* 800CC064  48 03 C9 B5 */	bl checkHookshotWait__9daAlink_cCFv
/* 800CC068  2C 03 00 00 */	cmpwi r3, 0
/* 800CC06C  41 82 00 28 */	beq lbl_800CC094
/* 800CC070  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800CC074  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800CC078  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 800CC07C  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 800CC080  40 82 00 14 */	bne lbl_800CC094
/* 800CC084  7F E3 FB 78 */	mr r3, r31
/* 800CC088  7F C4 F3 78 */	mr r4, r30
/* 800CC08C  80 BD 07 0C */	lwz r5, 0x70c(r29)
/* 800CC090  4B F8 9E 8D */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_800CC094:
/* 800CC094  A0 1D 2F DC */	lhz r0, 0x2fdc(r29)
/* 800CC098  28 00 00 47 */	cmplwi r0, 0x47
/* 800CC09C  40 82 00 54 */	bne lbl_800CC0F0
/* 800CC0A0  7F A3 EB 78 */	mr r3, r29
/* 800CC0A4  48 01 0E 61 */	bl checkPlayerGuardAndAttack__9daAlink_cCFv
/* 800CC0A8  2C 03 00 00 */	cmpwi r3, 0
/* 800CC0AC  40 82 00 44 */	bne lbl_800CC0F0
/* 800CC0B0  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 800CC0B4  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800CC0B8  40 82 00 38 */	bne lbl_800CC0F0
/* 800CC0BC  7F E3 FB 78 */	mr r3, r31
/* 800CC0C0  7F C4 F3 78 */	mr r4, r30
/* 800CC0C4  80 BD 07 10 */	lwz r5, 0x710(r29)
/* 800CC0C8  4B F8 9E 55 */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
/* 800CC0CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800CC0D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800CC0D4  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 800CC0D8  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 800CC0DC  40 82 00 14 */	bne lbl_800CC0F0
/* 800CC0E0  7F E3 FB 78 */	mr r3, r31
/* 800CC0E4  7F C4 F3 78 */	mr r4, r30
/* 800CC0E8  80 BD 07 14 */	lwz r5, 0x714(r29)
/* 800CC0EC  4B F8 9E 31 */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_800CC0F0:
/* 800CC0F0  7F A3 EB 78 */	mr r3, r29
/* 800CC0F4  48 03 C7 71 */	bl changeHookshotDrawModel__9daAlink_cFv
lbl_800CC0F8:
/* 800CC0F8  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 800CC0FC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800CC100  41 82 00 14 */	beq lbl_800CC114
/* 800CC104  7F E3 FB 78 */	mr r3, r31
/* 800CC108  7F C4 F3 78 */	mr r4, r30
/* 800CC10C  80 BD 06 FC */	lwz r5, 0x6fc(r29)
/* 800CC110  4B F8 9E 0D */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_800CC114:
/* 800CC114  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 800CC118  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800CC11C  41 82 00 30 */	beq lbl_800CC14C
/* 800CC120  3B 60 00 00 */	li r27, 0
/* 800CC124  3B 80 00 00 */	li r28, 0
lbl_800CC128:
/* 800CC128  7F E3 FB 78 */	mr r3, r31
/* 800CC12C  7F C4 F3 78 */	mr r4, r30
/* 800CC130  38 1C 07 84 */	addi r0, r28, 0x784
/* 800CC134  7C BD 00 2E */	lwzx r5, r29, r0
/* 800CC138  4B F8 9D E5 */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
/* 800CC13C  3B 7B 00 01 */	addi r27, r27, 1
/* 800CC140  2C 1B 00 02 */	cmpwi r27, 2
/* 800CC144  3B 9C 00 04 */	addi r28, r28, 4
/* 800CC148  41 80 FF E0 */	blt lbl_800CC128
lbl_800CC14C:
/* 800CC14C  7F A3 EB 78 */	mr r3, r29
/* 800CC150  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 800CC154  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 800CC158  7D 89 03 A6 */	mtctr r12
/* 800CC15C  4E 80 04 21 */	bctrl 
/* 800CC160  28 03 00 00 */	cmplwi r3, 0
/* 800CC164  41 82 00 34 */	beq lbl_800CC198
/* 800CC168  80 1D 28 14 */	lwz r0, 0x2814(r29)
/* 800CC16C  90 01 00 10 */	stw r0, 0x10(r1)
/* 800CC170  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 800CC174  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 800CC178  38 81 00 10 */	addi r4, r1, 0x10
/* 800CC17C  4B F4 D6 7D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 800CC180  7C 65 1B 79 */	or. r5, r3, r3
/* 800CC184  41 82 00 14 */	beq lbl_800CC198
/* 800CC188  7F E3 FB 78 */	mr r3, r31
/* 800CC18C  7F C4 F3 78 */	mr r4, r30
/* 800CC190  80 A5 05 24 */	lwz r5, 0x524(r5)
/* 800CC194  4B F8 9D 89 */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_800CC198:
/* 800CC198  80 7D 28 2C */	lwz r3, 0x282c(r29)
/* 800CC19C  3C 03 00 01 */	addis r0, r3, 1
/* 800CC1A0  28 00 FF FF */	cmplwi r0, 0xffff
/* 800CC1A4  41 82 00 40 */	beq lbl_800CC1E4
/* 800CC1A8  90 61 00 0C */	stw r3, 0xc(r1)
/* 800CC1AC  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 800CC1B0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 800CC1B4  38 81 00 0C */	addi r4, r1, 0xc
/* 800CC1B8  4B F4 D6 41 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 800CC1BC  28 03 00 00 */	cmplwi r3, 0
/* 800CC1C0  41 82 00 24 */	beq lbl_800CC1E4
/* 800CC1C4  80 A3 05 24 */	lwz r5, 0x524(r3)
/* 800CC1C8  28 05 00 00 */	cmplwi r5, 0
/* 800CC1CC  41 82 00 18 */	beq lbl_800CC1E4
/* 800CC1D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800CC1D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800CC1D8  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 800CC1DC  7F C4 F3 78 */	mr r4, r30
/* 800CC1E0  4B F8 9D 3D */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_800CC1E4:
/* 800CC1E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800CC1E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800CC1EC  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 800CC1F0  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 800CC1F4  41 82 00 50 */	beq lbl_800CC244
/* 800CC1F8  80 7D 28 54 */	lwz r3, 0x2854(r29)
/* 800CC1FC  3C 03 00 01 */	addis r0, r3, 1
/* 800CC200  28 00 FF FF */	cmplwi r0, 0xffff
/* 800CC204  41 82 00 40 */	beq lbl_800CC244
/* 800CC208  90 61 00 08 */	stw r3, 8(r1)
/* 800CC20C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 800CC210  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 800CC214  38 81 00 08 */	addi r4, r1, 8
/* 800CC218  4B F4 D5 E1 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 800CC21C  28 03 00 00 */	cmplwi r3, 0
/* 800CC220  41 82 00 24 */	beq lbl_800CC244
/* 800CC224  80 A3 05 24 */	lwz r5, 0x524(r3)
/* 800CC228  28 05 00 00 */	cmplwi r5, 0
/* 800CC22C  41 82 00 18 */	beq lbl_800CC244
/* 800CC230  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800CC234  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800CC238  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 800CC23C  7F C4 F3 78 */	mr r4, r30
/* 800CC240  4B F8 9C DD */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_800CC244:
/* 800CC244  39 61 00 40 */	addi r11, r1, 0x40
/* 800CC248  48 29 5F D9 */	bl _restgpr_27
/* 800CC24C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800CC250  7C 08 03 A6 */	mtlr r0
/* 800CC254  38 21 00 40 */	addi r1, r1, 0x40
/* 800CC258  4E 80 00 20 */	blr 

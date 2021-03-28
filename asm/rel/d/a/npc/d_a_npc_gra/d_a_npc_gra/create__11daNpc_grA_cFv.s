lbl_809BEDA4:
/* 809BEDA4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809BEDA8  7C 08 02 A6 */	mflr r0
/* 809BEDAC  90 01 00 44 */	stw r0, 0x44(r1)
/* 809BEDB0  39 61 00 40 */	addi r11, r1, 0x40
/* 809BEDB4  4B 9A 34 14 */	b _savegpr_24
/* 809BEDB8  7C 7E 1B 78 */	mr r30, r3
/* 809BEDBC  3C 80 80 9D */	lis r4, m__17daNpc_grA_Param_c@ha
/* 809BEDC0  3B E4 9D 98 */	addi r31, r4, m__17daNpc_grA_Param_c@l
/* 809BEDC4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 809BEDC8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 809BEDCC  40 82 00 1C */	bne lbl_809BEDE8
/* 809BEDD0  28 1E 00 00 */	cmplwi r30, 0
/* 809BEDD4  41 82 00 08 */	beq lbl_809BEDDC
/* 809BEDD8  4B FF FB 75 */	bl __ct__11daNpc_grA_cFv
lbl_809BEDDC:
/* 809BEDDC  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 809BEDE0  60 00 00 08 */	ori r0, r0, 8
/* 809BEDE4  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_809BEDE8:
/* 809BEDE8  4B 7E D7 94 */	b dKy_darkworld_check__Fv
/* 809BEDEC  98 7E 09 F4 */	stb r3, 0x9f4(r30)
/* 809BEDF0  7F C3 F3 78 */	mr r3, r30
/* 809BEDF4  48 00 23 79 */	bl getTypeFromParam__11daNpc_grA_cFv
/* 809BEDF8  98 7E 14 74 */	stb r3, 0x1474(r30)
/* 809BEDFC  7F C3 F3 78 */	mr r3, r30
/* 809BEE00  48 00 23 55 */	bl getMode__11daNpc_grA_cFv
/* 809BEE04  98 7E 14 CE */	stb r3, 0x14ce(r30)
/* 809BEE08  7F C3 F3 78 */	mr r3, r30
/* 809BEE0C  48 00 24 2D */	bl getSwBit__11daNpc_grA_cFv
/* 809BEE10  98 7E 14 CF */	stb r3, 0x14cf(r30)
/* 809BEE14  A8 7E 04 B4 */	lha r3, 0x4b4(r30)
/* 809BEE18  3C 03 00 00 */	addis r0, r3, 0
/* 809BEE1C  28 00 FF FF */	cmplwi r0, 0xffff
/* 809BEE20  41 82 00 0C */	beq lbl_809BEE2C
/* 809BEE24  90 7E 14 6C */	stw r3, 0x146c(r30)
/* 809BEE28  48 00 00 0C */	b lbl_809BEE34
lbl_809BEE2C:
/* 809BEE2C  38 00 FF FF */	li r0, -1
/* 809BEE30  90 1E 14 6C */	stw r0, 0x146c(r30)
lbl_809BEE34:
/* 809BEE34  7F C3 F3 78 */	mr r3, r30
/* 809BEE38  48 00 24 0D */	bl isDelete__11daNpc_grA_cFv
/* 809BEE3C  2C 03 00 00 */	cmpwi r3, 0
/* 809BEE40  41 82 00 0C */	beq lbl_809BEE4C
/* 809BEE44  38 60 00 05 */	li r3, 5
/* 809BEE48  48 00 02 48 */	b lbl_809BF090
lbl_809BEE4C:
/* 809BEE4C  3B 20 00 00 */	li r25, 0
/* 809BEE50  3B 00 00 00 */	li r24, 0
/* 809BEE54  3B A0 00 00 */	li r29, 0
/* 809BEE58  3B 80 00 00 */	li r28, 0
/* 809BEE5C  3C 60 80 9D */	lis r3, l_resNames@ha
/* 809BEE60  3B 43 AA D4 */	addi r26, r3, l_resNames@l
/* 809BEE64  3C 60 80 9D */	lis r3, l_loadRes_list@ha
/* 809BEE68  3B 63 AA A0 */	addi r27, r3, l_loadRes_list@l
/* 809BEE6C  48 00 00 48 */	b lbl_809BEEB4
lbl_809BEE70:
/* 809BEE70  38 7C 14 1C */	addi r3, r28, 0x141c
/* 809BEE74  7C 7E 1A 14 */	add r3, r30, r3
/* 809BEE78  54 00 10 3A */	slwi r0, r0, 2
/* 809BEE7C  7C 9A 00 2E */	lwzx r4, r26, r0
/* 809BEE80  4B 66 E0 3C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 809BEE84  2C 03 00 05 */	cmpwi r3, 5
/* 809BEE88  41 82 00 0C */	beq lbl_809BEE94
/* 809BEE8C  2C 03 00 03 */	cmpwi r3, 3
/* 809BEE90  40 82 00 0C */	bne lbl_809BEE9C
lbl_809BEE94:
/* 809BEE94  38 60 00 05 */	li r3, 5
/* 809BEE98  48 00 01 F8 */	b lbl_809BF090
lbl_809BEE9C:
/* 809BEE9C  2C 03 00 04 */	cmpwi r3, 4
/* 809BEEA0  40 82 00 08 */	bne lbl_809BEEA8
/* 809BEEA4  3B 39 00 01 */	addi r25, r25, 1
lbl_809BEEA8:
/* 809BEEA8  3B 18 00 01 */	addi r24, r24, 1
/* 809BEEAC  3B BD 00 04 */	addi r29, r29, 4
/* 809BEEB0  3B 9C 00 08 */	addi r28, r28, 8
lbl_809BEEB4:
/* 809BEEB4  88 1E 14 74 */	lbz r0, 0x1474(r30)
/* 809BEEB8  54 00 10 3A */	slwi r0, r0, 2
/* 809BEEBC  7C 7B 00 2E */	lwzx r3, r27, r0
/* 809BEEC0  7C 03 E8 2E */	lwzx r0, r3, r29
/* 809BEEC4  2C 00 00 00 */	cmpwi r0, 0
/* 809BEEC8  40 80 FF A8 */	bge lbl_809BEE70
/* 809BEECC  7C 19 C0 00 */	cmpw r25, r24
/* 809BEED0  40 82 01 BC */	bne lbl_809BF08C
/* 809BEED4  7F C3 F3 78 */	mr r3, r30
/* 809BEED8  3C 80 80 9C */	lis r4, createHeapCallBack__11daNpc_grA_cFP10fopAc_ac_c@ha
/* 809BEEDC  38 84 F7 38 */	addi r4, r4, createHeapCallBack__11daNpc_grA_cFP10fopAc_ac_c@l
/* 809BEEE0  3C A0 80 00 */	lis r5, 0x8000 /* 0x800045D0@ha */
/* 809BEEE4  38 A5 45 D0 */	addi r5, r5, 0x45D0 /* 0x800045D0@l */
/* 809BEEE8  4B 65 B5 C8 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 809BEEEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809BEEF0  40 82 00 0C */	bne lbl_809BEEFC
/* 809BEEF4  38 60 00 05 */	li r3, 5
/* 809BEEF8  48 00 01 98 */	b lbl_809BF090
lbl_809BEEFC:
/* 809BEEFC  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 809BEF00  80 63 00 04 */	lwz r3, 4(r3)
/* 809BEF04  38 03 00 24 */	addi r0, r3, 0x24
/* 809BEF08  90 1E 05 04 */	stw r0, 0x504(r30)
/* 809BEF0C  7F C3 F3 78 */	mr r3, r30
/* 809BEF10  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 809BEF14  C0 5F 00 88 */	lfs f2, 0x88(r31)
/* 809BEF18  FC 60 08 90 */	fmr f3, f1
/* 809BEF1C  C0 9F 00 8C */	lfs f4, 0x8c(r31)
/* 809BEF20  C0 BF 00 90 */	lfs f5, 0x90(r31)
/* 809BEF24  FC C0 20 90 */	fmr f6, f4
/* 809BEF28  4B 65 B6 20 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 809BEF2C  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 809BEF30  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 809BEF34  38 BE 05 38 */	addi r5, r30, 0x538
/* 809BEF38  38 C0 00 03 */	li r6, 3
/* 809BEF3C  38 E0 00 01 */	li r7, 1
/* 809BEF40  4B 90 15 F0 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 809BEF44  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 809BEF48  88 1E 14 74 */	lbz r0, 0x1474(r30)
/* 809BEF4C  28 00 00 02 */	cmplwi r0, 2
/* 809BEF50  40 82 00 0C */	bne lbl_809BEF5C
/* 809BEF54  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 809BEF58  48 00 00 0C */	b lbl_809BEF64
lbl_809BEF5C:
/* 809BEF5C  38 9F 00 00 */	addi r4, r31, 0
/* 809BEF60  C0 24 00 1C */	lfs f1, 0x1c(r4)
lbl_809BEF64:
/* 809BEF64  38 9F 00 00 */	addi r4, r31, 0
/* 809BEF68  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 809BEF6C  4B 6B 6F EC */	b SetWall__12dBgS_AcchCirFff
/* 809BEF70  38 1E 04 E4 */	addi r0, r30, 0x4e4
/* 809BEF74  90 01 00 08 */	stw r0, 8(r1)
/* 809BEF78  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 809BEF7C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 809BEF80  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 809BEF84  7F C6 F3 78 */	mr r6, r30
/* 809BEF88  38 E0 00 01 */	li r7, 1
/* 809BEF8C  39 1E 07 E4 */	addi r8, r30, 0x7e4
/* 809BEF90  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 809BEF94  39 5E 04 DC */	addi r10, r30, 0x4dc
/* 809BEF98  4B 6B 72 B0 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 809BEF9C  38 7E 07 A8 */	addi r3, r30, 0x7a8
/* 809BEFA0  38 9F 00 00 */	addi r4, r31, 0
/* 809BEFA4  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 809BEFA8  FC 00 00 1E */	fctiwz f0, f0
/* 809BEFAC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 809BEFB0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 809BEFB4  38 A0 00 00 */	li r5, 0
/* 809BEFB8  7F C6 F3 78 */	mr r6, r30
/* 809BEFBC  4B 6C 48 A4 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 809BEFC0  38 7E 0C 98 */	addi r3, r30, 0xc98
/* 809BEFC4  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcF_c@ha
/* 809BEFC8  38 84 37 E0 */	addi r4, r4, mCcDCyl__8daNpcF_c@l
/* 809BEFCC  4B 6C 58 E8 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 809BEFD0  38 1E 07 A8 */	addi r0, r30, 0x7a8
/* 809BEFD4  90 1E 0C DC */	stw r0, 0xcdc(r30)
/* 809BEFD8  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 809BEFDC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809BEFE0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 809BEFE4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 809BEFE8  4B 6B 7A C4 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 809BEFEC  80 1E 06 AC */	lwz r0, 0x6ac(r30)
/* 809BEFF0  90 1E 0A 44 */	stw r0, 0xa44(r30)
/* 809BEFF4  80 1E 06 B0 */	lwz r0, 0x6b0(r30)
/* 809BEFF8  90 1E 0A 48 */	stw r0, 0xa48(r30)
/* 809BEFFC  80 1E 06 B4 */	lwz r0, 0x6b4(r30)
/* 809BF000  90 1E 0A 4C */	stw r0, 0xa4c(r30)
/* 809BF004  88 1E 06 B8 */	lbz r0, 0x6b8(r30)
/* 809BF008  98 1E 0A 50 */	stb r0, 0xa50(r30)
/* 809BF00C  A0 1E 06 C0 */	lhz r0, 0x6c0(r30)
/* 809BF010  B0 1E 0A 58 */	sth r0, 0xa58(r30)
/* 809BF014  A0 1E 06 C2 */	lhz r0, 0x6c2(r30)
/* 809BF018  B0 1E 0A 5A */	sth r0, 0xa5a(r30)
/* 809BF01C  80 1E 06 C4 */	lwz r0, 0x6c4(r30)
/* 809BF020  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 809BF024  80 1E 06 C8 */	lwz r0, 0x6c8(r30)
/* 809BF028  90 1E 0A 60 */	stw r0, 0xa60(r30)
/* 809BF02C  C0 1E 06 D0 */	lfs f0, 0x6d0(r30)
/* 809BF030  D0 1E 0A 68 */	stfs f0, 0xa68(r30)
/* 809BF034  C0 1E 06 D4 */	lfs f0, 0x6d4(r30)
/* 809BF038  D0 1E 0A 6C */	stfs f0, 0xa6c(r30)
/* 809BF03C  C0 1E 06 D8 */	lfs f0, 0x6d8(r30)
/* 809BF040  D0 1E 0A 70 */	stfs f0, 0xa70(r30)
/* 809BF044  80 1E 06 DC */	lwz r0, 0x6dc(r30)
/* 809BF048  90 1E 0A 74 */	stw r0, 0xa74(r30)
/* 809BF04C  C0 1E 06 E0 */	lfs f0, 0x6e0(r30)
/* 809BF050  D0 1E 0A 78 */	stfs f0, 0xa78(r30)
/* 809BF054  80 1E 06 E4 */	lwz r0, 0x6e4(r30)
/* 809BF058  90 1E 0A 7C */	stw r0, 0xa7c(r30)
/* 809BF05C  C0 1E 06 68 */	lfs f0, 0x668(r30)
/* 809BF060  D0 1E 09 80 */	stfs f0, 0x980(r30)
/* 809BF064  7F C3 F3 78 */	mr r3, r30
/* 809BF068  4B 79 3D 1C */	b setEnvTevColor__8daNpcF_cFv
/* 809BF06C  7F C3 F3 78 */	mr r3, r30
/* 809BF070  4B 79 3D 70 */	b setRoomNo__8daNpcF_cFv
/* 809BF074  7F C3 F3 78 */	mr r3, r30
/* 809BF078  48 00 23 61 */	bl reset__11daNpc_grA_cFv
/* 809BF07C  7F C3 F3 78 */	mr r3, r30
/* 809BF080  48 00 03 CD */	bl Execute__11daNpc_grA_cFv
/* 809BF084  38 60 00 04 */	li r3, 4
/* 809BF088  48 00 00 08 */	b lbl_809BF090
lbl_809BF08C:
/* 809BF08C  38 60 00 00 */	li r3, 0
lbl_809BF090:
/* 809BF090  39 61 00 40 */	addi r11, r1, 0x40
/* 809BF094  4B 9A 31 80 */	b _restgpr_24
/* 809BF098  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809BF09C  7C 08 03 A6 */	mtlr r0
/* 809BF0A0  38 21 00 40 */	addi r1, r1, 0x40
/* 809BF0A4  4E 80 00 20 */	blr 

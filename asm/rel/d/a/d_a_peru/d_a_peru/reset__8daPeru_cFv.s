lbl_80D478EC:
/* 80D478EC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D478F0  7C 08 02 A6 */	mflr r0
/* 80D478F4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D478F8  39 61 00 40 */	addi r11, r1, 0x40
/* 80D478FC  4B 61 A8 E0 */	b _savegpr_29
/* 80D47900  7C 7F 1B 78 */	mr r31, r3
/* 80D47904  3C 60 80 D5 */	lis r3, m__14daPeru_Param_c@ha
/* 80D47908  3B C3 C0 60 */	addi r30, r3, m__14daPeru_Param_c@l
/* 80D4790C  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80D47910  38 80 00 00 */	li r4, 0
/* 80D47914  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80D47918  7C A3 00 50 */	subf r5, r3, r0
/* 80D4791C  4B 2B BB 3C */	b memset
/* 80D47920  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80D47924  4B 3F DF 74 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D47928  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80D4792C  4B 3F DF 6C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D47930  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80D47934  4B 3F DD A0 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80D47938  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80D4793C  4B 3F DD 98 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80D47940  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80D47944  4B 3F F3 54 */	b initialize__15daNpcT_JntAnm_cFv
/* 80D47948  38 A0 00 00 */	li r5, 0
/* 80D4794C  38 60 00 00 */	li r3, 0
/* 80D47950  7C A4 2B 78 */	mr r4, r5
/* 80D47954  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80D47958  38 00 00 02 */	li r0, 2
/* 80D4795C  7C 09 03 A6 */	mtctr r0
lbl_80D47960:
/* 80D47960  7C DF 22 14 */	add r6, r31, r4
/* 80D47964  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80D47968  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80D4796C  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80D47970  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80D47974  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80D47978  38 63 00 04 */	addi r3, r3, 4
/* 80D4797C  38 84 00 06 */	addi r4, r4, 6
/* 80D47980  42 00 FF E0 */	bdnz lbl_80D47960
/* 80D47984  38 00 00 00 */	li r0, 0
/* 80D47988  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80D4798C  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80D47990  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80D47994  38 00 FF FF */	li r0, -1
/* 80D47998  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80D4799C  38 00 00 01 */	li r0, 1
/* 80D479A0  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80D479A4  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 80D479A8  4B 51 FF AC */	b cM_rndF__Ff
/* 80D479AC  FC 00 08 1E */	fctiwz f0, f1
/* 80D479B0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80D479B4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80D479B8  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80D479BC  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80D479C0  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80D479C4  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80D479C8  38 9E 00 00 */	addi r4, r30, 0
/* 80D479CC  A8 64 00 4C */	lha r3, 0x4c(r4)
/* 80D479D0  A8 84 00 4E */	lha r4, 0x4e(r4)
/* 80D479D4  4B 40 50 44 */	b daNpcT_getDistTableIdx__Fii
/* 80D479D8  98 7F 05 44 */	stb r3, 0x544(r31)
/* 80D479DC  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 80D479E0  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80D479E4  38 9E 00 00 */	addi r4, r30, 0
/* 80D479E8  A8 64 00 48 */	lha r3, 0x48(r4)
/* 80D479EC  A8 84 00 4A */	lha r4, 0x4a(r4)
/* 80D479F0  4B 40 50 28 */	b daNpcT_getDistTableIdx__Fii
/* 80D479F4  98 7F 05 47 */	stb r3, 0x547(r31)
/* 80D479F8  38 00 00 0A */	li r0, 0xa
/* 80D479FC  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80D47A00  38 7E 00 00 */	addi r3, r30, 0
/* 80D47A04  C0 03 00 08 */	lfs f0, 8(r3)
/* 80D47A08  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 80D47A0C  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 80D47A10  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 80D47A14  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80D47A18  FC 00 00 1E */	fctiwz f0, f0
/* 80D47A1C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80D47A20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D47A24  98 1F 08 78 */	stb r0, 0x878(r31)
/* 80D47A28  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80D47A2C  D0 1F 0D EC */	stfs f0, 0xdec(r31)
/* 80D47A30  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80D47A34  D0 1F 0D F0 */	stfs f0, 0xdf0(r31)
/* 80D47A38  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80D47A3C  C0 3F 0D F0 */	lfs f1, 0xdf0(r31)
/* 80D47A40  4B 32 E5 00 */	b SetWallR__12dBgS_AcchCirFf
/* 80D47A44  38 7E 00 00 */	addi r3, r30, 0
/* 80D47A48  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80D47A4C  D0 1F 08 D0 */	stfs f0, 0x8d0(r31)
/* 80D47A50  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80D47A54  D0 1F 0D E8 */	stfs f0, 0xde8(r31)
/* 80D47A58  C0 03 00 04 */	lfs f0, 4(r3)
/* 80D47A5C  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80D47A60  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80D47A64  D0 1F 0A 80 */	stfs f0, 0xa80(r31)
/* 80D47A68  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80D47A6C  D0 1F 0A 84 */	stfs f0, 0xa84(r31)
/* 80D47A70  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80D47A74  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80D47A78  80 64 00 00 */	lwz r3, 0(r4)
/* 80D47A7C  80 04 00 04 */	lwz r0, 4(r4)
/* 80D47A80  90 7F 0E 5C */	stw r3, 0xe5c(r31)
/* 80D47A84  90 1F 0E 60 */	stw r0, 0xe60(r31)
/* 80D47A88  80 04 00 08 */	lwz r0, 8(r4)
/* 80D47A8C  90 1F 0E 64 */	stw r0, 0xe64(r31)
/* 80D47A90  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80D47A94  28 03 00 00 */	cmplwi r3, 0
/* 80D47A98  41 82 00 08 */	beq lbl_80D47AA0
/* 80D47A9C  4B 3F DC C8 */	b initialize__15daNpcT_MatAnm_cFv
lbl_80D47AA0:
/* 80D47AA0  38 00 00 00 */	li r0, 0
/* 80D47AA4  90 1F 0E 80 */	stw r0, 0xe80(r31)
/* 80D47AA8  3B A0 00 00 */	li r29, 0
/* 80D47AAC  3B C0 00 00 */	li r30, 0
lbl_80D47AB0:
/* 80D47AB0  38 7E 0E 40 */	addi r3, r30, 0xe40
/* 80D47AB4  7C 7F 1A 14 */	add r3, r31, r3
/* 80D47AB8  4B 3F DC 1C */	b initialize__18daNpcT_ActorMngr_cFv
/* 80D47ABC  3B BD 00 01 */	addi r29, r29, 1
/* 80D47AC0  2C 1D 00 03 */	cmpwi r29, 3
/* 80D47AC4  3B DE 00 08 */	addi r30, r30, 8
/* 80D47AC8  41 80 FF E8 */	blt lbl_80D47AB0
/* 80D47ACC  7F E3 FB 78 */	mr r3, r31
/* 80D47AD0  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80D47AD4  4B 40 2F 44 */	b setAngle__8daNpcT_cFs
/* 80D47AD8  3C 60 80 D5 */	lis r3, lit_4467@ha
/* 80D47ADC  38 83 C5 2C */	addi r4, r3, lit_4467@l
/* 80D47AE0  80 64 00 00 */	lwz r3, 0(r4)
/* 80D47AE4  80 04 00 04 */	lwz r0, 4(r4)
/* 80D47AE8  90 61 00 08 */	stw r3, 8(r1)
/* 80D47AEC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D47AF0  80 04 00 08 */	lwz r0, 8(r4)
/* 80D47AF4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D47AF8  7F E3 FB 78 */	mr r3, r31
/* 80D47AFC  38 81 00 08 */	addi r4, r1, 8
/* 80D47B00  38 A0 00 00 */	li r5, 0
/* 80D47B04  48 00 08 61 */	bl setAction__8daPeru_cFM8daPeru_cFPCvPvi_ii
/* 80D47B08  39 61 00 40 */	addi r11, r1, 0x40
/* 80D47B0C  4B 61 A7 1C */	b _restgpr_29
/* 80D47B10  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D47B14  7C 08 03 A6 */	mtlr r0
/* 80D47B18  38 21 00 40 */	addi r1, r1, 0x40
/* 80D47B1C  4E 80 00 20 */	blr 

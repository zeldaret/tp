lbl_80208570:
/* 80208570  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80208574  7C 08 02 A6 */	mflr r0
/* 80208578  90 01 00 24 */	stw r0, 0x24(r1)
/* 8020857C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80208580  7C 7F 1B 78 */	mr r31, r3
/* 80208584  80 63 00 50 */	lwz r3, 0x50(r3)
/* 80208588  28 03 00 00 */	cmplwi r3, 0
/* 8020858C  41 82 00 D0 */	beq lbl_8020865C
/* 80208590  48 04 D2 99 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80208594  C0 02 AD 4C */	lfs f0, lit_4147(r2)
/* 80208598  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8020859C  41 82 00 C0 */	beq lbl_8020865C
/* 802085A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802085A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802085A8  88 03 5E 4A */	lbz r0, 0x5e4a(r3)
/* 802085AC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802085B0  40 82 00 10 */	bne lbl_802085C0
/* 802085B4  88 03 5E 4B */	lbz r0, 0x5e4b(r3)
/* 802085B8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802085BC  41 82 00 20 */	beq lbl_802085DC
lbl_802085C0:
/* 802085C0  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 802085C4  C0 22 AD 4C */	lfs f1, lit_4147(r2)
/* 802085C8  48 04 D2 09 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 802085CC  38 00 00 05 */	li r0, 5
/* 802085D0  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 802085D4  B0 03 00 16 */	sth r0, 0x16(r3)
/* 802085D8  48 00 00 2C */	b lbl_80208604
lbl_802085DC:
/* 802085DC  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 802085E0  FC 20 00 90 */	fmr f1, f0
/* 802085E4  48 04 D1 ED */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 802085E8  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 802085EC  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 802085F0  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 802085F4  80 63 01 0C */	lwz r3, 0x10c(r3)
/* 802085F8  80 9F 00 50 */	lwz r4, 0x50(r31)
/* 802085FC  38 A0 00 05 */	li r5, 5
/* 80208600  48 01 24 A5 */	bl setAlphaAnimeMax__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_80208604:
/* 80208604  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 80208608  48 04 D2 21 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 8020860C  C0 42 AD 4C */	lfs f2, lit_4147(r2)
/* 80208610  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 80208614  40 82 00 48 */	bne lbl_8020865C
/* 80208618  88 1F 04 CD */	lbz r0, 0x4cd(r31)
/* 8020861C  28 00 00 00 */	cmplwi r0, 0
/* 80208620  40 82 00 3C */	bne lbl_8020865C
/* 80208624  38 00 00 56 */	li r0, 0x56
/* 80208628  90 01 00 08 */	stw r0, 8(r1)
/* 8020862C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80208630  38 81 00 08 */	addi r4, r1, 8
/* 80208634  38 A0 00 00 */	li r5, 0
/* 80208638  38 C0 00 00 */	li r6, 0
/* 8020863C  38 E0 00 00 */	li r7, 0
/* 80208640  FC 20 10 90 */	fmr f1, f2
/* 80208644  C0 62 AD 58 */	lfs f3, lit_4513(r2)
/* 80208648  FC 80 18 90 */	fmr f4, f3
/* 8020864C  39 00 00 00 */	li r8, 0
/* 80208650  48 0A 33 35 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80208654  38 00 00 01 */	li r0, 1
/* 80208658  98 1F 04 CD */	stb r0, 0x4cd(r31)
lbl_8020865C:
/* 8020865C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80208660  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80208664  7C 08 03 A6 */	mtlr r0
/* 80208668  38 21 00 20 */	addi r1, r1, 0x20
/* 8020866C  4E 80 00 20 */	blr 

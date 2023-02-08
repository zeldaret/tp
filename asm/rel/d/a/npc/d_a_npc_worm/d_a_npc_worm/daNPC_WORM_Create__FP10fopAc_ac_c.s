lbl_80B2EEC0:
/* 80B2EEC0  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80B2EEC4  7C 08 02 A6 */	mflr r0
/* 80B2EEC8  90 01 00 84 */	stw r0, 0x84(r1)
/* 80B2EECC  39 61 00 80 */	addi r11, r1, 0x80
/* 80B2EED0  4B 83 33 0D */	bl _savegpr_29
/* 80B2EED4  7C 7E 1B 78 */	mr r30, r3
/* 80B2EED8  3C 80 80 B3 */	lis r4, lit_3717@ha /* 0x80B2F080@ha */
/* 80B2EEDC  3B E4 F0 80 */	addi r31, r4, lit_3717@l /* 0x80B2F080@l */
/* 80B2EEE0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80B2EEE4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80B2EEE8  40 82 00 28 */	bne lbl_80B2EF10
/* 80B2EEEC  28 1E 00 00 */	cmplwi r30, 0
/* 80B2EEF0  41 82 00 14 */	beq lbl_80B2EF04
/* 80B2EEF4  4B 62 F1 1D */	bl __ct__9dInsect_cFv
/* 80B2EEF8  3C 60 80 B3 */	lis r3, __vt__14npc_worm_class@ha /* 0x80B2F17C@ha */
/* 80B2EEFC  38 03 F1 7C */	addi r0, r3, __vt__14npc_worm_class@l /* 0x80B2F17C@l */
/* 80B2EF00  90 1E 05 68 */	stw r0, 0x568(r30)
lbl_80B2EF04:
/* 80B2EF04  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80B2EF08  60 00 00 08 */	ori r0, r0, 8
/* 80B2EF0C  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80B2EF10:
/* 80B2EF10  38 7E 05 90 */	addi r3, r30, 0x590
/* 80B2EF14  3C 80 80 B3 */	lis r4, d_a_npc_worm__stringBase0@ha /* 0x80B2F124@ha */
/* 80B2EF18  38 84 F1 24 */	addi r4, r4, d_a_npc_worm__stringBase0@l /* 0x80B2F124@l */
/* 80B2EF1C  4B 4F DF A1 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80B2EF20  7C 7D 1B 78 */	mr r29, r3
/* 80B2EF24  2C 1D 00 04 */	cmpwi r29, 4
/* 80B2EF28  40 82 01 0C */	bne lbl_80B2F034
/* 80B2EF2C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80B2EF30  98 1E 05 98 */	stb r0, 0x598(r30)
/* 80B2EF34  7F C3 F3 78 */	mr r3, r30
/* 80B2EF38  3C 80 80 B3 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80B2EE08@ha */
/* 80B2EF3C  38 84 EE 08 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80B2EE08@l */
/* 80B2EF40  38 A0 13 80 */	li r5, 0x1380
/* 80B2EF44  4B 4E B5 6D */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80B2EF48  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B2EF4C  40 82 00 0C */	bne lbl_80B2EF58
/* 80B2EF50  38 60 00 05 */	li r3, 5
/* 80B2EF54  48 00 00 E4 */	b lbl_80B2F038
lbl_80B2EF58:
/* 80B2EF58  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80B2EF5C  4B 73 89 F9 */	bl cM_rndF__Ff
/* 80B2EF60  FC 00 08 1E */	fctiwz f0, f1
/* 80B2EF64  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 80B2EF68  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 80B2EF6C  B0 1E 05 A4 */	sth r0, 0x5a4(r30)
/* 80B2EF70  88 1E 05 98 */	lbz r0, 0x598(r30)
/* 80B2EF74  28 00 00 01 */	cmplwi r0, 1
/* 80B2EF78  40 82 00 10 */	bne lbl_80B2EF88
/* 80B2EF7C  38 00 00 01 */	li r0, 1
/* 80B2EF80  B0 1E 05 A6 */	sth r0, 0x5a6(r30)
/* 80B2EF84  48 00 00 A8 */	b lbl_80B2F02C
lbl_80B2EF88:
/* 80B2EF88  28 00 00 02 */	cmplwi r0, 2
/* 80B2EF8C  40 82 00 10 */	bne lbl_80B2EF9C
/* 80B2EF90  38 00 00 03 */	li r0, 3
/* 80B2EF94  B0 1E 05 A6 */	sth r0, 0x5a6(r30)
/* 80B2EF98  48 00 00 94 */	b lbl_80B2F02C
lbl_80B2EF9C:
/* 80B2EF9C  38 00 00 00 */	li r0, 0
/* 80B2EFA0  B0 1E 05 A6 */	sth r0, 0x5a6(r30)
/* 80B2EFA4  38 61 00 14 */	addi r3, r1, 0x14
/* 80B2EFA8  4B 54 85 D5 */	bl __ct__11dBgS_GndChkFv
/* 80B2EFAC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B2EFB0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B2EFB4  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80B2EFB8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B2EFBC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B2EFC0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B2EFC4  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80B2EFC8  EC 01 00 2A */	fadds f0, f1, f0
/* 80B2EFCC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B2EFD0  38 61 00 14 */	addi r3, r1, 0x14
/* 80B2EFD4  38 81 00 08 */	addi r4, r1, 8
/* 80B2EFD8  4B 73 8D 51 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80B2EFDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B2EFE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B2EFE4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80B2EFE8  38 81 00 14 */	addi r4, r1, 0x14
/* 80B2EFEC  4B 54 54 B5 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80B2EFF0  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80B2EFF4  EC 00 08 2A */	fadds f0, f0, f1
/* 80B2EFF8  D0 1E 05 CC */	stfs f0, 0x5cc(r30)
/* 80B2EFFC  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80B2F000  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B2F004  D0 1E 05 D8 */	stfs f0, 0x5d8(r30)
/* 80B2F008  C0 1E 05 CC */	lfs f0, 0x5cc(r30)
/* 80B2F00C  D0 1E 05 DC */	stfs f0, 0x5dc(r30)
/* 80B2F010  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B2F014  D0 1E 05 E0 */	stfs f0, 0x5e0(r30)
/* 80B2F018  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80B2F01C  D0 1E 05 D4 */	stfs f0, 0x5d4(r30)
/* 80B2F020  38 61 00 14 */	addi r3, r1, 0x14
/* 80B2F024  38 80 FF FF */	li r4, -1
/* 80B2F028  4B 54 85 C9 */	bl __dt__11dBgS_GndChkFv
lbl_80B2F02C:
/* 80B2F02C  7F C3 F3 78 */	mr r3, r30
/* 80B2F030  4B FF FB C5 */	bl daNPC_WORM_Execute__FP14npc_worm_class
lbl_80B2F034:
/* 80B2F034  7F A3 EB 78 */	mr r3, r29
lbl_80B2F038:
/* 80B2F038  39 61 00 80 */	addi r11, r1, 0x80
/* 80B2F03C  4B 83 31 ED */	bl _restgpr_29
/* 80B2F040  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80B2F044  7C 08 03 A6 */	mtlr r0
/* 80B2F048  38 21 00 80 */	addi r1, r1, 0x80
/* 80B2F04C  4E 80 00 20 */	blr 

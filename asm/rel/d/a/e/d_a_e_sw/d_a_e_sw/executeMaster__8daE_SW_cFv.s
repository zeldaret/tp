lbl_807AADCC:
/* 807AADCC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807AADD0  7C 08 02 A6 */	mflr r0
/* 807AADD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 807AADD8  39 61 00 20 */	addi r11, r1, 0x20
/* 807AADDC  4B BB 74 01 */	bl _savegpr_29
/* 807AADE0  7C 7E 1B 78 */	mr r30, r3
/* 807AADE4  3C 60 80 7B */	lis r3, lit_3909@ha /* 0x807AFD2C@ha */
/* 807AADE8  3B E3 FD 2C */	addi r31, r3, lit_3909@l /* 0x807AFD2C@l */
/* 807AADEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807AADF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807AADF4  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 807AADF8  7C 00 07 74 */	extsb r0, r0
/* 807AADFC  1C 00 00 38 */	mulli r0, r0, 0x38
/* 807AAE00  7C 63 02 14 */	add r3, r3, r0
/* 807AAE04  83 A3 5D 74 */	lwz r29, 0x5d74(r3)
/* 807AAE08  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 807AAE0C  54 00 06 2C */	rlwinm r0, r0, 0, 0x18, 0x16
/* 807AAE10  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 807AAE14  38 00 00 00 */	li r0, 0
/* 807AAE18  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 807AAE1C  80 1E 09 A4 */	lwz r0, 0x9a4(r30)
/* 807AAE20  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807AAE24  90 1E 09 A4 */	stw r0, 0x9a4(r30)
/* 807AAE28  80 1E 09 B8 */	lwz r0, 0x9b8(r30)
/* 807AAE2C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807AAE30  90 1E 09 B8 */	stw r0, 0x9b8(r30)
/* 807AAE34  A8 1E 06 EA */	lha r0, 0x6ea(r30)
/* 807AAE38  2C 00 00 00 */	cmpwi r0, 0
/* 807AAE3C  40 82 01 1C */	bne lbl_807AAF58
/* 807AAE40  38 00 00 1E */	li r0, 0x1e
/* 807AAE44  B0 1E 06 EA */	sth r0, 0x6ea(r30)
/* 807AAE48  88 1E 06 84 */	lbz r0, 0x684(r30)
/* 807AAE4C  28 00 00 00 */	cmplwi r0, 0
/* 807AAE50  41 82 00 14 */	beq lbl_807AAE64
/* 807AAE54  C0 3E 06 C8 */	lfs f1, 0x6c8(r30)
/* 807AAE58  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 807AAE5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807AAE60  41 80 00 F8 */	blt lbl_807AAF58
lbl_807AAE64:
/* 807AAE64  C0 3E 06 C8 */	lfs f1, 0x6c8(r30)
/* 807AAE68  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 807AAE6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807AAE70  41 81 00 E8 */	bgt lbl_807AAF58
/* 807AAE74  7F C3 F3 78 */	mr r3, r30
/* 807AAE78  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807AAE7C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807AAE80  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 807AAE84  4B 86 F8 8D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807AAE88  3C 63 00 01 */	addis r3, r3, 1
/* 807AAE8C  38 63 80 00 */	addi r3, r3, -32768
/* 807AAE90  A8 1D 02 32 */	lha r0, 0x232(r29)
/* 807AAE94  7C 03 00 50 */	subf r0, r3, r0
/* 807AAE98  7C 03 07 34 */	extsh r3, r0
/* 807AAE9C  4B BB A2 35 */	bl abs
/* 807AAEA0  2C 03 20 00 */	cmpwi r3, 0x2000
/* 807AAEA4  40 80 00 B4 */	bge lbl_807AAF58
/* 807AAEA8  38 00 00 00 */	li r0, 0
/* 807AAEAC  3C 60 80 7B */	lis r3, struct_807B0200+0x1@ha /* 0x807B0201@ha */
/* 807AAEB0  98 03 02 01 */	stb r0, struct_807B0200+0x1@l(r3)  /* 0x807B0201@l */
/* 807AAEB4  3C 60 80 7B */	lis r3, s_child_sub__FPvPv@ha /* 0x807AAD28@ha */
/* 807AAEB8  38 63 AD 28 */	addi r3, r3, s_child_sub__FPvPv@l /* 0x807AAD28@l */
/* 807AAEBC  7F C4 F3 78 */	mr r4, r30
/* 807AAEC0  4B 87 64 79 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 807AAEC4  3C 60 80 7B */	lis r3, struct_807B0200+0x1@ha /* 0x807B0201@ha */
/* 807AAEC8  38 63 02 01 */	addi r3, r3, struct_807B0200+0x1@l /* 0x807B0201@l */
/* 807AAECC  88 63 00 00 */	lbz r3, 0(r3)
/* 807AAED0  88 1E 06 95 */	lbz r0, 0x695(r30)
/* 807AAED4  7C 03 00 40 */	cmplw r3, r0
/* 807AAED8  40 80 00 80 */	bge lbl_807AAF58
/* 807AAEDC  3B A0 00 02 */	li r29, 2
/* 807AAEE0  3C 60 80 7B */	lis r3, struct_807B0200+0x2@ha /* 0x807B0202@ha */
/* 807AAEE4  88 03 02 02 */	lbz r0, struct_807B0200+0x2@l(r3)  /* 0x807B0202@l */
/* 807AAEE8  28 00 00 04 */	cmplwi r0, 4
/* 807AAEEC  41 80 00 1C */	blt lbl_807AAF08
/* 807AAEF0  4B AB C9 7D */	bl cM_rnd__Fv
/* 807AAEF4  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 807AAEF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807AAEFC  4C 40 13 82 */	cror 2, 0, 2
/* 807AAF00  40 82 00 08 */	bne lbl_807AAF08
/* 807AAF04  3B A0 00 01 */	li r29, 1
lbl_807AAF08:
/* 807AAF08  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 807AAF0C  54 00 05 3E */	clrlwi r0, r0, 0x14
/* 807AAF10  60 00 30 00 */	ori r0, r0, 0x3000
/* 807AAF14  7C 05 03 78 */	mr r5, r0
/* 807AAF18  53 A5 C0 0E */	rlwimi r5, r29, 0x18, 0, 7
/* 807AAF1C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807AAF20  7C 07 07 74 */	extsb r7, r0
/* 807AAF24  38 00 00 00 */	li r0, 0
/* 807AAF28  90 01 00 08 */	stw r0, 8(r1)
/* 807AAF2C  38 60 01 F1 */	li r3, 0x1f1
/* 807AAF30  28 1E 00 00 */	cmplwi r30, 0
/* 807AAF34  41 82 00 0C */	beq lbl_807AAF40
/* 807AAF38  80 9E 00 04 */	lwz r4, 4(r30)
/* 807AAF3C  48 00 00 08 */	b lbl_807AAF44
lbl_807AAF40:
/* 807AAF40  38 80 FF FF */	li r4, -1
lbl_807AAF44:
/* 807AAF44  38 DE 04 A8 */	addi r6, r30, 0x4a8
/* 807AAF48  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 807AAF4C  39 20 00 00 */	li r9, 0
/* 807AAF50  39 40 FF FF */	li r10, -1
/* 807AAF54  4B 86 EF 9D */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
lbl_807AAF58:
/* 807AAF58  39 61 00 20 */	addi r11, r1, 0x20
/* 807AAF5C  4B BB 72 CD */	bl _restgpr_29
/* 807AAF60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807AAF64  7C 08 03 A6 */	mtlr r0
/* 807AAF68  38 21 00 20 */	addi r1, r1, 0x20
/* 807AAF6C  4E 80 00 20 */	blr 

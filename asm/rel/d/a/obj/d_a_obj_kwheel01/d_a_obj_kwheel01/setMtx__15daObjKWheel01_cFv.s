lbl_80C4EC54:
/* 80C4EC54  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C4EC58  7C 08 02 A6 */	mflr r0
/* 80C4EC5C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C4EC60  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80C4EC64  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80C4EC68  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80C4EC6C  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 80C4EC70  39 61 00 30 */	addi r11, r1, 0x30
/* 80C4EC74  4B 71 35 65 */	bl _savegpr_28
/* 80C4EC78  7C 7F 1B 78 */	mr r31, r3
/* 80C4EC7C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C4EC80  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C4EC84  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C4EC88  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C4EC8C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C4EC90  4B 6F 7C 59 */	bl PSMTXTrans
/* 80C4EC94  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C4EC98  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C4EC9C  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80C4ECA0  4B 3B D7 95 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C4ECA4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C4ECA8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C4ECAC  38 9F 05 E8 */	addi r4, r31, 0x5e8
/* 80C4ECB0  4B 6F 78 01 */	bl PSMTXCopy
/* 80C4ECB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C4ECB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C4ECBC  38 9F 05 B8 */	addi r4, r31, 0x5b8
/* 80C4ECC0  4B 6F 77 F1 */	bl PSMTXCopy
/* 80C4ECC4  A8 1F 06 1C */	lha r0, 0x61c(r31)
/* 80C4ECC8  2C 00 00 00 */	cmpwi r0, 0
/* 80C4ECCC  41 82 00 5C */	beq lbl_80C4ED28
/* 80C4ECD0  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 80C4ECD4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C4ECD8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C4ECDC  4B 6F 77 D5 */	bl PSMTXCopy
/* 80C4ECE0  3C 60 80 C5 */	lis r3, lit_3717@ha /* 0x80C4F6E4@ha */
/* 80C4ECE4  C0 23 F6 E4 */	lfs f1, lit_3717@l(r3)  /* 0x80C4F6E4@l */
/* 80C4ECE8  4B 61 8C A5 */	bl cM_rndFX__Ff
/* 80C4ECEC  FF C0 08 90 */	fmr f30, f1
/* 80C4ECF0  3C 60 80 C5 */	lis r3, lit_3717@ha /* 0x80C4F6E4@ha */
/* 80C4ECF4  C0 23 F6 E4 */	lfs f1, lit_3717@l(r3)  /* 0x80C4F6E4@l */
/* 80C4ECF8  4B 61 8C 95 */	bl cM_rndFX__Ff
/* 80C4ECFC  FF E0 08 90 */	fmr f31, f1
/* 80C4ED00  3C 60 80 C5 */	lis r3, lit_3717@ha /* 0x80C4F6E4@ha */
/* 80C4ED04  C0 23 F6 E4 */	lfs f1, lit_3717@l(r3)  /* 0x80C4F6E4@l */
/* 80C4ED08  4B 61 8C 85 */	bl cM_rndFX__Ff
/* 80C4ED0C  FC 40 F8 90 */	fmr f2, f31
/* 80C4ED10  FC 60 F0 90 */	fmr f3, f30
/* 80C4ED14  4B 3B E0 89 */	bl transM__14mDoMtx_stack_cFfff
/* 80C4ED18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C4ED1C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C4ED20  38 9F 05 E8 */	addi r4, r31, 0x5e8
/* 80C4ED24  4B 6F 77 8D */	bl PSMTXCopy
lbl_80C4ED28:
/* 80C4ED28  3B 80 00 00 */	li r28, 0
/* 80C4ED2C  3B C0 00 00 */	li r30, 0
/* 80C4ED30  3B A0 00 00 */	li r29, 0
lbl_80C4ED34:
/* 80C4ED34  38 00 00 01 */	li r0, 1
/* 80C4ED38  7C 03 E0 30 */	slw r3, r0, r28
/* 80C4ED3C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C4ED40  54 00 4F 3E */	rlwinm r0, r0, 9, 0x1c, 0x1f
/* 80C4ED44  7C 60 00 39 */	and. r0, r3, r0
/* 80C4ED48  40 82 00 48 */	bne lbl_80C4ED90
/* 80C4ED4C  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 80C4ED50  3C 80 80 C5 */	lis r4, l_pos@ha /* 0x80C4F6FC@ha */
/* 80C4ED54  38 04 F6 FC */	addi r0, r4, l_pos@l /* 0x80C4F6FC@l */
/* 80C4ED58  7C 80 EA 14 */	add r4, r0, r29
/* 80C4ED5C  38 A1 00 08 */	addi r5, r1, 8
/* 80C4ED60  4B 6F 80 0D */	bl PSMTXMultVec
/* 80C4ED64  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C4ED68  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C4ED6C  C0 21 00 08 */	lfs f1, 8(r1)
/* 80C4ED70  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 80C4ED74  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 80C4ED78  4B 6F 7B 71 */	bl PSMTXTrans
/* 80C4ED7C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C4ED80  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C4ED84  38 9E 06 40 */	addi r4, r30, 0x640
/* 80C4ED88  7C 9F 22 14 */	add r4, r31, r4
/* 80C4ED8C  4B 6F 77 25 */	bl PSMTXCopy
lbl_80C4ED90:
/* 80C4ED90  3B 9C 00 01 */	addi r28, r28, 1
/* 80C4ED94  2C 1C 00 04 */	cmpwi r28, 4
/* 80C4ED98  3B DE 00 30 */	addi r30, r30, 0x30
/* 80C4ED9C  3B BD 00 0C */	addi r29, r29, 0xc
/* 80C4EDA0  41 80 FF 94 */	blt lbl_80C4ED34
/* 80C4EDA4  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80C4EDA8  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80C4EDAC  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 80C4EDB0  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80C4EDB4  39 61 00 30 */	addi r11, r1, 0x30
/* 80C4EDB8  4B 71 34 6D */	bl _restgpr_28
/* 80C4EDBC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C4EDC0  7C 08 03 A6 */	mtlr r0
/* 80C4EDC4  38 21 00 50 */	addi r1, r1, 0x50
/* 80C4EDC8  4E 80 00 20 */	blr 

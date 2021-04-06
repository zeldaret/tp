lbl_80672970:
/* 80672970  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80672974  7C 08 02 A6 */	mflr r0
/* 80672978  90 01 00 34 */	stw r0, 0x34(r1)
/* 8067297C  39 61 00 30 */	addi r11, r1, 0x30
/* 80672980  4B CE F8 59 */	bl _savegpr_28
/* 80672984  7C 7C 1B 78 */	mr r28, r3
/* 80672988  7C 9E 23 78 */	mr r30, r4
/* 8067298C  7C BD 2B 78 */	mr r29, r5
/* 80672990  3C 80 80 67 */	lis r4, l_staff_name@ha /* 0x80677558@ha */
/* 80672994  3B E4 75 58 */	addi r31, r4, l_staff_name@l /* 0x80677558@l */
/* 80672998  48 00 04 AD */	bl getHeight__13dDoor_stop2_cFv
/* 8067299C  D0 3C 00 04 */	stfs f1, 4(r28)
/* 806729A0  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 806729A4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806729A8  38 00 00 01 */	li r0, 1
/* 806729AC  98 1C 00 0B */	stb r0, 0xb(r28)
/* 806729B0  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 806729B4  41 82 01 18 */	beq lbl_80672ACC
/* 806729B8  7F C3 F3 78 */	mr r3, r30
/* 806729BC  4B FF FE 7D */	bl getNowLevel__FP10fopAc_ac_c
/* 806729C0  28 03 00 0B */	cmplwi r3, 0xb
/* 806729C4  41 81 01 08 */	bgt lbl_80672ACC
/* 806729C8  3C 80 80 67 */	lis r4, lit_3743@ha /* 0x806779F8@ha */
/* 806729CC  38 84 79 F8 */	addi r4, r4, lit_3743@l /* 0x806779F8@l */
/* 806729D0  54 60 10 3A */	slwi r0, r3, 2
/* 806729D4  7C 04 00 2E */	lwzx r0, r4, r0
/* 806729D8  7C 09 03 A6 */	mtctr r0
/* 806729DC  4E 80 04 20 */	bctr 
lbl_806729E0:
/* 806729E0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806729E4  7C 03 07 74 */	extsb r3, r0
/* 806729E8  4B 9B A6 85 */	bl dComIfGp_getReverb__Fi
/* 806729EC  7C 67 1B 78 */	mr r7, r3
/* 806729F0  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800C2@ha */
/* 806729F4  38 03 00 C2 */	addi r0, r3, 0x00C2 /* 0x000800C2@l */
/* 806729F8  90 01 00 10 */	stw r0, 0x10(r1)
/* 806729FC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80672A00  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80672A04  80 63 00 00 */	lwz r3, 0(r3)
/* 80672A08  38 81 00 10 */	addi r4, r1, 0x10
/* 80672A0C  38 BE 05 38 */	addi r5, r30, 0x538
/* 80672A10  38 C0 00 00 */	li r6, 0
/* 80672A14  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80672A18  FC 40 08 90 */	fmr f2, f1
/* 80672A1C  C0 7F 00 48 */	lfs f3, 0x48(r31)
/* 80672A20  FC 80 18 90 */	fmr f4, f3
/* 80672A24  39 00 00 00 */	li r8, 0
/* 80672A28  4B C3 8F 5D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80672A2C  48 00 00 A0 */	b lbl_80672ACC
lbl_80672A30:
/* 80672A30  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80672A34  7C 03 07 74 */	extsb r3, r0
/* 80672A38  4B 9B A6 35 */	bl dComIfGp_getReverb__Fi
/* 80672A3C  7C 67 1B 78 */	mr r7, r3
/* 80672A40  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801CD@ha */
/* 80672A44  38 03 01 CD */	addi r0, r3, 0x01CD /* 0x000801CD@l */
/* 80672A48  90 01 00 0C */	stw r0, 0xc(r1)
/* 80672A4C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80672A50  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80672A54  80 63 00 00 */	lwz r3, 0(r3)
/* 80672A58  38 81 00 0C */	addi r4, r1, 0xc
/* 80672A5C  38 BE 05 38 */	addi r5, r30, 0x538
/* 80672A60  38 C0 00 00 */	li r6, 0
/* 80672A64  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80672A68  FC 40 08 90 */	fmr f2, f1
/* 80672A6C  C0 7F 00 48 */	lfs f3, 0x48(r31)
/* 80672A70  FC 80 18 90 */	fmr f4, f3
/* 80672A74  39 00 00 00 */	li r8, 0
/* 80672A78  4B C3 8F 0D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80672A7C  48 00 00 50 */	b lbl_80672ACC
lbl_80672A80:
/* 80672A80  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80672A84  7C 03 07 74 */	extsb r3, r0
/* 80672A88  4B 9B A5 E5 */	bl dComIfGp_getReverb__Fi
/* 80672A8C  7C 67 1B 78 */	mr r7, r3
/* 80672A90  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008021E@ha */
/* 80672A94  38 03 02 1E */	addi r0, r3, 0x021E /* 0x0008021E@l */
/* 80672A98  90 01 00 08 */	stw r0, 8(r1)
/* 80672A9C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80672AA0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80672AA4  80 63 00 00 */	lwz r3, 0(r3)
/* 80672AA8  38 81 00 08 */	addi r4, r1, 8
/* 80672AAC  38 BE 05 38 */	addi r5, r30, 0x538
/* 80672AB0  38 C0 00 00 */	li r6, 0
/* 80672AB4  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80672AB8  FC 40 08 90 */	fmr f2, f1
/* 80672ABC  C0 7F 00 48 */	lfs f3, 0x48(r31)
/* 80672AC0  FC 80 18 90 */	fmr f4, f3
/* 80672AC4  39 00 00 00 */	li r8, 0
/* 80672AC8  4B C3 8E BD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80672ACC:
/* 80672ACC  39 61 00 30 */	addi r11, r1, 0x30
/* 80672AD0  4B CE F7 55 */	bl _restgpr_28
/* 80672AD4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80672AD8  7C 08 03 A6 */	mtlr r0
/* 80672ADC  38 21 00 30 */	addi r1, r1, 0x30
/* 80672AE0  4E 80 00 20 */	blr 

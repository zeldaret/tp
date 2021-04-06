lbl_80BDEA44:
/* 80BDEA44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BDEA48  7C 08 02 A6 */	mflr r0
/* 80BDEA4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BDEA50  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BDEA54  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80BDEA58  7C 7E 1B 78 */	mr r30, r3
/* 80BDEA5C  3C 80 80 BE */	lis r4, l_swOffset@ha /* 0x80BDF870@ha */
/* 80BDEA60  3B E4 F8 70 */	addi r31, r4, l_swOffset@l /* 0x80BDF870@l */
/* 80BDEA64  88 03 06 31 */	lbz r0, 0x631(r3)
/* 80BDEA68  28 00 00 00 */	cmplwi r0, 0
/* 80BDEA6C  41 82 00 80 */	beq lbl_80BDEAEC
/* 80BDEA70  88 1E 06 36 */	lbz r0, 0x636(r30)
/* 80BDEA74  28 00 00 00 */	cmplwi r0, 0
/* 80BDEA78  41 82 00 0C */	beq lbl_80BDEA84
/* 80BDEA7C  48 00 01 0D */	bl modeSwLowerInit__17daObjDmElevator_cFv
/* 80BDEA80  48 00 00 D0 */	b lbl_80BDEB50
lbl_80BDEA84:
/* 80BDEA84  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80BDEA88  C0 1E 06 40 */	lfs f0, 0x640(r30)
/* 80BDEA8C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80BDEA90  40 82 00 50 */	bne lbl_80BDEAE0
/* 80BDEA94  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BDEA98  7C 03 07 74 */	extsb r3, r0
/* 80BDEA9C  4B 44 E5 D1 */	bl dComIfGp_getReverb__Fi
/* 80BDEAA0  7C 67 1B 78 */	mr r7, r3
/* 80BDEAA4  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080140@ha */
/* 80BDEAA8  38 03 01 40 */	addi r0, r3, 0x0140 /* 0x00080140@l */
/* 80BDEAAC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BDEAB0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BDEAB4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BDEAB8  80 63 00 00 */	lwz r3, 0(r3)
/* 80BDEABC  38 81 00 0C */	addi r4, r1, 0xc
/* 80BDEAC0  38 BE 05 38 */	addi r5, r30, 0x538
/* 80BDEAC4  38 C0 00 00 */	li r6, 0
/* 80BDEAC8  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80BDEACC  FC 40 08 90 */	fmr f2, f1
/* 80BDEAD0  C0 7F 00 6C */	lfs f3, 0x6c(r31)
/* 80BDEAD4  FC 80 18 90 */	fmr f4, f3
/* 80BDEAD8  39 00 00 00 */	li r8, 0
/* 80BDEADC  4B 6C CE A9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BDEAE0:
/* 80BDEAE0  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80BDEAE4  D0 1E 06 40 */	stfs f0, 0x640(r30)
/* 80BDEAE8  48 00 00 68 */	b lbl_80BDEB50
lbl_80BDEAEC:
/* 80BDEAEC  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80BDEAF0  C0 1E 06 40 */	lfs f0, 0x640(r30)
/* 80BDEAF4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80BDEAF8  41 82 00 50 */	beq lbl_80BDEB48
/* 80BDEAFC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BDEB00  7C 03 07 74 */	extsb r3, r0
/* 80BDEB04  4B 44 E5 69 */	bl dComIfGp_getReverb__Fi
/* 80BDEB08  7C 67 1B 78 */	mr r7, r3
/* 80BDEB0C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080141@ha */
/* 80BDEB10  38 03 01 41 */	addi r0, r3, 0x0141 /* 0x00080141@l */
/* 80BDEB14  90 01 00 08 */	stw r0, 8(r1)
/* 80BDEB18  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BDEB1C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BDEB20  80 63 00 00 */	lwz r3, 0(r3)
/* 80BDEB24  38 81 00 08 */	addi r4, r1, 8
/* 80BDEB28  38 BE 05 38 */	addi r5, r30, 0x538
/* 80BDEB2C  38 C0 00 00 */	li r6, 0
/* 80BDEB30  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80BDEB34  FC 40 08 90 */	fmr f2, f1
/* 80BDEB38  C0 7F 00 6C */	lfs f3, 0x6c(r31)
/* 80BDEB3C  FC 80 18 90 */	fmr f4, f3
/* 80BDEB40  39 00 00 00 */	li r8, 0
/* 80BDEB44  4B 6C CE 41 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BDEB48:
/* 80BDEB48  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80BDEB4C  D0 1E 06 40 */	stfs f0, 0x640(r30)
lbl_80BDEB50:
/* 80BDEB50  88 1E 06 2F */	lbz r0, 0x62f(r30)
/* 80BDEB54  28 00 00 00 */	cmplwi r0, 0
/* 80BDEB58  41 82 00 18 */	beq lbl_80BDEB70
/* 80BDEB5C  88 1E 06 30 */	lbz r0, 0x630(r30)
/* 80BDEB60  28 00 00 00 */	cmplwi r0, 0
/* 80BDEB64  40 82 00 0C */	bne lbl_80BDEB70
/* 80BDEB68  7F C3 F3 78 */	mr r3, r30
/* 80BDEB6C  4B FF FC 45 */	bl actionSwPauseOrderInit__17daObjDmElevator_cFv
lbl_80BDEB70:
/* 80BDEB70  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BDEB74  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80BDEB78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BDEB7C  7C 08 03 A6 */	mtlr r0
/* 80BDEB80  38 21 00 20 */	addi r1, r1, 0x20
/* 80BDEB84  4E 80 00 20 */	blr 

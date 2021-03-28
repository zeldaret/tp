lbl_80C74B64:
/* 80C74B64  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C74B68  7C 08 02 A6 */	mflr r0
/* 80C74B6C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C74B70  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80C74B74  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80C74B78  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C74B7C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C74B80  7C 7E 1B 78 */	mr r30, r3
/* 80C74B84  3C 60 80 C7 */	lis r3, lit_3633@ha
/* 80C74B88  3B E3 55 24 */	addi r31, r3, lit_3633@l
/* 80C74B8C  38 7E 14 C0 */	addi r3, r30, 0x14c0
/* 80C74B90  3C 80 80 C7 */	lis r4, l_HIO@ha
/* 80C74B94  38 84 57 54 */	addi r4, r4, l_HIO@l
/* 80C74B98  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 80C74B9C  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 80C74BA0  C0 64 00 04 */	lfs f3, 4(r4)
/* 80C74BA4  C0 9F 00 5C */	lfs f4, 0x5c(r31)
/* 80C74BA8  4B 5F AD D4 */	b cLib_addCalc__FPfffff
/* 80C74BAC  FF E0 08 90 */	fmr f31, f1
/* 80C74BB0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C74BB4  7C 03 07 74 */	extsb r3, r0
/* 80C74BB8  4B 3B 84 B4 */	b dComIfGp_getReverb__Fi
/* 80C74BBC  7C 67 1B 78 */	mr r7, r3
/* 80C74BC0  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801E7@ha */
/* 80C74BC4  38 03 01 E7 */	addi r0, r3, 0x01E7 /* 0x000801E7@l */
/* 80C74BC8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C74BCC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C74BD0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C74BD4  80 63 00 00 */	lwz r3, 0(r3)
/* 80C74BD8  38 81 00 0C */	addi r4, r1, 0xc
/* 80C74BDC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C74BE0  38 C0 00 00 */	li r6, 0
/* 80C74BE4  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80C74BE8  FC 40 08 90 */	fmr f2, f1
/* 80C74BEC  C0 7F 00 64 */	lfs f3, 0x64(r31)
/* 80C74BF0  FC 80 18 90 */	fmr f4, f3
/* 80C74BF4  39 00 00 00 */	li r8, 0
/* 80C74BF8  4B 63 79 14 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C74BFC  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80C74C00  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80C74C04  40 82 00 58 */	bne lbl_80C74C5C
/* 80C74C08  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C74C0C  7C 03 07 74 */	extsb r3, r0
/* 80C74C10  4B 3B 84 5C */	b dComIfGp_getReverb__Fi
/* 80C74C14  7C 67 1B 78 */	mr r7, r3
/* 80C74C18  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801E8@ha */
/* 80C74C1C  38 03 01 E8 */	addi r0, r3, 0x01E8 /* 0x000801E8@l */
/* 80C74C20  90 01 00 08 */	stw r0, 8(r1)
/* 80C74C24  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C74C28  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C74C2C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C74C30  38 81 00 08 */	addi r4, r1, 8
/* 80C74C34  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C74C38  38 C0 00 00 */	li r6, 0
/* 80C74C3C  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80C74C40  FC 40 08 90 */	fmr f2, f1
/* 80C74C44  C0 7F 00 64 */	lfs f3, 0x64(r31)
/* 80C74C48  FC 80 18 90 */	fmr f4, f3
/* 80C74C4C  39 00 00 00 */	li r8, 0
/* 80C74C50  4B 63 6D 34 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C74C54  7F C3 F3 78 */	mr r3, r30
/* 80C74C58  4B FF FE F1 */	bl init_modeWait__13daLv6SwGate_cFv
lbl_80C74C5C:
/* 80C74C5C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80C74C60  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80C74C64  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C74C68  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C74C6C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C74C70  7C 08 03 A6 */	mtlr r0
/* 80C74C74  38 21 00 30 */	addi r1, r1, 0x30
/* 80C74C78  4E 80 00 20 */	blr 

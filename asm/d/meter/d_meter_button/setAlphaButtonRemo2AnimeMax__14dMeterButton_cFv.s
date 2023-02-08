lbl_8020824C:
/* 8020824C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80208250  7C 08 02 A6 */	mflr r0
/* 80208254  90 01 00 24 */	stw r0, 0x24(r1)
/* 80208258  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8020825C  7C 7F 1B 78 */	mr r31, r3
/* 80208260  80 63 00 48 */	lwz r3, 0x48(r3)
/* 80208264  28 03 00 00 */	cmplwi r3, 0
/* 80208268  41 82 00 C4 */	beq lbl_8020832C
/* 8020826C  48 04 D5 BD */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80208270  C0 02 AD 4C */	lfs f0, lit_4147(r2)
/* 80208274  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80208278  41 82 00 B4 */	beq lbl_8020832C
/* 8020827C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80208280  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80208284  88 03 5E 47 */	lbz r0, 0x5e47(r3)
/* 80208288  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8020828C  41 82 00 20 */	beq lbl_802082AC
/* 80208290  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 80208294  FC 20 00 90 */	fmr f1, f0
/* 80208298  48 04 D5 39 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8020829C  38 00 00 05 */	li r0, 5
/* 802082A0  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 802082A4  B0 03 00 16 */	sth r0, 0x16(r3)
/* 802082A8  48 00 00 2C */	b lbl_802082D4
lbl_802082AC:
/* 802082AC  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 802082B0  FC 20 00 90 */	fmr f1, f0
/* 802082B4  48 04 D5 1D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 802082B8  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 802082BC  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 802082C0  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 802082C4  80 63 01 0C */	lwz r3, 0x10c(r3)
/* 802082C8  80 9F 00 48 */	lwz r4, 0x48(r31)
/* 802082CC  38 A0 00 05 */	li r5, 5
/* 802082D0  48 01 27 D5 */	bl setAlphaAnimeMax__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_802082D4:
/* 802082D4  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 802082D8  48 04 D5 51 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 802082DC  C0 42 AD 4C */	lfs f2, lit_4147(r2)
/* 802082E0  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 802082E4  40 82 00 48 */	bne lbl_8020832C
/* 802082E8  88 1F 04 CB */	lbz r0, 0x4cb(r31)
/* 802082EC  28 00 00 00 */	cmplwi r0, 0
/* 802082F0  40 82 00 3C */	bne lbl_8020832C
/* 802082F4  38 00 00 56 */	li r0, 0x56
/* 802082F8  90 01 00 08 */	stw r0, 8(r1)
/* 802082FC  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80208300  38 81 00 08 */	addi r4, r1, 8
/* 80208304  38 A0 00 00 */	li r5, 0
/* 80208308  38 C0 00 00 */	li r6, 0
/* 8020830C  38 E0 00 00 */	li r7, 0
/* 80208310  FC 20 10 90 */	fmr f1, f2
/* 80208314  C0 62 AD 58 */	lfs f3, lit_4513(r2)
/* 80208318  FC 80 18 90 */	fmr f4, f3
/* 8020831C  39 00 00 00 */	li r8, 0
/* 80208320  48 0A 36 65 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80208324  38 00 00 01 */	li r0, 1
/* 80208328  98 1F 04 CB */	stb r0, 0x4cb(r31)
lbl_8020832C:
/* 8020832C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80208330  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80208334  7C 08 03 A6 */	mtlr r0
/* 80208338  38 21 00 20 */	addi r1, r1, 0x20
/* 8020833C  4E 80 00 20 */	blr 

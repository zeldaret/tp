lbl_802088A0:
/* 802088A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802088A4  7C 08 02 A6 */	mflr r0
/* 802088A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802088AC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802088B0  7C 7F 1B 78 */	mr r31, r3
/* 802088B4  80 63 00 58 */	lwz r3, 0x58(r3)
/* 802088B8  28 03 00 00 */	cmplwi r3, 0
/* 802088BC  41 82 00 D0 */	beq lbl_8020898C
/* 802088C0  48 04 CF 69 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 802088C4  C0 02 AD 4C */	lfs f0, lit_4147(r2)
/* 802088C8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802088CC  41 82 00 C0 */	beq lbl_8020898C
/* 802088D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802088D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802088D8  88 03 5E 4A */	lbz r0, 0x5e4a(r3)
/* 802088DC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802088E0  40 82 00 10 */	bne lbl_802088F0
/* 802088E4  88 03 5E 4B */	lbz r0, 0x5e4b(r3)
/* 802088E8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802088EC  41 82 00 20 */	beq lbl_8020890C
lbl_802088F0:
/* 802088F0  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 802088F4  C0 22 AD 4C */	lfs f1, lit_4147(r2)
/* 802088F8  48 04 CE D9 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 802088FC  38 00 00 05 */	li r0, 5
/* 80208900  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 80208904  B0 03 00 16 */	sth r0, 0x16(r3)
/* 80208908  48 00 00 2C */	b lbl_80208934
lbl_8020890C:
/* 8020890C  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 80208910  FC 20 00 90 */	fmr f1, f0
/* 80208914  48 04 CE BD */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80208918  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8020891C  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 80208920  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80208924  80 63 01 0C */	lwz r3, 0x10c(r3)
/* 80208928  80 9F 00 58 */	lwz r4, 0x58(r31)
/* 8020892C  38 A0 00 05 */	li r5, 5
/* 80208930  48 01 21 75 */	bl setAlphaAnimeMax__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_80208934:
/* 80208934  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 80208938  48 04 CE F1 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 8020893C  C0 42 AD 4C */	lfs f2, lit_4147(r2)
/* 80208940  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 80208944  40 82 00 48 */	bne lbl_8020898C
/* 80208948  88 1F 04 CF */	lbz r0, 0x4cf(r31)
/* 8020894C  28 00 00 00 */	cmplwi r0, 0
/* 80208950  40 82 00 3C */	bne lbl_8020898C
/* 80208954  38 00 00 56 */	li r0, 0x56
/* 80208958  90 01 00 08 */	stw r0, 8(r1)
/* 8020895C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80208960  38 81 00 08 */	addi r4, r1, 8
/* 80208964  38 A0 00 00 */	li r5, 0
/* 80208968  38 C0 00 00 */	li r6, 0
/* 8020896C  38 E0 00 00 */	li r7, 0
/* 80208970  FC 20 10 90 */	fmr f1, f2
/* 80208974  C0 62 AD 58 */	lfs f3, lit_4513(r2)
/* 80208978  FC 80 18 90 */	fmr f4, f3
/* 8020897C  39 00 00 00 */	li r8, 0
/* 80208980  48 0A 30 05 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80208984  38 00 00 01 */	li r0, 1
/* 80208988  98 1F 04 CF */	stb r0, 0x4cf(r31)
lbl_8020898C:
/* 8020898C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80208990  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80208994  7C 08 03 A6 */	mtlr r0
/* 80208998  38 21 00 20 */	addi r1, r1, 0x20
/* 8020899C  4E 80 00 20 */	blr 

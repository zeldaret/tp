lbl_80207060:
/* 80207060  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80207064  7C 08 02 A6 */	mflr r0
/* 80207068  90 01 00 24 */	stw r0, 0x24(r1)
/* 8020706C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80207070  7C 7F 1B 78 */	mr r31, r3
/* 80207074  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80207078  48 04 E7 B1 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 8020707C  C0 02 AD 4C */	lfs f0, lit_4147(r2)
/* 80207080  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80207084  41 82 00 B4 */	beq lbl_80207138
/* 80207088  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8020708C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80207090  88 03 5E 4A */	lbz r0, 0x5e4a(r3)
/* 80207094  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80207098  41 82 00 20 */	beq lbl_802070B8
/* 8020709C  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 802070A0  FC 20 00 90 */	fmr f1, f0
/* 802070A4  48 04 E7 2D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 802070A8  38 00 00 05 */	li r0, 5
/* 802070AC  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 802070B0  B0 03 00 16 */	sth r0, 0x16(r3)
/* 802070B4  48 00 00 2C */	b lbl_802070E0
lbl_802070B8:
/* 802070B8  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 802070BC  FC 20 00 90 */	fmr f1, f0
/* 802070C0  48 04 E7 11 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 802070C4  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 802070C8  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 802070CC  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 802070D0  80 63 01 0C */	lwz r3, 0x10c(r3)
/* 802070D4  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 802070D8  38 A0 00 05 */	li r5, 5
/* 802070DC  48 01 39 C9 */	bl setAlphaAnimeMax__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_802070E0:
/* 802070E0  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 802070E4  48 04 E7 45 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 802070E8  C0 42 AD 4C */	lfs f2, lit_4147(r2)
/* 802070EC  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 802070F0  40 82 00 48 */	bne lbl_80207138
/* 802070F4  88 1F 04 C0 */	lbz r0, 0x4c0(r31)
/* 802070F8  28 00 00 00 */	cmplwi r0, 0
/* 802070FC  40 82 00 3C */	bne lbl_80207138
/* 80207100  38 00 00 56 */	li r0, 0x56
/* 80207104  90 01 00 08 */	stw r0, 8(r1)
/* 80207108  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8020710C  38 81 00 08 */	addi r4, r1, 8
/* 80207110  38 A0 00 00 */	li r5, 0
/* 80207114  38 C0 00 00 */	li r6, 0
/* 80207118  38 E0 00 00 */	li r7, 0
/* 8020711C  FC 20 10 90 */	fmr f1, f2
/* 80207120  C0 62 AD 58 */	lfs f3, lit_4513(r2)
/* 80207124  FC 80 18 90 */	fmr f4, f3
/* 80207128  39 00 00 00 */	li r8, 0
/* 8020712C  48 0A 48 59 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80207130  38 00 00 01 */	li r0, 1
/* 80207134  98 1F 04 C0 */	stb r0, 0x4c0(r31)
lbl_80207138:
/* 80207138  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8020713C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80207140  7C 08 03 A6 */	mtlr r0
/* 80207144  38 21 00 20 */	addi r1, r1, 0x20
/* 80207148  4E 80 00 20 */	blr 

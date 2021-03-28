lbl_80207C34:
/* 80207C34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80207C38  7C 08 02 A6 */	mflr r0
/* 80207C3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80207C40  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80207C44  7C 7F 1B 78 */	mr r31, r3
/* 80207C48  80 63 00 38 */	lwz r3, 0x38(r3)
/* 80207C4C  48 04 DB DD */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80207C50  C0 02 AD 4C */	lfs f0, lit_4147(r2)
/* 80207C54  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80207C58  41 82 00 B4 */	beq lbl_80207D0C
/* 80207C5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80207C60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80207C64  88 03 5E 5E */	lbz r0, 0x5e5e(r3)
/* 80207C68  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80207C6C  41 82 00 20 */	beq lbl_80207C8C
/* 80207C70  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80207C74  FC 20 00 90 */	fmr f1, f0
/* 80207C78  48 04 DB 59 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80207C7C  38 00 00 05 */	li r0, 5
/* 80207C80  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80207C84  B0 03 00 16 */	sth r0, 0x16(r3)
/* 80207C88  48 00 00 2C */	b lbl_80207CB4
lbl_80207C8C:
/* 80207C8C  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80207C90  FC 20 00 90 */	fmr f1, f0
/* 80207C94  48 04 DB 3D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80207C98  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80207C9C  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80207CA0  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80207CA4  80 63 01 0C */	lwz r3, 0x10c(r3)
/* 80207CA8  80 9F 00 38 */	lwz r4, 0x38(r31)
/* 80207CAC  38 A0 00 05 */	li r5, 5
/* 80207CB0  48 01 2D F5 */	bl setAlphaAnimeMax__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_80207CB4:
/* 80207CB4  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80207CB8  48 04 DB 71 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80207CBC  C0 42 AD 4C */	lfs f2, lit_4147(r2)
/* 80207CC0  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 80207CC4  40 82 00 48 */	bne lbl_80207D0C
/* 80207CC8  88 1F 04 C7 */	lbz r0, 0x4c7(r31)
/* 80207CCC  28 00 00 00 */	cmplwi r0, 0
/* 80207CD0  40 82 00 3C */	bne lbl_80207D0C
/* 80207CD4  38 00 00 56 */	li r0, 0x56
/* 80207CD8  90 01 00 08 */	stw r0, 8(r1)
/* 80207CDC  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80207CE0  38 81 00 08 */	addi r4, r1, 8
/* 80207CE4  38 A0 00 00 */	li r5, 0
/* 80207CE8  38 C0 00 00 */	li r6, 0
/* 80207CEC  38 E0 00 00 */	li r7, 0
/* 80207CF0  FC 20 10 90 */	fmr f1, f2
/* 80207CF4  C0 62 AD 58 */	lfs f3, lit_4513(r2)
/* 80207CF8  FC 80 18 90 */	fmr f4, f3
/* 80207CFC  39 00 00 00 */	li r8, 0
/* 80207D00  48 0A 3C 85 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80207D04  38 00 00 01 */	li r0, 1
/* 80207D08  98 1F 04 C7 */	stb r0, 0x4c7(r31)
lbl_80207D0C:
/* 80207D0C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80207D10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80207D14  7C 08 03 A6 */	mtlr r0
/* 80207D18  38 21 00 20 */	addi r1, r1, 0x20
/* 80207D1C  4E 80 00 20 */	blr 

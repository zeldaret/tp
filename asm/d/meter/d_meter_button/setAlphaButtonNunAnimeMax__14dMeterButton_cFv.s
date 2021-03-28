lbl_80207F34:
/* 80207F34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80207F38  7C 08 02 A6 */	mflr r0
/* 80207F3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80207F40  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80207F44  7C 7F 1B 78 */	mr r31, r3
/* 80207F48  80 63 00 40 */	lwz r3, 0x40(r3)
/* 80207F4C  28 03 00 00 */	cmplwi r3, 0
/* 80207F50  41 82 00 C4 */	beq lbl_80208014
/* 80207F54  48 04 D8 D5 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80207F58  C0 02 AD 4C */	lfs f0, lit_4147(r2)
/* 80207F5C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80207F60  41 82 00 B4 */	beq lbl_80208014
/* 80207F64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80207F68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80207F6C  88 03 5E 45 */	lbz r0, 0x5e45(r3)
/* 80207F70  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80207F74  41 82 00 20 */	beq lbl_80207F94
/* 80207F78  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 80207F7C  FC 20 00 90 */	fmr f1, f0
/* 80207F80  48 04 D8 51 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80207F84  38 00 00 05 */	li r0, 5
/* 80207F88  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 80207F8C  B0 03 00 16 */	sth r0, 0x16(r3)
/* 80207F90  48 00 00 2C */	b lbl_80207FBC
lbl_80207F94:
/* 80207F94  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 80207F98  FC 20 00 90 */	fmr f1, f0
/* 80207F9C  48 04 D8 35 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80207FA0  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80207FA4  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80207FA8  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80207FAC  80 63 01 0C */	lwz r3, 0x10c(r3)
/* 80207FB0  80 9F 00 40 */	lwz r4, 0x40(r31)
/* 80207FB4  38 A0 00 05 */	li r5, 5
/* 80207FB8  48 01 2A ED */	bl setAlphaAnimeMax__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_80207FBC:
/* 80207FBC  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 80207FC0  48 04 D8 69 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80207FC4  C0 42 AD 4C */	lfs f2, lit_4147(r2)
/* 80207FC8  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 80207FCC  40 82 00 48 */	bne lbl_80208014
/* 80207FD0  88 1F 04 C9 */	lbz r0, 0x4c9(r31)
/* 80207FD4  28 00 00 00 */	cmplwi r0, 0
/* 80207FD8  40 82 00 3C */	bne lbl_80208014
/* 80207FDC  38 00 00 56 */	li r0, 0x56
/* 80207FE0  90 01 00 08 */	stw r0, 8(r1)
/* 80207FE4  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80207FE8  38 81 00 08 */	addi r4, r1, 8
/* 80207FEC  38 A0 00 00 */	li r5, 0
/* 80207FF0  38 C0 00 00 */	li r6, 0
/* 80207FF4  38 E0 00 00 */	li r7, 0
/* 80207FF8  FC 20 10 90 */	fmr f1, f2
/* 80207FFC  C0 62 AD 58 */	lfs f3, lit_4513(r2)
/* 80208000  FC 80 18 90 */	fmr f4, f3
/* 80208004  39 00 00 00 */	li r8, 0
/* 80208008  48 0A 39 7D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8020800C  38 00 00 01 */	li r0, 1
/* 80208010  98 1F 04 C9 */	stb r0, 0x4c9(r31)
lbl_80208014:
/* 80208014  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80208018  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8020801C  7C 08 03 A6 */	mtlr r0
/* 80208020  38 21 00 20 */	addi r1, r1, 0x20
/* 80208024  4E 80 00 20 */	blr 

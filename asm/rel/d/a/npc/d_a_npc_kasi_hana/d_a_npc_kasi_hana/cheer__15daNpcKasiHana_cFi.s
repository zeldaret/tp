lbl_80A1EF90:
/* 80A1EF90  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A1EF94  7C 08 02 A6 */	mflr r0
/* 80A1EF98  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A1EF9C  39 61 00 30 */	addi r11, r1, 0x30
/* 80A1EFA0  4B 94 32 3D */	bl _savegpr_29
/* 80A1EFA4  7C 7E 1B 78 */	mr r30, r3
/* 80A1EFA8  3C 60 80 A2 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80A213D4@ha */
/* 80A1EFAC  3B E3 13 D4 */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x80A213D4@l */
/* 80A1EFB0  A8 1E 14 06 */	lha r0, 0x1406(r30)
/* 80A1EFB4  2C 00 00 00 */	cmpwi r0, 0
/* 80A1EFB8  41 82 00 18 */	beq lbl_80A1EFD0
/* 80A1EFBC  40 80 00 08 */	bge lbl_80A1EFC4
/* 80A1EFC0  48 00 01 BC */	b lbl_80A1F17C
lbl_80A1EFC4:
/* 80A1EFC4  2C 00 00 02 */	cmpwi r0, 2
/* 80A1EFC8  40 80 01 B4 */	bge lbl_80A1F17C
/* 80A1EFCC  48 00 00 9C */	b lbl_80A1F068
lbl_80A1EFD0:
/* 80A1EFD0  38 60 01 22 */	li r3, 0x122
/* 80A1EFD4  4B 73 66 61 */	bl daNpcF_chkEvtBit__FUl
/* 80A1EFD8  2C 03 00 00 */	cmpwi r3, 0
/* 80A1EFDC  41 82 00 2C */	beq lbl_80A1F008
/* 80A1EFE0  7F C3 F3 78 */	mr r3, r30
/* 80A1EFE4  38 80 00 03 */	li r4, 3
/* 80A1EFE8  3C A0 80 A2 */	lis r5, lit_3998@ha /* 0x80A21090@ha */
/* 80A1EFEC  C0 25 10 90 */	lfs f1, lit_3998@l(r5)  /* 0x80A21090@l */
/* 80A1EFF0  38 A0 00 00 */	li r5, 0
/* 80A1EFF4  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A1EFF8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A1EFFC  7D 89 03 A6 */	mtctr r12
/* 80A1F000  4E 80 04 21 */	bctrl 
/* 80A1F004  48 00 00 28 */	b lbl_80A1F02C
lbl_80A1F008:
/* 80A1F008  7F C3 F3 78 */	mr r3, r30
/* 80A1F00C  38 80 00 02 */	li r4, 2
/* 80A1F010  3C A0 80 A2 */	lis r5, lit_3998@ha /* 0x80A21090@ha */
/* 80A1F014  C0 25 10 90 */	lfs f1, lit_3998@l(r5)  /* 0x80A21090@l */
/* 80A1F018  38 A0 00 00 */	li r5, 0
/* 80A1F01C  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A1F020  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A1F024  7D 89 03 A6 */	mtctr r12
/* 80A1F028  4E 80 04 21 */	bctrl 
lbl_80A1F02C:
/* 80A1F02C  7F C3 F3 78 */	mr r3, r30
/* 80A1F030  38 80 00 02 */	li r4, 2
/* 80A1F034  4B FF E7 F1 */	bl setLookMode__15daNpcKasiHana_cFi
/* 80A1F038  3C 60 80 A2 */	lis r3, lit_3908@ha /* 0x80A21080@ha */
/* 80A1F03C  C0 03 10 80 */	lfs f0, lit_3908@l(r3)  /* 0x80A21080@l */
/* 80A1F040  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80A1F044  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80A1F048  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80A1F04C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80A1F050  38 00 00 00 */	li r0, 0
/* 80A1F054  98 1E 14 42 */	stb r0, 0x1442(r30)
/* 80A1F058  98 1E 14 40 */	stb r0, 0x1440(r30)
/* 80A1F05C  38 00 00 01 */	li r0, 1
/* 80A1F060  B0 1E 14 06 */	sth r0, 0x1406(r30)
/* 80A1F064  48 00 01 18 */	b lbl_80A1F17C
lbl_80A1F068:
/* 80A1F068  38 7E 14 48 */	addi r3, r30, 0x1448
/* 80A1F06C  4B FF CB 31 */	bl isMiniGamePlaying__15daNpcKasi_Mng_cFv
/* 80A1F070  2C 03 00 00 */	cmpwi r3, 0
/* 80A1F074  40 82 00 3C */	bne lbl_80A1F0B0
/* 80A1F078  80 1E 14 68 */	lwz r0, 0x1468(r30)
/* 80A1F07C  60 00 00 01 */	ori r0, r0, 1
/* 80A1F080  90 1E 14 68 */	stw r0, 0x1468(r30)
/* 80A1F084  80 7F 02 E0 */	lwz r3, 0x2e0(r31)
/* 80A1F088  80 1F 02 E4 */	lwz r0, 0x2e4(r31)
/* 80A1F08C  90 61 00 08 */	stw r3, 8(r1)
/* 80A1F090  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A1F094  80 1F 02 E8 */	lwz r0, 0x2e8(r31)
/* 80A1F098  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A1F09C  7F C3 F3 78 */	mr r3, r30
/* 80A1F0A0  38 81 00 08 */	addi r4, r1, 8
/* 80A1F0A4  4B FF E6 D9 */	bl setAction__15daNpcKasiHana_cFM15daNpcKasiHana_cFPCvPvi_i
/* 80A1F0A8  38 60 00 01 */	li r3, 1
/* 80A1F0AC  48 00 00 D4 */	b lbl_80A1F180
lbl_80A1F0B0:
/* 80A1F0B0  88 1E 14 40 */	lbz r0, 0x1440(r30)
/* 80A1F0B4  28 00 00 00 */	cmplwi r0, 0
/* 80A1F0B8  40 82 00 18 */	bne lbl_80A1F0D0
/* 80A1F0BC  80 1E 14 68 */	lwz r0, 0x1468(r30)
/* 80A1F0C0  60 00 01 00 */	ori r0, r0, 0x100
/* 80A1F0C4  90 1E 14 68 */	stw r0, 0x1468(r30)
/* 80A1F0C8  38 00 00 01 */	li r0, 1
/* 80A1F0CC  98 1E 14 40 */	stb r0, 0x1440(r30)
lbl_80A1F0D0:
/* 80A1F0D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A1F0D4  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A1F0D8  88 1D 4F AD */	lbz r0, 0x4fad(r29)
/* 80A1F0DC  28 00 00 00 */	cmplwi r0, 0
/* 80A1F0E0  41 82 00 58 */	beq lbl_80A1F138
/* 80A1F0E4  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 80A1F0E8  28 00 00 01 */	cmplwi r0, 1
/* 80A1F0EC  40 82 00 90 */	bne lbl_80A1F17C
/* 80A1F0F0  38 00 00 00 */	li r0, 0
/* 80A1F0F4  88 7D 4F B5 */	lbz r3, 0x4fb5(r29)
/* 80A1F0F8  28 03 00 01 */	cmplwi r3, 1
/* 80A1F0FC  41 82 00 0C */	beq lbl_80A1F108
/* 80A1F100  28 03 00 02 */	cmplwi r3, 2
/* 80A1F104  40 82 00 08 */	bne lbl_80A1F10C
lbl_80A1F108:
/* 80A1F108  38 00 00 01 */	li r0, 1
lbl_80A1F10C:
/* 80A1F10C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A1F110  41 82 00 14 */	beq lbl_80A1F124
/* 80A1F114  38 7D 4F F8 */	addi r3, r29, 0x4ff8
/* 80A1F118  4B 62 96 D9 */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 80A1F11C  2C 03 00 00 */	cmpwi r3, 0
/* 80A1F120  41 82 00 5C */	beq lbl_80A1F17C
lbl_80A1F124:
/* 80A1F124  38 00 00 01 */	li r0, 1
/* 80A1F128  98 1E 14 42 */	stb r0, 0x1442(r30)
/* 80A1F12C  38 7D 4E C8 */	addi r3, r29, 0x4ec8
/* 80A1F130  4B 62 33 39 */	bl reset__14dEvt_control_cFv
/* 80A1F134  48 00 00 48 */	b lbl_80A1F17C
lbl_80A1F138:
/* 80A1F138  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 80A1F13C  28 00 00 00 */	cmplwi r0, 0
/* 80A1F140  41 82 00 0C */	beq lbl_80A1F14C
/* 80A1F144  80 1F 00 E0 */	lwz r0, 0xe0(r31)
/* 80A1F148  90 1E 01 00 */	stw r0, 0x100(r30)
lbl_80A1F14C:
/* 80A1F14C  7F C3 F3 78 */	mr r3, r30
/* 80A1F150  88 9E 14 44 */	lbz r4, 0x1444(r30)
/* 80A1F154  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 80A1F158  54 00 10 3A */	slwi r0, r0, 2
/* 80A1F15C  38 BF 00 EC */	addi r5, r31, 0xec
/* 80A1F160  7C A5 00 2E */	lwzx r5, r5, r0
/* 80A1F164  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80A1F168  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80A1F16C  38 E0 00 04 */	li r7, 4
/* 80A1F170  39 00 00 FF */	li r8, 0xff
/* 80A1F174  39 20 00 02 */	li r9, 2
/* 80A1F178  4B 73 47 05 */	bl orderEvent__8daNpcF_cFiPcUsUsUcUs
lbl_80A1F17C:
/* 80A1F17C  38 60 00 01 */	li r3, 1
lbl_80A1F180:
/* 80A1F180  39 61 00 30 */	addi r11, r1, 0x30
/* 80A1F184  4B 94 30 A5 */	bl _restgpr_29
/* 80A1F188  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A1F18C  7C 08 03 A6 */	mtlr r0
/* 80A1F190  38 21 00 30 */	addi r1, r1, 0x30
/* 80A1F194  4E 80 00 20 */	blr 

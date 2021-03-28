lbl_8020EE70:
/* 8020EE70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020EE74  7C 08 02 A6 */	mflr r0
/* 8020EE78  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020EE7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8020EE80  93 C1 00 08 */	stw r30, 8(r1)
/* 8020EE84  7C 7F 1B 78 */	mr r31, r3
/* 8020EE88  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8020EE8C  28 00 00 00 */	cmplwi r0, 0
/* 8020EE90  40 82 00 60 */	bne lbl_8020EEF0
/* 8020EE94  88 1F 00 28 */	lbz r0, 0x28(r31)
/* 8020EE98  28 00 00 00 */	cmplwi r0, 0
/* 8020EE9C  40 82 00 34 */	bne lbl_8020EED0
/* 8020EEA0  38 60 00 09 */	li r3, 9
/* 8020EEA4  3C 80 00 99 */	lis r4, 0x0099 /* 0x00989298@ha */
/* 8020EEA8  38 84 92 98 */	addi r4, r4, 0x9298 /* 0x00989298@l */
/* 8020EEAC  38 A0 00 00 */	li r5, 0
/* 8020EEB0  38 C0 00 00 */	li r6, 0
/* 8020EEB4  C0 22 AE 48 */	lfs f1, lit_3758(r2)
/* 8020EEB8  C0 42 AE 4C */	lfs f2, lit_3759(r2)
/* 8020EEBC  C0 62 AE 50 */	lfs f3, lit_3760(r2)
/* 8020EEC0  C0 82 AE 54 */	lfs f4, lit_3761(r2)
/* 8020EEC4  48 05 20 C9 */	bl dTimer_createTimer__FlUlUcUcffff
/* 8020EEC8  38 00 00 01 */	li r0, 1
/* 8020EECC  98 1F 00 28 */	stb r0, 0x28(r31)
lbl_8020EED0:
/* 8020EED0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8020EED4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8020EED8  80 04 5C E0 */	lwz r0, 0x5ce0(r4)
/* 8020EEDC  28 00 00 00 */	cmplwi r0, 0
/* 8020EEE0  40 82 00 0C */	bne lbl_8020EEEC
/* 8020EEE4  38 60 00 05 */	li r3, 5
/* 8020EEE8  48 00 02 50 */	b lbl_8020F138
lbl_8020EEEC:
/* 8020EEEC  90 1F 00 18 */	stw r0, 0x18(r31)
lbl_8020EEF0:
/* 8020EEF0  38 60 01 18 */	li r3, 0x118
/* 8020EEF4  48 0B FD 59 */	bl __nw__FUl
/* 8020EEF8  7C 60 1B 79 */	or. r0, r3, r3
/* 8020EEFC  41 82 00 0C */	beq lbl_8020EF08
/* 8020EF00  48 0E 95 99 */	bl __ct__9J2DScreenFv
/* 8020EF04  7C 60 1B 78 */	mr r0, r3
lbl_8020EF08:
/* 8020EF08  90 1F 00 04 */	stw r0, 4(r31)
/* 8020EF0C  80 7F 00 04 */	lwz r3, 4(r31)
/* 8020EF10  3C 80 80 3A */	lis r4, d_meter_d_meter_string__stringBase0@ha
/* 8020EF14  38 84 82 10 */	addi r4, r4, d_meter_d_meter_string__stringBase0@l
/* 8020EF18  3C A0 00 02 */	lis r5, 2
/* 8020EF1C  80 DF 00 18 */	lwz r6, 0x18(r31)
/* 8020EF20  48 0E 97 29 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 8020EF24  80 7F 00 04 */	lwz r3, 4(r31)
/* 8020EF28  48 04 61 C1 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 8020EF2C  38 60 00 04 */	li r3, 4
/* 8020EF30  64 63 00 04 */	oris r3, r3, 4
/* 8020EF34  7C 72 E3 A6 */	mtspr 0x392, r3
/* 8020EF38  38 60 00 05 */	li r3, 5
/* 8020EF3C  64 63 00 05 */	oris r3, r3, 5
/* 8020EF40  7C 73 E3 A6 */	mtspr 0x393, r3
/* 8020EF44  38 60 00 06 */	li r3, 6
/* 8020EF48  64 63 00 06 */	oris r3, r3, 6
/* 8020EF4C  7C 74 E3 A6 */	mtspr 0x394, r3
/* 8020EF50  38 60 00 07 */	li r3, 7
/* 8020EF54  64 63 00 07 */	oris r3, r3, 7
/* 8020EF58  7C 75 E3 A6 */	mtspr 0x395, r3
/* 8020EF5C  3C 80 80 3A */	lis r4, d_meter_d_meter_string__stringBase0@ha
/* 8020EF60  38 84 82 10 */	addi r4, r4, d_meter_d_meter_string__stringBase0@l
/* 8020EF64  38 64 00 20 */	addi r3, r4, 0x20
/* 8020EF68  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 8020EF6C  48 0C 53 05 */	bl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
/* 8020EF70  48 0F 9A FD */	bl load__20J2DAnmLoaderDataBaseFPCv
/* 8020EF74  90 7F 00 08 */	stw r3, 8(r31)
/* 8020EF78  38 60 00 6C */	li r3, 0x6c
/* 8020EF7C  48 0B FC D1 */	bl __nw__FUl
/* 8020EF80  7C 60 1B 79 */	or. r0, r3, r3
/* 8020EF84  41 82 00 28 */	beq lbl_8020EFAC
/* 8020EF88  80 9F 00 04 */	lwz r4, 4(r31)
/* 8020EF8C  3C A0 69 6E */	lis r5, 0x696E /* 0x696E5F6E@ha */
/* 8020EF90  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x696E5F6E@l */
/* 8020EF94  3C A0 67 65 */	lis r5, 0x6765 /* 0x6765745F@ha */
/* 8020EF98  38 A5 74 5F */	addi r5, r5, 0x745F /* 0x6765745F@l */
/* 8020EF9C  38 E0 00 02 */	li r7, 2
/* 8020EFA0  39 00 00 00 */	li r8, 0
/* 8020EFA4  48 04 49 E1 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8020EFA8  7C 60 1B 78 */	mr r0, r3
lbl_8020EFAC:
/* 8020EFAC  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8020EFB0  38 60 00 6C */	li r3, 0x6c
/* 8020EFB4  48 0B FC 99 */	bl __nw__FUl
/* 8020EFB8  7C 60 1B 79 */	or. r0, r3, r3
/* 8020EFBC  41 82 00 24 */	beq lbl_8020EFE0
/* 8020EFC0  80 9F 00 04 */	lwz r4, 4(r31)
/* 8020EFC4  3C A0 5F 61 */	lis r5, 0x5F61 /* 0x5F616C6C@ha */
/* 8020EFC8  38 C5 6C 6C */	addi r6, r5, 0x6C6C /* 0x5F616C6C@l */
/* 8020EFCC  38 A0 00 6E */	li r5, 0x6e
/* 8020EFD0  38 E0 00 00 */	li r7, 0
/* 8020EFD4  39 00 00 00 */	li r8, 0
/* 8020EFD8  48 04 49 AD */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8020EFDC  7C 60 1B 78 */	mr r0, r3
lbl_8020EFE0:
/* 8020EFE0  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8020EFE4  38 60 00 6C */	li r3, 0x6c
/* 8020EFE8  48 0B FC 65 */	bl __nw__FUl
/* 8020EFEC  7C 60 1B 79 */	or. r0, r3, r3
/* 8020EFF0  41 82 00 24 */	beq lbl_8020F014
/* 8020EFF4  80 9F 00 04 */	lwz r4, 4(r31)
/* 8020EFF8  3C A0 74 5F */	lis r5, 0x745F /* 0x745F696E@ha */
/* 8020EFFC  38 C5 69 6E */	addi r6, r5, 0x696E /* 0x745F696E@l */
/* 8020F000  38 A0 67 65 */	li r5, 0x6765
/* 8020F004  38 E0 00 00 */	li r7, 0
/* 8020F008  39 00 00 00 */	li r8, 0
/* 8020F00C  48 04 49 79 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8020F010  7C 60 1B 78 */	mr r0, r3
lbl_8020F014:
/* 8020F014  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8020F018  4B E0 59 D9 */	bl mDoExt_getMesgFont__Fv
/* 8020F01C  7C 7E 1B 78 */	mr r30, r3
/* 8020F020  80 7F 00 04 */	lwz r3, 4(r31)
/* 8020F024  3C 80 69 6E */	lis r4, 0x696E /* 0x696E5F73@ha */
/* 8020F028  38 C4 5F 73 */	addi r6, r4, 0x5F73 /* 0x696E5F73@l */
/* 8020F02C  3C 80 67 65 */	lis r4, 0x6765 /* 0x6765745F@ha */
/* 8020F030  38 A4 74 5F */	addi r5, r4, 0x745F /* 0x6765745F@l */
/* 8020F034  81 83 00 00 */	lwz r12, 0(r3)
/* 8020F038  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8020F03C  7D 89 03 A6 */	mtctr r12
/* 8020F040  4E 80 04 21 */	bctrl 
/* 8020F044  7F C4 F3 78 */	mr r4, r30
/* 8020F048  81 83 00 00 */	lwz r12, 0(r3)
/* 8020F04C  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 8020F050  7D 89 03 A6 */	mtctr r12
/* 8020F054  4E 80 04 21 */	bctrl 
/* 8020F058  4B E0 59 99 */	bl mDoExt_getMesgFont__Fv
/* 8020F05C  7C 7E 1B 78 */	mr r30, r3
/* 8020F060  80 7F 00 04 */	lwz r3, 4(r31)
/* 8020F064  3C 80 74 5F */	lis r4, 0x745F /* 0x745F696E@ha */
/* 8020F068  38 C4 69 6E */	addi r6, r4, 0x696E /* 0x745F696E@l */
/* 8020F06C  38 A0 67 65 */	li r5, 0x6765
/* 8020F070  81 83 00 00 */	lwz r12, 0(r3)
/* 8020F074  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8020F078  7D 89 03 A6 */	mtctr r12
/* 8020F07C  4E 80 04 21 */	bctrl 
/* 8020F080  7F C4 F3 78 */	mr r4, r30
/* 8020F084  81 83 00 00 */	lwz r12, 0(r3)
/* 8020F088  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 8020F08C  7D 89 03 A6 */	mtctr r12
/* 8020F090  4E 80 04 21 */	bctrl 
/* 8020F094  80 7F 00 04 */	lwz r3, 4(r31)
/* 8020F098  3C 80 69 6E */	lis r4, 0x696E /* 0x696E5F73@ha */
/* 8020F09C  38 C4 5F 73 */	addi r6, r4, 0x5F73 /* 0x696E5F73@l */
/* 8020F0A0  3C 80 67 65 */	lis r4, 0x6765 /* 0x6765745F@ha */
/* 8020F0A4  38 A4 74 5F */	addi r5, r4, 0x745F /* 0x6765745F@l */
/* 8020F0A8  81 83 00 00 */	lwz r12, 0(r3)
/* 8020F0AC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8020F0B0  7D 89 03 A6 */	mtctr r12
/* 8020F0B4  4E 80 04 21 */	bctrl 
/* 8020F0B8  38 80 01 00 */	li r4, 0x100
/* 8020F0BC  3C A0 80 3A */	lis r5, d_meter_d_meter_string__stringBase0@ha
/* 8020F0C0  38 A5 82 10 */	addi r5, r5, d_meter_d_meter_string__stringBase0@l
/* 8020F0C4  38 A5 00 40 */	addi r5, r5, 0x40
/* 8020F0C8  4C C6 31 82 */	crclr 6
/* 8020F0CC  48 0F 16 81 */	bl setString__10J2DTextBoxFsPCce
/* 8020F0D0  80 7F 00 04 */	lwz r3, 4(r31)
/* 8020F0D4  3C 80 74 5F */	lis r4, 0x745F /* 0x745F696E@ha */
/* 8020F0D8  38 C4 69 6E */	addi r6, r4, 0x696E /* 0x745F696E@l */
/* 8020F0DC  38 A0 67 65 */	li r5, 0x6765
/* 8020F0E0  81 83 00 00 */	lwz r12, 0(r3)
/* 8020F0E4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8020F0E8  7D 89 03 A6 */	mtctr r12
/* 8020F0EC  4E 80 04 21 */	bctrl 
/* 8020F0F0  38 80 01 00 */	li r4, 0x100
/* 8020F0F4  3C A0 80 3A */	lis r5, d_meter_d_meter_string__stringBase0@ha
/* 8020F0F8  38 A5 82 10 */	addi r5, r5, d_meter_d_meter_string__stringBase0@l
/* 8020F0FC  38 A5 00 40 */	addi r5, r5, 0x40
/* 8020F100  4C C6 31 82 */	crclr 6
/* 8020F104  48 0F 16 49 */	bl setString__10J2DTextBoxFsPCce
/* 8020F108  C0 22 AE 58 */	lfs f1, lit_3762(r2)
/* 8020F10C  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 8020F110  D0 3F 00 30 */	stfs f1, 0x30(r31)
/* 8020F114  38 00 00 00 */	li r0, 0
/* 8020F118  B0 1F 00 38 */	sth r0, 0x38(r31)
/* 8020F11C  B0 1F 00 3A */	sth r0, 0x3a(r31)
/* 8020F120  90 1F 00 34 */	stw r0, 0x34(r31)
/* 8020F124  38 00 00 FF */	li r0, 0xff
/* 8020F128  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 8020F12C  7F E3 FB 78 */	mr r3, r31
/* 8020F130  48 00 05 3D */	bl playBckAnimation__14dMeterString_cFf
/* 8020F134  38 60 00 04 */	li r3, 4
lbl_8020F138:
/* 8020F138  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020F13C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8020F140  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020F144  7C 08 03 A6 */	mtlr r0
/* 8020F148  38 21 00 10 */	addi r1, r1, 0x10
/* 8020F14C  4E 80 00 20 */	blr 

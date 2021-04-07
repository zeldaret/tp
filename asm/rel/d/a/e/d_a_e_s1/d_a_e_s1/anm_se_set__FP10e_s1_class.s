lbl_8077EE10:
/* 8077EE10  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8077EE14  7C 08 02 A6 */	mflr r0
/* 8077EE18  90 01 00 54 */	stw r0, 0x54(r1)
/* 8077EE1C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8077EE20  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8077EE24  7C 7F 1B 78 */	mr r31, r3
/* 8077EE28  3C 60 80 78 */	lis r3, lit_3903@ha /* 0x80780DC4@ha */
/* 8077EE2C  3B C3 0D C4 */	addi r30, r3, lit_3903@l /* 0x80780DC4@l */
/* 8077EE30  80 1F 05 D8 */	lwz r0, 0x5d8(r31)
/* 8077EE34  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8077EE38  40 82 00 94 */	bne lbl_8077EECC
/* 8077EE3C  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8077EE40  38 63 00 0C */	addi r3, r3, 0xc
/* 8077EE44  C0 3E 01 58 */	lfs f1, 0x158(r30)
/* 8077EE48  4B BA 95 E5 */	bl checkPass__12J3DFrameCtrlFf
/* 8077EE4C  2C 03 00 00 */	cmpwi r3, 0
/* 8077EE50  41 82 00 34 */	beq lbl_8077EE84
/* 8077EE54  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700FA@ha */
/* 8077EE58  38 03 00 FA */	addi r0, r3, 0x00FA /* 0x000700FA@l */
/* 8077EE5C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8077EE60  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 8077EE64  38 81 00 3C */	addi r4, r1, 0x3c
/* 8077EE68  38 A0 00 00 */	li r5, 0
/* 8077EE6C  38 C0 FF FF */	li r6, -1
/* 8077EE70  81 9F 05 E0 */	lwz r12, 0x5e0(r31)
/* 8077EE74  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8077EE78  7D 89 03 A6 */	mtctr r12
/* 8077EE7C  4E 80 04 21 */	bctrl 
/* 8077EE80  48 00 03 B8 */	b lbl_8077F238
lbl_8077EE84:
/* 8077EE84  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8077EE88  38 63 00 0C */	addi r3, r3, 0xc
/* 8077EE8C  C0 3E 01 5C */	lfs f1, 0x15c(r30)
/* 8077EE90  4B BA 95 9D */	bl checkPass__12J3DFrameCtrlFf
/* 8077EE94  2C 03 00 00 */	cmpwi r3, 0
/* 8077EE98  41 82 03 A0 */	beq lbl_8077F238
/* 8077EE9C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700FB@ha */
/* 8077EEA0  38 03 00 FB */	addi r0, r3, 0x00FB /* 0x000700FB@l */
/* 8077EEA4  90 01 00 38 */	stw r0, 0x38(r1)
/* 8077EEA8  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 8077EEAC  38 81 00 38 */	addi r4, r1, 0x38
/* 8077EEB0  38 A0 00 00 */	li r5, 0
/* 8077EEB4  38 C0 FF FF */	li r6, -1
/* 8077EEB8  81 9F 05 E0 */	lwz r12, 0x5e0(r31)
/* 8077EEBC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8077EEC0  7D 89 03 A6 */	mtctr r12
/* 8077EEC4  4E 80 04 21 */	bctrl 
/* 8077EEC8  48 00 03 70 */	b lbl_8077F238
lbl_8077EECC:
/* 8077EECC  2C 00 00 08 */	cmpwi r0, 8
/* 8077EED0  40 82 01 24 */	bne lbl_8077EFF4
/* 8077EED4  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8077EED8  38 63 00 0C */	addi r3, r3, 0xc
/* 8077EEDC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8077EEE0  4B BA 95 4D */	bl checkPass__12J3DFrameCtrlFf
/* 8077EEE4  2C 03 00 00 */	cmpwi r3, 0
/* 8077EEE8  41 82 00 34 */	beq lbl_8077EF1C
/* 8077EEEC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700FD@ha */
/* 8077EEF0  38 03 00 FD */	addi r0, r3, 0x00FD /* 0x000700FD@l */
/* 8077EEF4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8077EEF8  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 8077EEFC  38 81 00 34 */	addi r4, r1, 0x34
/* 8077EF00  38 A0 00 00 */	li r5, 0
/* 8077EF04  38 C0 FF FF */	li r6, -1
/* 8077EF08  81 9F 05 E0 */	lwz r12, 0x5e0(r31)
/* 8077EF0C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8077EF10  7D 89 03 A6 */	mtctr r12
/* 8077EF14  4E 80 04 21 */	bctrl 
/* 8077EF18  48 00 03 20 */	b lbl_8077F238
lbl_8077EF1C:
/* 8077EF1C  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8077EF20  38 63 00 0C */	addi r3, r3, 0xc
/* 8077EF24  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 8077EF28  4B BA 95 05 */	bl checkPass__12J3DFrameCtrlFf
/* 8077EF2C  2C 03 00 00 */	cmpwi r3, 0
/* 8077EF30  41 82 00 34 */	beq lbl_8077EF64
/* 8077EF34  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700FB@ha */
/* 8077EF38  38 03 00 FB */	addi r0, r3, 0x00FB /* 0x000700FB@l */
/* 8077EF3C  90 01 00 30 */	stw r0, 0x30(r1)
/* 8077EF40  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 8077EF44  38 81 00 30 */	addi r4, r1, 0x30
/* 8077EF48  38 A0 00 00 */	li r5, 0
/* 8077EF4C  38 C0 FF FF */	li r6, -1
/* 8077EF50  81 9F 05 E0 */	lwz r12, 0x5e0(r31)
/* 8077EF54  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8077EF58  7D 89 03 A6 */	mtctr r12
/* 8077EF5C  4E 80 04 21 */	bctrl 
/* 8077EF60  48 00 02 D8 */	b lbl_8077F238
lbl_8077EF64:
/* 8077EF64  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8077EF68  38 63 00 0C */	addi r3, r3, 0xc
/* 8077EF6C  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 8077EF70  4B BA 94 BD */	bl checkPass__12J3DFrameCtrlFf
/* 8077EF74  2C 03 00 00 */	cmpwi r3, 0
/* 8077EF78  41 82 00 34 */	beq lbl_8077EFAC
/* 8077EF7C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700FC@ha */
/* 8077EF80  38 03 00 FC */	addi r0, r3, 0x00FC /* 0x000700FC@l */
/* 8077EF84  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8077EF88  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 8077EF8C  38 81 00 2C */	addi r4, r1, 0x2c
/* 8077EF90  38 A0 00 00 */	li r5, 0
/* 8077EF94  38 C0 FF FF */	li r6, -1
/* 8077EF98  81 9F 05 E0 */	lwz r12, 0x5e0(r31)
/* 8077EF9C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8077EFA0  7D 89 03 A6 */	mtctr r12
/* 8077EFA4  4E 80 04 21 */	bctrl 
/* 8077EFA8  48 00 02 90 */	b lbl_8077F238
lbl_8077EFAC:
/* 8077EFAC  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8077EFB0  38 63 00 0C */	addi r3, r3, 0xc
/* 8077EFB4  C0 3E 00 CC */	lfs f1, 0xcc(r30)
/* 8077EFB8  4B BA 94 75 */	bl checkPass__12J3DFrameCtrlFf
/* 8077EFBC  2C 03 00 00 */	cmpwi r3, 0
/* 8077EFC0  41 82 02 78 */	beq lbl_8077F238
/* 8077EFC4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700FA@ha */
/* 8077EFC8  38 03 00 FA */	addi r0, r3, 0x00FA /* 0x000700FA@l */
/* 8077EFCC  90 01 00 28 */	stw r0, 0x28(r1)
/* 8077EFD0  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 8077EFD4  38 81 00 28 */	addi r4, r1, 0x28
/* 8077EFD8  38 A0 00 00 */	li r5, 0
/* 8077EFDC  38 C0 FF FF */	li r6, -1
/* 8077EFE0  81 9F 05 E0 */	lwz r12, 0x5e0(r31)
/* 8077EFE4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8077EFE8  7D 89 03 A6 */	mtctr r12
/* 8077EFEC  4E 80 04 21 */	bctrl 
/* 8077EFF0  48 00 02 48 */	b lbl_8077F238
lbl_8077EFF4:
/* 8077EFF4  2C 00 00 09 */	cmpwi r0, 9
/* 8077EFF8  40 82 01 24 */	bne lbl_8077F11C
/* 8077EFFC  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8077F000  38 63 00 0C */	addi r3, r3, 0xc
/* 8077F004  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8077F008  4B BA 94 25 */	bl checkPass__12J3DFrameCtrlFf
/* 8077F00C  2C 03 00 00 */	cmpwi r3, 0
/* 8077F010  41 82 00 34 */	beq lbl_8077F044
/* 8077F014  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700FD@ha */
/* 8077F018  38 03 00 FD */	addi r0, r3, 0x00FD /* 0x000700FD@l */
/* 8077F01C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8077F020  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 8077F024  38 81 00 24 */	addi r4, r1, 0x24
/* 8077F028  38 A0 00 00 */	li r5, 0
/* 8077F02C  38 C0 FF FF */	li r6, -1
/* 8077F030  81 9F 05 E0 */	lwz r12, 0x5e0(r31)
/* 8077F034  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8077F038  7D 89 03 A6 */	mtctr r12
/* 8077F03C  4E 80 04 21 */	bctrl 
/* 8077F040  48 00 01 F8 */	b lbl_8077F238
lbl_8077F044:
/* 8077F044  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8077F048  38 63 00 0C */	addi r3, r3, 0xc
/* 8077F04C  C0 3E 01 60 */	lfs f1, 0x160(r30)
/* 8077F050  4B BA 93 DD */	bl checkPass__12J3DFrameCtrlFf
/* 8077F054  2C 03 00 00 */	cmpwi r3, 0
/* 8077F058  41 82 00 34 */	beq lbl_8077F08C
/* 8077F05C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700FB@ha */
/* 8077F060  38 03 00 FB */	addi r0, r3, 0x00FB /* 0x000700FB@l */
/* 8077F064  90 01 00 20 */	stw r0, 0x20(r1)
/* 8077F068  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 8077F06C  38 81 00 20 */	addi r4, r1, 0x20
/* 8077F070  38 A0 00 00 */	li r5, 0
/* 8077F074  38 C0 FF FF */	li r6, -1
/* 8077F078  81 9F 05 E0 */	lwz r12, 0x5e0(r31)
/* 8077F07C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8077F080  7D 89 03 A6 */	mtctr r12
/* 8077F084  4E 80 04 21 */	bctrl 
/* 8077F088  48 00 01 B0 */	b lbl_8077F238
lbl_8077F08C:
/* 8077F08C  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8077F090  38 63 00 0C */	addi r3, r3, 0xc
/* 8077F094  C0 3E 00 DC */	lfs f1, 0xdc(r30)
/* 8077F098  4B BA 93 95 */	bl checkPass__12J3DFrameCtrlFf
/* 8077F09C  2C 03 00 00 */	cmpwi r3, 0
/* 8077F0A0  41 82 00 34 */	beq lbl_8077F0D4
/* 8077F0A4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700FC@ha */
/* 8077F0A8  38 03 00 FC */	addi r0, r3, 0x00FC /* 0x000700FC@l */
/* 8077F0AC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8077F0B0  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 8077F0B4  38 81 00 1C */	addi r4, r1, 0x1c
/* 8077F0B8  38 A0 00 00 */	li r5, 0
/* 8077F0BC  38 C0 FF FF */	li r6, -1
/* 8077F0C0  81 9F 05 E0 */	lwz r12, 0x5e0(r31)
/* 8077F0C4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8077F0C8  7D 89 03 A6 */	mtctr r12
/* 8077F0CC  4E 80 04 21 */	bctrl 
/* 8077F0D0  48 00 01 68 */	b lbl_8077F238
lbl_8077F0D4:
/* 8077F0D4  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8077F0D8  38 63 00 0C */	addi r3, r3, 0xc
/* 8077F0DC  C0 3E 01 64 */	lfs f1, 0x164(r30)
/* 8077F0E0  4B BA 93 4D */	bl checkPass__12J3DFrameCtrlFf
/* 8077F0E4  2C 03 00 00 */	cmpwi r3, 0
/* 8077F0E8  41 82 01 50 */	beq lbl_8077F238
/* 8077F0EC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700FA@ha */
/* 8077F0F0  38 03 00 FA */	addi r0, r3, 0x00FA /* 0x000700FA@l */
/* 8077F0F4  90 01 00 18 */	stw r0, 0x18(r1)
/* 8077F0F8  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 8077F0FC  38 81 00 18 */	addi r4, r1, 0x18
/* 8077F100  38 A0 00 00 */	li r5, 0
/* 8077F104  38 C0 FF FF */	li r6, -1
/* 8077F108  81 9F 05 E0 */	lwz r12, 0x5e0(r31)
/* 8077F10C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8077F110  7D 89 03 A6 */	mtctr r12
/* 8077F114  4E 80 04 21 */	bctrl 
/* 8077F118  48 00 01 20 */	b lbl_8077F238
lbl_8077F11C:
/* 8077F11C  2C 00 00 1D */	cmpwi r0, 0x1d
/* 8077F120  40 82 00 8C */	bne lbl_8077F1AC
/* 8077F124  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8077F128  38 63 00 0C */	addi r3, r3, 0xc
/* 8077F12C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8077F130  4B BA 92 FD */	bl checkPass__12J3DFrameCtrlFf
/* 8077F134  2C 03 00 00 */	cmpwi r3, 0
/* 8077F138  41 82 00 30 */	beq lbl_8077F168
/* 8077F13C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070118@ha */
/* 8077F140  38 03 01 18 */	addi r0, r3, 0x0118 /* 0x00070118@l */
/* 8077F144  90 01 00 14 */	stw r0, 0x14(r1)
/* 8077F148  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 8077F14C  38 81 00 14 */	addi r4, r1, 0x14
/* 8077F150  38 A0 FF FF */	li r5, -1
/* 8077F154  81 9F 05 E0 */	lwz r12, 0x5e0(r31)
/* 8077F158  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8077F15C  7D 89 03 A6 */	mtctr r12
/* 8077F160  4E 80 04 21 */	bctrl 
/* 8077F164  48 00 00 D4 */	b lbl_8077F238
lbl_8077F168:
/* 8077F168  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8077F16C  38 63 00 0C */	addi r3, r3, 0xc
/* 8077F170  C0 3E 01 68 */	lfs f1, 0x168(r30)
/* 8077F174  4B BA 92 B9 */	bl checkPass__12J3DFrameCtrlFf
/* 8077F178  2C 03 00 00 */	cmpwi r3, 0
/* 8077F17C  41 82 00 BC */	beq lbl_8077F238
/* 8077F180  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070118@ha */
/* 8077F184  38 03 01 18 */	addi r0, r3, 0x0118 /* 0x00070118@l */
/* 8077F188  90 01 00 10 */	stw r0, 0x10(r1)
/* 8077F18C  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 8077F190  38 81 00 10 */	addi r4, r1, 0x10
/* 8077F194  38 A0 FF FF */	li r5, -1
/* 8077F198  81 9F 05 E0 */	lwz r12, 0x5e0(r31)
/* 8077F19C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8077F1A0  7D 89 03 A6 */	mtctr r12
/* 8077F1A4  4E 80 04 21 */	bctrl 
/* 8077F1A8  48 00 00 90 */	b lbl_8077F238
lbl_8077F1AC:
/* 8077F1AC  2C 00 00 1E */	cmpwi r0, 0x1e
/* 8077F1B0  40 82 00 88 */	bne lbl_8077F238
/* 8077F1B4  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8077F1B8  38 63 00 0C */	addi r3, r3, 0xc
/* 8077F1BC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8077F1C0  4B BA 92 6D */	bl checkPass__12J3DFrameCtrlFf
/* 8077F1C4  2C 03 00 00 */	cmpwi r3, 0
/* 8077F1C8  41 82 00 30 */	beq lbl_8077F1F8
/* 8077F1CC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070116@ha */
/* 8077F1D0  38 03 01 16 */	addi r0, r3, 0x0116 /* 0x00070116@l */
/* 8077F1D4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8077F1D8  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 8077F1DC  38 81 00 0C */	addi r4, r1, 0xc
/* 8077F1E0  38 A0 FF FF */	li r5, -1
/* 8077F1E4  81 9F 05 E0 */	lwz r12, 0x5e0(r31)
/* 8077F1E8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8077F1EC  7D 89 03 A6 */	mtctr r12
/* 8077F1F0  4E 80 04 21 */	bctrl 
/* 8077F1F4  48 00 00 44 */	b lbl_8077F238
lbl_8077F1F8:
/* 8077F1F8  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8077F1FC  38 63 00 0C */	addi r3, r3, 0xc
/* 8077F200  C0 3E 01 68 */	lfs f1, 0x168(r30)
/* 8077F204  4B BA 92 29 */	bl checkPass__12J3DFrameCtrlFf
/* 8077F208  2C 03 00 00 */	cmpwi r3, 0
/* 8077F20C  41 82 00 2C */	beq lbl_8077F238
/* 8077F210  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070116@ha */
/* 8077F214  38 03 01 16 */	addi r0, r3, 0x0116 /* 0x00070116@l */
/* 8077F218  90 01 00 08 */	stw r0, 8(r1)
/* 8077F21C  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 8077F220  38 81 00 08 */	addi r4, r1, 8
/* 8077F224  38 A0 FF FF */	li r5, -1
/* 8077F228  81 9F 05 E0 */	lwz r12, 0x5e0(r31)
/* 8077F22C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8077F230  7D 89 03 A6 */	mtctr r12
/* 8077F234  4E 80 04 21 */	bctrl 
lbl_8077F238:
/* 8077F238  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8077F23C  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8077F240  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8077F244  7C 08 03 A6 */	mtlr r0
/* 8077F248  38 21 00 50 */	addi r1, r1, 0x50
/* 8077F24C  4E 80 00 20 */	blr 

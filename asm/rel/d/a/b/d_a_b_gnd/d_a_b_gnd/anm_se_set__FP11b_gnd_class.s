lbl_805FDAE0:
/* 805FDAE0  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 805FDAE4  7C 08 02 A6 */	mflr r0
/* 805FDAE8  90 01 01 04 */	stw r0, 0x104(r1)
/* 805FDAEC  93 E1 00 FC */	stw r31, 0xfc(r1)
/* 805FDAF0  93 C1 00 F8 */	stw r30, 0xf8(r1)
/* 805FDAF4  7C 7E 1B 78 */	mr r30, r3
/* 805FDAF8  3C 60 80 60 */	lis r3, lit_3815@ha /* 0x80602664@ha */
/* 805FDAFC  3B E3 26 64 */	addi r31, r3, lit_3815@l /* 0x80602664@l */
/* 805FDB00  80 1E 07 58 */	lwz r0, 0x758(r30)
/* 805FDB04  2C 00 00 4A */	cmpwi r0, 0x4a
/* 805FDB08  40 82 00 1C */	bne lbl_805FDB24
/* 805FDB0C  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FDB10  38 63 00 0C */	addi r3, r3, 0xc
/* 805FDB14  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 805FDB18  4B D2 A9 15 */	bl checkPass__12J3DFrameCtrlFf
/* 805FDB1C  2C 03 00 00 */	cmpwi r3, 0
/* 805FDB20  40 82 00 28 */	bne lbl_805FDB48
lbl_805FDB24:
/* 805FDB24  80 1E 07 58 */	lwz r0, 0x758(r30)
/* 805FDB28  2C 00 00 48 */	cmpwi r0, 0x48
/* 805FDB2C  40 82 00 48 */	bne lbl_805FDB74
/* 805FDB30  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FDB34  38 63 00 0C */	addi r3, r3, 0xc
/* 805FDB38  C0 3F 01 A4 */	lfs f1, 0x1a4(r31)
/* 805FDB3C  4B D2 A8 F1 */	bl checkPass__12J3DFrameCtrlFf
/* 805FDB40  2C 03 00 00 */	cmpwi r3, 0
/* 805FDB44  41 82 00 30 */	beq lbl_805FDB74
lbl_805FDB48:
/* 805FDB48  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070515@ha */
/* 805FDB4C  38 03 05 15 */	addi r0, r3, 0x0515 /* 0x00070515@l */
/* 805FDB50  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 805FDB54  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FDB58  38 81 00 F4 */	addi r4, r1, 0xf4
/* 805FDB5C  38 A0 FF FF */	li r5, -1
/* 805FDB60  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FDB64  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805FDB68  7D 89 03 A6 */	mtctr r12
/* 805FDB6C  4E 80 04 21 */	bctrl 
/* 805FDB70  48 00 02 40 */	b lbl_805FDDB0
lbl_805FDB74:
/* 805FDB74  80 1E 07 58 */	lwz r0, 0x758(r30)
/* 805FDB78  2C 00 00 3B */	cmpwi r0, 0x3b
/* 805FDB7C  40 82 00 48 */	bne lbl_805FDBC4
/* 805FDB80  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FDB84  38 63 00 0C */	addi r3, r3, 0xc
/* 805FDB88  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805FDB8C  4B D2 A8 A1 */	bl checkPass__12J3DFrameCtrlFf
/* 805FDB90  2C 03 00 00 */	cmpwi r3, 0
/* 805FDB94  41 82 00 30 */	beq lbl_805FDBC4
/* 805FDB98  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070516@ha */
/* 805FDB9C  38 03 05 16 */	addi r0, r3, 0x0516 /* 0x00070516@l */
/* 805FDBA0  90 01 00 F0 */	stw r0, 0xf0(r1)
/* 805FDBA4  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FDBA8  38 81 00 F0 */	addi r4, r1, 0xf0
/* 805FDBAC  38 A0 FF FF */	li r5, -1
/* 805FDBB0  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FDBB4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805FDBB8  7D 89 03 A6 */	mtctr r12
/* 805FDBBC  4E 80 04 21 */	bctrl 
/* 805FDBC0  48 00 01 F0 */	b lbl_805FDDB0
lbl_805FDBC4:
/* 805FDBC4  80 1E 07 58 */	lwz r0, 0x758(r30)
/* 805FDBC8  2C 00 00 34 */	cmpwi r0, 0x34
/* 805FDBCC  40 82 00 48 */	bne lbl_805FDC14
/* 805FDBD0  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FDBD4  38 63 00 0C */	addi r3, r3, 0xc
/* 805FDBD8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805FDBDC  4B D2 A8 51 */	bl checkPass__12J3DFrameCtrlFf
/* 805FDBE0  2C 03 00 00 */	cmpwi r3, 0
/* 805FDBE4  41 82 00 30 */	beq lbl_805FDC14
/* 805FDBE8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070517@ha */
/* 805FDBEC  38 03 05 17 */	addi r0, r3, 0x0517 /* 0x00070517@l */
/* 805FDBF0  90 01 00 EC */	stw r0, 0xec(r1)
/* 805FDBF4  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FDBF8  38 81 00 EC */	addi r4, r1, 0xec
/* 805FDBFC  38 A0 FF FF */	li r5, -1
/* 805FDC00  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FDC04  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805FDC08  7D 89 03 A6 */	mtctr r12
/* 805FDC0C  4E 80 04 21 */	bctrl 
/* 805FDC10  48 00 01 A0 */	b lbl_805FDDB0
lbl_805FDC14:
/* 805FDC14  80 1E 07 58 */	lwz r0, 0x758(r30)
/* 805FDC18  2C 00 00 35 */	cmpwi r0, 0x35
/* 805FDC1C  41 82 00 0C */	beq lbl_805FDC28
/* 805FDC20  2C 00 00 36 */	cmpwi r0, 0x36
/* 805FDC24  40 82 00 48 */	bne lbl_805FDC6C
lbl_805FDC28:
/* 805FDC28  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FDC2C  38 63 00 0C */	addi r3, r3, 0xc
/* 805FDC30  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805FDC34  4B D2 A7 F9 */	bl checkPass__12J3DFrameCtrlFf
/* 805FDC38  2C 03 00 00 */	cmpwi r3, 0
/* 805FDC3C  41 82 00 30 */	beq lbl_805FDC6C
/* 805FDC40  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070518@ha */
/* 805FDC44  38 03 05 18 */	addi r0, r3, 0x0518 /* 0x00070518@l */
/* 805FDC48  90 01 00 E8 */	stw r0, 0xe8(r1)
/* 805FDC4C  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FDC50  38 81 00 E8 */	addi r4, r1, 0xe8
/* 805FDC54  38 A0 FF FF */	li r5, -1
/* 805FDC58  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FDC5C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805FDC60  7D 89 03 A6 */	mtctr r12
/* 805FDC64  4E 80 04 21 */	bctrl 
/* 805FDC68  48 00 01 48 */	b lbl_805FDDB0
lbl_805FDC6C:
/* 805FDC6C  80 1E 07 58 */	lwz r0, 0x758(r30)
/* 805FDC70  2C 00 00 38 */	cmpwi r0, 0x38
/* 805FDC74  40 82 00 48 */	bne lbl_805FDCBC
/* 805FDC78  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FDC7C  38 63 00 0C */	addi r3, r3, 0xc
/* 805FDC80  C0 3F 02 B4 */	lfs f1, 0x2b4(r31)
/* 805FDC84  4B D2 A7 A9 */	bl checkPass__12J3DFrameCtrlFf
/* 805FDC88  2C 03 00 00 */	cmpwi r3, 0
/* 805FDC8C  41 82 00 30 */	beq lbl_805FDCBC
/* 805FDC90  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070519@ha */
/* 805FDC94  38 03 05 19 */	addi r0, r3, 0x0519 /* 0x00070519@l */
/* 805FDC98  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 805FDC9C  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FDCA0  38 81 00 E4 */	addi r4, r1, 0xe4
/* 805FDCA4  38 A0 FF FF */	li r5, -1
/* 805FDCA8  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FDCAC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805FDCB0  7D 89 03 A6 */	mtctr r12
/* 805FDCB4  4E 80 04 21 */	bctrl 
/* 805FDCB8  48 00 00 F8 */	b lbl_805FDDB0
lbl_805FDCBC:
/* 805FDCBC  80 1E 07 58 */	lwz r0, 0x758(r30)
/* 805FDCC0  2C 00 00 47 */	cmpwi r0, 0x47
/* 805FDCC4  40 82 00 48 */	bne lbl_805FDD0C
/* 805FDCC8  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FDCCC  38 63 00 0C */	addi r3, r3, 0xc
/* 805FDCD0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805FDCD4  4B D2 A7 59 */	bl checkPass__12J3DFrameCtrlFf
/* 805FDCD8  2C 03 00 00 */	cmpwi r3, 0
/* 805FDCDC  41 82 00 30 */	beq lbl_805FDD0C
/* 805FDCE0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007051B@ha */
/* 805FDCE4  38 03 05 1B */	addi r0, r3, 0x051B /* 0x0007051B@l */
/* 805FDCE8  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 805FDCEC  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FDCF0  38 81 00 E0 */	addi r4, r1, 0xe0
/* 805FDCF4  38 A0 FF FF */	li r5, -1
/* 805FDCF8  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FDCFC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805FDD00  7D 89 03 A6 */	mtctr r12
/* 805FDD04  4E 80 04 21 */	bctrl 
/* 805FDD08  48 00 00 A8 */	b lbl_805FDDB0
lbl_805FDD0C:
/* 805FDD0C  80 1E 07 58 */	lwz r0, 0x758(r30)
/* 805FDD10  2C 00 00 3E */	cmpwi r0, 0x3e
/* 805FDD14  41 82 00 0C */	beq lbl_805FDD20
/* 805FDD18  2C 00 00 3F */	cmpwi r0, 0x3f
/* 805FDD1C  40 82 00 48 */	bne lbl_805FDD64
lbl_805FDD20:
/* 805FDD20  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FDD24  38 63 00 0C */	addi r3, r3, 0xc
/* 805FDD28  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805FDD2C  4B D2 A7 01 */	bl checkPass__12J3DFrameCtrlFf
/* 805FDD30  2C 03 00 00 */	cmpwi r3, 0
/* 805FDD34  41 82 00 30 */	beq lbl_805FDD64
/* 805FDD38  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007051D@ha */
/* 805FDD3C  38 03 05 1D */	addi r0, r3, 0x051D /* 0x0007051D@l */
/* 805FDD40  90 01 00 DC */	stw r0, 0xdc(r1)
/* 805FDD44  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FDD48  38 81 00 DC */	addi r4, r1, 0xdc
/* 805FDD4C  38 A0 FF FF */	li r5, -1
/* 805FDD50  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FDD54  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805FDD58  7D 89 03 A6 */	mtctr r12
/* 805FDD5C  4E 80 04 21 */	bctrl 
/* 805FDD60  48 00 00 50 */	b lbl_805FDDB0
lbl_805FDD64:
/* 805FDD64  80 1E 07 58 */	lwz r0, 0x758(r30)
/* 805FDD68  2C 00 00 48 */	cmpwi r0, 0x48
/* 805FDD6C  40 82 00 44 */	bne lbl_805FDDB0
/* 805FDD70  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FDD74  38 63 00 0C */	addi r3, r3, 0xc
/* 805FDD78  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805FDD7C  4B D2 A6 B1 */	bl checkPass__12J3DFrameCtrlFf
/* 805FDD80  2C 03 00 00 */	cmpwi r3, 0
/* 805FDD84  41 82 00 2C */	beq lbl_805FDDB0
/* 805FDD88  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007051E@ha */
/* 805FDD8C  38 03 05 1E */	addi r0, r3, 0x051E /* 0x0007051E@l */
/* 805FDD90  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 805FDD94  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FDD98  38 81 00 D8 */	addi r4, r1, 0xd8
/* 805FDD9C  38 A0 FF FF */	li r5, -1
/* 805FDDA0  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FDDA4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805FDDA8  7D 89 03 A6 */	mtctr r12
/* 805FDDAC  4E 80 04 21 */	bctrl 
lbl_805FDDB0:
/* 805FDDB0  80 1E 07 58 */	lwz r0, 0x758(r30)
/* 805FDDB4  2C 00 00 5D */	cmpwi r0, 0x5d
/* 805FDDB8  40 82 00 64 */	bne lbl_805FDE1C
/* 805FDDBC  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FDDC0  38 63 00 0C */	addi r3, r3, 0xc
/* 805FDDC4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805FDDC8  4B D2 A6 65 */	bl checkPass__12J3DFrameCtrlFf
/* 805FDDCC  2C 03 00 00 */	cmpwi r3, 0
/* 805FDDD0  40 82 00 1C */	bne lbl_805FDDEC
/* 805FDDD4  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FDDD8  38 63 00 0C */	addi r3, r3, 0xc
/* 805FDDDC  C0 3F 02 B8 */	lfs f1, 0x2b8(r31)
/* 805FDDE0  4B D2 A6 4D */	bl checkPass__12J3DFrameCtrlFf
/* 805FDDE4  2C 03 00 00 */	cmpwi r3, 0
/* 805FDDE8  41 82 00 34 */	beq lbl_805FDE1C
lbl_805FDDEC:
/* 805FDDEC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007053B@ha */
/* 805FDDF0  38 03 05 3B */	addi r0, r3, 0x053B /* 0x0007053B@l */
/* 805FDDF4  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 805FDDF8  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FDDFC  38 81 00 D4 */	addi r4, r1, 0xd4
/* 805FDE00  38 A0 00 00 */	li r5, 0
/* 805FDE04  38 C0 FF FF */	li r6, -1
/* 805FDE08  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FDE0C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805FDE10  7D 89 03 A6 */	mtctr r12
/* 805FDE14  4E 80 04 21 */	bctrl 
/* 805FDE18  48 00 0E 28 */	b lbl_805FEC40
lbl_805FDE1C:
/* 805FDE1C  80 1E 07 58 */	lwz r0, 0x758(r30)
/* 805FDE20  2C 00 00 20 */	cmpwi r0, 0x20
/* 805FDE24  40 82 00 48 */	bne lbl_805FDE6C
/* 805FDE28  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FDE2C  38 63 00 0C */	addi r3, r3, 0xc
/* 805FDE30  C0 3F 01 30 */	lfs f1, 0x130(r31)
/* 805FDE34  4B D2 A5 F9 */	bl checkPass__12J3DFrameCtrlFf
/* 805FDE38  2C 03 00 00 */	cmpwi r3, 0
/* 805FDE3C  41 82 00 30 */	beq lbl_805FDE6C
/* 805FDE40  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007053C@ha */
/* 805FDE44  38 03 05 3C */	addi r0, r3, 0x053C /* 0x0007053C@l */
/* 805FDE48  90 01 00 D0 */	stw r0, 0xd0(r1)
/* 805FDE4C  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FDE50  38 81 00 D0 */	addi r4, r1, 0xd0
/* 805FDE54  38 A0 FF FF */	li r5, -1
/* 805FDE58  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FDE5C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805FDE60  7D 89 03 A6 */	mtctr r12
/* 805FDE64  4E 80 04 21 */	bctrl 
/* 805FDE68  48 00 0D D8 */	b lbl_805FEC40
lbl_805FDE6C:
/* 805FDE6C  80 1E 07 58 */	lwz r0, 0x758(r30)
/* 805FDE70  2C 00 00 13 */	cmpwi r0, 0x13
/* 805FDE74  40 82 00 D8 */	bne lbl_805FDF4C
/* 805FDE78  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FDE7C  38 63 00 0C */	addi r3, r3, 0xc
/* 805FDE80  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 805FDE84  4B D2 A5 A9 */	bl checkPass__12J3DFrameCtrlFf
/* 805FDE88  2C 03 00 00 */	cmpwi r3, 0
/* 805FDE8C  41 82 00 30 */	beq lbl_805FDEBC
/* 805FDE90  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007053D@ha */
/* 805FDE94  38 03 05 3D */	addi r0, r3, 0x053D /* 0x0007053D@l */
/* 805FDE98  90 01 00 CC */	stw r0, 0xcc(r1)
/* 805FDE9C  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FDEA0  38 81 00 CC */	addi r4, r1, 0xcc
/* 805FDEA4  38 A0 FF FF */	li r5, -1
/* 805FDEA8  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FDEAC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805FDEB0  7D 89 03 A6 */	mtctr r12
/* 805FDEB4  4E 80 04 21 */	bctrl 
/* 805FDEB8  48 00 0D 88 */	b lbl_805FEC40
lbl_805FDEBC:
/* 805FDEBC  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FDEC0  38 63 00 0C */	addi r3, r3, 0xc
/* 805FDEC4  C0 3F 02 BC */	lfs f1, 0x2bc(r31)
/* 805FDEC8  4B D2 A5 65 */	bl checkPass__12J3DFrameCtrlFf
/* 805FDECC  2C 03 00 00 */	cmpwi r3, 0
/* 805FDED0  41 82 00 34 */	beq lbl_805FDF04
/* 805FDED4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007053E@ha */
/* 805FDED8  38 03 05 3E */	addi r0, r3, 0x053E /* 0x0007053E@l */
/* 805FDEDC  90 01 00 C8 */	stw r0, 0xc8(r1)
/* 805FDEE0  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FDEE4  38 81 00 C8 */	addi r4, r1, 0xc8
/* 805FDEE8  38 A0 00 00 */	li r5, 0
/* 805FDEEC  38 C0 FF FF */	li r6, -1
/* 805FDEF0  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FDEF4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805FDEF8  7D 89 03 A6 */	mtctr r12
/* 805FDEFC  4E 80 04 21 */	bctrl 
/* 805FDF00  48 00 0D 40 */	b lbl_805FEC40
lbl_805FDF04:
/* 805FDF04  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FDF08  38 63 00 0C */	addi r3, r3, 0xc
/* 805FDF0C  C0 3F 02 B4 */	lfs f1, 0x2b4(r31)
/* 805FDF10  4B D2 A5 1D */	bl checkPass__12J3DFrameCtrlFf
/* 805FDF14  2C 03 00 00 */	cmpwi r3, 0
/* 805FDF18  41 82 0D 28 */	beq lbl_805FEC40
/* 805FDF1C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007053A@ha */
/* 805FDF20  38 03 05 3A */	addi r0, r3, 0x053A /* 0x0007053A@l */
/* 805FDF24  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 805FDF28  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FDF2C  38 81 00 C4 */	addi r4, r1, 0xc4
/* 805FDF30  38 A0 00 00 */	li r5, 0
/* 805FDF34  38 C0 FF FF */	li r6, -1
/* 805FDF38  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FDF3C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805FDF40  7D 89 03 A6 */	mtctr r12
/* 805FDF44  4E 80 04 21 */	bctrl 
/* 805FDF48  48 00 0C F8 */	b lbl_805FEC40
lbl_805FDF4C:
/* 805FDF4C  2C 00 00 14 */	cmpwi r0, 0x14
/* 805FDF50  40 82 00 D8 */	bne lbl_805FE028
/* 805FDF54  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FDF58  38 63 00 0C */	addi r3, r3, 0xc
/* 805FDF5C  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 805FDF60  4B D2 A4 CD */	bl checkPass__12J3DFrameCtrlFf
/* 805FDF64  2C 03 00 00 */	cmpwi r3, 0
/* 805FDF68  41 82 00 30 */	beq lbl_805FDF98
/* 805FDF6C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007053F@ha */
/* 805FDF70  38 03 05 3F */	addi r0, r3, 0x053F /* 0x0007053F@l */
/* 805FDF74  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 805FDF78  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FDF7C  38 81 00 C0 */	addi r4, r1, 0xc0
/* 805FDF80  38 A0 FF FF */	li r5, -1
/* 805FDF84  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FDF88  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805FDF8C  7D 89 03 A6 */	mtctr r12
/* 805FDF90  4E 80 04 21 */	bctrl 
/* 805FDF94  48 00 0C AC */	b lbl_805FEC40
lbl_805FDF98:
/* 805FDF98  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FDF9C  38 63 00 0C */	addi r3, r3, 0xc
/* 805FDFA0  C0 3F 02 C0 */	lfs f1, 0x2c0(r31)
/* 805FDFA4  4B D2 A4 89 */	bl checkPass__12J3DFrameCtrlFf
/* 805FDFA8  2C 03 00 00 */	cmpwi r3, 0
/* 805FDFAC  41 82 00 34 */	beq lbl_805FDFE0
/* 805FDFB0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070540@ha */
/* 805FDFB4  38 03 05 40 */	addi r0, r3, 0x0540 /* 0x00070540@l */
/* 805FDFB8  90 01 00 BC */	stw r0, 0xbc(r1)
/* 805FDFBC  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FDFC0  38 81 00 BC */	addi r4, r1, 0xbc
/* 805FDFC4  38 A0 00 00 */	li r5, 0
/* 805FDFC8  38 C0 FF FF */	li r6, -1
/* 805FDFCC  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FDFD0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805FDFD4  7D 89 03 A6 */	mtctr r12
/* 805FDFD8  4E 80 04 21 */	bctrl 
/* 805FDFDC  48 00 0C 64 */	b lbl_805FEC40
lbl_805FDFE0:
/* 805FDFE0  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FDFE4  38 63 00 0C */	addi r3, r3, 0xc
/* 805FDFE8  C0 3F 02 B4 */	lfs f1, 0x2b4(r31)
/* 805FDFEC  4B D2 A4 41 */	bl checkPass__12J3DFrameCtrlFf
/* 805FDFF0  2C 03 00 00 */	cmpwi r3, 0
/* 805FDFF4  41 82 0C 4C */	beq lbl_805FEC40
/* 805FDFF8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007053A@ha */
/* 805FDFFC  38 03 05 3A */	addi r0, r3, 0x053A /* 0x0007053A@l */
/* 805FE000  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 805FE004  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FE008  38 81 00 B8 */	addi r4, r1, 0xb8
/* 805FE00C  38 A0 00 00 */	li r5, 0
/* 805FE010  38 C0 FF FF */	li r6, -1
/* 805FE014  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FE018  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805FE01C  7D 89 03 A6 */	mtctr r12
/* 805FE020  4E 80 04 21 */	bctrl 
/* 805FE024  48 00 0C 1C */	b lbl_805FEC40
lbl_805FE028:
/* 805FE028  2C 00 00 15 */	cmpwi r0, 0x15
/* 805FE02C  40 82 00 74 */	bne lbl_805FE0A0
/* 805FE030  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FE034  38 63 00 0C */	addi r3, r3, 0xc
/* 805FE038  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805FE03C  4B D2 A3 F1 */	bl checkPass__12J3DFrameCtrlFf
/* 805FE040  2C 03 00 00 */	cmpwi r3, 0
/* 805FE044  41 82 0B FC */	beq lbl_805FEC40
/* 805FE048  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070541@ha */
/* 805FE04C  38 03 05 41 */	addi r0, r3, 0x0541 /* 0x00070541@l */
/* 805FE050  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 805FE054  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FE058  38 81 00 B4 */	addi r4, r1, 0xb4
/* 805FE05C  38 A0 FF FF */	li r5, -1
/* 805FE060  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FE064  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805FE068  7D 89 03 A6 */	mtctr r12
/* 805FE06C  4E 80 04 21 */	bctrl 
/* 805FE070  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070542@ha */
/* 805FE074  38 03 05 42 */	addi r0, r3, 0x0542 /* 0x00070542@l */
/* 805FE078  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 805FE07C  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FE080  38 81 00 B0 */	addi r4, r1, 0xb0
/* 805FE084  38 A0 00 00 */	li r5, 0
/* 805FE088  38 C0 FF FF */	li r6, -1
/* 805FE08C  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FE090  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805FE094  7D 89 03 A6 */	mtctr r12
/* 805FE098  4E 80 04 21 */	bctrl 
/* 805FE09C  48 00 0B A4 */	b lbl_805FEC40
lbl_805FE0A0:
/* 805FE0A0  2C 00 00 16 */	cmpwi r0, 0x16
/* 805FE0A4  40 82 00 64 */	bne lbl_805FE108
/* 805FE0A8  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FE0AC  38 63 00 0C */	addi r3, r3, 0xc
/* 805FE0B0  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 805FE0B4  4B D2 A3 79 */	bl checkPass__12J3DFrameCtrlFf
/* 805FE0B8  2C 03 00 00 */	cmpwi r3, 0
/* 805FE0BC  40 82 00 1C */	bne lbl_805FE0D8
/* 805FE0C0  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FE0C4  38 63 00 0C */	addi r3, r3, 0xc
/* 805FE0C8  C0 3F 02 C4 */	lfs f1, 0x2c4(r31)
/* 805FE0CC  4B D2 A3 61 */	bl checkPass__12J3DFrameCtrlFf
/* 805FE0D0  2C 03 00 00 */	cmpwi r3, 0
/* 805FE0D4  41 82 00 34 */	beq lbl_805FE108
lbl_805FE0D8:
/* 805FE0D8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007053B@ha */
/* 805FE0DC  38 03 05 3B */	addi r0, r3, 0x053B /* 0x0007053B@l */
/* 805FE0E0  90 01 00 AC */	stw r0, 0xac(r1)
/* 805FE0E4  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FE0E8  38 81 00 AC */	addi r4, r1, 0xac
/* 805FE0EC  38 A0 00 00 */	li r5, 0
/* 805FE0F0  38 C0 FF FF */	li r6, -1
/* 805FE0F4  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FE0F8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805FE0FC  7D 89 03 A6 */	mtctr r12
/* 805FE100  4E 80 04 21 */	bctrl 
/* 805FE104  48 00 0B 3C */	b lbl_805FEC40
lbl_805FE108:
/* 805FE108  80 1E 07 58 */	lwz r0, 0x758(r30)
/* 805FE10C  2C 00 00 17 */	cmpwi r0, 0x17
/* 805FE110  40 82 01 50 */	bne lbl_805FE260
/* 805FE114  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FE118  38 63 00 0C */	addi r3, r3, 0xc
/* 805FE11C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805FE120  4B D2 A3 0D */	bl checkPass__12J3DFrameCtrlFf
/* 805FE124  2C 03 00 00 */	cmpwi r3, 0
/* 805FE128  40 82 00 34 */	bne lbl_805FE15C
/* 805FE12C  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FE130  38 63 00 0C */	addi r3, r3, 0xc
/* 805FE134  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 805FE138  4B D2 A2 F5 */	bl checkPass__12J3DFrameCtrlFf
/* 805FE13C  2C 03 00 00 */	cmpwi r3, 0
/* 805FE140  40 82 00 1C */	bne lbl_805FE15C
/* 805FE144  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FE148  38 63 00 0C */	addi r3, r3, 0xc
/* 805FE14C  C0 3F 01 4C */	lfs f1, 0x14c(r31)
/* 805FE150  4B D2 A2 DD */	bl checkPass__12J3DFrameCtrlFf
/* 805FE154  2C 03 00 00 */	cmpwi r3, 0
/* 805FE158  41 82 00 34 */	beq lbl_805FE18C
lbl_805FE15C:
/* 805FE15C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007053B@ha */
/* 805FE160  38 03 05 3B */	addi r0, r3, 0x053B /* 0x0007053B@l */
/* 805FE164  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 805FE168  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FE16C  38 81 00 A8 */	addi r4, r1, 0xa8
/* 805FE170  38 A0 00 00 */	li r5, 0
/* 805FE174  38 C0 FF FF */	li r6, -1
/* 805FE178  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FE17C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805FE180  7D 89 03 A6 */	mtctr r12
/* 805FE184  4E 80 04 21 */	bctrl 
/* 805FE188  48 00 0A B8 */	b lbl_805FEC40
lbl_805FE18C:
/* 805FE18C  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FE190  38 63 00 0C */	addi r3, r3, 0xc
/* 805FE194  C0 3F 02 C8 */	lfs f1, 0x2c8(r31)
/* 805FE198  4B D2 A2 95 */	bl checkPass__12J3DFrameCtrlFf
/* 805FE19C  2C 03 00 00 */	cmpwi r3, 0
/* 805FE1A0  41 82 00 30 */	beq lbl_805FE1D0
/* 805FE1A4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070543@ha */
/* 805FE1A8  38 03 05 43 */	addi r0, r3, 0x0543 /* 0x00070543@l */
/* 805FE1AC  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 805FE1B0  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FE1B4  38 81 00 A4 */	addi r4, r1, 0xa4
/* 805FE1B8  38 A0 FF FF */	li r5, -1
/* 805FE1BC  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FE1C0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805FE1C4  7D 89 03 A6 */	mtctr r12
/* 805FE1C8  4E 80 04 21 */	bctrl 
/* 805FE1CC  48 00 0A 74 */	b lbl_805FEC40
lbl_805FE1D0:
/* 805FE1D0  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FE1D4  38 63 00 0C */	addi r3, r3, 0xc
/* 805FE1D8  C0 3F 02 CC */	lfs f1, 0x2cc(r31)
/* 805FE1DC  4B D2 A2 51 */	bl checkPass__12J3DFrameCtrlFf
/* 805FE1E0  2C 03 00 00 */	cmpwi r3, 0
/* 805FE1E4  41 82 00 34 */	beq lbl_805FE218
/* 805FE1E8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070544@ha */
/* 805FE1EC  38 03 05 44 */	addi r0, r3, 0x0544 /* 0x00070544@l */
/* 805FE1F0  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 805FE1F4  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FE1F8  38 81 00 A0 */	addi r4, r1, 0xa0
/* 805FE1FC  38 A0 00 00 */	li r5, 0
/* 805FE200  38 C0 FF FF */	li r6, -1
/* 805FE204  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FE208  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805FE20C  7D 89 03 A6 */	mtctr r12
/* 805FE210  4E 80 04 21 */	bctrl 
/* 805FE214  48 00 0A 2C */	b lbl_805FEC40
lbl_805FE218:
/* 805FE218  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FE21C  38 63 00 0C */	addi r3, r3, 0xc
/* 805FE220  C0 3F 02 B4 */	lfs f1, 0x2b4(r31)
/* 805FE224  4B D2 A2 09 */	bl checkPass__12J3DFrameCtrlFf
/* 805FE228  2C 03 00 00 */	cmpwi r3, 0
/* 805FE22C  41 82 0A 14 */	beq lbl_805FEC40
/* 805FE230  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007053A@ha */
/* 805FE234  38 03 05 3A */	addi r0, r3, 0x053A /* 0x0007053A@l */
/* 805FE238  90 01 00 9C */	stw r0, 0x9c(r1)
/* 805FE23C  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FE240  38 81 00 9C */	addi r4, r1, 0x9c
/* 805FE244  38 A0 00 00 */	li r5, 0
/* 805FE248  38 C0 FF FF */	li r6, -1
/* 805FE24C  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FE250  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805FE254  7D 89 03 A6 */	mtctr r12
/* 805FE258  4E 80 04 21 */	bctrl 
/* 805FE25C  48 00 09 E4 */	b lbl_805FEC40
lbl_805FE260:
/* 805FE260  2C 00 00 18 */	cmpwi r0, 0x18
/* 805FE264  40 82 00 74 */	bne lbl_805FE2D8
/* 805FE268  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FE26C  38 63 00 0C */	addi r3, r3, 0xc
/* 805FE270  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 805FE274  4B D2 A1 B9 */	bl checkPass__12J3DFrameCtrlFf
/* 805FE278  2C 03 00 00 */	cmpwi r3, 0
/* 805FE27C  41 82 00 5C */	beq lbl_805FE2D8
/* 805FE280  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070545@ha */
/* 805FE284  38 03 05 45 */	addi r0, r3, 0x0545 /* 0x00070545@l */
/* 805FE288  90 01 00 98 */	stw r0, 0x98(r1)
/* 805FE28C  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FE290  38 81 00 98 */	addi r4, r1, 0x98
/* 805FE294  38 A0 FF FF */	li r5, -1
/* 805FE298  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FE29C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805FE2A0  7D 89 03 A6 */	mtctr r12
/* 805FE2A4  4E 80 04 21 */	bctrl 
/* 805FE2A8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070546@ha */
/* 805FE2AC  38 03 05 46 */	addi r0, r3, 0x0546 /* 0x00070546@l */
/* 805FE2B0  90 01 00 94 */	stw r0, 0x94(r1)
/* 805FE2B4  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FE2B8  38 81 00 94 */	addi r4, r1, 0x94
/* 805FE2BC  38 A0 00 00 */	li r5, 0
/* 805FE2C0  38 C0 FF FF */	li r6, -1
/* 805FE2C4  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FE2C8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805FE2CC  7D 89 03 A6 */	mtctr r12
/* 805FE2D0  4E 80 04 21 */	bctrl 
/* 805FE2D4  48 00 09 6C */	b lbl_805FEC40
lbl_805FE2D8:
/* 805FE2D8  80 1E 07 58 */	lwz r0, 0x758(r30)
/* 805FE2DC  2C 00 00 19 */	cmpwi r0, 0x19
/* 805FE2E0  40 82 00 74 */	bne lbl_805FE354
/* 805FE2E4  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FE2E8  38 63 00 0C */	addi r3, r3, 0xc
/* 805FE2EC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805FE2F0  4B D2 A1 3D */	bl checkPass__12J3DFrameCtrlFf
/* 805FE2F4  2C 03 00 00 */	cmpwi r3, 0
/* 805FE2F8  41 82 00 5C */	beq lbl_805FE354
/* 805FE2FC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070547@ha */
/* 805FE300  38 03 05 47 */	addi r0, r3, 0x0547 /* 0x00070547@l */
/* 805FE304  90 01 00 90 */	stw r0, 0x90(r1)
/* 805FE308  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FE30C  38 81 00 90 */	addi r4, r1, 0x90
/* 805FE310  38 A0 FF FF */	li r5, -1
/* 805FE314  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FE318  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805FE31C  7D 89 03 A6 */	mtctr r12
/* 805FE320  4E 80 04 21 */	bctrl 
/* 805FE324  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070548@ha */
/* 805FE328  38 03 05 48 */	addi r0, r3, 0x0548 /* 0x00070548@l */
/* 805FE32C  90 01 00 8C */	stw r0, 0x8c(r1)
/* 805FE330  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FE334  38 81 00 8C */	addi r4, r1, 0x8c
/* 805FE338  38 A0 00 00 */	li r5, 0
/* 805FE33C  38 C0 FF FF */	li r6, -1
/* 805FE340  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FE344  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805FE348  7D 89 03 A6 */	mtctr r12
/* 805FE34C  4E 80 04 21 */	bctrl 
/* 805FE350  48 00 08 F0 */	b lbl_805FEC40
lbl_805FE354:
/* 805FE354  80 1E 07 58 */	lwz r0, 0x758(r30)
/* 805FE358  2C 00 00 1A */	cmpwi r0, 0x1a
/* 805FE35C  40 82 01 04 */	bne lbl_805FE460
/* 805FE360  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FE364  38 63 00 0C */	addi r3, r3, 0xc
/* 805FE368  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 805FE36C  4B D2 A0 C1 */	bl checkPass__12J3DFrameCtrlFf
/* 805FE370  2C 03 00 00 */	cmpwi r3, 0
/* 805FE374  41 82 00 34 */	beq lbl_805FE3A8
/* 805FE378  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007054F@ha */
/* 805FE37C  38 03 05 4F */	addi r0, r3, 0x054F /* 0x0007054F@l */
/* 805FE380  90 01 00 88 */	stw r0, 0x88(r1)
/* 805FE384  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FE388  38 81 00 88 */	addi r4, r1, 0x88
/* 805FE38C  38 A0 00 00 */	li r5, 0
/* 805FE390  38 C0 FF FF */	li r6, -1
/* 805FE394  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FE398  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805FE39C  7D 89 03 A6 */	mtctr r12
/* 805FE3A0  4E 80 04 21 */	bctrl 
/* 805FE3A4  48 00 08 9C */	b lbl_805FEC40
lbl_805FE3A8:
/* 805FE3A8  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FE3AC  38 63 00 0C */	addi r3, r3, 0xc
/* 805FE3B0  C0 3F 02 D0 */	lfs f1, 0x2d0(r31)
/* 805FE3B4  4B D2 A0 79 */	bl checkPass__12J3DFrameCtrlFf
/* 805FE3B8  2C 03 00 00 */	cmpwi r3, 0
/* 805FE3BC  41 82 00 5C */	beq lbl_805FE418
/* 805FE3C0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070549@ha */
/* 805FE3C4  38 03 05 49 */	addi r0, r3, 0x0549 /* 0x00070549@l */
/* 805FE3C8  90 01 00 84 */	stw r0, 0x84(r1)
/* 805FE3CC  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FE3D0  38 81 00 84 */	addi r4, r1, 0x84
/* 805FE3D4  38 A0 FF FF */	li r5, -1
/* 805FE3D8  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FE3DC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805FE3E0  7D 89 03 A6 */	mtctr r12
/* 805FE3E4  4E 80 04 21 */	bctrl 
/* 805FE3E8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007054A@ha */
/* 805FE3EC  38 03 05 4A */	addi r0, r3, 0x054A /* 0x0007054A@l */
/* 805FE3F0  90 01 00 80 */	stw r0, 0x80(r1)
/* 805FE3F4  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FE3F8  38 81 00 80 */	addi r4, r1, 0x80
/* 805FE3FC  38 A0 00 00 */	li r5, 0
/* 805FE400  38 C0 FF FF */	li r6, -1
/* 805FE404  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FE408  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805FE40C  7D 89 03 A6 */	mtctr r12
/* 805FE410  4E 80 04 21 */	bctrl 
/* 805FE414  48 00 08 2C */	b lbl_805FEC40
lbl_805FE418:
/* 805FE418  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FE41C  38 63 00 0C */	addi r3, r3, 0xc
/* 805FE420  C0 3F 02 B4 */	lfs f1, 0x2b4(r31)
/* 805FE424  4B D2 A0 09 */	bl checkPass__12J3DFrameCtrlFf
/* 805FE428  2C 03 00 00 */	cmpwi r3, 0
/* 805FE42C  41 82 08 14 */	beq lbl_805FEC40
/* 805FE430  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007053A@ha */
/* 805FE434  38 03 05 3A */	addi r0, r3, 0x053A /* 0x0007053A@l */
/* 805FE438  90 01 00 7C */	stw r0, 0x7c(r1)
/* 805FE43C  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FE440  38 81 00 7C */	addi r4, r1, 0x7c
/* 805FE444  38 A0 00 00 */	li r5, 0
/* 805FE448  38 C0 FF FF */	li r6, -1
/* 805FE44C  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FE450  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805FE454  7D 89 03 A6 */	mtctr r12
/* 805FE458  4E 80 04 21 */	bctrl 
/* 805FE45C  48 00 07 E4 */	b lbl_805FEC40
lbl_805FE460:
/* 805FE460  2C 00 00 1D */	cmpwi r0, 0x1d
/* 805FE464  40 82 00 E8 */	bne lbl_805FE54C
/* 805FE468  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FE46C  38 63 00 0C */	addi r3, r3, 0xc
/* 805FE470  C0 3F 02 D0 */	lfs f1, 0x2d0(r31)
/* 805FE474  4B D2 9F B9 */	bl checkPass__12J3DFrameCtrlFf
/* 805FE478  2C 03 00 00 */	cmpwi r3, 0
/* 805FE47C  41 82 00 88 */	beq lbl_805FE504
/* 805FE480  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007054F@ha */
/* 805FE484  38 03 05 4F */	addi r0, r3, 0x054F /* 0x0007054F@l */
/* 805FE488  90 01 00 78 */	stw r0, 0x78(r1)
/* 805FE48C  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FE490  38 81 00 78 */	addi r4, r1, 0x78
/* 805FE494  38 A0 00 00 */	li r5, 0
/* 805FE498  38 C0 FF FF */	li r6, -1
/* 805FE49C  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FE4A0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805FE4A4  7D 89 03 A6 */	mtctr r12
/* 805FE4A8  4E 80 04 21 */	bctrl 
/* 805FE4AC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007054B@ha */
/* 805FE4B0  38 03 05 4B */	addi r0, r3, 0x054B /* 0x0007054B@l */
/* 805FE4B4  90 01 00 74 */	stw r0, 0x74(r1)
/* 805FE4B8  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FE4BC  38 81 00 74 */	addi r4, r1, 0x74
/* 805FE4C0  38 A0 FF FF */	li r5, -1
/* 805FE4C4  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FE4C8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805FE4CC  7D 89 03 A6 */	mtctr r12
/* 805FE4D0  4E 80 04 21 */	bctrl 
/* 805FE4D4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007054C@ha */
/* 805FE4D8  38 03 05 4C */	addi r0, r3, 0x054C /* 0x0007054C@l */
/* 805FE4DC  90 01 00 70 */	stw r0, 0x70(r1)
/* 805FE4E0  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FE4E4  38 81 00 70 */	addi r4, r1, 0x70
/* 805FE4E8  38 A0 00 00 */	li r5, 0
/* 805FE4EC  38 C0 FF FF */	li r6, -1
/* 805FE4F0  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FE4F4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805FE4F8  7D 89 03 A6 */	mtctr r12
/* 805FE4FC  4E 80 04 21 */	bctrl 
/* 805FE500  48 00 07 40 */	b lbl_805FEC40
lbl_805FE504:
/* 805FE504  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FE508  38 63 00 0C */	addi r3, r3, 0xc
/* 805FE50C  C0 3F 02 BC */	lfs f1, 0x2bc(r31)
/* 805FE510  4B D2 9F 1D */	bl checkPass__12J3DFrameCtrlFf
/* 805FE514  2C 03 00 00 */	cmpwi r3, 0
/* 805FE518  41 82 07 28 */	beq lbl_805FEC40
/* 805FE51C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007053A@ha */
/* 805FE520  38 03 05 3A */	addi r0, r3, 0x053A /* 0x0007053A@l */
/* 805FE524  90 01 00 6C */	stw r0, 0x6c(r1)
/* 805FE528  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FE52C  38 81 00 6C */	addi r4, r1, 0x6c
/* 805FE530  38 A0 00 00 */	li r5, 0
/* 805FE534  38 C0 FF FF */	li r6, -1
/* 805FE538  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FE53C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805FE540  7D 89 03 A6 */	mtctr r12
/* 805FE544  4E 80 04 21 */	bctrl 
/* 805FE548  48 00 06 F8 */	b lbl_805FEC40
lbl_805FE54C:
/* 805FE54C  2C 00 00 1E */	cmpwi r0, 0x1e
/* 805FE550  40 82 01 38 */	bne lbl_805FE688
/* 805FE554  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FE558  38 63 00 0C */	addi r3, r3, 0xc
/* 805FE55C  C0 3F 02 D4 */	lfs f1, 0x2d4(r31)
/* 805FE560  4B D2 9E CD */	bl checkPass__12J3DFrameCtrlFf
/* 805FE564  2C 03 00 00 */	cmpwi r3, 0
/* 805FE568  41 82 00 30 */	beq lbl_805FE598
/* 805FE56C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007054D@ha */
/* 805FE570  38 03 05 4D */	addi r0, r3, 0x054D /* 0x0007054D@l */
/* 805FE574  90 01 00 68 */	stw r0, 0x68(r1)
/* 805FE578  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FE57C  38 81 00 68 */	addi r4, r1, 0x68
/* 805FE580  38 A0 FF FF */	li r5, -1
/* 805FE584  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FE588  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805FE58C  7D 89 03 A6 */	mtctr r12
/* 805FE590  4E 80 04 21 */	bctrl 
/* 805FE594  48 00 06 AC */	b lbl_805FEC40
lbl_805FE598:
/* 805FE598  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FE59C  38 63 00 0C */	addi r3, r3, 0xc
/* 805FE5A0  C0 3F 02 C8 */	lfs f1, 0x2c8(r31)
/* 805FE5A4  4B D2 9E 89 */	bl checkPass__12J3DFrameCtrlFf
/* 805FE5A8  2C 03 00 00 */	cmpwi r3, 0
/* 805FE5AC  41 82 00 34 */	beq lbl_805FE5E0
/* 805FE5B0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007054E@ha */
/* 805FE5B4  38 03 05 4E */	addi r0, r3, 0x054E /* 0x0007054E@l */
/* 805FE5B8  90 01 00 64 */	stw r0, 0x64(r1)
/* 805FE5BC  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FE5C0  38 81 00 64 */	addi r4, r1, 0x64
/* 805FE5C4  38 A0 00 00 */	li r5, 0
/* 805FE5C8  38 C0 FF FF */	li r6, -1
/* 805FE5CC  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FE5D0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805FE5D4  7D 89 03 A6 */	mtctr r12
/* 805FE5D8  4E 80 04 21 */	bctrl 
/* 805FE5DC  48 00 06 64 */	b lbl_805FEC40
lbl_805FE5E0:
/* 805FE5E0  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FE5E4  38 63 00 0C */	addi r3, r3, 0xc
/* 805FE5E8  C0 3F 02 CC */	lfs f1, 0x2cc(r31)
/* 805FE5EC  4B D2 9E 41 */	bl checkPass__12J3DFrameCtrlFf
/* 805FE5F0  2C 03 00 00 */	cmpwi r3, 0
/* 805FE5F4  40 82 00 1C */	bne lbl_805FE610
/* 805FE5F8  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FE5FC  38 63 00 0C */	addi r3, r3, 0xc
/* 805FE600  C0 3F 02 D8 */	lfs f1, 0x2d8(r31)
/* 805FE604  4B D2 9E 29 */	bl checkPass__12J3DFrameCtrlFf
/* 805FE608  2C 03 00 00 */	cmpwi r3, 0
/* 805FE60C  41 82 00 34 */	beq lbl_805FE640
lbl_805FE610:
/* 805FE610  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007054F@ha */
/* 805FE614  38 03 05 4F */	addi r0, r3, 0x054F /* 0x0007054F@l */
/* 805FE618  90 01 00 60 */	stw r0, 0x60(r1)
/* 805FE61C  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FE620  38 81 00 60 */	addi r4, r1, 0x60
/* 805FE624  38 A0 00 00 */	li r5, 0
/* 805FE628  38 C0 FF FF */	li r6, -1
/* 805FE62C  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FE630  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805FE634  7D 89 03 A6 */	mtctr r12
/* 805FE638  4E 80 04 21 */	bctrl 
/* 805FE63C  48 00 06 04 */	b lbl_805FEC40
lbl_805FE640:
/* 805FE640  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FE644  38 63 00 0C */	addi r3, r3, 0xc
/* 805FE648  C0 3F 02 DC */	lfs f1, 0x2dc(r31)
/* 805FE64C  4B D2 9D E1 */	bl checkPass__12J3DFrameCtrlFf
/* 805FE650  2C 03 00 00 */	cmpwi r3, 0
/* 805FE654  41 82 05 EC */	beq lbl_805FEC40
/* 805FE658  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007053A@ha */
/* 805FE65C  38 03 05 3A */	addi r0, r3, 0x053A /* 0x0007053A@l */
/* 805FE660  90 01 00 5C */	stw r0, 0x5c(r1)
/* 805FE664  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FE668  38 81 00 5C */	addi r4, r1, 0x5c
/* 805FE66C  38 A0 00 00 */	li r5, 0
/* 805FE670  38 C0 FF FF */	li r6, -1
/* 805FE674  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FE678  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805FE67C  7D 89 03 A6 */	mtctr r12
/* 805FE680  4E 80 04 21 */	bctrl 
/* 805FE684  48 00 05 BC */	b lbl_805FEC40
lbl_805FE688:
/* 805FE688  2C 00 00 1F */	cmpwi r0, 0x1f
/* 805FE68C  40 82 01 2C */	bne lbl_805FE7B8
/* 805FE690  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FE694  38 63 00 0C */	addi r3, r3, 0xc
/* 805FE698  C0 3F 02 BC */	lfs f1, 0x2bc(r31)
/* 805FE69C  4B D2 9D 91 */	bl checkPass__12J3DFrameCtrlFf
/* 805FE6A0  2C 03 00 00 */	cmpwi r3, 0
/* 805FE6A4  41 82 00 5C */	beq lbl_805FE700
/* 805FE6A8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070551@ha */
/* 805FE6AC  38 03 05 51 */	addi r0, r3, 0x0551 /* 0x00070551@l */
/* 805FE6B0  90 01 00 58 */	stw r0, 0x58(r1)
/* 805FE6B4  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FE6B8  38 81 00 58 */	addi r4, r1, 0x58
/* 805FE6BC  38 A0 00 00 */	li r5, 0
/* 805FE6C0  38 C0 FF FF */	li r6, -1
/* 805FE6C4  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FE6C8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805FE6CC  7D 89 03 A6 */	mtctr r12
/* 805FE6D0  4E 80 04 21 */	bctrl 
/* 805FE6D4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070550@ha */
/* 805FE6D8  38 03 05 50 */	addi r0, r3, 0x0550 /* 0x00070550@l */
/* 805FE6DC  90 01 00 54 */	stw r0, 0x54(r1)
/* 805FE6E0  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FE6E4  38 81 00 54 */	addi r4, r1, 0x54
/* 805FE6E8  38 A0 FF FF */	li r5, -1
/* 805FE6EC  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FE6F0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805FE6F4  7D 89 03 A6 */	mtctr r12
/* 805FE6F8  4E 80 04 21 */	bctrl 
/* 805FE6FC  48 00 05 44 */	b lbl_805FEC40
lbl_805FE700:
/* 805FE700  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FE704  38 63 00 0C */	addi r3, r3, 0xc
/* 805FE708  C0 3F 02 E0 */	lfs f1, 0x2e0(r31)
/* 805FE70C  4B D2 9D 21 */	bl checkPass__12J3DFrameCtrlFf
/* 805FE710  2C 03 00 00 */	cmpwi r3, 0
/* 805FE714  41 82 00 5C */	beq lbl_805FE770
/* 805FE718  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070553@ha */
/* 805FE71C  38 03 05 53 */	addi r0, r3, 0x0553 /* 0x00070553@l */
/* 805FE720  90 01 00 50 */	stw r0, 0x50(r1)
/* 805FE724  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FE728  38 81 00 50 */	addi r4, r1, 0x50
/* 805FE72C  38 A0 00 00 */	li r5, 0
/* 805FE730  38 C0 FF FF */	li r6, -1
/* 805FE734  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FE738  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805FE73C  7D 89 03 A6 */	mtctr r12
/* 805FE740  4E 80 04 21 */	bctrl 
/* 805FE744  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070552@ha */
/* 805FE748  38 03 05 52 */	addi r0, r3, 0x0552 /* 0x00070552@l */
/* 805FE74C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 805FE750  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FE754  38 81 00 4C */	addi r4, r1, 0x4c
/* 805FE758  38 A0 FF FF */	li r5, -1
/* 805FE75C  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FE760  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805FE764  7D 89 03 A6 */	mtctr r12
/* 805FE768  4E 80 04 21 */	bctrl 
/* 805FE76C  48 00 04 D4 */	b lbl_805FEC40
lbl_805FE770:
/* 805FE770  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FE774  38 63 00 0C */	addi r3, r3, 0xc
/* 805FE778  C0 3F 02 B8 */	lfs f1, 0x2b8(r31)
/* 805FE77C  4B D2 9C B1 */	bl checkPass__12J3DFrameCtrlFf
/* 805FE780  2C 03 00 00 */	cmpwi r3, 0
/* 805FE784  41 82 04 BC */	beq lbl_805FEC40
/* 805FE788  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007053A@ha */
/* 805FE78C  38 03 05 3A */	addi r0, r3, 0x053A /* 0x0007053A@l */
/* 805FE790  90 01 00 48 */	stw r0, 0x48(r1)
/* 805FE794  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FE798  38 81 00 48 */	addi r4, r1, 0x48
/* 805FE79C  38 A0 00 00 */	li r5, 0
/* 805FE7A0  38 C0 FF FF */	li r6, -1
/* 805FE7A4  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FE7A8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805FE7AC  7D 89 03 A6 */	mtctr r12
/* 805FE7B0  4E 80 04 21 */	bctrl 
/* 805FE7B4  48 00 04 8C */	b lbl_805FEC40
lbl_805FE7B8:
/* 805FE7B8  2C 00 00 2C */	cmpwi r0, 0x2c
/* 805FE7BC  40 82 00 74 */	bne lbl_805FE830
/* 805FE7C0  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FE7C4  38 63 00 0C */	addi r3, r3, 0xc
/* 805FE7C8  C0 3F 02 D0 */	lfs f1, 0x2d0(r31)
/* 805FE7CC  4B D2 9C 61 */	bl checkPass__12J3DFrameCtrlFf
/* 805FE7D0  2C 03 00 00 */	cmpwi r3, 0
/* 805FE7D4  41 82 04 6C */	beq lbl_805FEC40
/* 805FE7D8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070555@ha */
/* 805FE7DC  38 03 05 55 */	addi r0, r3, 0x0555 /* 0x00070555@l */
/* 805FE7E0  90 01 00 44 */	stw r0, 0x44(r1)
/* 805FE7E4  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FE7E8  38 81 00 44 */	addi r4, r1, 0x44
/* 805FE7EC  38 A0 00 00 */	li r5, 0
/* 805FE7F0  38 C0 FF FF */	li r6, -1
/* 805FE7F4  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FE7F8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805FE7FC  7D 89 03 A6 */	mtctr r12
/* 805FE800  4E 80 04 21 */	bctrl 
/* 805FE804  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070554@ha */
/* 805FE808  38 03 05 54 */	addi r0, r3, 0x0554 /* 0x00070554@l */
/* 805FE80C  90 01 00 40 */	stw r0, 0x40(r1)
/* 805FE810  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FE814  38 81 00 40 */	addi r4, r1, 0x40
/* 805FE818  38 A0 FF FF */	li r5, -1
/* 805FE81C  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FE820  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805FE824  7D 89 03 A6 */	mtctr r12
/* 805FE828  4E 80 04 21 */	bctrl 
/* 805FE82C  48 00 04 14 */	b lbl_805FEC40
lbl_805FE830:
/* 805FE830  2C 00 00 50 */	cmpwi r0, 0x50
/* 805FE834  41 82 00 0C */	beq lbl_805FE840
/* 805FE838  2C 00 00 4E */	cmpwi r0, 0x4e
/* 805FE83C  40 82 00 74 */	bne lbl_805FE8B0
lbl_805FE840:
/* 805FE840  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FE844  38 63 00 0C */	addi r3, r3, 0xc
/* 805FE848  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 805FE84C  4B D2 9B E1 */	bl checkPass__12J3DFrameCtrlFf
/* 805FE850  2C 03 00 00 */	cmpwi r3, 0
/* 805FE854  41 82 03 EC */	beq lbl_805FEC40
/* 805FE858  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070555@ha */
/* 805FE85C  38 03 05 55 */	addi r0, r3, 0x0555 /* 0x00070555@l */
/* 805FE860  90 01 00 3C */	stw r0, 0x3c(r1)
/* 805FE864  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FE868  38 81 00 3C */	addi r4, r1, 0x3c
/* 805FE86C  38 A0 00 00 */	li r5, 0
/* 805FE870  38 C0 FF FF */	li r6, -1
/* 805FE874  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FE878  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805FE87C  7D 89 03 A6 */	mtctr r12
/* 805FE880  4E 80 04 21 */	bctrl 
/* 805FE884  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070554@ha */
/* 805FE888  38 03 05 54 */	addi r0, r3, 0x0554 /* 0x00070554@l */
/* 805FE88C  90 01 00 38 */	stw r0, 0x38(r1)
/* 805FE890  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FE894  38 81 00 38 */	addi r4, r1, 0x38
/* 805FE898  38 A0 FF FF */	li r5, -1
/* 805FE89C  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FE8A0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805FE8A4  7D 89 03 A6 */	mtctr r12
/* 805FE8A8  4E 80 04 21 */	bctrl 
/* 805FE8AC  48 00 03 94 */	b lbl_805FEC40
lbl_805FE8B0:
/* 805FE8B0  2C 00 00 59 */	cmpwi r0, 0x59
/* 805FE8B4  40 82 00 74 */	bne lbl_805FE928
/* 805FE8B8  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FE8BC  38 63 00 0C */	addi r3, r3, 0xc
/* 805FE8C0  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 805FE8C4  4B D2 9B 69 */	bl checkPass__12J3DFrameCtrlFf
/* 805FE8C8  2C 03 00 00 */	cmpwi r3, 0
/* 805FE8CC  41 82 00 5C */	beq lbl_805FE928
/* 805FE8D0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007055B@ha */
/* 805FE8D4  38 03 05 5B */	addi r0, r3, 0x055B /* 0x0007055B@l */
/* 805FE8D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 805FE8DC  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FE8E0  38 81 00 34 */	addi r4, r1, 0x34
/* 805FE8E4  38 A0 FF FF */	li r5, -1
/* 805FE8E8  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FE8EC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805FE8F0  7D 89 03 A6 */	mtctr r12
/* 805FE8F4  4E 80 04 21 */	bctrl 
/* 805FE8F8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007055D@ha */
/* 805FE8FC  38 03 05 5D */	addi r0, r3, 0x055D /* 0x0007055D@l */
/* 805FE900  90 01 00 30 */	stw r0, 0x30(r1)
/* 805FE904  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FE908  38 81 00 30 */	addi r4, r1, 0x30
/* 805FE90C  38 A0 00 00 */	li r5, 0
/* 805FE910  38 C0 FF FF */	li r6, -1
/* 805FE914  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FE918  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805FE91C  7D 89 03 A6 */	mtctr r12
/* 805FE920  4E 80 04 21 */	bctrl 
/* 805FE924  48 00 03 1C */	b lbl_805FEC40
lbl_805FE928:
/* 805FE928  80 1E 07 58 */	lwz r0, 0x758(r30)
/* 805FE92C  2C 00 00 58 */	cmpwi r0, 0x58
/* 805FE930  40 82 01 04 */	bne lbl_805FEA34
/* 805FE934  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FE938  38 63 00 0C */	addi r3, r3, 0xc
/* 805FE93C  C0 3F 01 EC */	lfs f1, 0x1ec(r31)
/* 805FE940  4B D2 9A ED */	bl checkPass__12J3DFrameCtrlFf
/* 805FE944  2C 03 00 00 */	cmpwi r3, 0
/* 805FE948  41 82 00 5C */	beq lbl_805FE9A4
/* 805FE94C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007055C@ha */
/* 805FE950  38 03 05 5C */	addi r0, r3, 0x055C /* 0x0007055C@l */
/* 805FE954  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805FE958  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FE95C  38 81 00 2C */	addi r4, r1, 0x2c
/* 805FE960  38 A0 FF FF */	li r5, -1
/* 805FE964  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FE968  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805FE96C  7D 89 03 A6 */	mtctr r12
/* 805FE970  4E 80 04 21 */	bctrl 
/* 805FE974  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007055D@ha */
/* 805FE978  38 03 05 5D */	addi r0, r3, 0x055D /* 0x0007055D@l */
/* 805FE97C  90 01 00 28 */	stw r0, 0x28(r1)
/* 805FE980  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FE984  38 81 00 28 */	addi r4, r1, 0x28
/* 805FE988  38 A0 00 00 */	li r5, 0
/* 805FE98C  38 C0 FF FF */	li r6, -1
/* 805FE990  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FE994  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 805FE998  7D 89 03 A6 */	mtctr r12
/* 805FE99C  4E 80 04 21 */	bctrl 
/* 805FE9A0  48 00 02 A0 */	b lbl_805FEC40
lbl_805FE9A4:
/* 805FE9A4  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FE9A8  38 63 00 0C */	addi r3, r3, 0xc
/* 805FE9AC  C0 3F 02 E4 */	lfs f1, 0x2e4(r31)
/* 805FE9B0  4B D2 9A 7D */	bl checkPass__12J3DFrameCtrlFf
/* 805FE9B4  2C 03 00 00 */	cmpwi r3, 0
/* 805FE9B8  40 82 00 4C */	bne lbl_805FEA04
/* 805FE9BC  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FE9C0  38 63 00 0C */	addi r3, r3, 0xc
/* 805FE9C4  C0 3F 02 E8 */	lfs f1, 0x2e8(r31)
/* 805FE9C8  4B D2 9A 65 */	bl checkPass__12J3DFrameCtrlFf
/* 805FE9CC  2C 03 00 00 */	cmpwi r3, 0
/* 805FE9D0  40 82 00 34 */	bne lbl_805FEA04
/* 805FE9D4  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FE9D8  38 63 00 0C */	addi r3, r3, 0xc
/* 805FE9DC  C0 3F 02 DC */	lfs f1, 0x2dc(r31)
/* 805FE9E0  4B D2 9A 4D */	bl checkPass__12J3DFrameCtrlFf
/* 805FE9E4  2C 03 00 00 */	cmpwi r3, 0
/* 805FE9E8  40 82 00 1C */	bne lbl_805FEA04
/* 805FE9EC  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FE9F0  38 63 00 0C */	addi r3, r3, 0xc
/* 805FE9F4  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
/* 805FE9F8  4B D2 9A 35 */	bl checkPass__12J3DFrameCtrlFf
/* 805FE9FC  2C 03 00 00 */	cmpwi r3, 0
/* 805FEA00  41 82 02 40 */	beq lbl_805FEC40
lbl_805FEA04:
/* 805FEA04  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007053B@ha */
/* 805FEA08  38 03 05 3B */	addi r0, r3, 0x053B /* 0x0007053B@l */
/* 805FEA0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805FEA10  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FEA14  38 81 00 24 */	addi r4, r1, 0x24
/* 805FEA18  38 A0 00 00 */	li r5, 0
/* 805FEA1C  38 C0 FF FF */	li r6, -1
/* 805FEA20  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FEA24  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805FEA28  7D 89 03 A6 */	mtctr r12
/* 805FEA2C  4E 80 04 21 */	bctrl 
/* 805FEA30  48 00 02 10 */	b lbl_805FEC40
lbl_805FEA34:
/* 805FEA34  2C 00 00 28 */	cmpwi r0, 0x28
/* 805FEA38  40 82 00 48 */	bne lbl_805FEA80
/* 805FEA3C  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FEA40  38 63 00 0C */	addi r3, r3, 0xc
/* 805FEA44  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805FEA48  4B D2 99 E5 */	bl checkPass__12J3DFrameCtrlFf
/* 805FEA4C  2C 03 00 00 */	cmpwi r3, 0
/* 805FEA50  41 82 00 30 */	beq lbl_805FEA80
/* 805FEA54  3C 60 00 07 */	lis r3, 0x0007 /* 0x000705A6@ha */
/* 805FEA58  38 03 05 A6 */	addi r0, r3, 0x05A6 /* 0x000705A6@l */
/* 805FEA5C  90 01 00 20 */	stw r0, 0x20(r1)
/* 805FEA60  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FEA64  38 81 00 20 */	addi r4, r1, 0x20
/* 805FEA68  38 A0 FF FF */	li r5, -1
/* 805FEA6C  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FEA70  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805FEA74  7D 89 03 A6 */	mtctr r12
/* 805FEA78  4E 80 04 21 */	bctrl 
/* 805FEA7C  48 00 01 C4 */	b lbl_805FEC40
lbl_805FEA80:
/* 805FEA80  80 1E 07 58 */	lwz r0, 0x758(r30)
/* 805FEA84  2C 00 00 2B */	cmpwi r0, 0x2b
/* 805FEA88  40 82 00 48 */	bne lbl_805FEAD0
/* 805FEA8C  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FEA90  38 63 00 0C */	addi r3, r3, 0xc
/* 805FEA94  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805FEA98  4B D2 99 95 */	bl checkPass__12J3DFrameCtrlFf
/* 805FEA9C  2C 03 00 00 */	cmpwi r3, 0
/* 805FEAA0  41 82 00 30 */	beq lbl_805FEAD0
/* 805FEAA4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070562@ha */
/* 805FEAA8  38 03 05 62 */	addi r0, r3, 0x0562 /* 0x00070562@l */
/* 805FEAAC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805FEAB0  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FEAB4  38 81 00 1C */	addi r4, r1, 0x1c
/* 805FEAB8  38 A0 FF FF */	li r5, -1
/* 805FEABC  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FEAC0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805FEAC4  7D 89 03 A6 */	mtctr r12
/* 805FEAC8  4E 80 04 21 */	bctrl 
/* 805FEACC  48 00 01 74 */	b lbl_805FEC40
lbl_805FEAD0:
/* 805FEAD0  80 1E 07 58 */	lwz r0, 0x758(r30)
/* 805FEAD4  2C 00 00 2A */	cmpwi r0, 0x2a
/* 805FEAD8  40 82 00 90 */	bne lbl_805FEB68
/* 805FEADC  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FEAE0  38 63 00 0C */	addi r3, r3, 0xc
/* 805FEAE4  C0 3F 01 EC */	lfs f1, 0x1ec(r31)
/* 805FEAE8  4B D2 99 45 */	bl checkPass__12J3DFrameCtrlFf
/* 805FEAEC  2C 03 00 00 */	cmpwi r3, 0
/* 805FEAF0  41 82 00 30 */	beq lbl_805FEB20
/* 805FEAF4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070563@ha */
/* 805FEAF8  38 03 05 63 */	addi r0, r3, 0x0563 /* 0x00070563@l */
/* 805FEAFC  90 01 00 18 */	stw r0, 0x18(r1)
/* 805FEB00  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FEB04  38 81 00 18 */	addi r4, r1, 0x18
/* 805FEB08  38 A0 FF FF */	li r5, -1
/* 805FEB0C  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FEB10  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805FEB14  7D 89 03 A6 */	mtctr r12
/* 805FEB18  4E 80 04 21 */	bctrl 
/* 805FEB1C  48 00 01 24 */	b lbl_805FEC40
lbl_805FEB20:
/* 805FEB20  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FEB24  38 63 00 0C */	addi r3, r3, 0xc
/* 805FEB28  C0 3F 02 EC */	lfs f1, 0x2ec(r31)
/* 805FEB2C  4B D2 99 01 */	bl checkPass__12J3DFrameCtrlFf
/* 805FEB30  2C 03 00 00 */	cmpwi r3, 0
/* 805FEB34  41 82 01 0C */	beq lbl_805FEC40
/* 805FEB38  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070556@ha */
/* 805FEB3C  38 03 05 56 */	addi r0, r3, 0x0556 /* 0x00070556@l */
/* 805FEB40  90 01 00 14 */	stw r0, 0x14(r1)
/* 805FEB44  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FEB48  38 81 00 14 */	addi r4, r1, 0x14
/* 805FEB4C  38 A0 00 00 */	li r5, 0
/* 805FEB50  38 C0 FF FF */	li r6, -1
/* 805FEB54  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FEB58  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805FEB5C  7D 89 03 A6 */	mtctr r12
/* 805FEB60  4E 80 04 21 */	bctrl 
/* 805FEB64  48 00 00 DC */	b lbl_805FEC40
lbl_805FEB68:
/* 805FEB68  2C 00 00 29 */	cmpwi r0, 0x29
/* 805FEB6C  40 82 00 D4 */	bne lbl_805FEC40
/* 805FEB70  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FEB74  38 63 00 0C */	addi r3, r3, 0xc
/* 805FEB78  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805FEB7C  4B D2 98 B1 */	bl checkPass__12J3DFrameCtrlFf
/* 805FEB80  2C 03 00 00 */	cmpwi r3, 0
/* 805FEB84  41 82 00 30 */	beq lbl_805FEBB4
/* 805FEB88  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070564@ha */
/* 805FEB8C  38 03 05 64 */	addi r0, r3, 0x0564 /* 0x00070564@l */
/* 805FEB90  90 01 00 10 */	stw r0, 0x10(r1)
/* 805FEB94  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FEB98  38 81 00 10 */	addi r4, r1, 0x10
/* 805FEB9C  38 A0 FF FF */	li r5, -1
/* 805FEBA0  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FEBA4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805FEBA8  7D 89 03 A6 */	mtctr r12
/* 805FEBAC  4E 80 04 21 */	bctrl 
/* 805FEBB0  48 00 00 90 */	b lbl_805FEC40
lbl_805FEBB4:
/* 805FEBB4  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FEBB8  38 63 00 0C */	addi r3, r3, 0xc
/* 805FEBBC  C0 3F 02 BC */	lfs f1, 0x2bc(r31)
/* 805FEBC0  4B D2 98 6D */	bl checkPass__12J3DFrameCtrlFf
/* 805FEBC4  2C 03 00 00 */	cmpwi r3, 0
/* 805FEBC8  41 82 00 34 */	beq lbl_805FEBFC
/* 805FEBCC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070556@ha */
/* 805FEBD0  38 03 05 56 */	addi r0, r3, 0x0556 /* 0x00070556@l */
/* 805FEBD4  90 01 00 0C */	stw r0, 0xc(r1)
/* 805FEBD8  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FEBDC  38 81 00 0C */	addi r4, r1, 0xc
/* 805FEBE0  38 A0 00 00 */	li r5, 0
/* 805FEBE4  38 C0 FF FF */	li r6, -1
/* 805FEBE8  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FEBEC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805FEBF0  7D 89 03 A6 */	mtctr r12
/* 805FEBF4  4E 80 04 21 */	bctrl 
/* 805FEBF8  48 00 00 48 */	b lbl_805FEC40
lbl_805FEBFC:
/* 805FEBFC  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805FEC00  38 63 00 0C */	addi r3, r3, 0xc
/* 805FEC04  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
/* 805FEC08  4B D2 98 25 */	bl checkPass__12J3DFrameCtrlFf
/* 805FEC0C  2C 03 00 00 */	cmpwi r3, 0
/* 805FEC10  41 82 00 30 */	beq lbl_805FEC40
/* 805FEC14  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007053A@ha */
/* 805FEC18  38 03 05 3A */	addi r0, r3, 0x053A /* 0x0007053A@l */
/* 805FEC1C  90 01 00 08 */	stw r0, 8(r1)
/* 805FEC20  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805FEC24  38 81 00 08 */	addi r4, r1, 8
/* 805FEC28  38 A0 00 00 */	li r5, 0
/* 805FEC2C  38 C0 FF FF */	li r6, -1
/* 805FEC30  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805FEC34  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805FEC38  7D 89 03 A6 */	mtctr r12
/* 805FEC3C  4E 80 04 21 */	bctrl 
lbl_805FEC40:
/* 805FEC40  83 E1 00 FC */	lwz r31, 0xfc(r1)
/* 805FEC44  83 C1 00 F8 */	lwz r30, 0xf8(r1)
/* 805FEC48  80 01 01 04 */	lwz r0, 0x104(r1)
/* 805FEC4C  7C 08 03 A6 */	mtlr r0
/* 805FEC50  38 21 01 00 */	addi r1, r1, 0x100
/* 805FEC54  4E 80 00 20 */	blr 

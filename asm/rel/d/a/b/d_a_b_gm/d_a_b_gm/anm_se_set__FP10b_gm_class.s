lbl_805EFF50:
/* 805EFF50  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 805EFF54  7C 08 02 A6 */	mflr r0
/* 805EFF58  90 01 00 84 */	stw r0, 0x84(r1)
/* 805EFF5C  39 61 00 80 */	addi r11, r1, 0x80
/* 805EFF60  4B D7 22 79 */	bl _savegpr_28
/* 805EFF64  7C 7D 1B 78 */	mr r29, r3
/* 805EFF68  3C 60 80 5F */	lis r3, lit_3774@ha /* 0x805F4188@ha */
/* 805EFF6C  3B E3 41 88 */	addi r31, r3, lit_3774@l /* 0x805F4188@l */
/* 805EFF70  3B C0 FF FF */	li r30, -1
/* 805EFF74  80 1D 06 A4 */	lwz r0, 0x6a4(r29)
/* 805EFF78  2C 00 00 0F */	cmpwi r0, 0xf
/* 805EFF7C  40 82 02 00 */	bne lbl_805F017C
/* 805EFF80  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 805EFF84  38 63 00 0C */	addi r3, r3, 0xc
/* 805EFF88  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 805EFF8C  4B D3 84 A1 */	bl checkPass__12J3DFrameCtrlFf
/* 805EFF90  2C 03 00 00 */	cmpwi r3, 0
/* 805EFF94  41 82 00 0C */	beq lbl_805EFFA0
/* 805EFF98  3B C0 00 01 */	li r30, 1
/* 805EFF9C  48 00 01 E0 */	b lbl_805F017C
lbl_805EFFA0:
/* 805EFFA0  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 805EFFA4  38 63 00 0C */	addi r3, r3, 0xc
/* 805EFFA8  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 805EFFAC  4B D3 84 81 */	bl checkPass__12J3DFrameCtrlFf
/* 805EFFB0  2C 03 00 00 */	cmpwi r3, 0
/* 805EFFB4  41 82 00 0C */	beq lbl_805EFFC0
/* 805EFFB8  3B C0 00 06 */	li r30, 6
/* 805EFFBC  48 00 01 C0 */	b lbl_805F017C
lbl_805EFFC0:
/* 805EFFC0  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 805EFFC4  38 63 00 0C */	addi r3, r3, 0xc
/* 805EFFC8  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 805EFFCC  4B D3 84 61 */	bl checkPass__12J3DFrameCtrlFf
/* 805EFFD0  2C 03 00 00 */	cmpwi r3, 0
/* 805EFFD4  41 82 00 0C */	beq lbl_805EFFE0
/* 805EFFD8  3B C0 00 03 */	li r30, 3
/* 805EFFDC  48 00 01 A0 */	b lbl_805F017C
lbl_805EFFE0:
/* 805EFFE0  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 805EFFE4  38 63 00 0C */	addi r3, r3, 0xc
/* 805EFFE8  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 805EFFEC  4B D3 84 41 */	bl checkPass__12J3DFrameCtrlFf
/* 805EFFF0  2C 03 00 00 */	cmpwi r3, 0
/* 805EFFF4  41 82 00 0C */	beq lbl_805F0000
/* 805EFFF8  3B C0 00 05 */	li r30, 5
/* 805EFFFC  48 00 01 80 */	b lbl_805F017C
lbl_805F0000:
/* 805F0000  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 805F0004  38 63 00 0C */	addi r3, r3, 0xc
/* 805F0008  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 805F000C  4B D3 84 21 */	bl checkPass__12J3DFrameCtrlFf
/* 805F0010  2C 03 00 00 */	cmpwi r3, 0
/* 805F0014  41 82 00 0C */	beq lbl_805F0020
/* 805F0018  3B C0 00 00 */	li r30, 0
/* 805F001C  48 00 01 60 */	b lbl_805F017C
lbl_805F0020:
/* 805F0020  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 805F0024  38 63 00 0C */	addi r3, r3, 0xc
/* 805F0028  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 805F002C  4B D3 84 01 */	bl checkPass__12J3DFrameCtrlFf
/* 805F0030  2C 03 00 00 */	cmpwi r3, 0
/* 805F0034  41 82 00 0C */	beq lbl_805F0040
/* 805F0038  3B C0 00 07 */	li r30, 7
/* 805F003C  48 00 01 40 */	b lbl_805F017C
lbl_805F0040:
/* 805F0040  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 805F0044  38 63 00 0C */	addi r3, r3, 0xc
/* 805F0048  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 805F004C  4B D3 83 E1 */	bl checkPass__12J3DFrameCtrlFf
/* 805F0050  2C 03 00 00 */	cmpwi r3, 0
/* 805F0054  41 82 00 0C */	beq lbl_805F0060
/* 805F0058  3B C0 00 02 */	li r30, 2
/* 805F005C  48 00 01 20 */	b lbl_805F017C
lbl_805F0060:
/* 805F0060  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 805F0064  38 63 00 0C */	addi r3, r3, 0xc
/* 805F0068  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 805F006C  4B D3 83 C1 */	bl checkPass__12J3DFrameCtrlFf
/* 805F0070  2C 03 00 00 */	cmpwi r3, 0
/* 805F0074  41 82 00 0C */	beq lbl_805F0080
/* 805F0078  3B C0 00 04 */	li r30, 4
/* 805F007C  48 00 01 00 */	b lbl_805F017C
lbl_805F0080:
/* 805F0080  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 805F0084  38 63 00 0C */	addi r3, r3, 0xc
/* 805F0088  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 805F008C  4B D3 83 A1 */	bl checkPass__12J3DFrameCtrlFf
/* 805F0090  2C 03 00 00 */	cmpwi r3, 0
/* 805F0094  41 82 00 0C */	beq lbl_805F00A0
/* 805F0098  3B C0 00 01 */	li r30, 1
/* 805F009C  48 00 00 E0 */	b lbl_805F017C
lbl_805F00A0:
/* 805F00A0  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 805F00A4  38 63 00 0C */	addi r3, r3, 0xc
/* 805F00A8  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 805F00AC  4B D3 83 81 */	bl checkPass__12J3DFrameCtrlFf
/* 805F00B0  2C 03 00 00 */	cmpwi r3, 0
/* 805F00B4  41 82 00 0C */	beq lbl_805F00C0
/* 805F00B8  3B C0 00 06 */	li r30, 6
/* 805F00BC  48 00 00 C0 */	b lbl_805F017C
lbl_805F00C0:
/* 805F00C0  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 805F00C4  38 63 00 0C */	addi r3, r3, 0xc
/* 805F00C8  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 805F00CC  4B D3 83 61 */	bl checkPass__12J3DFrameCtrlFf
/* 805F00D0  2C 03 00 00 */	cmpwi r3, 0
/* 805F00D4  41 82 00 0C */	beq lbl_805F00E0
/* 805F00D8  3B C0 00 03 */	li r30, 3
/* 805F00DC  48 00 00 A0 */	b lbl_805F017C
lbl_805F00E0:
/* 805F00E0  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 805F00E4  38 63 00 0C */	addi r3, r3, 0xc
/* 805F00E8  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 805F00EC  4B D3 83 41 */	bl checkPass__12J3DFrameCtrlFf
/* 805F00F0  2C 03 00 00 */	cmpwi r3, 0
/* 805F00F4  41 82 00 0C */	beq lbl_805F0100
/* 805F00F8  3B C0 00 05 */	li r30, 5
/* 805F00FC  48 00 00 80 */	b lbl_805F017C
lbl_805F0100:
/* 805F0100  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 805F0104  38 63 00 0C */	addi r3, r3, 0xc
/* 805F0108  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 805F010C  4B D3 83 21 */	bl checkPass__12J3DFrameCtrlFf
/* 805F0110  2C 03 00 00 */	cmpwi r3, 0
/* 805F0114  41 82 00 0C */	beq lbl_805F0120
/* 805F0118  3B C0 00 00 */	li r30, 0
/* 805F011C  48 00 00 60 */	b lbl_805F017C
lbl_805F0120:
/* 805F0120  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 805F0124  38 63 00 0C */	addi r3, r3, 0xc
/* 805F0128  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 805F012C  4B D3 83 01 */	bl checkPass__12J3DFrameCtrlFf
/* 805F0130  2C 03 00 00 */	cmpwi r3, 0
/* 805F0134  41 82 00 0C */	beq lbl_805F0140
/* 805F0138  3B C0 00 07 */	li r30, 7
/* 805F013C  48 00 00 40 */	b lbl_805F017C
lbl_805F0140:
/* 805F0140  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 805F0144  38 63 00 0C */	addi r3, r3, 0xc
/* 805F0148  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 805F014C  4B D3 82 E1 */	bl checkPass__12J3DFrameCtrlFf
/* 805F0150  2C 03 00 00 */	cmpwi r3, 0
/* 805F0154  41 82 00 0C */	beq lbl_805F0160
/* 805F0158  3B C0 00 02 */	li r30, 2
/* 805F015C  48 00 00 20 */	b lbl_805F017C
lbl_805F0160:
/* 805F0160  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 805F0164  38 63 00 0C */	addi r3, r3, 0xc
/* 805F0168  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 805F016C  4B D3 82 C1 */	bl checkPass__12J3DFrameCtrlFf
/* 805F0170  2C 03 00 00 */	cmpwi r3, 0
/* 805F0174  41 82 00 08 */	beq lbl_805F017C
/* 805F0178  3B C0 00 04 */	li r30, 4
lbl_805F017C:
/* 805F017C  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 805F0180  38 63 00 0C */	addi r3, r3, 0xc
/* 805F0184  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805F0188  4B D3 82 A5 */	bl checkPass__12J3DFrameCtrlFf
/* 805F018C  2C 03 00 00 */	cmpwi r3, 0
/* 805F0190  41 82 01 78 */	beq lbl_805F0308
/* 805F0194  80 1D 06 A4 */	lwz r0, 0x6a4(r29)
/* 805F0198  2C 00 00 09 */	cmpwi r0, 9
/* 805F019C  40 82 00 30 */	bne lbl_805F01CC
/* 805F01A0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007046D@ha */
/* 805F01A4  38 03 04 6D */	addi r0, r3, 0x046D /* 0x0007046D@l */
/* 805F01A8  90 01 00 44 */	stw r0, 0x44(r1)
/* 805F01AC  38 7D 05 E0 */	addi r3, r29, 0x5e0
/* 805F01B0  38 81 00 44 */	addi r4, r1, 0x44
/* 805F01B4  38 A0 FF FF */	li r5, -1
/* 805F01B8  81 9D 05 E0 */	lwz r12, 0x5e0(r29)
/* 805F01BC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805F01C0  7D 89 03 A6 */	mtctr r12
/* 805F01C4  4E 80 04 21 */	bctrl 
/* 805F01C8  48 00 01 40 */	b lbl_805F0308
lbl_805F01CC:
/* 805F01CC  2C 00 00 0B */	cmpwi r0, 0xb
/* 805F01D0  40 82 00 30 */	bne lbl_805F0200
/* 805F01D4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007046E@ha */
/* 805F01D8  38 03 04 6E */	addi r0, r3, 0x046E /* 0x0007046E@l */
/* 805F01DC  90 01 00 40 */	stw r0, 0x40(r1)
/* 805F01E0  38 7D 05 E0 */	addi r3, r29, 0x5e0
/* 805F01E4  38 81 00 40 */	addi r4, r1, 0x40
/* 805F01E8  38 A0 FF FF */	li r5, -1
/* 805F01EC  81 9D 05 E0 */	lwz r12, 0x5e0(r29)
/* 805F01F0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805F01F4  7D 89 03 A6 */	mtctr r12
/* 805F01F8  4E 80 04 21 */	bctrl 
/* 805F01FC  48 00 01 0C */	b lbl_805F0308
lbl_805F0200:
/* 805F0200  2C 00 00 12 */	cmpwi r0, 0x12
/* 805F0204  40 82 00 34 */	bne lbl_805F0238
/* 805F0208  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070471@ha */
/* 805F020C  38 03 04 71 */	addi r0, r3, 0x0471 /* 0x00070471@l */
/* 805F0210  90 01 00 3C */	stw r0, 0x3c(r1)
/* 805F0214  38 7D 05 E0 */	addi r3, r29, 0x5e0
/* 805F0218  38 81 00 3C */	addi r4, r1, 0x3c
/* 805F021C  38 A0 00 00 */	li r5, 0
/* 805F0220  38 C0 FF FF */	li r6, -1
/* 805F0224  81 9D 05 E0 */	lwz r12, 0x5e0(r29)
/* 805F0228  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805F022C  7D 89 03 A6 */	mtctr r12
/* 805F0230  4E 80 04 21 */	bctrl 
/* 805F0234  48 00 00 D4 */	b lbl_805F0308
lbl_805F0238:
/* 805F0238  2C 00 00 13 */	cmpwi r0, 0x13
/* 805F023C  40 82 00 30 */	bne lbl_805F026C
/* 805F0240  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070472@ha */
/* 805F0244  38 03 04 72 */	addi r0, r3, 0x0472 /* 0x00070472@l */
/* 805F0248  90 01 00 38 */	stw r0, 0x38(r1)
/* 805F024C  38 7D 05 E0 */	addi r3, r29, 0x5e0
/* 805F0250  38 81 00 38 */	addi r4, r1, 0x38
/* 805F0254  38 A0 FF FF */	li r5, -1
/* 805F0258  81 9D 05 E0 */	lwz r12, 0x5e0(r29)
/* 805F025C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805F0260  7D 89 03 A6 */	mtctr r12
/* 805F0264  4E 80 04 21 */	bctrl 
/* 805F0268  48 00 00 A0 */	b lbl_805F0308
lbl_805F026C:
/* 805F026C  2C 00 00 17 */	cmpwi r0, 0x17
/* 805F0270  40 82 00 34 */	bne lbl_805F02A4
/* 805F0274  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070474@ha */
/* 805F0278  38 03 04 74 */	addi r0, r3, 0x0474 /* 0x00070474@l */
/* 805F027C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805F0280  38 7D 05 E0 */	addi r3, r29, 0x5e0
/* 805F0284  38 81 00 34 */	addi r4, r1, 0x34
/* 805F0288  38 A0 00 00 */	li r5, 0
/* 805F028C  38 C0 FF FF */	li r6, -1
/* 805F0290  81 9D 05 E0 */	lwz r12, 0x5e0(r29)
/* 805F0294  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805F0298  7D 89 03 A6 */	mtctr r12
/* 805F029C  4E 80 04 21 */	bctrl 
/* 805F02A0  48 00 00 68 */	b lbl_805F0308
lbl_805F02A4:
/* 805F02A4  2C 00 00 18 */	cmpwi r0, 0x18
/* 805F02A8  40 82 00 30 */	bne lbl_805F02D8
/* 805F02AC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070475@ha */
/* 805F02B0  38 03 04 75 */	addi r0, r3, 0x0475 /* 0x00070475@l */
/* 805F02B4  90 01 00 30 */	stw r0, 0x30(r1)
/* 805F02B8  38 7D 05 E0 */	addi r3, r29, 0x5e0
/* 805F02BC  38 81 00 30 */	addi r4, r1, 0x30
/* 805F02C0  38 A0 FF FF */	li r5, -1
/* 805F02C4  81 9D 05 E0 */	lwz r12, 0x5e0(r29)
/* 805F02C8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805F02CC  7D 89 03 A6 */	mtctr r12
/* 805F02D0  4E 80 04 21 */	bctrl 
/* 805F02D4  48 00 00 34 */	b lbl_805F0308
lbl_805F02D8:
/* 805F02D8  2C 00 00 10 */	cmpwi r0, 0x10
/* 805F02DC  40 82 00 2C */	bne lbl_805F0308
/* 805F02E0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070470@ha */
/* 805F02E4  38 03 04 70 */	addi r0, r3, 0x0470 /* 0x00070470@l */
/* 805F02E8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805F02EC  38 7D 05 E0 */	addi r3, r29, 0x5e0
/* 805F02F0  38 81 00 2C */	addi r4, r1, 0x2c
/* 805F02F4  38 A0 FF FF */	li r5, -1
/* 805F02F8  81 9D 05 E0 */	lwz r12, 0x5e0(r29)
/* 805F02FC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805F0300  7D 89 03 A6 */	mtctr r12
/* 805F0304  4E 80 04 21 */	bctrl 
lbl_805F0308:
/* 805F0308  A8 1D 1C 8C */	lha r0, 0x1c8c(r29)
/* 805F030C  2C 00 00 00 */	cmpwi r0, 0
/* 805F0310  40 82 00 40 */	bne lbl_805F0350
/* 805F0314  80 1D 06 A4 */	lwz r0, 0x6a4(r29)
/* 805F0318  2C 00 00 0F */	cmpwi r0, 0xf
/* 805F031C  40 82 00 34 */	bne lbl_805F0350
/* 805F0320  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700A8@ha */
/* 805F0324  38 03 00 A8 */	addi r0, r3, 0x00A8 /* 0x000700A8@l */
/* 805F0328  90 01 00 28 */	stw r0, 0x28(r1)
/* 805F032C  38 7D 05 E0 */	addi r3, r29, 0x5e0
/* 805F0330  38 81 00 28 */	addi r4, r1, 0x28
/* 805F0334  38 A0 00 00 */	li r5, 0
/* 805F0338  38 C0 FF FF */	li r6, -1
/* 805F033C  81 9D 05 E0 */	lwz r12, 0x5e0(r29)
/* 805F0340  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 805F0344  7D 89 03 A6 */	mtctr r12
/* 805F0348  4E 80 04 21 */	bctrl 
/* 805F034C  48 00 00 74 */	b lbl_805F03C0
lbl_805F0350:
/* 805F0350  80 1D 06 A4 */	lwz r0, 0x6a4(r29)
/* 805F0354  2C 00 00 14 */	cmpwi r0, 0x14
/* 805F0358  40 82 00 34 */	bne lbl_805F038C
/* 805F035C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070473@ha */
/* 805F0360  38 03 04 73 */	addi r0, r3, 0x0473 /* 0x00070473@l */
/* 805F0364  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F0368  38 7D 05 E0 */	addi r3, r29, 0x5e0
/* 805F036C  38 81 00 24 */	addi r4, r1, 0x24
/* 805F0370  38 A0 00 00 */	li r5, 0
/* 805F0374  38 C0 FF FF */	li r6, -1
/* 805F0378  81 9D 05 E0 */	lwz r12, 0x5e0(r29)
/* 805F037C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 805F0380  7D 89 03 A6 */	mtctr r12
/* 805F0384  4E 80 04 21 */	bctrl 
/* 805F0388  48 00 00 38 */	b lbl_805F03C0
lbl_805F038C:
/* 805F038C  2C 00 00 1E */	cmpwi r0, 0x1e
/* 805F0390  40 82 00 30 */	bne lbl_805F03C0
/* 805F0394  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070477@ha */
/* 805F0398  38 03 04 77 */	addi r0, r3, 0x0477 /* 0x00070477@l */
/* 805F039C  90 01 00 20 */	stw r0, 0x20(r1)
/* 805F03A0  38 7D 05 E0 */	addi r3, r29, 0x5e0
/* 805F03A4  38 81 00 20 */	addi r4, r1, 0x20
/* 805F03A8  38 A0 00 00 */	li r5, 0
/* 805F03AC  38 C0 FF FF */	li r6, -1
/* 805F03B0  81 9D 05 E0 */	lwz r12, 0x5e0(r29)
/* 805F03B4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 805F03B8  7D 89 03 A6 */	mtctr r12
/* 805F03BC  4E 80 04 21 */	bctrl 
lbl_805F03C0:
/* 805F03C0  2C 1E 00 00 */	cmpwi r30, 0
/* 805F03C4  41 80 01 60 */	blt lbl_805F0524
/* 805F03C8  38 61 00 58 */	addi r3, r1, 0x58
/* 805F03CC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805F03D0  1C BE 00 28 */	mulli r5, r30, 0x28
/* 805F03D4  3B C5 1B 04 */	addi r30, r5, 0x1b04
/* 805F03D8  7F DD F2 14 */	add r30, r29, r30
/* 805F03DC  7F C5 F3 78 */	mr r5, r30
/* 805F03E0  4B C7 67 55 */	bl __mi__4cXyzCFRC3Vec
/* 805F03E4  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 805F03E8  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 805F03EC  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 805F03F0  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 805F03F4  C0 41 00 60 */	lfs f2, 0x60(r1)
/* 805F03F8  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 805F03FC  4B C7 72 79 */	bl cM_atan2s__Fff
/* 805F0400  B0 61 00 52 */	sth r3, 0x52(r1)
/* 805F0404  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 805F0408  EC 20 00 32 */	fmuls f1, f0, f0
/* 805F040C  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 805F0410  EC 00 00 32 */	fmuls f0, f0, f0
/* 805F0414  EC 41 00 2A */	fadds f2, f1, f0
/* 805F0418  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 805F041C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805F0420  40 81 00 0C */	ble lbl_805F042C
/* 805F0424  FC 00 10 34 */	frsqrte f0, f2
/* 805F0428  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_805F042C:
/* 805F042C  C0 21 00 68 */	lfs f1, 0x68(r1)
/* 805F0430  4B C7 72 45 */	bl cM_atan2s__Fff
/* 805F0434  B0 61 00 50 */	sth r3, 0x50(r1)
/* 805F0438  38 80 00 00 */	li r4, 0
/* 805F043C  B0 81 00 54 */	sth r4, 0x54(r1)
/* 805F0440  3C 60 80 5F */	lis r3, l_HIO@ha /* 0x805F47DC@ha */
/* 805F0444  39 63 47 DC */	addi r11, r3, l_HIO@l /* 0x805F47DC@l */
/* 805F0448  A8 0B 00 28 */	lha r0, 0x28(r11)
/* 805F044C  98 01 00 4C */	stb r0, 0x4c(r1)
/* 805F0450  A8 0B 00 2A */	lha r0, 0x2a(r11)
/* 805F0454  98 01 00 4D */	stb r0, 0x4d(r1)
/* 805F0458  A8 0B 00 2C */	lha r0, 0x2c(r11)
/* 805F045C  98 01 00 4E */	stb r0, 0x4e(r1)
/* 805F0460  38 60 00 FF */	li r3, 0xff
/* 805F0464  98 61 00 4F */	stb r3, 0x4f(r1)
/* 805F0468  A8 0B 00 2E */	lha r0, 0x2e(r11)
/* 805F046C  98 01 00 48 */	stb r0, 0x48(r1)
/* 805F0470  A8 0B 00 30 */	lha r0, 0x30(r11)
/* 805F0474  98 01 00 49 */	stb r0, 0x49(r1)
/* 805F0478  A8 0B 00 32 */	lha r0, 0x32(r11)
/* 805F047C  98 01 00 4A */	stb r0, 0x4a(r1)
/* 805F0480  98 61 00 4B */	stb r3, 0x4b(r1)
/* 805F0484  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805F0488  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805F048C  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 805F0490  90 81 00 08 */	stw r4, 8(r1)
/* 805F0494  38 00 FF FF */	li r0, -1
/* 805F0498  90 01 00 0C */	stw r0, 0xc(r1)
/* 805F049C  38 01 00 4C */	addi r0, r1, 0x4c
/* 805F04A0  90 01 00 10 */	stw r0, 0x10(r1)
/* 805F04A4  38 01 00 48 */	addi r0, r1, 0x48
/* 805F04A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F04AC  90 81 00 18 */	stw r4, 0x18(r1)
/* 805F04B0  38 80 00 00 */	li r4, 0
/* 805F04B4  3C A0 00 01 */	lis r5, 0x0001 /* 0x000081EF@ha */
/* 805F04B8  38 A5 81 EF */	addi r5, r5, 0x81EF /* 0x000081EF@l */
/* 805F04BC  7F C6 F3 78 */	mr r6, r30
/* 805F04C0  38 FD 01 0C */	addi r7, r29, 0x10c
/* 805F04C4  39 01 00 50 */	addi r8, r1, 0x50
/* 805F04C8  39 20 00 00 */	li r9, 0
/* 805F04CC  A8 0B 00 34 */	lha r0, 0x34(r11)
/* 805F04D0  54 0A 06 3E */	clrlwi r10, r0, 0x18
/* 805F04D4  C0 2B 00 38 */	lfs f1, 0x38(r11)
/* 805F04D8  4B A5 C5 B9 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805F04DC  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 805F04E0  38 80 00 00 */	li r4, 0
/* 805F04E4  90 81 00 08 */	stw r4, 8(r1)
/* 805F04E8  38 00 FF FF */	li r0, -1
/* 805F04EC  90 01 00 0C */	stw r0, 0xc(r1)
/* 805F04F0  90 81 00 10 */	stw r4, 0x10(r1)
/* 805F04F4  90 81 00 14 */	stw r4, 0x14(r1)
/* 805F04F8  90 81 00 18 */	stw r4, 0x18(r1)
/* 805F04FC  38 80 00 00 */	li r4, 0
/* 805F0500  3C A0 00 01 */	lis r5, 0x0001 /* 0x000081EE@ha */
/* 805F0504  38 A5 81 EE */	addi r5, r5, 0x81EE /* 0x000081EE@l */
/* 805F0508  7F C6 F3 78 */	mr r6, r30
/* 805F050C  38 E0 00 00 */	li r7, 0
/* 805F0510  39 01 00 50 */	addi r8, r1, 0x50
/* 805F0514  39 20 00 00 */	li r9, 0
/* 805F0518  39 40 00 FF */	li r10, 0xff
/* 805F051C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805F0520  4B A5 C5 71 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_805F0524:
/* 805F0524  39 61 00 80 */	addi r11, r1, 0x80
/* 805F0528  4B D7 1C FD */	bl _restgpr_28
/* 805F052C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 805F0530  7C 08 03 A6 */	mtlr r0
/* 805F0534  38 21 00 80 */	addi r1, r1, 0x80
/* 805F0538  4E 80 00 20 */	blr 

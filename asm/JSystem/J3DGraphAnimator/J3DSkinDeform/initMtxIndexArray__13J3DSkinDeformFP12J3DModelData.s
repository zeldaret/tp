lbl_8032CF44:
/* 8032CF44  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8032CF48  7C 08 02 A6 */	mflr r0
/* 8032CF4C  90 01 00 74 */	stw r0, 0x74(r1)
/* 8032CF50  39 61 00 70 */	addi r11, r1, 0x70
/* 8032CF54  48 03 52 4D */	bl __save_gpr
/* 8032CF58  7C 6F 1B 78 */	mr r15, r3
/* 8032CF5C  7C 90 23 78 */	mr r16, r4
/* 8032CF60  80 03 00 04 */	lwz r0, 4(r3)
/* 8032CF64  28 00 00 00 */	cmplwi r0, 0
/* 8032CF68  41 82 00 18 */	beq lbl_8032CF80
/* 8032CF6C  80 0F 00 08 */	lwz r0, 8(r15)
/* 8032CF70  28 00 00 00 */	cmplwi r0, 0
/* 8032CF74  41 82 00 0C */	beq lbl_8032CF80
/* 8032CF78  38 60 00 00 */	li r3, 0
/* 8032CF7C  48 00 03 E4 */	b lbl_8032D360
lbl_8032CF80:
/* 8032CF80  80 10 00 88 */	lwz r0, 0x88(r16)
/* 8032CF84  54 03 08 3C */	slwi r3, r0, 1
/* 8032CF88  4B FA 1D 3D */	bl __nwa__FUl
/* 8032CF8C  90 6F 00 04 */	stw r3, 4(r15)
/* 8032CF90  80 0F 00 04 */	lwz r0, 4(r15)
/* 8032CF94  28 00 00 00 */	cmplwi r0, 0
/* 8032CF98  40 82 00 0C */	bne lbl_8032CFA4
/* 8032CF9C  38 60 00 04 */	li r3, 4
/* 8032CFA0  48 00 03 C0 */	b lbl_8032D360
lbl_8032CFA4:
/* 8032CFA4  38 C0 00 00 */	li r6, 0
/* 8032CFA8  38 60 00 00 */	li r3, 0
/* 8032CFAC  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 8032CFB0  38 A4 FF FF */	addi r5, r4, 0xFFFF /* 0x0000FFFF@l */
/* 8032CFB4  48 00 00 14 */	b lbl_8032CFC8
lbl_8032CFB8:
/* 8032CFB8  80 8F 00 04 */	lwz r4, 4(r15)
/* 8032CFBC  7C A4 1B 2E */	sthx r5, r4, r3
/* 8032CFC0  38 C6 00 01 */	addi r6, r6, 1
/* 8032CFC4  38 63 00 02 */	addi r3, r3, 2
lbl_8032CFC8:
/* 8032CFC8  80 10 00 88 */	lwz r0, 0x88(r16)
/* 8032CFCC  7C 06 00 40 */	cmplw r6, r0
/* 8032CFD0  41 80 FF E8 */	blt lbl_8032CFB8
/* 8032CFD4  80 10 00 8C */	lwz r0, 0x8c(r16)
/* 8032CFD8  28 00 00 00 */	cmplwi r0, 0
/* 8032CFDC  41 82 00 54 */	beq lbl_8032D030
/* 8032CFE0  54 03 08 3C */	slwi r3, r0, 1
/* 8032CFE4  4B FA 1C E1 */	bl __nwa__FUl
/* 8032CFE8  90 6F 00 08 */	stw r3, 8(r15)
/* 8032CFEC  80 0F 00 08 */	lwz r0, 8(r15)
/* 8032CFF0  28 00 00 00 */	cmplwi r0, 0
/* 8032CFF4  40 82 00 0C */	bne lbl_8032D000
/* 8032CFF8  38 60 00 04 */	li r3, 4
/* 8032CFFC  48 00 03 64 */	b lbl_8032D360
lbl_8032D000:
/* 8032D000  38 C0 00 00 */	li r6, 0
/* 8032D004  38 60 00 00 */	li r3, 0
/* 8032D008  38 A0 00 00 */	li r5, 0
/* 8032D00C  48 00 00 14 */	b lbl_8032D020
lbl_8032D010:
/* 8032D010  80 8F 00 08 */	lwz r4, 8(r15)
/* 8032D014  7C A4 1B 2E */	sthx r5, r4, r3
/* 8032D018  38 C6 00 01 */	addi r6, r6, 1
/* 8032D01C  38 63 00 02 */	addi r3, r3, 2
lbl_8032D020:
/* 8032D020  80 10 00 8C */	lwz r0, 0x8c(r16)
/* 8032D024  7C 06 00 40 */	cmplw r6, r0
/* 8032D028  41 80 FF E8 */	blt lbl_8032D010
/* 8032D02C  48 00 00 0C */	b lbl_8032D038
lbl_8032D030:
/* 8032D030  38 00 00 00 */	li r0, 0
/* 8032D034  90 0F 00 08 */	stw r0, 8(r15)
lbl_8032D038:
/* 8032D038  A0 10 00 2C */	lhz r0, 0x2c(r16)
/* 8032D03C  1C 60 00 30 */	mulli r3, r0, 0x30
/* 8032D040  4B FA 1C 85 */	bl __nwa__FUl
/* 8032D044  90 6F 00 0C */	stw r3, 0xc(r15)
/* 8032D048  A0 10 00 44 */	lhz r0, 0x44(r16)
/* 8032D04C  1C 60 00 24 */	mulli r3, r0, 0x24
/* 8032D050  38 80 00 20 */	li r4, 0x20
/* 8032D054  4B FA 1C 99 */	bl __nwa__FUli
/* 8032D058  90 6F 00 10 */	stw r3, 0x10(r15)
/* 8032D05C  80 0F 00 0C */	lwz r0, 0xc(r15)
/* 8032D060  28 00 00 00 */	cmplwi r0, 0
/* 8032D064  40 82 00 0C */	bne lbl_8032D070
/* 8032D068  38 60 00 04 */	li r3, 4
/* 8032D06C  48 00 02 F4 */	b lbl_8032D360
lbl_8032D070:
/* 8032D070  80 0F 00 10 */	lwz r0, 0x10(r15)
/* 8032D074  28 00 00 00 */	cmplwi r0, 0
/* 8032D078  40 82 00 0C */	bne lbl_8032D084
/* 8032D07C  38 60 00 04 */	li r3, 4
/* 8032D080  48 00 02 E0 */	b lbl_8032D360
lbl_8032D084:
/* 8032D084  3B 60 00 00 */	li r27, 0
/* 8032D088  3C 60 80 3A */	lis r3, lit_1142@ha /* 0x803A2008@ha */
/* 8032D08C  3B E3 20 08 */	addi r31, r3, lit_1142@l /* 0x803A2008@l */
/* 8032D090  48 00 02 7C */	b lbl_8032D30C
lbl_8032D094:
/* 8032D094  80 7F 00 00 */	lwz r3, 0(r31)
/* 8032D098  80 1F 00 04 */	lwz r0, 4(r31)
/* 8032D09C  90 61 00 08 */	stw r3, 8(r1)
/* 8032D0A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8032D0A4  80 7F 00 08 */	lwz r3, 8(r31)
/* 8032D0A8  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8032D0AC  90 61 00 10 */	stw r3, 0x10(r1)
/* 8032D0B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032D0B4  3B 40 FF FF */	li r26, -1
/* 8032D0B8  3B 20 FF FF */	li r25, -1
/* 8032D0BC  3B 00 FF FF */	li r24, -1
/* 8032D0C0  3A E0 00 00 */	li r23, 0
/* 8032D0C4  80 70 00 80 */	lwz r3, 0x80(r16)
/* 8032D0C8  57 7D 13 BA */	rlwinm r29, r27, 2, 0xe, 0x1d
/* 8032D0CC  7C 63 E8 2E */	lwzx r3, r3, r29
/* 8032D0D0  80 83 00 30 */	lwz r4, 0x30(r3)
/* 8032D0D4  48 00 00 C8 */	b lbl_8032D19C
lbl_8032D0D8:
/* 8032D0D8  2C 00 00 0A */	cmpwi r0, 0xa
/* 8032D0DC  41 82 00 5C */	beq lbl_8032D138
/* 8032D0E0  40 80 00 1C */	bge lbl_8032D0FC
/* 8032D0E4  2C 00 00 00 */	cmpwi r0, 0
/* 8032D0E8  41 82 00 20 */	beq lbl_8032D108
/* 8032D0EC  41 80 00 98 */	blt lbl_8032D184
/* 8032D0F0  2C 00 00 09 */	cmpwi r0, 9
/* 8032D0F4  40 80 00 1C */	bge lbl_8032D110
/* 8032D0F8  48 00 00 8C */	b lbl_8032D184
lbl_8032D0FC:
/* 8032D0FC  2C 00 00 0D */	cmpwi r0, 0xd
/* 8032D100  41 82 00 60 */	beq lbl_8032D160
/* 8032D104  48 00 00 80 */	b lbl_8032D184
lbl_8032D108:
/* 8032D108  7E FA BB 78 */	mr r26, r23
/* 8032D10C  48 00 00 78 */	b lbl_8032D184
lbl_8032D110:
/* 8032D110  7E F9 BB 78 */	mr r25, r23
/* 8032D114  80 04 00 04 */	lwz r0, 4(r4)
/* 8032D118  2C 00 00 03 */	cmpwi r0, 3
/* 8032D11C  41 82 00 68 */	beq lbl_8032D184
/* 8032D120  3C 60 80 3A */	lis r3, J3DSkinDeform__stringBase0@ha /* 0x803A2028@ha */
/* 8032D124  38 63 20 28 */	addi r3, r3, J3DSkinDeform__stringBase0@l /* 0x803A2028@l */
/* 8032D128  4C C6 31 82 */	crclr 6
/* 8032D12C  4B CD 99 91 */	bl OSReport
/* 8032D130  38 60 00 06 */	li r3, 6
/* 8032D134  48 00 02 2C */	b lbl_8032D360
lbl_8032D138:
/* 8032D138  7E F8 BB 78 */	mr r24, r23
/* 8032D13C  80 04 00 04 */	lwz r0, 4(r4)
/* 8032D140  2C 00 00 03 */	cmpwi r0, 3
/* 8032D144  41 82 00 40 */	beq lbl_8032D184
/* 8032D148  3C 60 80 3A */	lis r3, J3DSkinDeform__stringBase0@ha /* 0x803A2028@ha */
/* 8032D14C  38 63 20 28 */	addi r3, r3, J3DSkinDeform__stringBase0@l /* 0x803A2028@l */
/* 8032D150  4C C6 31 82 */	crclr 6
/* 8032D154  4B CD 99 69 */	bl OSReport
/* 8032D158  38 60 00 06 */	li r3, 6
/* 8032D15C  48 00 02 04 */	b lbl_8032D360
lbl_8032D160:
/* 8032D160  80 04 00 04 */	lwz r0, 4(r4)
/* 8032D164  2C 00 00 03 */	cmpwi r0, 3
/* 8032D168  41 82 00 1C */	beq lbl_8032D184
/* 8032D16C  3C 60 80 3A */	lis r3, J3DSkinDeform__stringBase0@ha /* 0x803A2028@ha */
/* 8032D170  38 63 20 28 */	addi r3, r3, J3DSkinDeform__stringBase0@l /* 0x803A2028@l */
/* 8032D174  4C C6 31 82 */	crclr 6
/* 8032D178  4B CD 99 45 */	bl OSReport
/* 8032D17C  38 60 00 06 */	li r3, 6
/* 8032D180  48 00 01 E0 */	b lbl_8032D360
lbl_8032D184:
/* 8032D184  80 04 00 04 */	lwz r0, 4(r4)
/* 8032D188  54 00 10 3A */	slwi r0, r0, 2
/* 8032D18C  38 61 00 08 */	addi r3, r1, 8
/* 8032D190  7C 03 00 2E */	lwzx r0, r3, r0
/* 8032D194  7E F7 02 14 */	add r23, r23, r0
/* 8032D198  38 84 00 08 */	addi r4, r4, 8
lbl_8032D19C:
/* 8032D19C  80 04 00 00 */	lwz r0, 0(r4)
/* 8032D1A0  2C 00 00 FF */	cmpwi r0, 0xff
/* 8032D1A4  40 82 FF 34 */	bne lbl_8032D0D8
/* 8032D1A8  3A C0 00 00 */	li r22, 0
/* 8032D1AC  48 00 01 44 */	b lbl_8032D2F0
lbl_8032D1B0:
/* 8032D1B0  80 64 00 38 */	lwz r3, 0x38(r4)
/* 8032D1B4  56 DC 13 BA */	rlwinm r28, r22, 2, 0xe, 0x1d
/* 8032D1B8  7C 03 E0 2E */	lwzx r0, r3, r28
/* 8032D1BC  90 01 00 18 */	stw r0, 0x18(r1)
/* 8032D1C0  80 64 00 3C */	lwz r3, 0x3c(r4)
/* 8032D1C4  7C 63 E0 2E */	lwzx r3, r3, r28
/* 8032D1C8  83 C3 00 08 */	lwz r30, 8(r3)
/* 8032D1CC  7F D5 F3 78 */	mr r21, r30
/* 8032D1D0  48 00 00 D0 */	b lbl_8032D2A0
lbl_8032D1D4:
/* 8032D1D4  88 15 00 00 */	lbz r0, 0(r21)
/* 8032D1D8  28 00 00 A0 */	cmplwi r0, 0xa0
/* 8032D1DC  41 82 00 0C */	beq lbl_8032D1E8
/* 8032D1E0  28 00 00 98 */	cmplwi r0, 0x98
/* 8032D1E4  40 82 00 DC */	bne lbl_8032D2C0
lbl_8032D1E8:
/* 8032D1E8  A2 95 00 01 */	lhz r20, 1(r21)
/* 8032D1EC  3A 60 00 00 */	li r19, 0
/* 8032D1F0  48 00 00 9C */	b lbl_8032D28C
lbl_8032D1F4:
/* 8032D1F4  7C 17 99 D6 */	mullw r0, r23, r19
/* 8032D1F8  7C 95 02 14 */	add r4, r21, r0
/* 8032D1FC  38 84 00 03 */	addi r4, r4, 3
/* 8032D200  7C 64 D0 AE */	lbzx r3, r4, r26
/* 8032D204  38 00 00 03 */	li r0, 3
/* 8032D208  7C 03 03 96 */	divwu r0, r3, r0
/* 8032D20C  54 12 06 3E */	clrlwi r18, r0, 0x18
/* 8032D210  7D C4 CA 2E */	lhzx r14, r4, r25
/* 8032D214  7E 24 C2 2E */	lhzx r17, r4, r24
/* 8032D218  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8032D21C  7E 44 93 78 */	mr r4, r18
/* 8032D220  81 83 00 00 */	lwz r12, 0(r3)
/* 8032D224  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8032D228  7D 89 03 A6 */	mtctr r12
/* 8032D22C  4E 80 04 21 */	bctrl 
/* 8032D230  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8032D234  28 00 FF FF */	cmplwi r0, 0xffff
/* 8032D238  40 82 00 18 */	bne lbl_8032D250
/* 8032D23C  56 40 0D FC */	rlwinm r0, r18, 1, 0x17, 0x1e
/* 8032D240  3C 60 80 44 */	lis r3, sWorkArea_MtxReg__13J3DSkinDeform@ha /* 0x80439218@ha */
/* 8032D244  38 63 92 18 */	addi r3, r3, sWorkArea_MtxReg__13J3DSkinDeform@l /* 0x80439218@l */
/* 8032D248  7C 63 02 2E */	lhzx r3, r3, r0
/* 8032D24C  48 00 00 1C */	b lbl_8032D268
lbl_8032D250:
/* 8032D250  2C 1A FF FF */	cmpwi r26, -1
/* 8032D254  41 82 00 14 */	beq lbl_8032D268
/* 8032D258  56 40 0D FC */	rlwinm r0, r18, 1, 0x17, 0x1e
/* 8032D25C  3C 80 80 44 */	lis r4, sWorkArea_MtxReg__13J3DSkinDeform@ha /* 0x80439218@ha */
/* 8032D260  38 84 92 18 */	addi r4, r4, sWorkArea_MtxReg__13J3DSkinDeform@l /* 0x80439218@l */
/* 8032D264  7C 64 03 2E */	sthx r3, r4, r0
lbl_8032D268:
/* 8032D268  80 8F 00 04 */	lwz r4, 4(r15)
/* 8032D26C  55 C0 0B FC */	rlwinm r0, r14, 1, 0xf, 0x1e
/* 8032D270  7C 64 03 2E */	sthx r3, r4, r0
/* 8032D274  2C 18 FF FF */	cmpwi r24, -1
/* 8032D278  41 82 00 10 */	beq lbl_8032D288
/* 8032D27C  80 8F 00 08 */	lwz r4, 8(r15)
/* 8032D280  56 20 0B FC */	rlwinm r0, r17, 1, 0xf, 0x1e
/* 8032D284  7C 64 03 2E */	sthx r3, r4, r0
lbl_8032D288:
/* 8032D288  3A 73 00 01 */	addi r19, r19, 1
lbl_8032D28C:
/* 8032D28C  7C 13 A0 00 */	cmpw r19, r20
/* 8032D290  41 80 FF 64 */	blt lbl_8032D1F4
/* 8032D294  7C 17 A1 D6 */	mullw r0, r23, r20
/* 8032D298  7E B5 02 14 */	add r21, r21, r0
/* 8032D29C  3A B5 00 03 */	addi r21, r21, 3
lbl_8032D2A0:
/* 8032D2A0  80 90 00 80 */	lwz r4, 0x80(r16)
/* 8032D2A4  7C 7D 20 2E */	lwzx r3, r29, r4
/* 8032D2A8  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 8032D2AC  7C 7C 00 2E */	lwzx r3, r28, r0
/* 8032D2B0  80 63 00 04 */	lwz r3, 4(r3)
/* 8032D2B4  7C 1E A8 50 */	subf r0, r30, r21
/* 8032D2B8  7C 00 18 40 */	cmplw r0, r3
/* 8032D2BC  41 80 FF 18 */	blt lbl_8032D1D4
lbl_8032D2C0:
/* 8032D2C0  2C 18 FF FF */	cmpwi r24, -1
/* 8032D2C4  40 82 00 28 */	bne lbl_8032D2EC
/* 8032D2C8  7C 7D 20 2E */	lwzx r3, r29, r4
/* 8032D2CC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8032D2D0  60 00 01 00 */	ori r0, r0, 0x100
/* 8032D2D4  90 03 00 0C */	stw r0, 0xc(r3)
/* 8032D2D8  80 10 00 80 */	lwz r0, 0x80(r16)
/* 8032D2DC  7C 7D 00 2E */	lwzx r3, r29, r0
/* 8032D2E0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8032D2E4  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 8032D2E8  90 03 00 0C */	stw r0, 0xc(r3)
lbl_8032D2EC:
/* 8032D2EC  3A D6 00 01 */	addi r22, r22, 1
lbl_8032D2F0:
/* 8032D2F0  80 10 00 80 */	lwz r0, 0x80(r16)
/* 8032D2F4  7C 9D 00 2E */	lwzx r4, r29, r0
/* 8032D2F8  A0 64 00 0A */	lhz r3, 0xa(r4)
/* 8032D2FC  56 C0 04 3E */	clrlwi r0, r22, 0x10
/* 8032D300  7C 00 18 40 */	cmplw r0, r3
/* 8032D304  41 80 FE AC */	blt lbl_8032D1B0
/* 8032D308  3B 7B 00 01 */	addi r27, r27, 1
lbl_8032D30C:
/* 8032D30C  57 63 04 3E */	clrlwi r3, r27, 0x10
/* 8032D310  A0 10 00 7C */	lhz r0, 0x7c(r16)
/* 8032D314  7C 03 00 40 */	cmplw r3, r0
/* 8032D318  41 80 FD 7C */	blt lbl_8032D094
/* 8032D31C  38 C0 00 00 */	li r6, 0
/* 8032D320  38 60 00 00 */	li r3, 0
/* 8032D324  38 A0 00 00 */	li r5, 0
/* 8032D328  48 00 00 28 */	b lbl_8032D350
lbl_8032D32C:
/* 8032D32C  80 8F 00 04 */	lwz r4, 4(r15)
/* 8032D330  7C 04 1A 2E */	lhzx r0, r4, r3
/* 8032D334  28 00 FF FF */	cmplwi r0, 0xffff
/* 8032D338  40 82 00 10 */	bne lbl_8032D348
/* 8032D33C  98 AF 00 18 */	stb r5, 0x18(r15)
/* 8032D340  80 8F 00 04 */	lwz r4, 4(r15)
/* 8032D344  7C A4 1B 2E */	sthx r5, r4, r3
lbl_8032D348:
/* 8032D348  38 C6 00 01 */	addi r6, r6, 1
/* 8032D34C  38 63 00 02 */	addi r3, r3, 2
lbl_8032D350:
/* 8032D350  80 10 00 88 */	lwz r0, 0x88(r16)
/* 8032D354  7C 06 00 40 */	cmplw r6, r0
/* 8032D358  41 80 FF D4 */	blt lbl_8032D32C
/* 8032D35C  38 60 00 00 */	li r3, 0
lbl_8032D360:
/* 8032D360  39 61 00 70 */	addi r11, r1, 0x70
/* 8032D364  48 03 4E 89 */	bl __restore_gpr
/* 8032D368  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8032D36C  7C 08 03 A6 */	mtlr r0
/* 8032D370  38 21 00 70 */	addi r1, r1, 0x70
/* 8032D374  4E 80 00 20 */	blr 

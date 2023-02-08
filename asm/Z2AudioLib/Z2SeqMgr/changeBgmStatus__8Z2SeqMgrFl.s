lbl_802AFF8C:
/* 802AFF8C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 802AFF90  7C 08 02 A6 */	mflr r0
/* 802AFF94  90 01 00 84 */	stw r0, 0x84(r1)
/* 802AFF98  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 802AFF9C  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 802AFFA0  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 802AFFA4  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 802AFFA8  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 802AFFAC  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 802AFFB0  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 802AFFB4  F3 81 00 48 */	psq_st f28, 72(r1), 0, 0 /* qr0 */
/* 802AFFB8  39 61 00 40 */	addi r11, r1, 0x40
/* 802AFFBC  48 0B 22 21 */	bl _savegpr_29
/* 802AFFC0  7C 7D 1B 78 */	mr r29, r3
/* 802AFFC4  7C 9E 23 78 */	mr r30, r4
/* 802AFFC8  80 63 00 00 */	lwz r3, 0(r3)
/* 802AFFCC  28 03 00 00 */	cmplwi r3, 0
/* 802AFFD0  41 82 1D EC */	beq lbl_802B1DBC
/* 802AFFD4  3B E0 00 00 */	li r31, 0
/* 802AFFD8  41 82 00 10 */	beq lbl_802AFFE8
/* 802AFFDC  80 83 00 18 */	lwz r4, 0x18(r3)
/* 802AFFE0  90 81 00 0C */	stw r4, 0xc(r1)
/* 802AFFE4  48 00 00 08 */	b lbl_802AFFEC
lbl_802AFFE8:
/* 802AFFE8  38 80 FF FF */	li r4, -1
lbl_802AFFEC:
/* 802AFFEC  3C 60 01 00 */	lis r3, 0x0100 /* 0x0100003E@ha */
/* 802AFFF0  38 03 00 3E */	addi r0, r3, 0x003E /* 0x0100003E@l */
/* 802AFFF4  7C 04 00 00 */	cmpw r4, r0
/* 802AFFF8  41 82 13 D8 */	beq lbl_802B13D0
/* 802AFFFC  40 80 00 94 */	bge lbl_802B0090
/* 802B0000  38 03 00 19 */	addi r0, r3, 0x19
/* 802B0004  7C 04 00 00 */	cmpw r4, r0
/* 802B0008  41 82 1B D4 */	beq lbl_802B1BDC
/* 802B000C  40 80 00 44 */	bge lbl_802B0050
/* 802B0010  38 03 00 09 */	addi r0, r3, 9
/* 802B0014  7C 04 00 00 */	cmpw r4, r0
/* 802B0018  41 82 03 10 */	beq lbl_802B0328
/* 802B001C  40 80 00 24 */	bge lbl_802B0040
/* 802B0020  38 03 00 05 */	addi r0, r3, 5
/* 802B0024  7C 04 00 00 */	cmpw r4, r0
/* 802B0028  41 82 00 F8 */	beq lbl_802B0120
/* 802B002C  40 80 1D 74 */	bge lbl_802B1DA0
/* 802B0030  38 03 00 04 */	addi r0, r3, 4
/* 802B0034  7C 04 00 00 */	cmpw r4, r0
/* 802B0038  40 80 02 8C */	bge lbl_802B02C4
/* 802B003C  48 00 1D 64 */	b lbl_802B1DA0
lbl_802B0040:
/* 802B0040  38 03 00 18 */	addi r0, r3, 0x18
/* 802B0044  7C 04 00 00 */	cmpw r4, r0
/* 802B0048  40 80 04 00 */	bge lbl_802B0448
/* 802B004C  48 00 1D 54 */	b lbl_802B1DA0
lbl_802B0050:
/* 802B0050  38 03 00 38 */	addi r0, r3, 0x38
/* 802B0054  7C 04 00 00 */	cmpw r4, r0
/* 802B0058  41 82 11 18 */	beq lbl_802B1170
/* 802B005C  40 80 00 24 */	bge lbl_802B0080
/* 802B0060  38 03 00 23 */	addi r0, r3, 0x23
/* 802B0064  7C 04 00 00 */	cmpw r4, r0
/* 802B0068  41 82 1B 74 */	beq lbl_802B1BDC
/* 802B006C  41 80 1D 34 */	blt lbl_802B1DA0
/* 802B0070  38 03 00 37 */	addi r0, r3, 0x37
/* 802B0074  7C 04 00 00 */	cmpw r4, r0
/* 802B0078  40 80 04 38 */	bge lbl_802B04B0
/* 802B007C  48 00 1D 24 */	b lbl_802B1DA0
lbl_802B0080:
/* 802B0080  38 03 00 3B */	addi r0, r3, 0x3b
/* 802B0084  7C 04 00 00 */	cmpw r4, r0
/* 802B0088  41 82 06 5C */	beq lbl_802B06E4
/* 802B008C  48 00 1D 14 */	b lbl_802B1DA0
lbl_802B0090:
/* 802B0090  38 03 00 4E */	addi r0, r3, 0x4e
/* 802B0094  7C 04 00 00 */	cmpw r4, r0
/* 802B0098  41 82 10 0C */	beq lbl_802B10A4
/* 802B009C  40 80 00 44 */	bge lbl_802B00E0
/* 802B00A0  38 03 00 48 */	addi r0, r3, 0x48
/* 802B00A4  7C 04 00 00 */	cmpw r4, r0
/* 802B00A8  41 82 0F 74 */	beq lbl_802B101C
/* 802B00AC  40 80 00 24 */	bge lbl_802B00D0
/* 802B00B0  38 03 00 41 */	addi r0, r3, 0x41
/* 802B00B4  7C 04 00 00 */	cmpw r4, r0
/* 802B00B8  41 82 0E 10 */	beq lbl_802B0EC8
/* 802B00BC  40 80 1C E4 */	bge lbl_802B1DA0
/* 802B00C0  38 03 00 40 */	addi r0, r3, 0x40
/* 802B00C4  7C 04 00 00 */	cmpw r4, r0
/* 802B00C8  40 80 1C D8 */	bge lbl_802B1DA0
/* 802B00CC  48 00 16 E4 */	b lbl_802B17B0
lbl_802B00D0:
/* 802B00D0  38 03 00 4D */	addi r0, r3, 0x4d
/* 802B00D4  7C 04 00 00 */	cmpw r4, r0
/* 802B00D8  40 80 12 08 */	bge lbl_802B12E0
/* 802B00DC  48 00 1C C4 */	b lbl_802B1DA0
lbl_802B00E0:
/* 802B00E0  38 03 00 62 */	addi r0, r3, 0x62
/* 802B00E4  7C 04 00 00 */	cmpw r4, r0
/* 802B00E8  41 82 15 A4 */	beq lbl_802B168C
/* 802B00EC  40 80 00 14 */	bge lbl_802B0100
/* 802B00F0  38 03 00 60 */	addi r0, r3, 0x60
/* 802B00F4  7C 04 00 00 */	cmpw r4, r0
/* 802B00F8  41 82 16 18 */	beq lbl_802B1710
/* 802B00FC  48 00 1C A4 */	b lbl_802B1DA0
lbl_802B0100:
/* 802B0100  38 03 00 88 */	addi r0, r3, 0x88
/* 802B0104  7C 04 00 00 */	cmpw r4, r0
/* 802B0108  41 82 1B 9C */	beq lbl_802B1CA4
/* 802B010C  40 80 1C 94 */	bge lbl_802B1DA0
/* 802B0110  38 03 00 87 */	addi r0, r3, 0x87
/* 802B0114  7C 04 00 00 */	cmpw r4, r0
/* 802B0118  40 80 19 0C */	bge lbl_802B1A24
/* 802B011C  48 00 1C 84 */	b lbl_802B1DA0
lbl_802B0120:
/* 802B0120  88 1D 00 BC */	lbz r0, 0xbc(r29)
/* 802B0124  7C 1E 00 00 */	cmpw r30, r0
/* 802B0128  41 82 1C 94 */	beq lbl_802B1DBC
/* 802B012C  28 00 00 FF */	cmplwi r0, 0xff
/* 802B0130  41 82 00 08 */	beq lbl_802B0138
/* 802B0134  3B E0 00 3C */	li r31, 0x3c
lbl_802B0138:
/* 802B0138  2C 1E 00 01 */	cmpwi r30, 1
/* 802B013C  40 82 00 18 */	bne lbl_802B0154
/* 802B0140  C3 A2 BF B0 */	lfs f29, lit_4726(r2)
/* 802B0144  C3 C2 BF 9C */	lfs f30, lit_3373(r2)
/* 802B0148  C3 E2 BF 98 */	lfs f31, lit_3372(r2)
/* 802B014C  3B E0 00 1E */	li r31, 0x1e
/* 802B0150  48 00 00 10 */	b lbl_802B0160
lbl_802B0154:
/* 802B0154  C3 A2 BF 98 */	lfs f29, lit_3372(r2)
/* 802B0158  FF C0 E8 90 */	fmr f30, f29
/* 802B015C  C3 E2 BF 9C */	lfs f31, lit_3373(r2)
lbl_802B0160:
/* 802B0160  7F A3 EB 78 */	mr r3, r29
/* 802B0164  7F A4 EB 78 */	mr r4, r29
/* 802B0168  38 A0 00 00 */	li r5, 0
/* 802B016C  FC 20 E8 90 */	fmr f1, f29
/* 802B0170  7F E6 FB 78 */	mr r6, r31
/* 802B0174  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0178  FC 60 10 90 */	fmr f3, f2
/* 802B017C  48 00 3E 71 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0180  7F A3 EB 78 */	mr r3, r29
/* 802B0184  7F A4 EB 78 */	mr r4, r29
/* 802B0188  38 A0 00 01 */	li r5, 1
/* 802B018C  FC 20 E8 90 */	fmr f1, f29
/* 802B0190  7F E6 FB 78 */	mr r6, r31
/* 802B0194  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0198  FC 60 10 90 */	fmr f3, f2
/* 802B019C  48 00 3E 51 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B01A0  7F A3 EB 78 */	mr r3, r29
/* 802B01A4  7F A4 EB 78 */	mr r4, r29
/* 802B01A8  38 A0 00 02 */	li r5, 2
/* 802B01AC  FC 20 E8 90 */	fmr f1, f29
/* 802B01B0  7F E6 FB 78 */	mr r6, r31
/* 802B01B4  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B01B8  FC 60 10 90 */	fmr f3, f2
/* 802B01BC  48 00 3E 31 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B01C0  7F A3 EB 78 */	mr r3, r29
/* 802B01C4  7F A4 EB 78 */	mr r4, r29
/* 802B01C8  38 A0 00 03 */	li r5, 3
/* 802B01CC  FC 20 E8 90 */	fmr f1, f29
/* 802B01D0  7F E6 FB 78 */	mr r6, r31
/* 802B01D4  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B01D8  FC 60 10 90 */	fmr f3, f2
/* 802B01DC  48 00 3E 11 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B01E0  7F A3 EB 78 */	mr r3, r29
/* 802B01E4  7F A4 EB 78 */	mr r4, r29
/* 802B01E8  38 A0 00 04 */	li r5, 4
/* 802B01EC  FC 20 E8 90 */	fmr f1, f29
/* 802B01F0  7F E6 FB 78 */	mr r6, r31
/* 802B01F4  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B01F8  FC 60 10 90 */	fmr f3, f2
/* 802B01FC  48 00 3D F1 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0200  7F A3 EB 78 */	mr r3, r29
/* 802B0204  7F A4 EB 78 */	mr r4, r29
/* 802B0208  38 A0 00 05 */	li r5, 5
/* 802B020C  FC 20 E8 90 */	fmr f1, f29
/* 802B0210  7F E6 FB 78 */	mr r6, r31
/* 802B0214  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0218  FC 60 10 90 */	fmr f3, f2
/* 802B021C  48 00 3D D1 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0220  7F A3 EB 78 */	mr r3, r29
/* 802B0224  7F A4 EB 78 */	mr r4, r29
/* 802B0228  38 A0 00 06 */	li r5, 6
/* 802B022C  FC 20 E8 90 */	fmr f1, f29
/* 802B0230  7F E6 FB 78 */	mr r6, r31
/* 802B0234  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0238  FC 60 10 90 */	fmr f3, f2
/* 802B023C  48 00 3D B1 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0240  7F A3 EB 78 */	mr r3, r29
/* 802B0244  7F A4 EB 78 */	mr r4, r29
/* 802B0248  38 A0 00 07 */	li r5, 7
/* 802B024C  FC 20 E8 90 */	fmr f1, f29
/* 802B0250  7F E6 FB 78 */	mr r6, r31
/* 802B0254  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0258  FC 60 10 90 */	fmr f3, f2
/* 802B025C  48 00 3D 91 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0260  7F A3 EB 78 */	mr r3, r29
/* 802B0264  7F A4 EB 78 */	mr r4, r29
/* 802B0268  38 A0 00 08 */	li r5, 8
/* 802B026C  FC 20 F0 90 */	fmr f1, f30
/* 802B0270  7F E6 FB 78 */	mr r6, r31
/* 802B0274  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0278  FC 60 10 90 */	fmr f3, f2
/* 802B027C  48 00 3D 71 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0280  7F A3 EB 78 */	mr r3, r29
/* 802B0284  7F A4 EB 78 */	mr r4, r29
/* 802B0288  38 A0 00 09 */	li r5, 9
/* 802B028C  FC 20 F8 90 */	fmr f1, f31
/* 802B0290  7F E6 FB 78 */	mr r6, r31
/* 802B0294  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0298  FC 60 10 90 */	fmr f3, f2
/* 802B029C  48 00 3D 51 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B02A0  7F A3 EB 78 */	mr r3, r29
/* 802B02A4  7F A4 EB 78 */	mr r4, r29
/* 802B02A8  38 A0 00 0A */	li r5, 0xa
/* 802B02AC  FC 20 F8 90 */	fmr f1, f31
/* 802B02B0  7F E6 FB 78 */	mr r6, r31
/* 802B02B4  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B02B8  FC 60 10 90 */	fmr f3, f2
/* 802B02BC  48 00 3D 31 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B02C0  48 00 1A E0 */	b lbl_802B1DA0
lbl_802B02C4:
/* 802B02C4  7F A3 EB 78 */	mr r3, r29
/* 802B02C8  7F A4 EB 78 */	mr r4, r29
/* 802B02CC  38 A0 00 0B */	li r5, 0xb
/* 802B02D0  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B02D4  38 C0 00 00 */	li r6, 0
/* 802B02D8  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B02DC  FC 60 10 90 */	fmr f3, f2
/* 802B02E0  48 00 3D 0D */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B02E4  7F A3 EB 78 */	mr r3, r29
/* 802B02E8  7F A4 EB 78 */	mr r4, r29
/* 802B02EC  38 A0 00 0C */	li r5, 0xc
/* 802B02F0  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B02F4  38 C0 00 00 */	li r6, 0
/* 802B02F8  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B02FC  FC 60 10 90 */	fmr f3, f2
/* 802B0300  48 00 3C ED */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0304  7F A3 EB 78 */	mr r3, r29
/* 802B0308  7F A4 EB 78 */	mr r4, r29
/* 802B030C  38 A0 00 0D */	li r5, 0xd
/* 802B0310  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B0314  38 C0 00 00 */	li r6, 0
/* 802B0318  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B031C  FC 60 10 90 */	fmr f3, f2
/* 802B0320  48 00 3C CD */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0324  48 00 1A 7C */	b lbl_802B1DA0
lbl_802B0328:
/* 802B0328  3B E0 00 00 */	li r31, 0
/* 802B032C  28 1E 00 0C */	cmplwi r30, 0xc
/* 802B0330  41 81 00 9C */	bgt lbl_802B03CC
/* 802B0334  3C 60 80 3D */	lis r3, lit_4739@ha /* 0x803CA308@ha */
/* 802B0338  38 63 A3 08 */	addi r3, r3, lit_4739@l /* 0x803CA308@l */
/* 802B033C  57 C0 10 3A */	slwi r0, r30, 2
/* 802B0340  7C 03 00 2E */	lwzx r0, r3, r0
/* 802B0344  7C 09 03 A6 */	mtctr r0
/* 802B0348  4E 80 04 20 */	bctr 
/* 802B034C  88 0D 82 E0 */	lbz r0, struct_80450860+0x0(r13)
/* 802B0350  28 00 00 00 */	cmplwi r0, 0
/* 802B0354  41 82 00 40 */	beq lbl_802B0394
/* 802B0358  C0 1D 00 44 */	lfs f0, 0x44(r29)
/* 802B035C  90 1D 00 50 */	stw r0, 0x50(r29)
/* 802B0360  C0 62 BF 9C */	lfs f3, lit_3373(r2)
/* 802B0364  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B0368  80 1D 00 50 */	lwz r0, 0x50(r29)
/* 802B036C  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802B0370  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B0374  3C 00 43 30 */	lis r0, 0x4330
/* 802B0378  90 01 00 10 */	stw r0, 0x10(r1)
/* 802B037C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802B0380  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B0384  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B0388  D0 1D 00 48 */	stfs f0, 0x48(r29)
/* 802B038C  D0 7D 00 4C */	stfs f3, 0x4c(r29)
/* 802B0390  48 00 00 1C */	b lbl_802B03AC
lbl_802B0394:
/* 802B0394  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802B0398  D0 1D 00 44 */	stfs f0, 0x44(r29)
/* 802B039C  D0 1D 00 48 */	stfs f0, 0x48(r29)
/* 802B03A0  38 00 00 00 */	li r0, 0
/* 802B03A4  90 1D 00 50 */	stw r0, 0x50(r29)
/* 802B03A8  D0 1D 00 4C */	stfs f0, 0x4c(r29)
lbl_802B03AC:
/* 802B03AC  3B E0 00 01 */	li r31, 1
/* 802B03B0  48 00 00 1C */	b lbl_802B03CC
/* 802B03B4  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802B03B8  38 80 00 01 */	li r4, 1
/* 802B03BC  38 A0 05 DC */	li r5, 0x5dc
/* 802B03C0  38 C0 13 88 */	li r6, 0x1388
/* 802B03C4  38 E0 27 10 */	li r7, 0x2710
/* 802B03C8  48 00 F5 B9 */	bl setForceBattleArea__13Z2SoundObjMgrFbUsUsUs
lbl_802B03CC:
/* 802B03CC  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 802B03D0  40 82 19 D0 */	bne lbl_802B1DA0
/* 802B03D4  88 6D 82 E0 */	lbz r3, struct_80450860+0x0(r13)
/* 802B03D8  C0 62 BF 98 */	lfs f3, lit_3372(r2)
/* 802B03DC  D0 7D 00 34 */	stfs f3, 0x34(r29)
/* 802B03E0  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802B03E4  D0 1D 00 38 */	stfs f0, 0x38(r29)
/* 802B03E8  38 00 00 00 */	li r0, 0
/* 802B03EC  90 1D 00 40 */	stw r0, 0x40(r29)
/* 802B03F0  D0 1D 00 3C */	stfs f0, 0x3c(r29)
/* 802B03F4  28 03 00 00 */	cmplwi r3, 0
/* 802B03F8  41 82 00 3C */	beq lbl_802B0434
/* 802B03FC  C0 1D 00 44 */	lfs f0, 0x44(r29)
/* 802B0400  90 7D 00 50 */	stw r3, 0x50(r29)
/* 802B0404  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B0408  80 1D 00 50 */	lwz r0, 0x50(r29)
/* 802B040C  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802B0410  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B0414  3C 00 43 30 */	lis r0, 0x4330
/* 802B0418  90 01 00 10 */	stw r0, 0x10(r1)
/* 802B041C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802B0420  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B0424  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B0428  D0 1D 00 48 */	stfs f0, 0x48(r29)
/* 802B042C  D0 7D 00 4C */	stfs f3, 0x4c(r29)
/* 802B0430  48 00 19 70 */	b lbl_802B1DA0
lbl_802B0434:
/* 802B0434  D0 7D 00 44 */	stfs f3, 0x44(r29)
/* 802B0438  D0 1D 00 48 */	stfs f0, 0x48(r29)
/* 802B043C  90 1D 00 50 */	stw r0, 0x50(r29)
/* 802B0440  D0 1D 00 4C */	stfs f0, 0x4c(r29)
/* 802B0444  48 00 19 5C */	b lbl_802B1DA0
lbl_802B0448:
/* 802B0448  2C 1E 00 0F */	cmpwi r30, 0xf
/* 802B044C  41 82 00 30 */	beq lbl_802B047C
/* 802B0450  40 80 00 10 */	bge lbl_802B0460
/* 802B0454  2C 1E 00 0E */	cmpwi r30, 0xe
/* 802B0458  40 80 00 10 */	bge lbl_802B0468
/* 802B045C  48 00 00 20 */	b lbl_802B047C
lbl_802B0460:
/* 802B0460  2C 1E 00 12 */	cmpwi r30, 0x12
/* 802B0464  40 80 00 18 */	bge lbl_802B047C
lbl_802B0468:
/* 802B0468  7F A3 EB 78 */	mr r3, r29
/* 802B046C  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000040@ha */
/* 802B0470  38 84 00 40 */	addi r4, r4, 0x0040 /* 0x01000040@l */
/* 802B0474  4B FF F0 29 */	bl subBgmStart__8Z2SeqMgrFUl
/* 802B0478  48 00 19 44 */	b lbl_802B1DBC
lbl_802B047C:
/* 802B047C  80 7D 00 04 */	lwz r3, 4(r29)
/* 802B0480  28 03 00 00 */	cmplwi r3, 0
/* 802B0484  41 82 00 10 */	beq lbl_802B0494
/* 802B0488  80 63 00 18 */	lwz r3, 0x18(r3)
/* 802B048C  90 61 00 08 */	stw r3, 8(r1)
/* 802B0490  48 00 00 08 */	b lbl_802B0498
lbl_802B0494:
/* 802B0494  38 60 FF FF */	li r3, -1
lbl_802B0498:
/* 802B0498  3C 03 FF 00 */	addis r0, r3, 0xff00
/* 802B049C  28 00 00 40 */	cmplwi r0, 0x40
/* 802B04A0  40 82 19 1C */	bne lbl_802B1DBC
/* 802B04A4  7F A3 EB 78 */	mr r3, r29
/* 802B04A8  4B FF F3 DD */	bl subBgmStop__8Z2SeqMgrFv
/* 802B04AC  48 00 19 10 */	b lbl_802B1DBC
lbl_802B04B0:
/* 802B04B0  88 1D 00 BC */	lbz r0, 0xbc(r29)
/* 802B04B4  28 00 00 FF */	cmplwi r0, 0xff
/* 802B04B8  41 82 00 08 */	beq lbl_802B04C0
/* 802B04BC  3B E0 00 2D */	li r31, 0x2d
lbl_802B04C0:
/* 802B04C0  2C 1E 00 02 */	cmpwi r30, 2
/* 802B04C4  41 82 00 0C */	beq lbl_802B04D0
/* 802B04C8  2C 1E 00 01 */	cmpwi r30, 1
/* 802B04CC  40 82 00 10 */	bne lbl_802B04DC
lbl_802B04D0:
/* 802B04D0  C3 E2 BF 9C */	lfs f31, lit_3373(r2)
/* 802B04D4  C3 C2 BF 98 */	lfs f30, lit_3372(r2)
/* 802B04D8  48 00 00 0C */	b lbl_802B04E4
lbl_802B04DC:
/* 802B04DC  C3 E2 BF 98 */	lfs f31, lit_3372(r2)
/* 802B04E0  C3 C2 BF 9C */	lfs f30, lit_3373(r2)
lbl_802B04E4:
/* 802B04E4  7F A3 EB 78 */	mr r3, r29
/* 802B04E8  7F A4 EB 78 */	mr r4, r29
/* 802B04EC  38 A0 00 00 */	li r5, 0
/* 802B04F0  FC 20 F8 90 */	fmr f1, f31
/* 802B04F4  7F E6 FB 78 */	mr r6, r31
/* 802B04F8  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B04FC  FC 60 10 90 */	fmr f3, f2
/* 802B0500  48 00 3A ED */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0504  7F A3 EB 78 */	mr r3, r29
/* 802B0508  7F A4 EB 78 */	mr r4, r29
/* 802B050C  38 A0 00 01 */	li r5, 1
/* 802B0510  FC 20 F8 90 */	fmr f1, f31
/* 802B0514  7F E6 FB 78 */	mr r6, r31
/* 802B0518  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B051C  FC 60 10 90 */	fmr f3, f2
/* 802B0520  48 00 3A CD */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0524  7F A3 EB 78 */	mr r3, r29
/* 802B0528  7F A4 EB 78 */	mr r4, r29
/* 802B052C  38 A0 00 02 */	li r5, 2
/* 802B0530  FC 20 F8 90 */	fmr f1, f31
/* 802B0534  7F E6 FB 78 */	mr r6, r31
/* 802B0538  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B053C  FC 60 10 90 */	fmr f3, f2
/* 802B0540  48 00 3A AD */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0544  7F A3 EB 78 */	mr r3, r29
/* 802B0548  7F A4 EB 78 */	mr r4, r29
/* 802B054C  38 A0 00 03 */	li r5, 3
/* 802B0550  FC 20 F8 90 */	fmr f1, f31
/* 802B0554  7F E6 FB 78 */	mr r6, r31
/* 802B0558  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B055C  FC 60 10 90 */	fmr f3, f2
/* 802B0560  48 00 3A 8D */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0564  7F A3 EB 78 */	mr r3, r29
/* 802B0568  7F A4 EB 78 */	mr r4, r29
/* 802B056C  38 A0 00 04 */	li r5, 4
/* 802B0570  FC 20 F8 90 */	fmr f1, f31
/* 802B0574  7F E6 FB 78 */	mr r6, r31
/* 802B0578  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B057C  FC 60 10 90 */	fmr f3, f2
/* 802B0580  48 00 3A 6D */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0584  7F A3 EB 78 */	mr r3, r29
/* 802B0588  7F A4 EB 78 */	mr r4, r29
/* 802B058C  38 A0 00 08 */	li r5, 8
/* 802B0590  FC 20 F0 90 */	fmr f1, f30
/* 802B0594  7F E6 FB 78 */	mr r6, r31
/* 802B0598  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B059C  FC 60 10 90 */	fmr f3, f2
/* 802B05A0  48 00 3A 4D */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B05A4  7F A3 EB 78 */	mr r3, r29
/* 802B05A8  7F A4 EB 78 */	mr r4, r29
/* 802B05AC  38 A0 00 09 */	li r5, 9
/* 802B05B0  FC 20 F0 90 */	fmr f1, f30
/* 802B05B4  7F E6 FB 78 */	mr r6, r31
/* 802B05B8  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B05BC  FC 60 10 90 */	fmr f3, f2
/* 802B05C0  48 00 3A 2D */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B05C4  7F A3 EB 78 */	mr r3, r29
/* 802B05C8  7F A4 EB 78 */	mr r4, r29
/* 802B05CC  38 A0 00 0A */	li r5, 0xa
/* 802B05D0  FC 20 F0 90 */	fmr f1, f30
/* 802B05D4  7F E6 FB 78 */	mr r6, r31
/* 802B05D8  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B05DC  FC 60 10 90 */	fmr f3, f2
/* 802B05E0  48 00 3A 0D */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B05E4  7F A3 EB 78 */	mr r3, r29
/* 802B05E8  7F A4 EB 78 */	mr r4, r29
/* 802B05EC  38 A0 00 0B */	li r5, 0xb
/* 802B05F0  FC 20 F0 90 */	fmr f1, f30
/* 802B05F4  7F E6 FB 78 */	mr r6, r31
/* 802B05F8  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B05FC  FC 60 10 90 */	fmr f3, f2
/* 802B0600  48 00 39 ED */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0604  7F A3 EB 78 */	mr r3, r29
/* 802B0608  7F A4 EB 78 */	mr r4, r29
/* 802B060C  38 A0 00 0C */	li r5, 0xc
/* 802B0610  FC 20 F0 90 */	fmr f1, f30
/* 802B0614  7F E6 FB 78 */	mr r6, r31
/* 802B0618  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B061C  FC 60 10 90 */	fmr f3, f2
/* 802B0620  48 00 39 CD */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0624  7F A3 EB 78 */	mr r3, r29
/* 802B0628  7F A4 EB 78 */	mr r4, r29
/* 802B062C  38 A0 00 0D */	li r5, 0xd
/* 802B0630  FC 20 F0 90 */	fmr f1, f30
/* 802B0634  7F E6 FB 78 */	mr r6, r31
/* 802B0638  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B063C  FC 60 10 90 */	fmr f3, f2
/* 802B0640  48 00 39 AD */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0644  2C 1E 00 04 */	cmpwi r30, 4
/* 802B0648  40 82 00 44 */	bne lbl_802B068C
/* 802B064C  C0 1D 00 44 */	lfs f0, 0x44(r29)
/* 802B0650  38 00 00 3C */	li r0, 0x3c
/* 802B0654  90 1D 00 50 */	stw r0, 0x50(r29)
/* 802B0658  C0 62 BF B8 */	lfs f3, lit_4728(r2)
/* 802B065C  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B0660  80 1D 00 50 */	lwz r0, 0x50(r29)
/* 802B0664  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802B0668  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B066C  3C 00 43 30 */	lis r0, 0x4330
/* 802B0670  90 01 00 10 */	stw r0, 0x10(r1)
/* 802B0674  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802B0678  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B067C  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B0680  D0 1D 00 48 */	stfs f0, 0x48(r29)
/* 802B0684  D0 7D 00 4C */	stfs f3, 0x4c(r29)
/* 802B0688  48 00 17 18 */	b lbl_802B1DA0
lbl_802B068C:
/* 802B068C  C0 62 BF 98 */	lfs f3, lit_3372(r2)
/* 802B0690  D0 7D 00 34 */	stfs f3, 0x34(r29)
/* 802B0694  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802B0698  D0 1D 00 38 */	stfs f0, 0x38(r29)
/* 802B069C  38 00 00 00 */	li r0, 0
/* 802B06A0  90 1D 00 40 */	stw r0, 0x40(r29)
/* 802B06A4  D0 1D 00 3C */	stfs f0, 0x3c(r29)
/* 802B06A8  C0 1D 00 44 */	lfs f0, 0x44(r29)
/* 802B06AC  38 00 00 3C */	li r0, 0x3c
/* 802B06B0  90 1D 00 50 */	stw r0, 0x50(r29)
/* 802B06B4  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B06B8  80 1D 00 50 */	lwz r0, 0x50(r29)
/* 802B06BC  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802B06C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B06C4  3C 00 43 30 */	lis r0, 0x4330
/* 802B06C8  90 01 00 10 */	stw r0, 0x10(r1)
/* 802B06CC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802B06D0  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B06D4  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B06D8  D0 1D 00 48 */	stfs f0, 0x48(r29)
/* 802B06DC  D0 7D 00 4C */	stfs f3, 0x4c(r29)
/* 802B06E0  48 00 16 C0 */	b lbl_802B1DA0
lbl_802B06E4:
/* 802B06E4  88 1D 00 BC */	lbz r0, 0xbc(r29)
/* 802B06E8  28 00 00 FF */	cmplwi r0, 0xff
/* 802B06EC  41 82 00 08 */	beq lbl_802B06F4
/* 802B06F0  3B E0 00 2D */	li r31, 0x2d
lbl_802B06F4:
/* 802B06F4  2C 1E 00 03 */	cmpwi r30, 3
/* 802B06F8  41 82 03 74 */	beq lbl_802B0A6C
/* 802B06FC  40 80 00 18 */	bge lbl_802B0714
/* 802B0700  2C 1E 00 02 */	cmpwi r30, 2
/* 802B0704  40 80 01 C4 */	bge lbl_802B08C8
/* 802B0708  2C 1E 00 00 */	cmpwi r30, 0
/* 802B070C  40 80 00 18 */	bge lbl_802B0724
/* 802B0710  48 00 06 A0 */	b lbl_802B0DB0
lbl_802B0714:
/* 802B0714  2C 1E 00 05 */	cmpwi r30, 5
/* 802B0718  41 82 00 0C */	beq lbl_802B0724
/* 802B071C  40 80 06 94 */	bge lbl_802B0DB0
/* 802B0720  48 00 04 F0 */	b lbl_802B0C10
lbl_802B0724:
/* 802B0724  7F A3 EB 78 */	mr r3, r29
/* 802B0728  7F A4 EB 78 */	mr r4, r29
/* 802B072C  38 A0 00 00 */	li r5, 0
/* 802B0730  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B0734  7F E6 FB 78 */	mr r6, r31
/* 802B0738  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B073C  FC 60 10 90 */	fmr f3, f2
/* 802B0740  48 00 38 AD */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0744  7F A3 EB 78 */	mr r3, r29
/* 802B0748  7F A4 EB 78 */	mr r4, r29
/* 802B074C  38 A0 00 01 */	li r5, 1
/* 802B0750  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B0754  7F E6 FB 78 */	mr r6, r31
/* 802B0758  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B075C  FC 60 10 90 */	fmr f3, f2
/* 802B0760  48 00 38 8D */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0764  7F A3 EB 78 */	mr r3, r29
/* 802B0768  7F A4 EB 78 */	mr r4, r29
/* 802B076C  38 A0 00 02 */	li r5, 2
/* 802B0770  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B0774  7F E6 FB 78 */	mr r6, r31
/* 802B0778  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B077C  FC 60 10 90 */	fmr f3, f2
/* 802B0780  48 00 38 6D */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0784  7F A3 EB 78 */	mr r3, r29
/* 802B0788  7F A4 EB 78 */	mr r4, r29
/* 802B078C  38 A0 00 03 */	li r5, 3
/* 802B0790  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B0794  7F E6 FB 78 */	mr r6, r31
/* 802B0798  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B079C  FC 60 10 90 */	fmr f3, f2
/* 802B07A0  48 00 38 4D */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B07A4  7F A3 EB 78 */	mr r3, r29
/* 802B07A8  7F A4 EB 78 */	mr r4, r29
/* 802B07AC  38 A0 00 04 */	li r5, 4
/* 802B07B0  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B07B4  7F E6 FB 78 */	mr r6, r31
/* 802B07B8  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B07BC  FC 60 10 90 */	fmr f3, f2
/* 802B07C0  48 00 38 2D */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B07C4  7F A3 EB 78 */	mr r3, r29
/* 802B07C8  7F A4 EB 78 */	mr r4, r29
/* 802B07CC  38 A0 00 05 */	li r5, 5
/* 802B07D0  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B07D4  7F E6 FB 78 */	mr r6, r31
/* 802B07D8  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B07DC  FC 60 10 90 */	fmr f3, f2
/* 802B07E0  48 00 38 0D */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B07E4  7F A3 EB 78 */	mr r3, r29
/* 802B07E8  7F A4 EB 78 */	mr r4, r29
/* 802B07EC  38 A0 00 06 */	li r5, 6
/* 802B07F0  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B07F4  7F E6 FB 78 */	mr r6, r31
/* 802B07F8  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B07FC  FC 60 10 90 */	fmr f3, f2
/* 802B0800  48 00 37 ED */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0804  7F A3 EB 78 */	mr r3, r29
/* 802B0808  7F A4 EB 78 */	mr r4, r29
/* 802B080C  38 A0 00 07 */	li r5, 7
/* 802B0810  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B0814  7F E6 FB 78 */	mr r6, r31
/* 802B0818  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B081C  FC 60 10 90 */	fmr f3, f2
/* 802B0820  48 00 37 CD */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0824  7F A3 EB 78 */	mr r3, r29
/* 802B0828  7F A4 EB 78 */	mr r4, r29
/* 802B082C  38 A0 00 08 */	li r5, 8
/* 802B0830  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B0834  7F E6 FB 78 */	mr r6, r31
/* 802B0838  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B083C  FC 60 10 90 */	fmr f3, f2
/* 802B0840  48 00 37 AD */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0844  7F A3 EB 78 */	mr r3, r29
/* 802B0848  7F A4 EB 78 */	mr r4, r29
/* 802B084C  38 A0 00 09 */	li r5, 9
/* 802B0850  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B0854  7F E6 FB 78 */	mr r6, r31
/* 802B0858  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B085C  FC 60 10 90 */	fmr f3, f2
/* 802B0860  48 00 37 8D */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0864  7F A3 EB 78 */	mr r3, r29
/* 802B0868  7F A4 EB 78 */	mr r4, r29
/* 802B086C  38 A0 00 0A */	li r5, 0xa
/* 802B0870  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B0874  7F E6 FB 78 */	mr r6, r31
/* 802B0878  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B087C  FC 60 10 90 */	fmr f3, f2
/* 802B0880  48 00 37 6D */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0884  7F A3 EB 78 */	mr r3, r29
/* 802B0888  7F A4 EB 78 */	mr r4, r29
/* 802B088C  38 A0 00 0B */	li r5, 0xb
/* 802B0890  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B0894  7F E6 FB 78 */	mr r6, r31
/* 802B0898  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B089C  FC 60 10 90 */	fmr f3, f2
/* 802B08A0  48 00 37 4D */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B08A4  7F A3 EB 78 */	mr r3, r29
/* 802B08A8  7F A4 EB 78 */	mr r4, r29
/* 802B08AC  38 A0 00 0C */	li r5, 0xc
/* 802B08B0  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B08B4  7F E6 FB 78 */	mr r6, r31
/* 802B08B8  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B08BC  FC 60 10 90 */	fmr f3, f2
/* 802B08C0  48 00 37 2D */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B08C4  48 00 04 EC */	b lbl_802B0DB0
lbl_802B08C8:
/* 802B08C8  7F A3 EB 78 */	mr r3, r29
/* 802B08CC  7F A4 EB 78 */	mr r4, r29
/* 802B08D0  38 A0 00 00 */	li r5, 0
/* 802B08D4  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B08D8  7F E6 FB 78 */	mr r6, r31
/* 802B08DC  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B08E0  FC 60 10 90 */	fmr f3, f2
/* 802B08E4  48 00 37 09 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B08E8  7F A3 EB 78 */	mr r3, r29
/* 802B08EC  7F A4 EB 78 */	mr r4, r29
/* 802B08F0  38 A0 00 01 */	li r5, 1
/* 802B08F4  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B08F8  7F E6 FB 78 */	mr r6, r31
/* 802B08FC  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0900  FC 60 10 90 */	fmr f3, f2
/* 802B0904  48 00 36 E9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0908  7F A3 EB 78 */	mr r3, r29
/* 802B090C  7F A4 EB 78 */	mr r4, r29
/* 802B0910  38 A0 00 02 */	li r5, 2
/* 802B0914  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B0918  7F E6 FB 78 */	mr r6, r31
/* 802B091C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0920  FC 60 10 90 */	fmr f3, f2
/* 802B0924  48 00 36 C9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0928  7F A3 EB 78 */	mr r3, r29
/* 802B092C  7F A4 EB 78 */	mr r4, r29
/* 802B0930  38 A0 00 03 */	li r5, 3
/* 802B0934  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B0938  7F E6 FB 78 */	mr r6, r31
/* 802B093C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0940  FC 60 10 90 */	fmr f3, f2
/* 802B0944  48 00 36 A9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0948  7F A3 EB 78 */	mr r3, r29
/* 802B094C  7F A4 EB 78 */	mr r4, r29
/* 802B0950  38 A0 00 04 */	li r5, 4
/* 802B0954  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B0958  7F E6 FB 78 */	mr r6, r31
/* 802B095C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0960  FC 60 10 90 */	fmr f3, f2
/* 802B0964  48 00 36 89 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0968  7F A3 EB 78 */	mr r3, r29
/* 802B096C  7F A4 EB 78 */	mr r4, r29
/* 802B0970  38 A0 00 05 */	li r5, 5
/* 802B0974  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B0978  7F E6 FB 78 */	mr r6, r31
/* 802B097C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0980  FC 60 10 90 */	fmr f3, f2
/* 802B0984  48 00 36 69 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0988  7F A3 EB 78 */	mr r3, r29
/* 802B098C  7F A4 EB 78 */	mr r4, r29
/* 802B0990  38 A0 00 06 */	li r5, 6
/* 802B0994  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B0998  7F E6 FB 78 */	mr r6, r31
/* 802B099C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B09A0  FC 60 10 90 */	fmr f3, f2
/* 802B09A4  48 00 36 49 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B09A8  7F A3 EB 78 */	mr r3, r29
/* 802B09AC  7F A4 EB 78 */	mr r4, r29
/* 802B09B0  38 A0 00 07 */	li r5, 7
/* 802B09B4  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B09B8  7F E6 FB 78 */	mr r6, r31
/* 802B09BC  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B09C0  FC 60 10 90 */	fmr f3, f2
/* 802B09C4  48 00 36 29 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B09C8  7F A3 EB 78 */	mr r3, r29
/* 802B09CC  7F A4 EB 78 */	mr r4, r29
/* 802B09D0  38 A0 00 08 */	li r5, 8
/* 802B09D4  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B09D8  7F E6 FB 78 */	mr r6, r31
/* 802B09DC  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B09E0  FC 60 10 90 */	fmr f3, f2
/* 802B09E4  48 00 36 09 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B09E8  7F A3 EB 78 */	mr r3, r29
/* 802B09EC  7F A4 EB 78 */	mr r4, r29
/* 802B09F0  38 A0 00 09 */	li r5, 9
/* 802B09F4  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B09F8  7F E6 FB 78 */	mr r6, r31
/* 802B09FC  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0A00  FC 60 10 90 */	fmr f3, f2
/* 802B0A04  48 00 35 E9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0A08  7F A3 EB 78 */	mr r3, r29
/* 802B0A0C  7F A4 EB 78 */	mr r4, r29
/* 802B0A10  38 A0 00 0A */	li r5, 0xa
/* 802B0A14  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B0A18  7F E6 FB 78 */	mr r6, r31
/* 802B0A1C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0A20  FC 60 10 90 */	fmr f3, f2
/* 802B0A24  48 00 35 C9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0A28  7F A3 EB 78 */	mr r3, r29
/* 802B0A2C  7F A4 EB 78 */	mr r4, r29
/* 802B0A30  38 A0 00 0B */	li r5, 0xb
/* 802B0A34  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B0A38  7F E6 FB 78 */	mr r6, r31
/* 802B0A3C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0A40  FC 60 10 90 */	fmr f3, f2
/* 802B0A44  48 00 35 A9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0A48  7F A3 EB 78 */	mr r3, r29
/* 802B0A4C  7F A4 EB 78 */	mr r4, r29
/* 802B0A50  38 A0 00 0C */	li r5, 0xc
/* 802B0A54  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B0A58  7F E6 FB 78 */	mr r6, r31
/* 802B0A5C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0A60  FC 60 10 90 */	fmr f3, f2
/* 802B0A64  48 00 35 89 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0A68  48 00 03 48 */	b lbl_802B0DB0
lbl_802B0A6C:
/* 802B0A6C  7F A3 EB 78 */	mr r3, r29
/* 802B0A70  7F A4 EB 78 */	mr r4, r29
/* 802B0A74  38 A0 00 00 */	li r5, 0
/* 802B0A78  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B0A7C  7F E6 FB 78 */	mr r6, r31
/* 802B0A80  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0A84  FC 60 10 90 */	fmr f3, f2
/* 802B0A88  48 00 35 65 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0A8C  7F A3 EB 78 */	mr r3, r29
/* 802B0A90  7F A4 EB 78 */	mr r4, r29
/* 802B0A94  38 A0 00 01 */	li r5, 1
/* 802B0A98  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B0A9C  7F E6 FB 78 */	mr r6, r31
/* 802B0AA0  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0AA4  FC 60 10 90 */	fmr f3, f2
/* 802B0AA8  48 00 35 45 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0AAC  7F A3 EB 78 */	mr r3, r29
/* 802B0AB0  7F A4 EB 78 */	mr r4, r29
/* 802B0AB4  38 A0 00 02 */	li r5, 2
/* 802B0AB8  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B0ABC  7F E6 FB 78 */	mr r6, r31
/* 802B0AC0  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0AC4  FC 60 10 90 */	fmr f3, f2
/* 802B0AC8  48 00 35 25 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0ACC  7F A3 EB 78 */	mr r3, r29
/* 802B0AD0  7F A4 EB 78 */	mr r4, r29
/* 802B0AD4  38 A0 00 03 */	li r5, 3
/* 802B0AD8  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B0ADC  7F E6 FB 78 */	mr r6, r31
/* 802B0AE0  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0AE4  FC 60 10 90 */	fmr f3, f2
/* 802B0AE8  48 00 35 05 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0AEC  7F A3 EB 78 */	mr r3, r29
/* 802B0AF0  7F A4 EB 78 */	mr r4, r29
/* 802B0AF4  38 A0 00 04 */	li r5, 4
/* 802B0AF8  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B0AFC  7F E6 FB 78 */	mr r6, r31
/* 802B0B00  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0B04  FC 60 10 90 */	fmr f3, f2
/* 802B0B08  48 00 34 E5 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0B0C  7F A3 EB 78 */	mr r3, r29
/* 802B0B10  7F A4 EB 78 */	mr r4, r29
/* 802B0B14  38 A0 00 05 */	li r5, 5
/* 802B0B18  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B0B1C  7F E6 FB 78 */	mr r6, r31
/* 802B0B20  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0B24  FC 60 10 90 */	fmr f3, f2
/* 802B0B28  48 00 34 C5 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0B2C  7F A3 EB 78 */	mr r3, r29
/* 802B0B30  7F A4 EB 78 */	mr r4, r29
/* 802B0B34  38 A0 00 06 */	li r5, 6
/* 802B0B38  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B0B3C  7F E6 FB 78 */	mr r6, r31
/* 802B0B40  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0B44  FC 60 10 90 */	fmr f3, f2
/* 802B0B48  48 00 34 A5 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0B4C  7F A3 EB 78 */	mr r3, r29
/* 802B0B50  7F A4 EB 78 */	mr r4, r29
/* 802B0B54  38 A0 00 07 */	li r5, 7
/* 802B0B58  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B0B5C  7F E6 FB 78 */	mr r6, r31
/* 802B0B60  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0B64  FC 60 10 90 */	fmr f3, f2
/* 802B0B68  48 00 34 85 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0B6C  7F A3 EB 78 */	mr r3, r29
/* 802B0B70  7F A4 EB 78 */	mr r4, r29
/* 802B0B74  38 A0 00 08 */	li r5, 8
/* 802B0B78  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B0B7C  7F E6 FB 78 */	mr r6, r31
/* 802B0B80  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0B84  FC 60 10 90 */	fmr f3, f2
/* 802B0B88  48 00 34 65 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0B8C  7F A3 EB 78 */	mr r3, r29
/* 802B0B90  7F A4 EB 78 */	mr r4, r29
/* 802B0B94  38 A0 00 09 */	li r5, 9
/* 802B0B98  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B0B9C  7F E6 FB 78 */	mr r6, r31
/* 802B0BA0  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0BA4  FC 60 10 90 */	fmr f3, f2
/* 802B0BA8  48 00 34 45 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0BAC  7F A3 EB 78 */	mr r3, r29
/* 802B0BB0  7F A4 EB 78 */	mr r4, r29
/* 802B0BB4  38 A0 00 0A */	li r5, 0xa
/* 802B0BB8  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B0BBC  7F E6 FB 78 */	mr r6, r31
/* 802B0BC0  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0BC4  FC 60 10 90 */	fmr f3, f2
/* 802B0BC8  48 00 34 25 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0BCC  7F A3 EB 78 */	mr r3, r29
/* 802B0BD0  7F A4 EB 78 */	mr r4, r29
/* 802B0BD4  38 A0 00 0B */	li r5, 0xb
/* 802B0BD8  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B0BDC  7F E6 FB 78 */	mr r6, r31
/* 802B0BE0  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0BE4  FC 60 10 90 */	fmr f3, f2
/* 802B0BE8  48 00 34 05 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0BEC  7F A3 EB 78 */	mr r3, r29
/* 802B0BF0  7F A4 EB 78 */	mr r4, r29
/* 802B0BF4  38 A0 00 0C */	li r5, 0xc
/* 802B0BF8  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B0BFC  7F E6 FB 78 */	mr r6, r31
/* 802B0C00  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0C04  FC 60 10 90 */	fmr f3, f2
/* 802B0C08  48 00 33 E5 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0C0C  48 00 01 A4 */	b lbl_802B0DB0
lbl_802B0C10:
/* 802B0C10  7F A3 EB 78 */	mr r3, r29
/* 802B0C14  7F A4 EB 78 */	mr r4, r29
/* 802B0C18  38 A0 00 00 */	li r5, 0
/* 802B0C1C  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B0C20  7F E6 FB 78 */	mr r6, r31
/* 802B0C24  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0C28  FC 60 10 90 */	fmr f3, f2
/* 802B0C2C  48 00 33 C1 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0C30  7F A3 EB 78 */	mr r3, r29
/* 802B0C34  7F A4 EB 78 */	mr r4, r29
/* 802B0C38  38 A0 00 01 */	li r5, 1
/* 802B0C3C  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B0C40  7F E6 FB 78 */	mr r6, r31
/* 802B0C44  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0C48  FC 60 10 90 */	fmr f3, f2
/* 802B0C4C  48 00 33 A1 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0C50  7F A3 EB 78 */	mr r3, r29
/* 802B0C54  7F A4 EB 78 */	mr r4, r29
/* 802B0C58  38 A0 00 02 */	li r5, 2
/* 802B0C5C  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B0C60  7F E6 FB 78 */	mr r6, r31
/* 802B0C64  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0C68  FC 60 10 90 */	fmr f3, f2
/* 802B0C6C  48 00 33 81 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0C70  7F A3 EB 78 */	mr r3, r29
/* 802B0C74  7F A4 EB 78 */	mr r4, r29
/* 802B0C78  38 A0 00 03 */	li r5, 3
/* 802B0C7C  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B0C80  7F E6 FB 78 */	mr r6, r31
/* 802B0C84  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0C88  FC 60 10 90 */	fmr f3, f2
/* 802B0C8C  48 00 33 61 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0C90  7F A3 EB 78 */	mr r3, r29
/* 802B0C94  7F A4 EB 78 */	mr r4, r29
/* 802B0C98  38 A0 00 04 */	li r5, 4
/* 802B0C9C  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B0CA0  7F E6 FB 78 */	mr r6, r31
/* 802B0CA4  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0CA8  FC 60 10 90 */	fmr f3, f2
/* 802B0CAC  48 00 33 41 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0CB0  7F A3 EB 78 */	mr r3, r29
/* 802B0CB4  7F A4 EB 78 */	mr r4, r29
/* 802B0CB8  38 A0 00 05 */	li r5, 5
/* 802B0CBC  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B0CC0  7F E6 FB 78 */	mr r6, r31
/* 802B0CC4  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0CC8  FC 60 10 90 */	fmr f3, f2
/* 802B0CCC  48 00 33 21 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0CD0  7F A3 EB 78 */	mr r3, r29
/* 802B0CD4  7F A4 EB 78 */	mr r4, r29
/* 802B0CD8  38 A0 00 06 */	li r5, 6
/* 802B0CDC  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B0CE0  7F E6 FB 78 */	mr r6, r31
/* 802B0CE4  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0CE8  FC 60 10 90 */	fmr f3, f2
/* 802B0CEC  48 00 33 01 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0CF0  7F A3 EB 78 */	mr r3, r29
/* 802B0CF4  7F A4 EB 78 */	mr r4, r29
/* 802B0CF8  38 A0 00 07 */	li r5, 7
/* 802B0CFC  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B0D00  7F E6 FB 78 */	mr r6, r31
/* 802B0D04  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0D08  FC 60 10 90 */	fmr f3, f2
/* 802B0D0C  48 00 32 E1 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0D10  7F A3 EB 78 */	mr r3, r29
/* 802B0D14  7F A4 EB 78 */	mr r4, r29
/* 802B0D18  38 A0 00 08 */	li r5, 8
/* 802B0D1C  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B0D20  7F E6 FB 78 */	mr r6, r31
/* 802B0D24  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0D28  FC 60 10 90 */	fmr f3, f2
/* 802B0D2C  48 00 32 C1 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0D30  7F A3 EB 78 */	mr r3, r29
/* 802B0D34  7F A4 EB 78 */	mr r4, r29
/* 802B0D38  38 A0 00 09 */	li r5, 9
/* 802B0D3C  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B0D40  7F E6 FB 78 */	mr r6, r31
/* 802B0D44  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0D48  FC 60 10 90 */	fmr f3, f2
/* 802B0D4C  48 00 32 A1 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0D50  7F A3 EB 78 */	mr r3, r29
/* 802B0D54  7F A4 EB 78 */	mr r4, r29
/* 802B0D58  38 A0 00 0A */	li r5, 0xa
/* 802B0D5C  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B0D60  7F E6 FB 78 */	mr r6, r31
/* 802B0D64  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0D68  FC 60 10 90 */	fmr f3, f2
/* 802B0D6C  48 00 32 81 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0D70  7F A3 EB 78 */	mr r3, r29
/* 802B0D74  7F A4 EB 78 */	mr r4, r29
/* 802B0D78  38 A0 00 0B */	li r5, 0xb
/* 802B0D7C  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B0D80  7F E6 FB 78 */	mr r6, r31
/* 802B0D84  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0D88  FC 60 10 90 */	fmr f3, f2
/* 802B0D8C  48 00 32 61 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0D90  7F A3 EB 78 */	mr r3, r29
/* 802B0D94  7F A4 EB 78 */	mr r4, r29
/* 802B0D98  38 A0 00 0C */	li r5, 0xc
/* 802B0D9C  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B0DA0  7F E6 FB 78 */	mr r6, r31
/* 802B0DA4  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0DA8  FC 60 10 90 */	fmr f3, f2
/* 802B0DAC  48 00 32 41 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
lbl_802B0DB0:
/* 802B0DB0  2C 1E 00 05 */	cmpwi r30, 5
/* 802B0DB4  40 82 00 78 */	bne lbl_802B0E2C
/* 802B0DB8  28 1F 00 00 */	cmplwi r31, 0
/* 802B0DBC  41 82 00 40 */	beq lbl_802B0DFC
/* 802B0DC0  C0 1D 00 44 */	lfs f0, 0x44(r29)
/* 802B0DC4  93 FD 00 50 */	stw r31, 0x50(r29)
/* 802B0DC8  C0 62 BF BC */	lfs f3, lit_4729(r2)
/* 802B0DCC  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B0DD0  80 1D 00 50 */	lwz r0, 0x50(r29)
/* 802B0DD4  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802B0DD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B0DDC  3C 00 43 30 */	lis r0, 0x4330
/* 802B0DE0  90 01 00 10 */	stw r0, 0x10(r1)
/* 802B0DE4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802B0DE8  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B0DEC  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B0DF0  D0 1D 00 48 */	stfs f0, 0x48(r29)
/* 802B0DF4  D0 7D 00 4C */	stfs f3, 0x4c(r29)
/* 802B0DF8  48 00 00 20 */	b lbl_802B0E18
lbl_802B0DFC:
/* 802B0DFC  C0 02 BF BC */	lfs f0, lit_4729(r2)
/* 802B0E00  D0 1D 00 44 */	stfs f0, 0x44(r29)
/* 802B0E04  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802B0E08  D0 1D 00 48 */	stfs f0, 0x48(r29)
/* 802B0E0C  38 00 00 00 */	li r0, 0
/* 802B0E10  90 1D 00 50 */	stw r0, 0x50(r29)
/* 802B0E14  D0 1D 00 4C */	stfs f0, 0x4c(r29)
lbl_802B0E18:
/* 802B0E18  38 60 00 00 */	li r3, 0
/* 802B0E1C  88 1D 00 D0 */	lbz r0, 0xd0(r29)
/* 802B0E20  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 802B0E24  98 1D 00 D0 */	stb r0, 0xd0(r29)
/* 802B0E28  48 00 0F 78 */	b lbl_802B1DA0
lbl_802B0E2C:
/* 802B0E2C  C0 62 BF 98 */	lfs f3, lit_3372(r2)
/* 802B0E30  D0 7D 00 34 */	stfs f3, 0x34(r29)
/* 802B0E34  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802B0E38  D0 1D 00 38 */	stfs f0, 0x38(r29)
/* 802B0E3C  38 00 00 00 */	li r0, 0
/* 802B0E40  90 1D 00 40 */	stw r0, 0x40(r29)
/* 802B0E44  D0 1D 00 3C */	stfs f0, 0x3c(r29)
/* 802B0E48  28 1F 00 00 */	cmplwi r31, 0
/* 802B0E4C  41 82 00 3C */	beq lbl_802B0E88
/* 802B0E50  C0 1D 00 44 */	lfs f0, 0x44(r29)
/* 802B0E54  93 FD 00 50 */	stw r31, 0x50(r29)
/* 802B0E58  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B0E5C  80 1D 00 50 */	lwz r0, 0x50(r29)
/* 802B0E60  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802B0E64  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B0E68  3C 00 43 30 */	lis r0, 0x4330
/* 802B0E6C  90 01 00 10 */	stw r0, 0x10(r1)
/* 802B0E70  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802B0E74  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B0E78  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B0E7C  D0 1D 00 48 */	stfs f0, 0x48(r29)
/* 802B0E80  D0 7D 00 4C */	stfs f3, 0x4c(r29)
/* 802B0E84  48 00 00 14 */	b lbl_802B0E98
lbl_802B0E88:
/* 802B0E88  D0 7D 00 44 */	stfs f3, 0x44(r29)
/* 802B0E8C  D0 1D 00 48 */	stfs f0, 0x48(r29)
/* 802B0E90  90 1D 00 50 */	stw r0, 0x50(r29)
/* 802B0E94  D0 1D 00 4C */	stfs f0, 0x4c(r29)
lbl_802B0E98:
/* 802B0E98  2C 1E 00 02 */	cmpwi r30, 2
/* 802B0E9C  40 80 00 18 */	bge lbl_802B0EB4
/* 802B0EA0  38 60 00 00 */	li r3, 0
/* 802B0EA4  88 1D 00 D0 */	lbz r0, 0xd0(r29)
/* 802B0EA8  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 802B0EAC  98 1D 00 D0 */	stb r0, 0xd0(r29)
/* 802B0EB0  48 00 0E F0 */	b lbl_802B1DA0
lbl_802B0EB4:
/* 802B0EB4  38 60 00 01 */	li r3, 1
/* 802B0EB8  88 1D 00 D0 */	lbz r0, 0xd0(r29)
/* 802B0EBC  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 802B0EC0  98 1D 00 D0 */	stb r0, 0xd0(r29)
/* 802B0EC4  48 00 0E DC */	b lbl_802B1DA0
lbl_802B0EC8:
/* 802B0EC8  88 1D 00 BC */	lbz r0, 0xbc(r29)
/* 802B0ECC  28 00 00 FF */	cmplwi r0, 0xff
/* 802B0ED0  41 82 00 2C */	beq lbl_802B0EFC
/* 802B0ED4  3B E0 00 2D */	li r31, 0x2d
/* 802B0ED8  7F A3 EB 78 */	mr r3, r29
/* 802B0EDC  7F A4 EB 78 */	mr r4, r29
/* 802B0EE0  38 A0 00 07 */	li r5, 7
/* 802B0EE4  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B0EE8  38 C0 00 05 */	li r6, 5
/* 802B0EEC  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0EF0  FC 60 10 90 */	fmr f3, f2
/* 802B0EF4  48 00 30 F9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0EF8  48 00 00 24 */	b lbl_802B0F1C
lbl_802B0EFC:
/* 802B0EFC  7F A3 EB 78 */	mr r3, r29
/* 802B0F00  7F A4 EB 78 */	mr r4, r29
/* 802B0F04  38 A0 00 07 */	li r5, 7
/* 802B0F08  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B0F0C  38 C0 00 00 */	li r6, 0
/* 802B0F10  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0F14  FC 60 10 90 */	fmr f3, f2
/* 802B0F18  48 00 30 D5 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
lbl_802B0F1C:
/* 802B0F1C  2C 1E 00 01 */	cmpwi r30, 1
/* 802B0F20  40 82 00 10 */	bne lbl_802B0F30
/* 802B0F24  C3 E2 BF C0 */	lfs f31, lit_4730(r2)
/* 802B0F28  C3 C2 BF 98 */	lfs f30, lit_3372(r2)
/* 802B0F2C  48 00 00 0C */	b lbl_802B0F38
lbl_802B0F30:
/* 802B0F30  C3 E2 BF 98 */	lfs f31, lit_3372(r2)
/* 802B0F34  C3 C2 BF 9C */	lfs f30, lit_3373(r2)
lbl_802B0F38:
/* 802B0F38  7F A3 EB 78 */	mr r3, r29
/* 802B0F3C  7F A4 EB 78 */	mr r4, r29
/* 802B0F40  38 A0 00 00 */	li r5, 0
/* 802B0F44  FC 20 F8 90 */	fmr f1, f31
/* 802B0F48  7F E6 FB 78 */	mr r6, r31
/* 802B0F4C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0F50  FC 60 10 90 */	fmr f3, f2
/* 802B0F54  48 00 30 99 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0F58  7F A3 EB 78 */	mr r3, r29
/* 802B0F5C  7F A4 EB 78 */	mr r4, r29
/* 802B0F60  38 A0 00 01 */	li r5, 1
/* 802B0F64  FC 20 F8 90 */	fmr f1, f31
/* 802B0F68  7F E6 FB 78 */	mr r6, r31
/* 802B0F6C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0F70  FC 60 10 90 */	fmr f3, f2
/* 802B0F74  48 00 30 79 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0F78  7F A3 EB 78 */	mr r3, r29
/* 802B0F7C  7F A4 EB 78 */	mr r4, r29
/* 802B0F80  38 A0 00 02 */	li r5, 2
/* 802B0F84  FC 20 F8 90 */	fmr f1, f31
/* 802B0F88  7F E6 FB 78 */	mr r6, r31
/* 802B0F8C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0F90  FC 60 10 90 */	fmr f3, f2
/* 802B0F94  48 00 30 59 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0F98  7F A3 EB 78 */	mr r3, r29
/* 802B0F9C  7F A4 EB 78 */	mr r4, r29
/* 802B0FA0  38 A0 00 03 */	li r5, 3
/* 802B0FA4  FC 20 F8 90 */	fmr f1, f31
/* 802B0FA8  7F E6 FB 78 */	mr r6, r31
/* 802B0FAC  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0FB0  FC 60 10 90 */	fmr f3, f2
/* 802B0FB4  48 00 30 39 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0FB8  7F A3 EB 78 */	mr r3, r29
/* 802B0FBC  7F A4 EB 78 */	mr r4, r29
/* 802B0FC0  38 A0 00 04 */	li r5, 4
/* 802B0FC4  FC 20 F0 90 */	fmr f1, f30
/* 802B0FC8  7F E6 FB 78 */	mr r6, r31
/* 802B0FCC  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0FD0  FC 60 10 90 */	fmr f3, f2
/* 802B0FD4  48 00 30 19 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0FD8  7F A3 EB 78 */	mr r3, r29
/* 802B0FDC  7F A4 EB 78 */	mr r4, r29
/* 802B0FE0  38 A0 00 05 */	li r5, 5
/* 802B0FE4  FC 20 F0 90 */	fmr f1, f30
/* 802B0FE8  7F E6 FB 78 */	mr r6, r31
/* 802B0FEC  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B0FF0  FC 60 10 90 */	fmr f3, f2
/* 802B0FF4  48 00 2F F9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B0FF8  7F A3 EB 78 */	mr r3, r29
/* 802B0FFC  7F A4 EB 78 */	mr r4, r29
/* 802B1000  38 A0 00 06 */	li r5, 6
/* 802B1004  FC 20 F0 90 */	fmr f1, f30
/* 802B1008  7F E6 FB 78 */	mr r6, r31
/* 802B100C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1010  FC 60 10 90 */	fmr f3, f2
/* 802B1014  48 00 2F D9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1018  48 00 0D 88 */	b lbl_802B1DA0
lbl_802B101C:
/* 802B101C  2C 1E 00 00 */	cmpwi r30, 0
/* 802B1020  40 82 00 24 */	bne lbl_802B1044
/* 802B1024  C0 02 BF C4 */	lfs f0, lit_4731(r2)
/* 802B1028  D0 1D 00 44 */	stfs f0, 0x44(r29)
/* 802B102C  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802B1030  D0 1D 00 48 */	stfs f0, 0x48(r29)
/* 802B1034  38 00 00 00 */	li r0, 0
/* 802B1038  90 1D 00 50 */	stw r0, 0x50(r29)
/* 802B103C  D0 1D 00 4C */	stfs f0, 0x4c(r29)
/* 802B1040  48 00 0D 60 */	b lbl_802B1DA0
lbl_802B1044:
/* 802B1044  2C 1E 00 01 */	cmpwi r30, 1
/* 802B1048  40 82 0D 58 */	bne lbl_802B1DA0
/* 802B104C  C0 62 BF 98 */	lfs f3, lit_3372(r2)
/* 802B1050  D0 7D 00 34 */	stfs f3, 0x34(r29)
/* 802B1054  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802B1058  D0 1D 00 38 */	stfs f0, 0x38(r29)
/* 802B105C  38 00 00 00 */	li r0, 0
/* 802B1060  90 1D 00 40 */	stw r0, 0x40(r29)
/* 802B1064  D0 1D 00 3C */	stfs f0, 0x3c(r29)
/* 802B1068  C0 1D 00 44 */	lfs f0, 0x44(r29)
/* 802B106C  38 00 00 50 */	li r0, 0x50
/* 802B1070  90 1D 00 50 */	stw r0, 0x50(r29)
/* 802B1074  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B1078  80 1D 00 50 */	lwz r0, 0x50(r29)
/* 802B107C  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802B1080  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B1084  3C 00 43 30 */	lis r0, 0x4330
/* 802B1088  90 01 00 10 */	stw r0, 0x10(r1)
/* 802B108C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802B1090  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B1094  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B1098  D0 1D 00 48 */	stfs f0, 0x48(r29)
/* 802B109C  D0 7D 00 4C */	stfs f3, 0x4c(r29)
/* 802B10A0  48 00 0D 00 */	b lbl_802B1DA0
lbl_802B10A4:
/* 802B10A4  2C 1E 00 01 */	cmpwi r30, 1
/* 802B10A8  40 82 00 28 */	bne lbl_802B10D0
/* 802B10AC  7F A3 EB 78 */	mr r3, r29
/* 802B10B0  7F A4 EB 78 */	mr r4, r29
/* 802B10B4  38 A0 00 04 */	li r5, 4
/* 802B10B8  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B10BC  38 C0 00 5A */	li r6, 0x5a
/* 802B10C0  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B10C4  FC 60 10 90 */	fmr f3, f2
/* 802B10C8  48 00 2F 25 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B10CC  48 00 0C D4 */	b lbl_802B1DA0
lbl_802B10D0:
/* 802B10D0  2C 1E 00 02 */	cmpwi r30, 2
/* 802B10D4  40 82 00 18 */	bne lbl_802B10EC
/* 802B10D8  7F A3 EB 78 */	mr r3, r29
/* 802B10DC  38 80 00 5A */	li r4, 0x5a
/* 802B10E0  38 A0 00 00 */	li r5, 0
/* 802B10E4  4B FF E3 25 */	bl bgmStop__8Z2SeqMgrFUll
/* 802B10E8  48 00 0C B8 */	b lbl_802B1DA0
lbl_802B10EC:
/* 802B10EC  7F A3 EB 78 */	mr r3, r29
/* 802B10F0  7F A4 EB 78 */	mr r4, r29
/* 802B10F4  38 A0 00 04 */	li r5, 4
/* 802B10F8  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B10FC  38 C0 00 00 */	li r6, 0
/* 802B1100  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1104  FC 60 10 90 */	fmr f3, f2
/* 802B1108  48 00 2E E5 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B110C  7F A3 EB 78 */	mr r3, r29
/* 802B1110  7F A4 EB 78 */	mr r4, r29
/* 802B1114  38 A0 00 05 */	li r5, 5
/* 802B1118  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B111C  38 C0 00 00 */	li r6, 0
/* 802B1120  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1124  FC 60 10 90 */	fmr f3, f2
/* 802B1128  48 00 2E C5 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B112C  7F A3 EB 78 */	mr r3, r29
/* 802B1130  7F A4 EB 78 */	mr r4, r29
/* 802B1134  38 A0 00 06 */	li r5, 6
/* 802B1138  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B113C  38 C0 00 00 */	li r6, 0
/* 802B1140  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1144  FC 60 10 90 */	fmr f3, f2
/* 802B1148  48 00 2E A5 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B114C  7F A3 EB 78 */	mr r3, r29
/* 802B1150  7F A4 EB 78 */	mr r4, r29
/* 802B1154  38 A0 00 07 */	li r5, 7
/* 802B1158  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B115C  38 C0 00 00 */	li r6, 0
/* 802B1160  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1164  FC 60 10 90 */	fmr f3, f2
/* 802B1168  48 00 2E 85 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B116C  48 00 0C 34 */	b lbl_802B1DA0
lbl_802B1170:
/* 802B1170  2C 1E 00 01 */	cmpwi r30, 1
/* 802B1174  40 82 01 08 */	bne lbl_802B127C
/* 802B1178  7F A3 EB 78 */	mr r3, r29
/* 802B117C  7F A4 EB 78 */	mr r4, r29
/* 802B1180  38 A0 00 00 */	li r5, 0
/* 802B1184  C0 22 BF C8 */	lfs f1, lit_4732(r2)
/* 802B1188  38 C0 00 8F */	li r6, 0x8f
/* 802B118C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1190  FC 60 10 90 */	fmr f3, f2
/* 802B1194  48 00 2E 59 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1198  7F A3 EB 78 */	mr r3, r29
/* 802B119C  7F A4 EB 78 */	mr r4, r29
/* 802B11A0  38 A0 00 01 */	li r5, 1
/* 802B11A4  C0 22 BF C8 */	lfs f1, lit_4732(r2)
/* 802B11A8  38 C0 00 8F */	li r6, 0x8f
/* 802B11AC  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B11B0  FC 60 10 90 */	fmr f3, f2
/* 802B11B4  48 00 2E 39 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B11B8  7F A3 EB 78 */	mr r3, r29
/* 802B11BC  7F A4 EB 78 */	mr r4, r29
/* 802B11C0  38 A0 00 02 */	li r5, 2
/* 802B11C4  C0 22 BF C0 */	lfs f1, lit_4730(r2)
/* 802B11C8  38 C0 00 8F */	li r6, 0x8f
/* 802B11CC  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B11D0  FC 60 10 90 */	fmr f3, f2
/* 802B11D4  48 00 2E 19 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B11D8  7F A3 EB 78 */	mr r3, r29
/* 802B11DC  7F A4 EB 78 */	mr r4, r29
/* 802B11E0  38 A0 00 03 */	li r5, 3
/* 802B11E4  C0 22 BF C0 */	lfs f1, lit_4730(r2)
/* 802B11E8  38 C0 00 8F */	li r6, 0x8f
/* 802B11EC  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B11F0  FC 60 10 90 */	fmr f3, f2
/* 802B11F4  48 00 2D F9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B11F8  7F A3 EB 78 */	mr r3, r29
/* 802B11FC  7F A4 EB 78 */	mr r4, r29
/* 802B1200  38 A0 00 04 */	li r5, 4
/* 802B1204  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B1208  38 C0 00 8F */	li r6, 0x8f
/* 802B120C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1210  FC 60 10 90 */	fmr f3, f2
/* 802B1214  48 00 2D D9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1218  7F A3 EB 78 */	mr r3, r29
/* 802B121C  7F A4 EB 78 */	mr r4, r29
/* 802B1220  38 A0 00 05 */	li r5, 5
/* 802B1224  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B1228  38 C0 00 8F */	li r6, 0x8f
/* 802B122C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1230  FC 60 10 90 */	fmr f3, f2
/* 802B1234  48 00 2D B9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1238  7F A3 EB 78 */	mr r3, r29
/* 802B123C  7F A4 EB 78 */	mr r4, r29
/* 802B1240  38 A0 00 06 */	li r5, 6
/* 802B1244  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B1248  38 C0 00 8F */	li r6, 0x8f
/* 802B124C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1250  FC 60 10 90 */	fmr f3, f2
/* 802B1254  48 00 2D 99 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1258  7F A3 EB 78 */	mr r3, r29
/* 802B125C  7F A4 EB 78 */	mr r4, r29
/* 802B1260  38 A0 00 07 */	li r5, 7
/* 802B1264  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B1268  38 C0 00 8F */	li r6, 0x8f
/* 802B126C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1270  FC 60 10 90 */	fmr f3, f2
/* 802B1274  48 00 2D 79 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1278  48 00 0B 28 */	b lbl_802B1DA0
lbl_802B127C:
/* 802B127C  7F A3 EB 78 */	mr r3, r29
/* 802B1280  7F A4 EB 78 */	mr r4, r29
/* 802B1284  38 A0 00 05 */	li r5, 5
/* 802B1288  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B128C  38 C0 00 00 */	li r6, 0
/* 802B1290  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1294  FC 60 10 90 */	fmr f3, f2
/* 802B1298  48 00 2D 55 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B129C  7F A3 EB 78 */	mr r3, r29
/* 802B12A0  7F A4 EB 78 */	mr r4, r29
/* 802B12A4  38 A0 00 06 */	li r5, 6
/* 802B12A8  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B12AC  38 C0 00 00 */	li r6, 0
/* 802B12B0  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B12B4  FC 60 10 90 */	fmr f3, f2
/* 802B12B8  48 00 2D 35 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B12BC  7F A3 EB 78 */	mr r3, r29
/* 802B12C0  7F A4 EB 78 */	mr r4, r29
/* 802B12C4  38 A0 00 07 */	li r5, 7
/* 802B12C8  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B12CC  38 C0 00 00 */	li r6, 0
/* 802B12D0  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B12D4  FC 60 10 90 */	fmr f3, f2
/* 802B12D8  48 00 2D 15 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B12DC  48 00 0A C4 */	b lbl_802B1DA0
lbl_802B12E0:
/* 802B12E0  2C 1E 00 01 */	cmpwi r30, 1
/* 802B12E4  40 82 00 88 */	bne lbl_802B136C
/* 802B12E8  7F A3 EB 78 */	mr r3, r29
/* 802B12EC  7F A4 EB 78 */	mr r4, r29
/* 802B12F0  38 A0 00 09 */	li r5, 9
/* 802B12F4  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B12F8  38 C0 00 3C */	li r6, 0x3c
/* 802B12FC  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1300  FC 60 10 90 */	fmr f3, f2
/* 802B1304  48 00 2C E9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1308  7F A3 EB 78 */	mr r3, r29
/* 802B130C  7F A4 EB 78 */	mr r4, r29
/* 802B1310  38 A0 00 0A */	li r5, 0xa
/* 802B1314  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B1318  38 C0 00 3C */	li r6, 0x3c
/* 802B131C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1320  FC 60 10 90 */	fmr f3, f2
/* 802B1324  48 00 2C C9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1328  7F A3 EB 78 */	mr r3, r29
/* 802B132C  7F A4 EB 78 */	mr r4, r29
/* 802B1330  38 A0 00 0B */	li r5, 0xb
/* 802B1334  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B1338  38 C0 00 3C */	li r6, 0x3c
/* 802B133C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1340  FC 60 10 90 */	fmr f3, f2
/* 802B1344  48 00 2C A9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1348  7F A3 EB 78 */	mr r3, r29
/* 802B134C  7F A4 EB 78 */	mr r4, r29
/* 802B1350  38 A0 00 0C */	li r5, 0xc
/* 802B1354  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B1358  38 C0 00 3C */	li r6, 0x3c
/* 802B135C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1360  FC 60 10 90 */	fmr f3, f2
/* 802B1364  48 00 2C 89 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1368  48 00 0A 38 */	b lbl_802B1DA0
lbl_802B136C:
/* 802B136C  7F A3 EB 78 */	mr r3, r29
/* 802B1370  7F A4 EB 78 */	mr r4, r29
/* 802B1374  38 A0 00 0A */	li r5, 0xa
/* 802B1378  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B137C  38 C0 00 00 */	li r6, 0
/* 802B1380  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1384  FC 60 10 90 */	fmr f3, f2
/* 802B1388  48 00 2C 65 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B138C  7F A3 EB 78 */	mr r3, r29
/* 802B1390  7F A4 EB 78 */	mr r4, r29
/* 802B1394  38 A0 00 0B */	li r5, 0xb
/* 802B1398  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B139C  38 C0 00 00 */	li r6, 0
/* 802B13A0  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B13A4  FC 60 10 90 */	fmr f3, f2
/* 802B13A8  48 00 2C 45 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B13AC  7F A3 EB 78 */	mr r3, r29
/* 802B13B0  7F A4 EB 78 */	mr r4, r29
/* 802B13B4  38 A0 00 0C */	li r5, 0xc
/* 802B13B8  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B13BC  38 C0 00 00 */	li r6, 0
/* 802B13C0  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B13C4  FC 60 10 90 */	fmr f3, f2
/* 802B13C8  48 00 2C 25 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B13CC  48 00 09 D4 */	b lbl_802B1DA0
lbl_802B13D0:
/* 802B13D0  88 1D 00 BC */	lbz r0, 0xbc(r29)
/* 802B13D4  7C 1E 00 00 */	cmpw r30, r0
/* 802B13D8  41 82 09 E4 */	beq lbl_802B1DBC
/* 802B13DC  28 00 00 FF */	cmplwi r0, 0xff
/* 802B13E0  41 82 00 08 */	beq lbl_802B13E8
/* 802B13E4  3B E0 00 2D */	li r31, 0x2d
lbl_802B13E8:
/* 802B13E8  2C 1E 00 00 */	cmpwi r30, 0
/* 802B13EC  41 82 00 0C */	beq lbl_802B13F8
/* 802B13F0  2C 1E 00 0B */	cmpwi r30, 0xb
/* 802B13F4  40 82 00 18 */	bne lbl_802B140C
lbl_802B13F8:
/* 802B13F8  C3 E2 BF 98 */	lfs f31, lit_3372(r2)
/* 802B13FC  C3 C2 BF 9C */	lfs f30, lit_3373(r2)
/* 802B1400  FF A0 F0 90 */	fmr f29, f30
/* 802B1404  FF 80 F0 90 */	fmr f28, f30
/* 802B1408  48 00 00 E0 */	b lbl_802B14E8
lbl_802B140C:
/* 802B140C  2C 1E 00 64 */	cmpwi r30, 0x64
/* 802B1410  41 80 00 C8 */	blt lbl_802B14D8
/* 802B1414  C3 E2 BF 9C */	lfs f31, lit_3373(r2)
/* 802B1418  C3 C2 BF 98 */	lfs f30, lit_3372(r2)
/* 802B141C  2C 1E 00 C8 */	cmpwi r30, 0xc8
/* 802B1420  40 80 00 0C */	bge lbl_802B142C
/* 802B1424  FC 20 F0 90 */	fmr f1, f30
/* 802B1428  48 00 00 4C */	b lbl_802B1474
lbl_802B142C:
/* 802B142C  2C 1E 0C 1C */	cmpwi r30, 0xc1c
/* 802B1430  40 81 00 0C */	ble lbl_802B143C
/* 802B1434  FC 20 F8 90 */	fmr f1, f31
/* 802B1438  48 00 00 3C */	b lbl_802B1474
lbl_802B143C:
/* 802B143C  C8 22 BF E8 */	lfd f1, lit_4741(r2)
/* 802B1440  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 802B1444  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B1448  3C 00 43 30 */	lis r0, 0x4330
/* 802B144C  90 01 00 10 */	stw r0, 0x10(r1)
/* 802B1450  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802B1454  EC 20 08 28 */	fsubs f1, f0, f1
/* 802B1458  C0 42 BF CC */	lfs f2, lit_4733(r2)
/* 802B145C  C0 62 BF D0 */	lfs f3, lit_4734(r2)
/* 802B1460  C0 82 BF C8 */	lfs f4, lit_4732(r2)
/* 802B1464  FC A0 F8 90 */	fmr f5, f31
/* 802B1468  FC C0 F0 90 */	fmr f6, f30
/* 802B146C  38 60 00 01 */	li r3, 1
/* 802B1470  4B FF 82 85 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
lbl_802B1474:
/* 802B1474  FF A0 08 90 */	fmr f29, f1
/* 802B1478  2C 1E 00 C8 */	cmpwi r30, 0xc8
/* 802B147C  40 80 00 0C */	bge lbl_802B1488
/* 802B1480  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B1484  48 00 00 4C */	b lbl_802B14D0
lbl_802B1488:
/* 802B1488  2C 1E 06 40 */	cmpwi r30, 0x640
/* 802B148C  40 81 00 0C */	ble lbl_802B1498
/* 802B1490  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B1494  48 00 00 3C */	b lbl_802B14D0
lbl_802B1498:
/* 802B1498  C8 22 BF E8 */	lfd f1, lit_4741(r2)
/* 802B149C  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 802B14A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B14A4  3C 00 43 30 */	lis r0, 0x4330
/* 802B14A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 802B14AC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802B14B0  EC 20 08 28 */	fsubs f1, f0, f1
/* 802B14B4  C0 42 BF D4 */	lfs f2, lit_4735(r2)
/* 802B14B8  C0 62 BF D0 */	lfs f3, lit_4734(r2)
/* 802B14BC  C0 82 BF C8 */	lfs f4, lit_4732(r2)
/* 802B14C0  C0 A2 BF 9C */	lfs f5, lit_3373(r2)
/* 802B14C4  C0 C2 BF 98 */	lfs f6, lit_3372(r2)
/* 802B14C8  38 60 00 01 */	li r3, 1
/* 802B14CC  4B FF 82 29 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
lbl_802B14D0:
/* 802B14D0  FF 80 08 90 */	fmr f28, f1
/* 802B14D4  48 00 00 14 */	b lbl_802B14E8
lbl_802B14D8:
/* 802B14D8  C3 E2 BF 9C */	lfs f31, lit_3373(r2)
/* 802B14DC  C3 C2 BF 98 */	lfs f30, lit_3372(r2)
/* 802B14E0  FF A0 F8 90 */	fmr f29, f31
/* 802B14E4  FF 80 F8 90 */	fmr f28, f31
lbl_802B14E8:
/* 802B14E8  7F A3 EB 78 */	mr r3, r29
/* 802B14EC  7F A4 EB 78 */	mr r4, r29
/* 802B14F0  38 A0 00 02 */	li r5, 2
/* 802B14F4  FC 20 F8 90 */	fmr f1, f31
/* 802B14F8  7F E6 FB 78 */	mr r6, r31
/* 802B14FC  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1500  FC 60 10 90 */	fmr f3, f2
/* 802B1504  48 00 2A E9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1508  7F A3 EB 78 */	mr r3, r29
/* 802B150C  7F A4 EB 78 */	mr r4, r29
/* 802B1510  38 A0 00 03 */	li r5, 3
/* 802B1514  FC 20 F8 90 */	fmr f1, f31
/* 802B1518  7F E6 FB 78 */	mr r6, r31
/* 802B151C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1520  FC 60 10 90 */	fmr f3, f2
/* 802B1524  48 00 2A C9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1528  7F A3 EB 78 */	mr r3, r29
/* 802B152C  7F A4 EB 78 */	mr r4, r29
/* 802B1530  38 A0 00 04 */	li r5, 4
/* 802B1534  FC 20 F8 90 */	fmr f1, f31
/* 802B1538  7F E6 FB 78 */	mr r6, r31
/* 802B153C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1540  FC 60 10 90 */	fmr f3, f2
/* 802B1544  48 00 2A A9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1548  7F A3 EB 78 */	mr r3, r29
/* 802B154C  7F A4 EB 78 */	mr r4, r29
/* 802B1550  38 A0 00 05 */	li r5, 5
/* 802B1554  FC 20 F8 90 */	fmr f1, f31
/* 802B1558  7F E6 FB 78 */	mr r6, r31
/* 802B155C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1560  FC 60 10 90 */	fmr f3, f2
/* 802B1564  48 00 2A 89 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1568  7F A3 EB 78 */	mr r3, r29
/* 802B156C  7F A4 EB 78 */	mr r4, r29
/* 802B1570  38 A0 00 06 */	li r5, 6
/* 802B1574  FC 20 F0 90 */	fmr f1, f30
/* 802B1578  7F E6 FB 78 */	mr r6, r31
/* 802B157C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1580  FC 60 10 90 */	fmr f3, f2
/* 802B1584  48 00 2A 69 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1588  7F A3 EB 78 */	mr r3, r29
/* 802B158C  7F A4 EB 78 */	mr r4, r29
/* 802B1590  38 A0 00 07 */	li r5, 7
/* 802B1594  FC 20 F0 90 */	fmr f1, f30
/* 802B1598  7F E6 FB 78 */	mr r6, r31
/* 802B159C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B15A0  FC 60 10 90 */	fmr f3, f2
/* 802B15A4  48 00 2A 49 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B15A8  7F A3 EB 78 */	mr r3, r29
/* 802B15AC  7F A4 EB 78 */	mr r4, r29
/* 802B15B0  38 A0 00 08 */	li r5, 8
/* 802B15B4  FC 20 F0 90 */	fmr f1, f30
/* 802B15B8  7F E6 FB 78 */	mr r6, r31
/* 802B15BC  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B15C0  FC 60 10 90 */	fmr f3, f2
/* 802B15C4  48 00 2A 29 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B15C8  7F A3 EB 78 */	mr r3, r29
/* 802B15CC  7F A4 EB 78 */	mr r4, r29
/* 802B15D0  38 A0 00 09 */	li r5, 9
/* 802B15D4  FC 20 F0 90 */	fmr f1, f30
/* 802B15D8  7F E6 FB 78 */	mr r6, r31
/* 802B15DC  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B15E0  FC 60 10 90 */	fmr f3, f2
/* 802B15E4  48 00 2A 09 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B15E8  7F A3 EB 78 */	mr r3, r29
/* 802B15EC  7F A4 EB 78 */	mr r4, r29
/* 802B15F0  38 A0 00 0A */	li r5, 0xa
/* 802B15F4  FC 20 F0 90 */	fmr f1, f30
/* 802B15F8  7F E6 FB 78 */	mr r6, r31
/* 802B15FC  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1600  FC 60 10 90 */	fmr f3, f2
/* 802B1604  48 00 29 E9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1608  7F A3 EB 78 */	mr r3, r29
/* 802B160C  7F A4 EB 78 */	mr r4, r29
/* 802B1610  38 A0 00 0B */	li r5, 0xb
/* 802B1614  FC 20 E8 90 */	fmr f1, f29
/* 802B1618  7F E6 FB 78 */	mr r6, r31
/* 802B161C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1620  FC 60 10 90 */	fmr f3, f2
/* 802B1624  48 00 29 C9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1628  7F A3 EB 78 */	mr r3, r29
/* 802B162C  7F A4 EB 78 */	mr r4, r29
/* 802B1630  38 A0 00 0C */	li r5, 0xc
/* 802B1634  FC 20 E8 90 */	fmr f1, f29
/* 802B1638  7F E6 FB 78 */	mr r6, r31
/* 802B163C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1640  FC 60 10 90 */	fmr f3, f2
/* 802B1644  48 00 29 A9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1648  7F A3 EB 78 */	mr r3, r29
/* 802B164C  7F A4 EB 78 */	mr r4, r29
/* 802B1650  38 A0 00 0D */	li r5, 0xd
/* 802B1654  FC 20 E0 90 */	fmr f1, f28
/* 802B1658  7F E6 FB 78 */	mr r6, r31
/* 802B165C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1660  FC 60 10 90 */	fmr f3, f2
/* 802B1664  48 00 29 89 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1668  7F A3 EB 78 */	mr r3, r29
/* 802B166C  7F A4 EB 78 */	mr r4, r29
/* 802B1670  38 A0 00 0E */	li r5, 0xe
/* 802B1674  FC 20 E0 90 */	fmr f1, f28
/* 802B1678  7F E6 FB 78 */	mr r6, r31
/* 802B167C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1680  FC 60 10 90 */	fmr f3, f2
/* 802B1684  48 00 29 69 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1688  48 00 07 18 */	b lbl_802B1DA0
lbl_802B168C:
/* 802B168C  2C 1E 00 0D */	cmpwi r30, 0xd
/* 802B1690  40 82 00 44 */	bne lbl_802B16D4
/* 802B1694  C0 1D 00 44 */	lfs f0, 0x44(r29)
/* 802B1698  38 00 00 86 */	li r0, 0x86
/* 802B169C  90 1D 00 50 */	stw r0, 0x50(r29)
/* 802B16A0  C0 62 BF C8 */	lfs f3, lit_4732(r2)
/* 802B16A4  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B16A8  80 1D 00 50 */	lwz r0, 0x50(r29)
/* 802B16AC  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802B16B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B16B4  3C 00 43 30 */	lis r0, 0x4330
/* 802B16B8  90 01 00 10 */	stw r0, 0x10(r1)
/* 802B16BC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802B16C0  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B16C4  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B16C8  D0 1D 00 48 */	stfs f0, 0x48(r29)
/* 802B16CC  D0 7D 00 4C */	stfs f3, 0x4c(r29)
/* 802B16D0  48 00 06 D0 */	b lbl_802B1DA0
lbl_802B16D4:
/* 802B16D4  C0 02 BF 98 */	lfs f0, lit_3372(r2)
/* 802B16D8  D0 1D 00 44 */	stfs f0, 0x44(r29)
/* 802B16DC  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802B16E0  D0 1D 00 48 */	stfs f0, 0x48(r29)
/* 802B16E4  38 00 00 00 */	li r0, 0
/* 802B16E8  90 1D 00 50 */	stw r0, 0x50(r29)
/* 802B16EC  D0 1D 00 4C */	stfs f0, 0x4c(r29)
/* 802B16F0  2C 1E 00 06 */	cmpwi r30, 6
/* 802B16F4  40 81 00 10 */	ble lbl_802B1704
/* 802B16F8  38 1E FF F9 */	addi r0, r30, -7
/* 802B16FC  54 1E 08 3C */	slwi r30, r0, 1
/* 802B1700  48 00 06 A0 */	b lbl_802B1DA0
lbl_802B1704:
/* 802B1704  57 C3 08 3C */	slwi r3, r30, 1
/* 802B1708  3B C3 FF FF */	addi r30, r3, -1
/* 802B170C  48 00 06 94 */	b lbl_802B1DA0
lbl_802B1710:
/* 802B1710  2C 1E 00 01 */	cmpwi r30, 1
/* 802B1714  40 82 00 44 */	bne lbl_802B1758
/* 802B1718  C0 1D 00 44 */	lfs f0, 0x44(r29)
/* 802B171C  38 00 00 2D */	li r0, 0x2d
/* 802B1720  90 1D 00 50 */	stw r0, 0x50(r29)
/* 802B1724  C0 62 BF C4 */	lfs f3, lit_4731(r2)
/* 802B1728  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B172C  80 1D 00 50 */	lwz r0, 0x50(r29)
/* 802B1730  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802B1734  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B1738  3C 00 43 30 */	lis r0, 0x4330
/* 802B173C  90 01 00 10 */	stw r0, 0x10(r1)
/* 802B1740  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802B1744  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B1748  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B174C  D0 1D 00 48 */	stfs f0, 0x48(r29)
/* 802B1750  D0 7D 00 4C */	stfs f3, 0x4c(r29)
/* 802B1754  48 00 06 4C */	b lbl_802B1DA0
lbl_802B1758:
/* 802B1758  C0 62 BF 98 */	lfs f3, lit_3372(r2)
/* 802B175C  D0 7D 00 34 */	stfs f3, 0x34(r29)
/* 802B1760  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802B1764  D0 1D 00 38 */	stfs f0, 0x38(r29)
/* 802B1768  38 00 00 00 */	li r0, 0
/* 802B176C  90 1D 00 40 */	stw r0, 0x40(r29)
/* 802B1770  D0 1D 00 3C */	stfs f0, 0x3c(r29)
/* 802B1774  C0 1D 00 44 */	lfs f0, 0x44(r29)
/* 802B1778  38 00 00 2D */	li r0, 0x2d
/* 802B177C  90 1D 00 50 */	stw r0, 0x50(r29)
/* 802B1780  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B1784  80 1D 00 50 */	lwz r0, 0x50(r29)
/* 802B1788  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802B178C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B1790  3C 00 43 30 */	lis r0, 0x4330
/* 802B1794  90 01 00 10 */	stw r0, 0x10(r1)
/* 802B1798  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802B179C  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B17A0  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B17A4  D0 1D 00 48 */	stfs f0, 0x48(r29)
/* 802B17A8  D0 7D 00 4C */	stfs f3, 0x4c(r29)
/* 802B17AC  48 00 05 F4 */	b lbl_802B1DA0
lbl_802B17B0:
/* 802B17B0  88 1D 00 BC */	lbz r0, 0xbc(r29)
/* 802B17B4  28 00 00 FF */	cmplwi r0, 0xff
/* 802B17B8  41 82 00 08 */	beq lbl_802B17C0
/* 802B17BC  3B E0 00 1E */	li r31, 0x1e
lbl_802B17C0:
/* 802B17C0  2C 1E 00 0C */	cmpwi r30, 0xc
/* 802B17C4  40 82 00 18 */	bne lbl_802B17DC
/* 802B17C8  C3 82 BF 98 */	lfs f28, lit_3372(r2)
/* 802B17CC  C3 A2 BF 9C */	lfs f29, lit_3373(r2)
/* 802B17D0  C3 C2 BF C4 */	lfs f30, lit_4731(r2)
/* 802B17D4  FF E0 E8 90 */	fmr f31, f29
/* 802B17D8  48 00 01 08 */	b lbl_802B18E0
lbl_802B17DC:
/* 802B17DC  2C 1E 00 08 */	cmpwi r30, 8
/* 802B17E0  40 82 00 18 */	bne lbl_802B17F8
/* 802B17E4  C3 82 BF 9C */	lfs f28, lit_3373(r2)
/* 802B17E8  C3 A2 BF C4 */	lfs f29, lit_4731(r2)
/* 802B17EC  C3 C2 BF 98 */	lfs f30, lit_3372(r2)
/* 802B17F0  C3 E2 BF D8 */	lfs f31, lit_4736(r2)
/* 802B17F4  48 00 00 EC */	b lbl_802B18E0
lbl_802B17F8:
/* 802B17F8  2C 1E 0B B8 */	cmpwi r30, 0xbb8
/* 802B17FC  40 81 00 E4 */	ble lbl_802B18E0
/* 802B1800  C8 22 BF E8 */	lfd f1, lit_4741(r2)
/* 802B1804  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 802B1808  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B180C  3C 00 43 30 */	lis r0, 0x4330
/* 802B1810  90 01 00 10 */	stw r0, 0x10(r1)
/* 802B1814  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802B1818  EC 20 08 28 */	fsubs f1, f0, f1
/* 802B181C  C0 42 BF DC */	lfs f2, lit_4737(r2)
/* 802B1820  C0 62 BF E0 */	lfs f3, lit_4738(r2)
/* 802B1824  C0 82 BF 98 */	lfs f4, lit_3372(r2)
/* 802B1828  C0 A2 BF 9C */	lfs f5, lit_3373(r2)
/* 802B182C  38 60 00 00 */	li r3, 0
/* 802B1830  4B FF 7E 5D */	bl linearTransform__6Z2CalcFfffffb
/* 802B1834  FF 80 08 90 */	fmr f28, f1
/* 802B1838  C8 22 BF E8 */	lfd f1, lit_4741(r2)
/* 802B183C  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 802B1840  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802B1844  3C 00 43 30 */	lis r0, 0x4330
/* 802B1848  90 01 00 18 */	stw r0, 0x18(r1)
/* 802B184C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802B1850  EC 20 08 28 */	fsubs f1, f0, f1
/* 802B1854  C0 42 BF DC */	lfs f2, lit_4737(r2)
/* 802B1858  C0 62 BF E0 */	lfs f3, lit_4738(r2)
/* 802B185C  C0 82 BF 9C */	lfs f4, lit_3373(r2)
/* 802B1860  C0 A2 BF 98 */	lfs f5, lit_3372(r2)
/* 802B1864  38 60 00 00 */	li r3, 0
/* 802B1868  4B FF 7E 25 */	bl linearTransform__6Z2CalcFfffffb
/* 802B186C  FF A0 08 90 */	fmr f29, f1
/* 802B1870  C8 22 BF E8 */	lfd f1, lit_4741(r2)
/* 802B1874  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 802B1878  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B187C  3C 00 43 30 */	lis r0, 0x4330
/* 802B1880  90 01 00 20 */	stw r0, 0x20(r1)
/* 802B1884  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802B1888  EC 20 08 28 */	fsubs f1, f0, f1
/* 802B188C  C0 42 BF DC */	lfs f2, lit_4737(r2)
/* 802B1890  C0 62 BF E0 */	lfs f3, lit_4738(r2)
/* 802B1894  C0 82 BF C4 */	lfs f4, lit_4731(r2)
/* 802B1898  C0 A2 BF 98 */	lfs f5, lit_3372(r2)
/* 802B189C  38 60 00 00 */	li r3, 0
/* 802B18A0  4B FF 7D ED */	bl linearTransform__6Z2CalcFfffffb
/* 802B18A4  FF C0 08 90 */	fmr f30, f1
/* 802B18A8  C8 22 BF E8 */	lfd f1, lit_4741(r2)
/* 802B18AC  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 802B18B0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802B18B4  3C 00 43 30 */	lis r0, 0x4330
/* 802B18B8  90 01 00 28 */	stw r0, 0x28(r1)
/* 802B18BC  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 802B18C0  EC 20 08 28 */	fsubs f1, f0, f1
/* 802B18C4  C0 42 BF DC */	lfs f2, lit_4737(r2)
/* 802B18C8  C0 62 BF E0 */	lfs f3, lit_4738(r2)
/* 802B18CC  C0 82 BF 9C */	lfs f4, lit_3373(r2)
/* 802B18D0  C0 A2 BF 98 */	lfs f5, lit_3372(r2)
/* 802B18D4  38 60 00 00 */	li r3, 0
/* 802B18D8  4B FF 7D B5 */	bl linearTransform__6Z2CalcFfffffb
/* 802B18DC  FF E0 08 90 */	fmr f31, f1
lbl_802B18E0:
/* 802B18E0  7F A3 EB 78 */	mr r3, r29
/* 802B18E4  7F A4 EB 78 */	mr r4, r29
/* 802B18E8  38 A0 00 00 */	li r5, 0
/* 802B18EC  FC 20 E0 90 */	fmr f1, f28
/* 802B18F0  7F E6 FB 78 */	mr r6, r31
/* 802B18F4  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B18F8  FC 60 10 90 */	fmr f3, f2
/* 802B18FC  48 00 26 F1 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1900  7F A3 EB 78 */	mr r3, r29
/* 802B1904  7F A4 EB 78 */	mr r4, r29
/* 802B1908  38 A0 00 01 */	li r5, 1
/* 802B190C  FC 20 E0 90 */	fmr f1, f28
/* 802B1910  7F E6 FB 78 */	mr r6, r31
/* 802B1914  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1918  FC 60 10 90 */	fmr f3, f2
/* 802B191C  48 00 26 D1 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1920  7F A3 EB 78 */	mr r3, r29
/* 802B1924  7F A4 EB 78 */	mr r4, r29
/* 802B1928  38 A0 00 02 */	li r5, 2
/* 802B192C  FC 20 E0 90 */	fmr f1, f28
/* 802B1930  7F E6 FB 78 */	mr r6, r31
/* 802B1934  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1938  FC 60 10 90 */	fmr f3, f2
/* 802B193C  48 00 26 B1 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1940  7F A3 EB 78 */	mr r3, r29
/* 802B1944  7F A4 EB 78 */	mr r4, r29
/* 802B1948  38 A0 00 03 */	li r5, 3
/* 802B194C  FC 20 E8 90 */	fmr f1, f29
/* 802B1950  7F E6 FB 78 */	mr r6, r31
/* 802B1954  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1958  FC 60 10 90 */	fmr f3, f2
/* 802B195C  48 00 26 91 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1960  7F A3 EB 78 */	mr r3, r29
/* 802B1964  7F A4 EB 78 */	mr r4, r29
/* 802B1968  38 A0 00 04 */	li r5, 4
/* 802B196C  FC 20 E8 90 */	fmr f1, f29
/* 802B1970  7F E6 FB 78 */	mr r6, r31
/* 802B1974  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1978  FC 60 10 90 */	fmr f3, f2
/* 802B197C  48 00 26 71 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1980  7F A3 EB 78 */	mr r3, r29
/* 802B1984  7F A4 EB 78 */	mr r4, r29
/* 802B1988  38 A0 00 05 */	li r5, 5
/* 802B198C  FC 20 E8 90 */	fmr f1, f29
/* 802B1990  7F E6 FB 78 */	mr r6, r31
/* 802B1994  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1998  FC 60 10 90 */	fmr f3, f2
/* 802B199C  48 00 26 51 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B19A0  7F A3 EB 78 */	mr r3, r29
/* 802B19A4  7F A4 EB 78 */	mr r4, r29
/* 802B19A8  38 A0 00 06 */	li r5, 6
/* 802B19AC  FC 20 E8 90 */	fmr f1, f29
/* 802B19B0  7F E6 FB 78 */	mr r6, r31
/* 802B19B4  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B19B8  FC 60 10 90 */	fmr f3, f2
/* 802B19BC  48 00 26 31 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B19C0  7F A3 EB 78 */	mr r3, r29
/* 802B19C4  7F A4 EB 78 */	mr r4, r29
/* 802B19C8  38 A0 00 07 */	li r5, 7
/* 802B19CC  FC 20 F0 90 */	fmr f1, f30
/* 802B19D0  7F E6 FB 78 */	mr r6, r31
/* 802B19D4  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B19D8  FC 60 10 90 */	fmr f3, f2
/* 802B19DC  48 00 26 11 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B19E0  7F A3 EB 78 */	mr r3, r29
/* 802B19E4  7F A4 EB 78 */	mr r4, r29
/* 802B19E8  38 A0 00 08 */	li r5, 8
/* 802B19EC  FC 20 F0 90 */	fmr f1, f30
/* 802B19F0  7F E6 FB 78 */	mr r6, r31
/* 802B19F4  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B19F8  FC 60 10 90 */	fmr f3, f2
/* 802B19FC  48 00 25 F1 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1A00  7F A3 EB 78 */	mr r3, r29
/* 802B1A04  7F A4 EB 78 */	mr r4, r29
/* 802B1A08  38 A0 00 09 */	li r5, 9
/* 802B1A0C  FC 20 F8 90 */	fmr f1, f31
/* 802B1A10  7F E6 FB 78 */	mr r6, r31
/* 802B1A14  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1A18  FC 60 10 90 */	fmr f3, f2
/* 802B1A1C  48 00 25 D1 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1A20  48 00 03 80 */	b lbl_802B1DA0
lbl_802B1A24:
/* 802B1A24  88 1D 00 BC */	lbz r0, 0xbc(r29)
/* 802B1A28  7C 1E 00 00 */	cmpw r30, r0
/* 802B1A2C  41 82 03 90 */	beq lbl_802B1DBC
/* 802B1A30  28 00 00 FF */	cmplwi r0, 0xff
/* 802B1A34  41 82 00 08 */	beq lbl_802B1A3C
/* 802B1A38  3B E0 00 2D */	li r31, 0x2d
lbl_802B1A3C:
/* 802B1A3C  2C 1E 00 01 */	cmpwi r30, 1
/* 802B1A40  40 82 00 10 */	bne lbl_802B1A50
/* 802B1A44  C3 E2 BF 9C */	lfs f31, lit_3373(r2)
/* 802B1A48  C3 C2 BF 98 */	lfs f30, lit_3372(r2)
/* 802B1A4C  48 00 00 0C */	b lbl_802B1A58
lbl_802B1A50:
/* 802B1A50  C3 E2 BF 98 */	lfs f31, lit_3372(r2)
/* 802B1A54  C3 C2 BF 9C */	lfs f30, lit_3373(r2)
lbl_802B1A58:
/* 802B1A58  7F A3 EB 78 */	mr r3, r29
/* 802B1A5C  7F A4 EB 78 */	mr r4, r29
/* 802B1A60  38 A0 00 00 */	li r5, 0
/* 802B1A64  FC 20 F8 90 */	fmr f1, f31
/* 802B1A68  7F E6 FB 78 */	mr r6, r31
/* 802B1A6C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1A70  FC 60 10 90 */	fmr f3, f2
/* 802B1A74  48 00 25 79 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1A78  7F A3 EB 78 */	mr r3, r29
/* 802B1A7C  7F A4 EB 78 */	mr r4, r29
/* 802B1A80  38 A0 00 01 */	li r5, 1
/* 802B1A84  FC 20 F8 90 */	fmr f1, f31
/* 802B1A88  7F E6 FB 78 */	mr r6, r31
/* 802B1A8C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1A90  FC 60 10 90 */	fmr f3, f2
/* 802B1A94  48 00 25 59 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1A98  7F A3 EB 78 */	mr r3, r29
/* 802B1A9C  7F A4 EB 78 */	mr r4, r29
/* 802B1AA0  38 A0 00 02 */	li r5, 2
/* 802B1AA4  FC 20 F8 90 */	fmr f1, f31
/* 802B1AA8  7F E6 FB 78 */	mr r6, r31
/* 802B1AAC  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1AB0  FC 60 10 90 */	fmr f3, f2
/* 802B1AB4  48 00 25 39 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1AB8  7F A3 EB 78 */	mr r3, r29
/* 802B1ABC  7F A4 EB 78 */	mr r4, r29
/* 802B1AC0  38 A0 00 03 */	li r5, 3
/* 802B1AC4  FC 20 F8 90 */	fmr f1, f31
/* 802B1AC8  7F E6 FB 78 */	mr r6, r31
/* 802B1ACC  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1AD0  FC 60 10 90 */	fmr f3, f2
/* 802B1AD4  48 00 25 19 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1AD8  7F A3 EB 78 */	mr r3, r29
/* 802B1ADC  7F A4 EB 78 */	mr r4, r29
/* 802B1AE0  38 A0 00 04 */	li r5, 4
/* 802B1AE4  FC 20 F8 90 */	fmr f1, f31
/* 802B1AE8  7F E6 FB 78 */	mr r6, r31
/* 802B1AEC  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1AF0  FC 60 10 90 */	fmr f3, f2
/* 802B1AF4  48 00 24 F9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1AF8  7F A3 EB 78 */	mr r3, r29
/* 802B1AFC  7F A4 EB 78 */	mr r4, r29
/* 802B1B00  38 A0 00 05 */	li r5, 5
/* 802B1B04  FC 20 F8 90 */	fmr f1, f31
/* 802B1B08  7F E6 FB 78 */	mr r6, r31
/* 802B1B0C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1B10  FC 60 10 90 */	fmr f3, f2
/* 802B1B14  48 00 24 D9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1B18  7F A3 EB 78 */	mr r3, r29
/* 802B1B1C  7F A4 EB 78 */	mr r4, r29
/* 802B1B20  38 A0 00 06 */	li r5, 6
/* 802B1B24  FC 20 F8 90 */	fmr f1, f31
/* 802B1B28  7F E6 FB 78 */	mr r6, r31
/* 802B1B2C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1B30  FC 60 10 90 */	fmr f3, f2
/* 802B1B34  48 00 24 B9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1B38  7F A3 EB 78 */	mr r3, r29
/* 802B1B3C  7F A4 EB 78 */	mr r4, r29
/* 802B1B40  38 A0 00 07 */	li r5, 7
/* 802B1B44  FC 20 F8 90 */	fmr f1, f31
/* 802B1B48  7F E6 FB 78 */	mr r6, r31
/* 802B1B4C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1B50  FC 60 10 90 */	fmr f3, f2
/* 802B1B54  48 00 24 99 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1B58  7F A3 EB 78 */	mr r3, r29
/* 802B1B5C  7F A4 EB 78 */	mr r4, r29
/* 802B1B60  38 A0 00 0A */	li r5, 0xa
/* 802B1B64  FC 20 F0 90 */	fmr f1, f30
/* 802B1B68  7F E6 FB 78 */	mr r6, r31
/* 802B1B6C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1B70  FC 60 10 90 */	fmr f3, f2
/* 802B1B74  48 00 24 79 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1B78  7F A3 EB 78 */	mr r3, r29
/* 802B1B7C  7F A4 EB 78 */	mr r4, r29
/* 802B1B80  38 A0 00 0B */	li r5, 0xb
/* 802B1B84  FC 20 F0 90 */	fmr f1, f30
/* 802B1B88  7F E6 FB 78 */	mr r6, r31
/* 802B1B8C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1B90  FC 60 10 90 */	fmr f3, f2
/* 802B1B94  48 00 24 59 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1B98  7F A3 EB 78 */	mr r3, r29
/* 802B1B9C  7F A4 EB 78 */	mr r4, r29
/* 802B1BA0  38 A0 00 0C */	li r5, 0xc
/* 802B1BA4  FC 20 F0 90 */	fmr f1, f30
/* 802B1BA8  7F E6 FB 78 */	mr r6, r31
/* 802B1BAC  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1BB0  FC 60 10 90 */	fmr f3, f2
/* 802B1BB4  48 00 24 39 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1BB8  7F A3 EB 78 */	mr r3, r29
/* 802B1BBC  7F A4 EB 78 */	mr r4, r29
/* 802B1BC0  38 A0 00 0D */	li r5, 0xd
/* 802B1BC4  FC 20 F0 90 */	fmr f1, f30
/* 802B1BC8  7F E6 FB 78 */	mr r6, r31
/* 802B1BCC  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1BD0  FC 60 10 90 */	fmr f3, f2
/* 802B1BD4  48 00 24 19 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1BD8  48 00 01 C8 */	b lbl_802B1DA0
lbl_802B1BDC:
/* 802B1BDC  2C 1E 00 01 */	cmpwi r30, 1
/* 802B1BE0  40 82 00 44 */	bne lbl_802B1C24
/* 802B1BE4  C0 1D 00 44 */	lfs f0, 0x44(r29)
/* 802B1BE8  38 00 00 2D */	li r0, 0x2d
/* 802B1BEC  90 1D 00 50 */	stw r0, 0x50(r29)
/* 802B1BF0  C0 62 BF C4 */	lfs f3, lit_4731(r2)
/* 802B1BF4  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B1BF8  80 1D 00 50 */	lwz r0, 0x50(r29)
/* 802B1BFC  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802B1C00  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802B1C04  3C 00 43 30 */	lis r0, 0x4330
/* 802B1C08  90 01 00 28 */	stw r0, 0x28(r1)
/* 802B1C0C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 802B1C10  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B1C14  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B1C18  D0 1D 00 48 */	stfs f0, 0x48(r29)
/* 802B1C1C  D0 7D 00 4C */	stfs f3, 0x4c(r29)
/* 802B1C20  48 00 01 80 */	b lbl_802B1DA0
lbl_802B1C24:
/* 802B1C24  2C 1E 00 02 */	cmpwi r30, 2
/* 802B1C28  40 82 00 24 */	bne lbl_802B1C4C
/* 802B1C2C  C0 02 BF C4 */	lfs f0, lit_4731(r2)
/* 802B1C30  D0 1D 00 44 */	stfs f0, 0x44(r29)
/* 802B1C34  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802B1C38  D0 1D 00 48 */	stfs f0, 0x48(r29)
/* 802B1C3C  38 00 00 00 */	li r0, 0
/* 802B1C40  90 1D 00 50 */	stw r0, 0x50(r29)
/* 802B1C44  D0 1D 00 4C */	stfs f0, 0x4c(r29)
/* 802B1C48  48 00 01 58 */	b lbl_802B1DA0
lbl_802B1C4C:
/* 802B1C4C  C0 62 BF 98 */	lfs f3, lit_3372(r2)
/* 802B1C50  D0 7D 00 34 */	stfs f3, 0x34(r29)
/* 802B1C54  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802B1C58  D0 1D 00 38 */	stfs f0, 0x38(r29)
/* 802B1C5C  38 00 00 00 */	li r0, 0
/* 802B1C60  90 1D 00 40 */	stw r0, 0x40(r29)
/* 802B1C64  D0 1D 00 3C */	stfs f0, 0x3c(r29)
/* 802B1C68  C0 1D 00 44 */	lfs f0, 0x44(r29)
/* 802B1C6C  38 00 00 2D */	li r0, 0x2d
/* 802B1C70  90 1D 00 50 */	stw r0, 0x50(r29)
/* 802B1C74  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B1C78  80 1D 00 50 */	lwz r0, 0x50(r29)
/* 802B1C7C  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802B1C80  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802B1C84  3C 00 43 30 */	lis r0, 0x4330
/* 802B1C88  90 01 00 28 */	stw r0, 0x28(r1)
/* 802B1C8C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 802B1C90  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B1C94  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B1C98  D0 1D 00 48 */	stfs f0, 0x48(r29)
/* 802B1C9C  D0 7D 00 4C */	stfs f3, 0x4c(r29)
/* 802B1CA0  48 00 01 00 */	b lbl_802B1DA0
lbl_802B1CA4:
/* 802B1CA4  88 1D 00 BC */	lbz r0, 0xbc(r29)
/* 802B1CA8  7C 1E 00 00 */	cmpw r30, r0
/* 802B1CAC  41 82 01 10 */	beq lbl_802B1DBC
/* 802B1CB0  2C 1E 00 04 */	cmpwi r30, 4
/* 802B1CB4  41 80 00 EC */	blt lbl_802B1DA0
/* 802B1CB8  3B E0 00 32 */	li r31, 0x32
/* 802B1CBC  40 82 00 10 */	bne lbl_802B1CCC
/* 802B1CC0  C3 82 BF 98 */	lfs f28, lit_3372(r2)
/* 802B1CC4  C3 A2 BF 9C */	lfs f29, lit_3373(r2)
/* 802B1CC8  48 00 00 58 */	b lbl_802B1D20
lbl_802B1CCC:
/* 802B1CCC  2C 1E 00 05 */	cmpwi r30, 5
/* 802B1CD0  40 82 00 10 */	bne lbl_802B1CE0
/* 802B1CD4  C3 82 BF 9C */	lfs f28, lit_3373(r2)
/* 802B1CD8  C3 A2 BF 98 */	lfs f29, lit_3372(r2)
/* 802B1CDC  48 00 00 44 */	b lbl_802B1D20
lbl_802B1CE0:
/* 802B1CE0  2C 1E 00 06 */	cmpwi r30, 6
/* 802B1CE4  40 82 00 10 */	bne lbl_802B1CF4
/* 802B1CE8  C3 82 BF 9C */	lfs f28, lit_3373(r2)
/* 802B1CEC  FF A0 E0 90 */	fmr f29, f28
/* 802B1CF0  48 00 00 30 */	b lbl_802B1D20
lbl_802B1CF4:
/* 802B1CF4  2C 1E 00 07 */	cmpwi r30, 7
/* 802B1CF8  40 82 00 14 */	bne lbl_802B1D0C
/* 802B1CFC  C3 82 BF 9C */	lfs f28, lit_3373(r2)
/* 802B1D00  FF A0 E0 90 */	fmr f29, f28
/* 802B1D04  3B E0 00 00 */	li r31, 0
/* 802B1D08  48 00 00 18 */	b lbl_802B1D20
lbl_802B1D0C:
/* 802B1D0C  2C 1E 00 08 */	cmpwi r30, 8
/* 802B1D10  40 82 00 10 */	bne lbl_802B1D20
/* 802B1D14  C3 82 BF 98 */	lfs f28, lit_3372(r2)
/* 802B1D18  FF A0 E0 90 */	fmr f29, f28
/* 802B1D1C  3B E0 00 00 */	li r31, 0
lbl_802B1D20:
/* 802B1D20  7F A3 EB 78 */	mr r3, r29
/* 802B1D24  7F A4 EB 78 */	mr r4, r29
/* 802B1D28  38 A0 00 0C */	li r5, 0xc
/* 802B1D2C  FC 20 E0 90 */	fmr f1, f28
/* 802B1D30  7F E6 FB 78 */	mr r6, r31
/* 802B1D34  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1D38  FC 60 10 90 */	fmr f3, f2
/* 802B1D3C  48 00 22 B1 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1D40  7F A3 EB 78 */	mr r3, r29
/* 802B1D44  7F A4 EB 78 */	mr r4, r29
/* 802B1D48  38 A0 00 0D */	li r5, 0xd
/* 802B1D4C  FC 20 E0 90 */	fmr f1, f28
/* 802B1D50  7F E6 FB 78 */	mr r6, r31
/* 802B1D54  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1D58  FC 60 10 90 */	fmr f3, f2
/* 802B1D5C  48 00 22 91 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1D60  7F A3 EB 78 */	mr r3, r29
/* 802B1D64  7F A4 EB 78 */	mr r4, r29
/* 802B1D68  38 A0 00 0E */	li r5, 0xe
/* 802B1D6C  FC 20 E8 90 */	fmr f1, f29
/* 802B1D70  7F E6 FB 78 */	mr r6, r31
/* 802B1D74  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1D78  FC 60 10 90 */	fmr f3, f2
/* 802B1D7C  48 00 22 71 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1D80  7F A3 EB 78 */	mr r3, r29
/* 802B1D84  7F A4 EB 78 */	mr r4, r29
/* 802B1D88  38 A0 00 0F */	li r5, 0xf
/* 802B1D8C  FC 20 E8 90 */	fmr f1, f29
/* 802B1D90  7F E6 FB 78 */	mr r6, r31
/* 802B1D94  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1D98  FC 60 10 90 */	fmr f3, f2
/* 802B1D9C  48 00 22 51 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
lbl_802B1DA0:
/* 802B1DA0  80 6D 85 F4 */	lwz r3, data_80450B74(r13)
/* 802B1DA4  7F A4 EB 78 */	mr r4, r29
/* 802B1DA8  38 A0 00 09 */	li r5, 9
/* 802B1DAC  57 C6 04 3E */	clrlwi r6, r30, 0x10
/* 802B1DB0  38 E0 FF FF */	li r7, -1
/* 802B1DB4  4B FF 91 29 */	bl setPortData__14Z2SoundStarterFP14JAISoundHandleUlUsSc
/* 802B1DB8  9B DD 00 BC */	stb r30, 0xbc(r29)
lbl_802B1DBC:
/* 802B1DBC  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 802B1DC0  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 802B1DC4  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 802B1DC8  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 802B1DCC  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 802B1DD0  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 802B1DD4  E3 81 00 48 */	psq_l f28, 72(r1), 0, 0 /* qr0 */
/* 802B1DD8  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 802B1DDC  39 61 00 40 */	addi r11, r1, 0x40
/* 802B1DE0  48 0B 04 49 */	bl _restgpr_29
/* 802B1DE4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 802B1DE8  7C 08 03 A6 */	mtlr r0
/* 802B1DEC  38 21 00 80 */	addi r1, r1, 0x80
/* 802B1DF0  4E 80 00 20 */	blr 

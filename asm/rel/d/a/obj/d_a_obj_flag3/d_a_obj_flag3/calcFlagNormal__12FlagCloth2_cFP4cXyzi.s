lbl_80BEEF74:
/* 80BEEF74  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80BEEF78  7C 08 02 A6 */	mflr r0
/* 80BEEF7C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80BEEF80  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80BEEF84  4B 77 32 54 */	b _savegpr_28
/* 80BEEF88  7C 9E 23 78 */	mr r30, r4
/* 80BEEF8C  3B E3 05 40 */	addi r31, r3, 0x540
/* 80BEEF90  1C 05 00 0C */	mulli r0, r5, 0xc
/* 80BEEF94  7C 1F 04 2E */	lfsx f0, r31, r0
/* 80BEEF98  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80BEEF9C  7C 7F 02 14 */	add r3, r31, r0
/* 80BEEFA0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BEEFA4  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80BEEFA8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BEEFAC  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80BEEFB0  38 C1 00 70 */	addi r6, r1, 0x70
/* 80BEEFB4  3C 60 80 BF */	lis r3, lit_3672@ha
/* 80BEEFB8  38 63 04 8C */	addi r3, r3, lit_3672@l
/* 80BEEFBC  38 83 FF FC */	addi r4, r3, -4
/* 80BEEFC0  38 00 00 04 */	li r0, 4
/* 80BEEFC4  7C 09 03 A6 */	mtctr r0
lbl_80BEEFC8:
/* 80BEEFC8  80 64 00 04 */	lwz r3, 4(r4)
/* 80BEEFCC  84 04 00 08 */	lwzu r0, 8(r4)
/* 80BEEFD0  90 66 00 04 */	stw r3, 4(r6)
/* 80BEEFD4  94 06 00 08 */	stwu r0, 8(r6)
/* 80BEEFD8  42 00 FF F0 */	bdnz lbl_80BEEFC8
/* 80BEEFDC  80 04 00 04 */	lwz r0, 4(r4)
/* 80BEEFE0  90 06 00 04 */	stw r0, 4(r6)
/* 80BEEFE4  2C 05 00 00 */	cmpwi r5, 0
/* 80BEEFE8  41 82 01 84 */	beq lbl_80BEF16C
/* 80BEEFEC  2C 05 00 1E */	cmpwi r5, 0x1e
/* 80BEEFF0  41 82 01 7C */	beq lbl_80BEF16C
/* 80BEEFF4  2C 05 00 05 */	cmpwi r5, 5
/* 80BEEFF8  40 82 00 20 */	bne lbl_80BEF018
/* 80BEEFFC  38 05 00 06 */	addi r0, r5, 6
/* 80BEF000  90 01 00 74 */	stw r0, 0x74(r1)
/* 80BEF004  38 05 00 05 */	addi r0, r5, 5
/* 80BEF008  90 01 00 78 */	stw r0, 0x78(r1)
/* 80BEF00C  38 05 FF FF */	addi r0, r5, -1
/* 80BEF010  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80BEF014  48 00 01 58 */	b lbl_80BEF16C
lbl_80BEF018:
/* 80BEF018  2C 05 00 23 */	cmpwi r5, 0x23
/* 80BEF01C  40 82 00 20 */	bne lbl_80BEF03C
/* 80BEF020  38 05 FF FF */	addi r0, r5, -1
/* 80BEF024  90 01 00 74 */	stw r0, 0x74(r1)
/* 80BEF028  38 05 FF F9 */	addi r0, r5, -7
/* 80BEF02C  90 01 00 78 */	stw r0, 0x78(r1)
/* 80BEF030  38 05 FF FA */	addi r0, r5, -6
/* 80BEF034  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80BEF038  48 00 01 34 */	b lbl_80BEF16C
lbl_80BEF03C:
/* 80BEF03C  2C 05 00 00 */	cmpwi r5, 0
/* 80BEF040  40 81 00 38 */	ble lbl_80BEF078
/* 80BEF044  2C 05 00 05 */	cmpwi r5, 5
/* 80BEF048  40 80 00 30 */	bge lbl_80BEF078
/* 80BEF04C  38 05 00 01 */	addi r0, r5, 1
/* 80BEF050  90 01 00 74 */	stw r0, 0x74(r1)
/* 80BEF054  38 05 00 07 */	addi r0, r5, 7
/* 80BEF058  90 01 00 78 */	stw r0, 0x78(r1)
/* 80BEF05C  38 05 00 06 */	addi r0, r5, 6
/* 80BEF060  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80BEF064  38 05 00 05 */	addi r0, r5, 5
/* 80BEF068  90 01 00 80 */	stw r0, 0x80(r1)
/* 80BEF06C  38 05 FF FF */	addi r0, r5, -1
/* 80BEF070  90 01 00 84 */	stw r0, 0x84(r1)
/* 80BEF074  48 00 00 F8 */	b lbl_80BEF16C
lbl_80BEF078:
/* 80BEF078  2C 05 00 1E */	cmpwi r5, 0x1e
/* 80BEF07C  40 81 00 38 */	ble lbl_80BEF0B4
/* 80BEF080  2C 05 00 23 */	cmpwi r5, 0x23
/* 80BEF084  40 80 00 30 */	bge lbl_80BEF0B4
/* 80BEF088  38 05 FF FF */	addi r0, r5, -1
/* 80BEF08C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80BEF090  38 05 FF F9 */	addi r0, r5, -7
/* 80BEF094  90 01 00 78 */	stw r0, 0x78(r1)
/* 80BEF098  38 05 FF FA */	addi r0, r5, -6
/* 80BEF09C  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80BEF0A0  38 05 FF FB */	addi r0, r5, -5
/* 80BEF0A4  90 01 00 80 */	stw r0, 0x80(r1)
/* 80BEF0A8  38 05 00 01 */	addi r0, r5, 1
/* 80BEF0AC  90 01 00 84 */	stw r0, 0x84(r1)
/* 80BEF0B0  48 00 00 BC */	b lbl_80BEF16C
lbl_80BEF0B4:
/* 80BEF0B4  38 60 00 06 */	li r3, 6
/* 80BEF0B8  7C 05 1B D6 */	divw r0, r5, r3
/* 80BEF0BC  7C 00 19 D6 */	mullw r0, r0, r3
/* 80BEF0C0  7C 00 28 51 */	subf. r0, r0, r5
/* 80BEF0C4  40 82 00 30 */	bne lbl_80BEF0F4
/* 80BEF0C8  38 05 FF FA */	addi r0, r5, -6
/* 80BEF0CC  90 01 00 74 */	stw r0, 0x74(r1)
/* 80BEF0D0  38 05 FF FB */	addi r0, r5, -5
/* 80BEF0D4  90 01 00 78 */	stw r0, 0x78(r1)
/* 80BEF0D8  38 05 00 01 */	addi r0, r5, 1
/* 80BEF0DC  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80BEF0E0  38 05 00 07 */	addi r0, r5, 7
/* 80BEF0E4  90 01 00 80 */	stw r0, 0x80(r1)
/* 80BEF0E8  38 05 00 06 */	addi r0, r5, 6
/* 80BEF0EC  90 01 00 84 */	stw r0, 0x84(r1)
/* 80BEF0F0  48 00 00 7C */	b lbl_80BEF16C
lbl_80BEF0F4:
/* 80BEF0F4  2C 00 00 05 */	cmpwi r0, 5
/* 80BEF0F8  40 82 00 30 */	bne lbl_80BEF128
/* 80BEF0FC  38 05 00 06 */	addi r0, r5, 6
/* 80BEF100  90 01 00 74 */	stw r0, 0x74(r1)
/* 80BEF104  38 05 00 05 */	addi r0, r5, 5
/* 80BEF108  90 01 00 78 */	stw r0, 0x78(r1)
/* 80BEF10C  38 05 FF FF */	addi r0, r5, -1
/* 80BEF110  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80BEF114  38 05 FF F9 */	addi r0, r5, -7
/* 80BEF118  90 01 00 80 */	stw r0, 0x80(r1)
/* 80BEF11C  38 05 FF FA */	addi r0, r5, -6
/* 80BEF120  90 01 00 84 */	stw r0, 0x84(r1)
/* 80BEF124  48 00 00 48 */	b lbl_80BEF16C
lbl_80BEF128:
/* 80BEF128  38 65 FF F9 */	addi r3, r5, -7
/* 80BEF12C  90 61 00 74 */	stw r3, 0x74(r1)
/* 80BEF130  38 05 FF FA */	addi r0, r5, -6
/* 80BEF134  90 01 00 78 */	stw r0, 0x78(r1)
/* 80BEF138  38 05 FF FB */	addi r0, r5, -5
/* 80BEF13C  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80BEF140  38 05 00 01 */	addi r0, r5, 1
/* 80BEF144  90 01 00 80 */	stw r0, 0x80(r1)
/* 80BEF148  38 05 00 07 */	addi r0, r5, 7
/* 80BEF14C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80BEF150  38 05 00 06 */	addi r0, r5, 6
/* 80BEF154  90 01 00 88 */	stw r0, 0x88(r1)
/* 80BEF158  38 05 00 05 */	addi r0, r5, 5
/* 80BEF15C  90 01 00 8C */	stw r0, 0x8c(r1)
/* 80BEF160  38 05 FF FF */	addi r0, r5, -1
/* 80BEF164  90 01 00 90 */	stw r0, 0x90(r1)
/* 80BEF168  90 61 00 94 */	stw r3, 0x94(r1)
lbl_80BEF16C:
/* 80BEF16C  3B A1 00 74 */	addi r29, r1, 0x74
/* 80BEF170  3C 60 80 BF */	lis r3, lit_4012@ha
/* 80BEF174  C0 03 05 08 */	lfs f0, lit_4012@l(r3)
/* 80BEF178  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80BEF17C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80BEF180  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80BEF184  3B 80 00 00 */	li r28, 0
lbl_80BEF188:
/* 80BEF188  80 1D 00 04 */	lwz r0, 4(r29)
/* 80BEF18C  2C 00 FF FF */	cmpwi r0, -1
/* 80BEF190  41 82 00 AC */	beq lbl_80BEF23C
/* 80BEF194  38 61 00 2C */	addi r3, r1, 0x2c
/* 80BEF198  80 1D 00 00 */	lwz r0, 0(r29)
/* 80BEF19C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80BEF1A0  7C 9F 02 14 */	add r4, r31, r0
/* 80BEF1A4  38 A1 00 68 */	addi r5, r1, 0x68
/* 80BEF1A8  4B 67 79 8C */	b __mi__4cXyzCFRC3Vec
/* 80BEF1AC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80BEF1B0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80BEF1B4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80BEF1B8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80BEF1BC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80BEF1C0  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80BEF1C4  38 61 00 20 */	addi r3, r1, 0x20
/* 80BEF1C8  80 1D 00 04 */	lwz r0, 4(r29)
/* 80BEF1CC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80BEF1D0  7C 9F 02 14 */	add r4, r31, r0
/* 80BEF1D4  38 A1 00 68 */	addi r5, r1, 0x68
/* 80BEF1D8  4B 67 79 5C */	b __mi__4cXyzCFRC3Vec
/* 80BEF1DC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80BEF1E0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80BEF1E4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80BEF1E8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80BEF1EC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80BEF1F0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80BEF1F4  38 61 00 14 */	addi r3, r1, 0x14
/* 80BEF1F8  38 81 00 50 */	addi r4, r1, 0x50
/* 80BEF1FC  38 A1 00 5C */	addi r5, r1, 0x5c
/* 80BEF200  4B 67 7A BC */	b outprod__4cXyzCFRC3Vec
/* 80BEF204  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80BEF208  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80BEF20C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80BEF210  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80BEF214  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80BEF218  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80BEF21C  38 61 00 38 */	addi r3, r1, 0x38
/* 80BEF220  38 81 00 44 */	addi r4, r1, 0x44
/* 80BEF224  7C 65 1B 78 */	mr r5, r3
/* 80BEF228  4B 75 7E 68 */	b PSVECAdd
/* 80BEF22C  3B 9C 00 01 */	addi r28, r28, 1
/* 80BEF230  2C 1C 00 08 */	cmpwi r28, 8
/* 80BEF234  3B BD 00 04 */	addi r29, r29, 4
/* 80BEF238  41 80 FF 50 */	blt lbl_80BEF188
lbl_80BEF23C:
/* 80BEF23C  38 61 00 08 */	addi r3, r1, 8
/* 80BEF240  38 81 00 38 */	addi r4, r1, 0x38
/* 80BEF244  4B 67 7D 04 */	b normalizeZP__4cXyzFv
/* 80BEF248  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80BEF24C  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80BEF250  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80BEF254  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80BEF258  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80BEF25C  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80BEF260  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80BEF264  4B 77 2F C0 */	b _restgpr_28
/* 80BEF268  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80BEF26C  7C 08 03 A6 */	mtlr r0
/* 80BEF270  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80BEF274  4E 80 00 20 */	blr 

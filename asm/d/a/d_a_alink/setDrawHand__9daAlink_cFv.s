lbl_800CAFC8:
/* 800CAFC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800CAFCC  7C 08 02 A6 */	mflr r0
/* 800CAFD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800CAFD4  39 61 00 20 */	addi r11, r1, 0x20
/* 800CAFD8  48 29 72 05 */	bl _savegpr_29
/* 800CAFDC  7C 7D 1B 78 */	mr r29, r3
/* 800CAFE0  80 63 06 D0 */	lwz r3, 0x6d0(r3)
/* 800CAFE4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800CAFE8  60 00 00 01 */	ori r0, r0, 1
/* 800CAFEC  90 03 00 0C */	stw r0, 0xc(r3)
/* 800CAFF0  80 7D 06 D4 */	lwz r3, 0x6d4(r29)
/* 800CAFF4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800CAFF8  60 00 00 01 */	ori r0, r0, 1
/* 800CAFFC  90 03 00 0C */	stw r0, 0xc(r3)
/* 800CB000  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 800CB004  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 800CB008  41 82 00 40 */	beq lbl_800CB048
/* 800CB00C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800CB010  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 800CB014  88 64 00 14 */	lbz r3, 0x14(r4)
/* 800CB018  38 03 FF 01 */	addi r0, r3, -255
/* 800CB01C  20 00 00 00 */	subfic r0, r0, 0
/* 800CB020  7C 60 01 10 */	subfe r3, r0, r0
/* 800CB024  38 00 00 FE */	li r0, 0xfe
/* 800CB028  7C 1F 18 78 */	andc r31, r0, r3
/* 800CB02C  88 04 00 15 */	lbz r0, 0x15(r4)
/* 800CB030  28 00 00 FF */	cmplwi r0, 0xff
/* 800CB034  41 82 00 0C */	beq lbl_800CB040
/* 800CB038  3B C0 00 06 */	li r30, 6
/* 800CB03C  48 00 02 4C */	b lbl_800CB288
lbl_800CB040:
/* 800CB040  3B C0 00 FE */	li r30, 0xfe
/* 800CB044  48 00 02 44 */	b lbl_800CB288
lbl_800CB048:
/* 800CB048  A0 7D 2F E8 */	lhz r3, 0x2fe8(r29)
/* 800CB04C  28 03 01 3D */	cmplwi r3, 0x13d
/* 800CB050  40 82 00 10 */	bne lbl_800CB060
/* 800CB054  8B FD 2F 92 */	lbz r31, 0x2f92(r29)
/* 800CB058  8B DD 2F 93 */	lbz r30, 0x2f93(r29)
/* 800CB05C  48 00 02 2C */	b lbl_800CB288
lbl_800CB060:
/* 800CB060  88 BD 2F 92 */	lbz r5, 0x2f92(r29)
/* 800CB064  28 05 00 64 */	cmplwi r5, 0x64
/* 800CB068  40 82 00 68 */	bne lbl_800CB0D0
/* 800CB06C  28 03 00 DC */	cmplwi r3, 0xdc
/* 800CB070  41 82 00 20 */	beq lbl_800CB090
/* 800CB074  28 03 00 E9 */	cmplwi r3, 0xe9
/* 800CB078  41 82 00 18 */	beq lbl_800CB090
/* 800CB07C  28 03 00 2C */	cmplwi r3, 0x2c
/* 800CB080  40 82 00 1C */	bne lbl_800CB09C
/* 800CB084  A8 1D 30 0C */	lha r0, 0x300c(r29)
/* 800CB088  2C 00 00 00 */	cmpwi r0, 0
/* 800CB08C  41 82 00 10 */	beq lbl_800CB09C
lbl_800CB090:
/* 800CB090  A8 1D 30 10 */	lha r0, 0x3010(r29)
/* 800CB094  54 1F 06 3E */	clrlwi r31, r0, 0x18
/* 800CB098  48 00 01 40 */	b lbl_800CB1D8
lbl_800CB09C:
/* 800CB09C  7F A3 EB 78 */	mr r3, r29
/* 800CB0A0  38 80 00 FA */	li r4, 0xfa
/* 800CB0A4  4B FE 14 B5 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800CB0A8  2C 03 00 00 */	cmpwi r3, 0
/* 800CB0AC  41 82 00 1C */	beq lbl_800CB0C8
/* 800CB0B0  C0 3D 1F E0 */	lfs f1, 0x1fe0(r29)
/* 800CB0B4  C0 02 93 44 */	lfs f0, lit_7977(r2)
/* 800CB0B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800CB0BC  40 80 00 0C */	bge lbl_800CB0C8
/* 800CB0C0  3B E0 00 00 */	li r31, 0
/* 800CB0C4  48 00 01 14 */	b lbl_800CB1D8
lbl_800CB0C8:
/* 800CB0C8  3B E0 00 02 */	li r31, 2
/* 800CB0CC  48 00 01 0C */	b lbl_800CB1D8
lbl_800CB0D0:
/* 800CB0D0  88 9D 2F 96 */	lbz r4, 0x2f96(r29)
/* 800CB0D4  28 04 00 FF */	cmplwi r4, 0xff
/* 800CB0D8  41 82 00 24 */	beq lbl_800CB0FC
/* 800CB0DC  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 800CB0E0  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 800CB0E4  41 82 00 10 */	beq lbl_800CB0F4
/* 800CB0E8  88 1D 2F 94 */	lbz r0, 0x2f94(r29)
/* 800CB0EC  28 00 00 FF */	cmplwi r0, 0xff
/* 800CB0F0  40 82 00 0C */	bne lbl_800CB0FC
lbl_800CB0F4:
/* 800CB0F4  7C 9F 23 78 */	mr r31, r4
/* 800CB0F8  48 00 00 E0 */	b lbl_800CB1D8
lbl_800CB0FC:
/* 800CB0FC  88 1D 2F 94 */	lbz r0, 0x2f94(r29)
/* 800CB100  28 00 00 FF */	cmplwi r0, 0xff
/* 800CB104  41 82 00 D0 */	beq lbl_800CB1D4
/* 800CB108  28 00 00 67 */	cmplwi r0, 0x67
/* 800CB10C  40 82 00 24 */	bne lbl_800CB130
/* 800CB110  7F A3 EB 78 */	mr r3, r29
/* 800CB114  48 01 4A B5 */	bl checkBowGrabLeftHand__9daAlink_cCFv
/* 800CB118  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800CB11C  41 82 00 0C */	beq lbl_800CB128
/* 800CB120  3B E0 00 00 */	li r31, 0
/* 800CB124  48 00 00 B4 */	b lbl_800CB1D8
lbl_800CB128:
/* 800CB128  8B FD 2F 92 */	lbz r31, 0x2f92(r29)
/* 800CB12C  48 00 00 AC */	b lbl_800CB1D8
lbl_800CB130:
/* 800CB130  28 00 00 65 */	cmplwi r0, 0x65
/* 800CB134  40 82 00 34 */	bne lbl_800CB168
/* 800CB138  A0 1D 1F 94 */	lhz r0, 0x1f94(r29)
/* 800CB13C  28 00 00 C7 */	cmplwi r0, 0xc7
/* 800CB140  40 82 00 0C */	bne lbl_800CB14C
/* 800CB144  3B E0 00 00 */	li r31, 0
/* 800CB148  48 00 00 90 */	b lbl_800CB1D8
lbl_800CB14C:
/* 800CB14C  A8 1D 30 18 */	lha r0, 0x3018(r29)
/* 800CB150  2C 00 00 01 */	cmpwi r0, 1
/* 800CB154  40 82 00 0C */	bne lbl_800CB160
/* 800CB158  3B E0 00 04 */	li r31, 4
/* 800CB15C  48 00 00 7C */	b lbl_800CB1D8
lbl_800CB160:
/* 800CB160  3B E0 00 02 */	li r31, 2
/* 800CB164  48 00 00 74 */	b lbl_800CB1D8
lbl_800CB168:
/* 800CB168  28 00 00 00 */	cmplwi r0, 0
/* 800CB16C  40 82 00 14 */	bne lbl_800CB180
/* 800CB170  28 03 00 54 */	cmplwi r3, 0x54
/* 800CB174  40 82 00 0C */	bne lbl_800CB180
/* 800CB178  7C BF 2B 78 */	mr r31, r5
/* 800CB17C  48 00 00 5C */	b lbl_800CB1D8
lbl_800CB180:
/* 800CB180  28 00 00 00 */	cmplwi r0, 0
/* 800CB184  40 82 00 48 */	bne lbl_800CB1CC
/* 800CB188  A0 1D 2F DC */	lhz r0, 0x2fdc(r29)
/* 800CB18C  28 00 01 03 */	cmplwi r0, 0x103
/* 800CB190  40 82 00 3C */	bne lbl_800CB1CC
/* 800CB194  7F A3 EB 78 */	mr r3, r29
/* 800CB198  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 800CB19C  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800CB1A0  7D 89 03 A6 */	mtctr r12
/* 800CB1A4  4E 80 04 21 */	bctrl 
/* 800CB1A8  28 03 00 00 */	cmplwi r3, 0
/* 800CB1AC  40 82 00 18 */	bne lbl_800CB1C4
/* 800CB1B0  7F A3 EB 78 */	mr r3, r29
/* 800CB1B4  38 80 01 18 */	li r4, 0x118
/* 800CB1B8  4B FE 13 A1 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800CB1BC  2C 03 00 00 */	cmpwi r3, 0
/* 800CB1C0  41 82 00 0C */	beq lbl_800CB1CC
lbl_800CB1C4:
/* 800CB1C4  3B E0 00 02 */	li r31, 2
/* 800CB1C8  48 00 00 10 */	b lbl_800CB1D8
lbl_800CB1CC:
/* 800CB1CC  8B FD 2F 94 */	lbz r31, 0x2f94(r29)
/* 800CB1D0  48 00 00 08 */	b lbl_800CB1D8
lbl_800CB1D4:
/* 800CB1D4  7C BF 2B 78 */	mr r31, r5
lbl_800CB1D8:
/* 800CB1D8  88 1D 05 68 */	lbz r0, 0x568(r29)
/* 800CB1DC  28 00 00 20 */	cmplwi r0, 0x20
/* 800CB1E0  41 82 00 0C */	beq lbl_800CB1EC
/* 800CB1E4  28 00 00 27 */	cmplwi r0, 0x27
/* 800CB1E8  40 82 00 18 */	bne lbl_800CB200
lbl_800CB1EC:
/* 800CB1EC  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 800CB1F0  28 00 00 DC */	cmplwi r0, 0xdc
/* 800CB1F4  41 82 00 0C */	beq lbl_800CB200
/* 800CB1F8  3B C0 00 05 */	li r30, 5
/* 800CB1FC  48 00 00 8C */	b lbl_800CB288
lbl_800CB200:
/* 800CB200  88 7D 2F 97 */	lbz r3, 0x2f97(r29)
/* 800CB204  28 03 00 FF */	cmplwi r3, 0xff
/* 800CB208  41 82 00 30 */	beq lbl_800CB238
/* 800CB20C  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 800CB210  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 800CB214  41 82 00 1C */	beq lbl_800CB230
/* 800CB218  88 1D 2F 95 */	lbz r0, 0x2f95(r29)
/* 800CB21C  28 00 00 FF */	cmplwi r0, 0xff
/* 800CB220  40 82 00 18 */	bne lbl_800CB238
/* 800CB224  80 1D 2E 50 */	lwz r0, 0x2e50(r29)
/* 800CB228  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 800CB22C  41 82 00 0C */	beq lbl_800CB238
lbl_800CB230:
/* 800CB230  7C 7E 1B 78 */	mr r30, r3
/* 800CB234  48 00 00 54 */	b lbl_800CB288
lbl_800CB238:
/* 800CB238  88 1D 2F 95 */	lbz r0, 0x2f95(r29)
/* 800CB23C  28 00 00 FF */	cmplwi r0, 0xff
/* 800CB240  41 82 00 30 */	beq lbl_800CB270
/* 800CB244  28 00 00 65 */	cmplwi r0, 0x65
/* 800CB248  40 82 00 20 */	bne lbl_800CB268
/* 800CB24C  A8 1D 30 18 */	lha r0, 0x3018(r29)
/* 800CB250  2C 00 00 01 */	cmpwi r0, 1
/* 800CB254  40 82 00 0C */	bne lbl_800CB260
/* 800CB258  3B C0 00 05 */	li r30, 5
/* 800CB25C  48 00 00 2C */	b lbl_800CB288
lbl_800CB260:
/* 800CB260  8B DD 2F 93 */	lbz r30, 0x2f93(r29)
/* 800CB264  48 00 00 24 */	b lbl_800CB288
lbl_800CB268:
/* 800CB268  7C 1E 03 78 */	mr r30, r0
/* 800CB26C  48 00 00 1C */	b lbl_800CB288
lbl_800CB270:
/* 800CB270  80 1D 2E 50 */	lwz r0, 0x2e50(r29)
/* 800CB274  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 800CB278  40 82 00 0C */	bne lbl_800CB284
/* 800CB27C  3B C0 00 06 */	li r30, 6
/* 800CB280  48 00 00 08 */	b lbl_800CB288
lbl_800CB284:
/* 800CB284  8B DD 2F 93 */	lbz r30, 0x2f93(r29)
lbl_800CB288:
/* 800CB288  80 7D 06 50 */	lwz r3, 0x650(r29)
/* 800CB28C  38 63 00 24 */	addi r3, r3, 0x24
/* 800CB290  80 9D 06 5C */	lwz r4, 0x65c(r29)
/* 800CB294  38 84 00 24 */	addi r4, r4, 0x24
/* 800CB298  48 27 B2 19 */	bl PSMTXCopy
/* 800CB29C  80 7D 06 5C */	lwz r3, 0x65c(r29)
/* 800CB2A0  81 83 00 00 */	lwz r12, 0(r3)
/* 800CB2A4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800CB2A8  7D 89 03 A6 */	mtctr r12
/* 800CB2AC  4E 80 04 21 */	bctrl 
/* 800CB2B0  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 800CB2B4  28 00 00 FE */	cmplwi r0, 0xfe
/* 800CB2B8  41 82 00 0C */	beq lbl_800CB2C4
/* 800CB2BC  28 00 00 FB */	cmplwi r0, 0xfb
/* 800CB2C0  40 82 00 10 */	bne lbl_800CB2D0
lbl_800CB2C4:
/* 800CB2C4  80 1D 06 D8 */	lwz r0, 0x6d8(r29)
/* 800CB2C8  90 1D 06 D0 */	stw r0, 0x6d0(r29)
/* 800CB2CC  48 00 00 44 */	b lbl_800CB310
lbl_800CB2D0:
/* 800CB2D0  80 7D 06 5C */	lwz r3, 0x65c(r29)
/* 800CB2D4  80 63 00 04 */	lwz r3, 4(r3)
/* 800CB2D8  80 63 00 60 */	lwz r3, 0x60(r3)
/* 800CB2DC  57 E0 15 BA */	rlwinm r0, r31, 2, 0x16, 0x1d
/* 800CB2E0  7C 63 00 2E */	lwzx r3, r3, r0
/* 800CB2E4  80 03 00 08 */	lwz r0, 8(r3)
/* 800CB2E8  90 1D 06 D0 */	stw r0, 0x6d0(r29)
/* 800CB2EC  80 7D 06 50 */	lwz r3, 0x650(r29)
/* 800CB2F0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800CB2F4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800CB2F8  38 63 01 B0 */	addi r3, r3, 0x1b0
/* 800CB2FC  80 9D 06 5C */	lwz r4, 0x65c(r29)
/* 800CB300  80 84 00 84 */	lwz r4, 0x84(r4)
/* 800CB304  80 84 00 0C */	lwz r4, 0xc(r4)
/* 800CB308  38 84 00 30 */	addi r4, r4, 0x30
/* 800CB30C  48 27 B1 A5 */	bl PSMTXCopy
lbl_800CB310:
/* 800CB310  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 800CB314  28 00 00 FB */	cmplwi r0, 0xfb
/* 800CB318  40 82 00 64 */	bne lbl_800CB37C
/* 800CB31C  80 7D 06 50 */	lwz r3, 0x650(r29)
/* 800CB320  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800CB324  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800CB328  38 63 01 B0 */	addi r3, r3, 0x1b0
/* 800CB32C  80 9D 06 A0 */	lwz r4, 0x6a0(r29)
/* 800CB330  38 84 00 24 */	addi r4, r4, 0x24
/* 800CB334  48 27 B1 7D */	bl PSMTXCopy
/* 800CB338  80 7D 06 A4 */	lwz r3, 0x6a4(r29)
/* 800CB33C  28 03 00 00 */	cmplwi r3, 0
/* 800CB340  41 82 00 14 */	beq lbl_800CB354
/* 800CB344  80 9D 06 A0 */	lwz r4, 0x6a0(r29)
/* 800CB348  80 84 00 04 */	lwz r4, 4(r4)
/* 800CB34C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 800CB350  4B F4 26 7D */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
lbl_800CB354:
/* 800CB354  80 7D 06 A0 */	lwz r3, 0x6a0(r29)
/* 800CB358  81 83 00 00 */	lwz r12, 0(r3)
/* 800CB35C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800CB360  7D 89 03 A6 */	mtctr r12
/* 800CB364  4E 80 04 21 */	bctrl 
/* 800CB368  80 7D 06 D0 */	lwz r3, 0x6d0(r29)
/* 800CB36C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800CB370  60 00 00 01 */	ori r0, r0, 1
/* 800CB374  90 03 00 0C */	stw r0, 0xc(r3)
/* 800CB378  48 00 00 14 */	b lbl_800CB38C
lbl_800CB37C:
/* 800CB37C  80 7D 06 D0 */	lwz r3, 0x6d0(r29)
/* 800CB380  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800CB384  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800CB388  90 03 00 0C */	stw r0, 0xc(r3)
lbl_800CB38C:
/* 800CB38C  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 800CB390  28 00 00 FE */	cmplwi r0, 0xfe
/* 800CB394  41 82 00 0C */	beq lbl_800CB3A0
/* 800CB398  28 00 00 FB */	cmplwi r0, 0xfb
/* 800CB39C  40 82 00 10 */	bne lbl_800CB3AC
lbl_800CB3A0:
/* 800CB3A0  80 1D 06 DC */	lwz r0, 0x6dc(r29)
/* 800CB3A4  90 1D 06 D4 */	stw r0, 0x6d4(r29)
/* 800CB3A8  48 00 00 44 */	b lbl_800CB3EC
lbl_800CB3AC:
/* 800CB3AC  80 7D 06 5C */	lwz r3, 0x65c(r29)
/* 800CB3B0  80 63 00 04 */	lwz r3, 4(r3)
/* 800CB3B4  80 63 00 60 */	lwz r3, 0x60(r3)
/* 800CB3B8  57 C0 15 BA */	rlwinm r0, r30, 2, 0x16, 0x1d
/* 800CB3BC  7C 63 00 2E */	lwzx r3, r3, r0
/* 800CB3C0  80 03 00 08 */	lwz r0, 8(r3)
/* 800CB3C4  90 1D 06 D4 */	stw r0, 0x6d4(r29)
/* 800CB3C8  80 7D 06 50 */	lwz r3, 0x650(r29)
/* 800CB3CC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800CB3D0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800CB3D4  38 63 02 A0 */	addi r3, r3, 0x2a0
/* 800CB3D8  80 9D 06 5C */	lwz r4, 0x65c(r29)
/* 800CB3DC  80 84 00 84 */	lwz r4, 0x84(r4)
/* 800CB3E0  80 84 00 0C */	lwz r4, 0xc(r4)
/* 800CB3E4  38 84 00 60 */	addi r4, r4, 0x60
/* 800CB3E8  48 27 B0 C9 */	bl PSMTXCopy
lbl_800CB3EC:
/* 800CB3EC  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 800CB3F0  28 00 00 FB */	cmplwi r0, 0xfb
/* 800CB3F4  40 82 00 64 */	bne lbl_800CB458
/* 800CB3F8  80 7D 06 50 */	lwz r3, 0x650(r29)
/* 800CB3FC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800CB400  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800CB404  38 63 02 A0 */	addi r3, r3, 0x2a0
/* 800CB408  80 9D 06 A8 */	lwz r4, 0x6a8(r29)
/* 800CB40C  38 84 00 24 */	addi r4, r4, 0x24
/* 800CB410  48 27 B0 A1 */	bl PSMTXCopy
/* 800CB414  80 7D 06 AC */	lwz r3, 0x6ac(r29)
/* 800CB418  28 03 00 00 */	cmplwi r3, 0
/* 800CB41C  41 82 00 14 */	beq lbl_800CB430
/* 800CB420  80 9D 06 A8 */	lwz r4, 0x6a8(r29)
/* 800CB424  80 84 00 04 */	lwz r4, 4(r4)
/* 800CB428  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 800CB42C  4B F4 25 A1 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
lbl_800CB430:
/* 800CB430  80 7D 06 A8 */	lwz r3, 0x6a8(r29)
/* 800CB434  81 83 00 00 */	lwz r12, 0(r3)
/* 800CB438  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800CB43C  7D 89 03 A6 */	mtctr r12
/* 800CB440  4E 80 04 21 */	bctrl 
/* 800CB444  80 7D 06 D4 */	lwz r3, 0x6d4(r29)
/* 800CB448  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800CB44C  60 00 00 01 */	ori r0, r0, 1
/* 800CB450  90 03 00 0C */	stw r0, 0xc(r3)
/* 800CB454  48 00 00 14 */	b lbl_800CB468
lbl_800CB458:
/* 800CB458  80 7D 06 D4 */	lwz r3, 0x6d4(r29)
/* 800CB45C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800CB460  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800CB464  90 03 00 0C */	stw r0, 0xc(r3)
lbl_800CB468:
/* 800CB468  39 61 00 20 */	addi r11, r1, 0x20
/* 800CB46C  48 29 6D BD */	bl _restgpr_29
/* 800CB470  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800CB474  7C 08 03 A6 */	mtlr r0
/* 800CB478  38 21 00 20 */	addi r1, r1, 0x20
/* 800CB47C  4E 80 00 20 */	blr 

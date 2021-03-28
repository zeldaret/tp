lbl_804BF070:
/* 804BF070  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 804BF074  7C 08 02 A6 */	mflr r0
/* 804BF078  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 804BF07C  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 804BF080  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 804BF084  39 61 00 B0 */	addi r11, r1, 0xb0
/* 804BF088  4B EA 31 48 */	b _savegpr_26
/* 804BF08C  7C 7F 1B 78 */	mr r31, r3
/* 804BF090  3C 60 80 4C */	lis r3, lit_3777@ha
/* 804BF094  3B A3 64 C8 */	addi r29, r3, lit_3777@l
/* 804BF098  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804BF09C  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 804BF0A0  83 9E 5D B4 */	lwz r28, 0x5db4(r30)
/* 804BF0A4  7F 83 E3 78 */	mr r3, r28
/* 804BF0A8  4B C7 4E 48 */	b checkMidnaLockJumpPoint__9daAlink_cCFv
/* 804BF0AC  7C 7B 1B 78 */	mr r27, r3
/* 804BF0B0  80 1F 08 94 */	lwz r0, 0x894(r31)
/* 804BF0B4  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 804BF0B8  40 82 00 18 */	bne lbl_804BF0D0
/* 804BF0BC  38 7D 01 1C */	addi r3, r29, 0x11c
/* 804BF0C0  A0 63 00 6C */	lhz r3, 0x6c(r3)
/* 804BF0C4  A0 1F 05 E4 */	lhz r0, 0x5e4(r31)
/* 804BF0C8  7C 03 00 40 */	cmplw r3, r0
/* 804BF0CC  40 82 00 08 */	bne lbl_804BF0D4
lbl_804BF0D0:
/* 804BF0D0  3B 60 00 00 */	li r27, 0
lbl_804BF0D4:
/* 804BF0D4  80 1F 08 94 */	lwz r0, 0x894(r31)
/* 804BF0D8  54 00 05 EA */	rlwinm r0, r0, 0, 0x17, 0x15
/* 804BF0DC  90 1F 08 94 */	stw r0, 0x894(r31)
/* 804BF0E0  3B 40 00 00 */	li r26, 0
/* 804BF0E4  28 1B 00 00 */	cmplwi r27, 0
/* 804BF0E8  40 82 00 18 */	bne lbl_804BF100
/* 804BF0EC  80 1F 08 94 */	lwz r0, 0x894(r31)
/* 804BF0F0  54 00 05 A8 */	rlwinm r0, r0, 0, 0x16, 0x14
/* 804BF0F4  90 1F 08 94 */	stw r0, 0x894(r31)
/* 804BF0F8  38 00 00 00 */	li r0, 0
/* 804BF0FC  98 1F 08 50 */	stb r0, 0x850(r31)
lbl_804BF100:
/* 804BF100  80 1F 08 C0 */	lwz r0, 0x8c0(r31)
/* 804BF104  28 00 02 00 */	cmplwi r0, 0x200
/* 804BF108  40 82 00 A8 */	bne lbl_804BF1B0
/* 804BF10C  3C 60 80 45 */	lis r3, m_object__7dDemo_c@ha
/* 804BF110  38 63 0E 20 */	addi r3, r3, m_object__7dDemo_c@l
/* 804BF114  80 63 00 00 */	lwz r3, 0(r3)
/* 804BF118  88 9F 04 98 */	lbz r4, 0x498(r31)
/* 804BF11C  4B B7 9F 6C */	b getActor__14dDemo_object_cFUc
/* 804BF120  7C 7A 1B 78 */	mr r26, r3
/* 804BF124  28 03 00 00 */	cmplwi r3, 0
/* 804BF128  41 82 00 78 */	beq lbl_804BF1A0
/* 804BF12C  48 00 00 50 */	b lbl_804BF17C
lbl_804BF130:
/* 804BF130  80 01 00 20 */	lwz r0, 0x20(r1)
/* 804BF134  2C 00 00 00 */	cmpwi r0, 0
/* 804BF138  40 82 00 44 */	bne lbl_804BF17C
/* 804BF13C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804BF140  2C 00 00 00 */	cmpwi r0, 0
/* 804BF144  40 82 00 38 */	bne lbl_804BF17C
/* 804BF148  80 01 00 18 */	lwz r0, 0x18(r1)
/* 804BF14C  2C 00 00 01 */	cmpwi r0, 1
/* 804BF150  40 82 00 2C */	bne lbl_804BF17C
/* 804BF154  A0 01 00 08 */	lhz r0, 8(r1)
/* 804BF158  28 00 00 00 */	cmplwi r0, 0
/* 804BF15C  41 82 00 14 */	beq lbl_804BF170
/* 804BF160  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BF164  54 00 05 66 */	rlwinm r0, r0, 0, 0x15, 0x13
/* 804BF168  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804BF16C  48 00 00 10 */	b lbl_804BF17C
lbl_804BF170:
/* 804BF170  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BF174  60 00 08 00 */	ori r0, r0, 0x800
/* 804BF178  90 1F 08 90 */	stw r0, 0x890(r31)
lbl_804BF17C:
/* 804BF17C  7F 43 D3 78 */	mr r3, r26
/* 804BF180  38 81 00 20 */	addi r4, r1, 0x20
/* 804BF184  38 A1 00 1C */	addi r5, r1, 0x1c
/* 804BF188  38 C1 00 18 */	addi r6, r1, 0x18
/* 804BF18C  38 E1 00 08 */	addi r7, r1, 8
/* 804BF190  39 00 00 00 */	li r8, 0
/* 804BF194  4B B7 91 A4 */	b getDemoIDData__13dDemo_actor_cFPiPiPiPUsPUc
/* 804BF198  2C 03 00 00 */	cmpwi r3, 0
/* 804BF19C  40 82 FF 94 */	bne lbl_804BF130
lbl_804BF1A0:
/* 804BF1A0  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BF1A4  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 804BF1A8  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804BF1AC  48 00 0D B4 */	b lbl_804BFF60
lbl_804BF1B0:
/* 804BF1B0  80 7F 08 90 */	lwz r3, 0x890(r31)
/* 804BF1B4  54 60 05 6B */	rlwinm. r0, r3, 0, 0x15, 0x15
/* 804BF1B8  41 82 00 44 */	beq lbl_804BF1FC
/* 804BF1BC  80 1F 08 98 */	lwz r0, 0x898(r31)
/* 804BF1C0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 804BF1C4  40 82 00 10 */	bne lbl_804BF1D4
/* 804BF1C8  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BF1CC  60 00 40 00 */	ori r0, r0, 0x4000
/* 804BF1D0  90 1F 08 90 */	stw r0, 0x890(r31)
lbl_804BF1D4:
/* 804BF1D4  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BF1D8  60 00 08 00 */	ori r0, r0, 0x800
/* 804BF1DC  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804BF1E0  3B 5F 09 AC */	addi r26, r31, 0x9ac
/* 804BF1E4  C0 1D 04 2C */	lfs f0, 0x42c(r29)
/* 804BF1E8  D0 1F 08 D4 */	stfs f0, 0x8d4(r31)
/* 804BF1EC  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BF1F0  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 804BF1F4  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804BF1F8  48 00 04 AC */	b lbl_804BF6A4
lbl_804BF1FC:
/* 804BF1FC  88 1C 2F 9B */	lbz r0, 0x2f9b(r28)
/* 804BF200  28 00 00 06 */	cmplwi r0, 6
/* 804BF204  40 82 00 6C */	bne lbl_804BF270
/* 804BF208  80 7F 08 90 */	lwz r3, 0x890(r31)
/* 804BF20C  38 00 ED DF */	li r0, -4641
/* 804BF210  7C 60 00 38 */	and r0, r3, r0
/* 804BF214  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804BF218  38 7D 01 1C */	addi r3, r29, 0x11c
/* 804BF21C  A0 63 00 A8 */	lhz r3, 0xa8(r3)
/* 804BF220  A0 1F 05 E4 */	lhz r0, 0x5e4(r31)
/* 804BF224  7C 03 00 40 */	cmplw r3, r0
/* 804BF228  40 82 00 38 */	bne lbl_804BF260
/* 804BF22C  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BF230  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 804BF234  40 82 00 2C */	bne lbl_804BF260
/* 804BF238  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804BF23C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 804BF240  C0 1D 04 40 */	lfs f0, 0x440(r29)
/* 804BF244  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804BF248  4C 41 13 82 */	cror 2, 1, 2
/* 804BF24C  40 82 00 14 */	bne lbl_804BF260
/* 804BF250  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BF254  60 00 08 00 */	ori r0, r0, 0x800
/* 804BF258  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804BF25C  48 00 04 48 */	b lbl_804BF6A4
lbl_804BF260:
/* 804BF260  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BF264  54 00 05 66 */	rlwinm r0, r0, 0, 0x15, 0x13
/* 804BF268  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804BF26C  48 00 04 38 */	b lbl_804BF6A4
lbl_804BF270:
/* 804BF270  28 00 00 07 */	cmplwi r0, 7
/* 804BF274  40 82 00 6C */	bne lbl_804BF2E0
/* 804BF278  80 7F 08 90 */	lwz r3, 0x890(r31)
/* 804BF27C  38 00 ED DF */	li r0, -4641
/* 804BF280  7C 60 00 38 */	and r0, r3, r0
/* 804BF284  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804BF288  38 7D 01 1C */	addi r3, r29, 0x11c
/* 804BF28C  A0 63 00 B4 */	lhz r3, 0xb4(r3)
/* 804BF290  A0 1F 05 E4 */	lhz r0, 0x5e4(r31)
/* 804BF294  7C 03 00 40 */	cmplw r3, r0
/* 804BF298  40 82 00 38 */	bne lbl_804BF2D0
/* 804BF29C  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BF2A0  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 804BF2A4  40 82 00 2C */	bne lbl_804BF2D0
/* 804BF2A8  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804BF2AC  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 804BF2B0  C0 1D 03 A4 */	lfs f0, 0x3a4(r29)
/* 804BF2B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804BF2B8  4C 41 13 82 */	cror 2, 1, 2
/* 804BF2BC  40 82 00 14 */	bne lbl_804BF2D0
/* 804BF2C0  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BF2C4  60 00 08 00 */	ori r0, r0, 0x800
/* 804BF2C8  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804BF2CC  48 00 03 D8 */	b lbl_804BF6A4
lbl_804BF2D0:
/* 804BF2D0  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BF2D4  54 00 05 66 */	rlwinm r0, r0, 0, 0x15, 0x13
/* 804BF2D8  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804BF2DC  48 00 03 C8 */	b lbl_804BF6A4
lbl_804BF2E0:
/* 804BF2E0  28 1B 00 00 */	cmplwi r27, 0
/* 804BF2E4  41 82 02 CC */	beq lbl_804BF5B0
/* 804BF2E8  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 804BF2EC  41 82 00 58 */	beq lbl_804BF344
/* 804BF2F0  7F 83 E3 78 */	mr r3, r28
/* 804BF2F4  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 804BF2F8  81 8C 00 84 */	lwz r12, 0x84(r12)
/* 804BF2FC  7D 89 03 A6 */	mtctr r12
/* 804BF300  4E 80 04 21 */	bctrl 
/* 804BF304  2C 03 00 00 */	cmpwi r3, 0
/* 804BF308  40 82 00 3C */	bne lbl_804BF344
/* 804BF30C  38 7F 09 A0 */	addi r3, r31, 0x9a0
/* 804BF310  7F 64 DB 78 */	mr r4, r27
/* 804BF314  4B E8 80 88 */	b PSVECSquareDistance
/* 804BF318  C0 1D 03 E4 */	lfs f0, 0x3e4(r29)
/* 804BF31C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804BF320  40 81 00 24 */	ble lbl_804BF344
/* 804BF324  80 7F 08 90 */	lwz r3, 0x890(r31)
/* 804BF328  38 00 F4 FF */	li r0, -2817
/* 804BF32C  7C 60 00 38 */	and r0, r3, r0
/* 804BF330  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804BF334  38 00 00 00 */	li r0, 0
/* 804BF338  98 1F 08 50 */	stb r0, 0x850(r31)
/* 804BF33C  98 1F 08 51 */	stb r0, 0x851(r31)
/* 804BF340  48 00 02 60 */	b lbl_804BF5A0
lbl_804BF344:
/* 804BF344  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BF348  60 00 08 00 */	ori r0, r0, 0x800
/* 804BF34C  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804BF350  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BF354  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 804BF358  41 82 00 34 */	beq lbl_804BF38C
/* 804BF35C  38 7F 09 A0 */	addi r3, r31, 0x9a0
/* 804BF360  7F 64 DB 78 */	mr r4, r27
/* 804BF364  4B E8 80 38 */	b PSVECSquareDistance
/* 804BF368  C0 1D 03 E4 */	lfs f0, 0x3e4(r29)
/* 804BF36C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804BF370  40 81 01 C8 */	ble lbl_804BF538
/* 804BF374  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 804BF378  38 9F 09 A0 */	addi r4, r31, 0x9a0
/* 804BF37C  4B E8 80 20 */	b PSVECSquareDistance
/* 804BF380  C0 1D 04 44 */	lfs f0, 0x444(r29)
/* 804BF384  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804BF388  40 80 01 B0 */	bge lbl_804BF538
lbl_804BF38C:
/* 804BF38C  C0 1B 00 00 */	lfs f0, 0(r27)
/* 804BF390  D0 1F 09 A0 */	stfs f0, 0x9a0(r31)
/* 804BF394  C0 1B 00 04 */	lfs f0, 4(r27)
/* 804BF398  D0 1F 09 A4 */	stfs f0, 0x9a4(r31)
/* 804BF39C  C0 1B 00 08 */	lfs f0, 8(r27)
/* 804BF3A0  D0 1F 09 A8 */	stfs f0, 0x9a8(r31)
/* 804BF3A4  7F 63 DB 78 */	mr r3, r27
/* 804BF3A8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 804BF3AC  4B E8 7F F0 */	b PSVECSquareDistance
/* 804BF3B0  C0 1D 00 B8 */	lfs f0, 0xb8(r29)
/* 804BF3B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804BF3B8  40 81 00 58 */	ble lbl_804BF410
/* 804BF3BC  FC 00 08 34 */	frsqrte f0, f1
/* 804BF3C0  C8 9D 04 48 */	lfd f4, 0x448(r29)
/* 804BF3C4  FC 44 00 32 */	fmul f2, f4, f0
/* 804BF3C8  C8 7D 04 50 */	lfd f3, 0x450(r29)
/* 804BF3CC  FC 00 00 32 */	fmul f0, f0, f0
/* 804BF3D0  FC 01 00 32 */	fmul f0, f1, f0
/* 804BF3D4  FC 03 00 28 */	fsub f0, f3, f0
/* 804BF3D8  FC 02 00 32 */	fmul f0, f2, f0
/* 804BF3DC  FC 44 00 32 */	fmul f2, f4, f0
/* 804BF3E0  FC 00 00 32 */	fmul f0, f0, f0
/* 804BF3E4  FC 01 00 32 */	fmul f0, f1, f0
/* 804BF3E8  FC 03 00 28 */	fsub f0, f3, f0
/* 804BF3EC  FC 02 00 32 */	fmul f0, f2, f0
/* 804BF3F0  FC 44 00 32 */	fmul f2, f4, f0
/* 804BF3F4  FC 00 00 32 */	fmul f0, f0, f0
/* 804BF3F8  FC 01 00 32 */	fmul f0, f1, f0
/* 804BF3FC  FC 03 00 28 */	fsub f0, f3, f0
/* 804BF400  FC 02 00 32 */	fmul f0, f2, f0
/* 804BF404  FF E1 00 32 */	fmul f31, f1, f0
/* 804BF408  FF E0 F8 18 */	frsp f31, f31
/* 804BF40C  48 00 00 90 */	b lbl_804BF49C
lbl_804BF410:
/* 804BF410  C8 1D 04 58 */	lfd f0, 0x458(r29)
/* 804BF414  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804BF418  40 80 00 10 */	bge lbl_804BF428
/* 804BF41C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804BF420  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 804BF424  48 00 00 78 */	b lbl_804BF49C
lbl_804BF428:
/* 804BF428  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804BF42C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 804BF430  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804BF434  3C 00 7F 80 */	lis r0, 0x7f80
/* 804BF438  7C 03 00 00 */	cmpw r3, r0
/* 804BF43C  41 82 00 14 */	beq lbl_804BF450
/* 804BF440  40 80 00 40 */	bge lbl_804BF480
/* 804BF444  2C 03 00 00 */	cmpwi r3, 0
/* 804BF448  41 82 00 20 */	beq lbl_804BF468
/* 804BF44C  48 00 00 34 */	b lbl_804BF480
lbl_804BF450:
/* 804BF450  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804BF454  41 82 00 0C */	beq lbl_804BF460
/* 804BF458  38 00 00 01 */	li r0, 1
/* 804BF45C  48 00 00 28 */	b lbl_804BF484
lbl_804BF460:
/* 804BF460  38 00 00 02 */	li r0, 2
/* 804BF464  48 00 00 20 */	b lbl_804BF484
lbl_804BF468:
/* 804BF468  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804BF46C  41 82 00 0C */	beq lbl_804BF478
/* 804BF470  38 00 00 05 */	li r0, 5
/* 804BF474  48 00 00 10 */	b lbl_804BF484
lbl_804BF478:
/* 804BF478  38 00 00 03 */	li r0, 3
/* 804BF47C  48 00 00 08 */	b lbl_804BF484
lbl_804BF480:
/* 804BF480  38 00 00 04 */	li r0, 4
lbl_804BF484:
/* 804BF484  2C 00 00 01 */	cmpwi r0, 1
/* 804BF488  40 82 00 10 */	bne lbl_804BF498
/* 804BF48C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804BF490  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 804BF494  48 00 00 08 */	b lbl_804BF49C
lbl_804BF498:
/* 804BF498  FF E0 08 90 */	fmr f31, f1
lbl_804BF49C:
/* 804BF49C  7F 83 E3 78 */	mr r3, r28
/* 804BF4A0  4B C7 48 CC */	b getWolfTagJumpTime__9daAlink_cCFv
/* 804BF4A4  C8 3D 00 C0 */	lfd f1, 0xc0(r29)
/* 804BF4A8  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 804BF4AC  90 01 00 8C */	stw r0, 0x8c(r1)
/* 804BF4B0  3C 00 43 30 */	lis r0, 0x4330
/* 804BF4B4  90 01 00 88 */	stw r0, 0x88(r1)
/* 804BF4B8  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 804BF4BC  EC 00 08 28 */	fsubs f0, f0, f1
/* 804BF4C0  EC 1F 00 24 */	fdivs f0, f31, f0
/* 804BF4C4  D0 1F 08 D4 */	stfs f0, 0x8d4(r31)
/* 804BF4C8  C0 3F 08 D4 */	lfs f1, 0x8d4(r31)
/* 804BF4CC  C0 1D 04 60 */	lfs f0, 0x460(r29)
/* 804BF4D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804BF4D4  40 80 00 08 */	bge lbl_804BF4DC
/* 804BF4D8  D0 1F 08 D4 */	stfs f0, 0x8d4(r31)
lbl_804BF4DC:
/* 804BF4DC  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BF4E0  60 00 01 00 */	ori r0, r0, 0x100
/* 804BF4E4  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804BF4E8  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BF4EC  54 00 05 EA */	rlwinm r0, r0, 0, 0x17, 0x15
/* 804BF4F0  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804BF4F4  7F 7A DB 78 */	mr r26, r27
/* 804BF4F8  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006000B@ha */
/* 804BF4FC  38 03 00 0B */	addi r0, r3, 0x000B /* 0x0006000B@l */
/* 804BF500  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BF504  38 7F 06 FC */	addi r3, r31, 0x6fc
/* 804BF508  38 81 00 14 */	addi r4, r1, 0x14
/* 804BF50C  88 BF 08 50 */	lbz r5, 0x850(r31)
/* 804BF510  38 05 00 01 */	addi r0, r5, 1
/* 804BF514  98 1F 08 50 */	stb r0, 0x850(r31)
/* 804BF518  38 C0 FF FF */	li r6, -1
/* 804BF51C  81 9F 06 FC */	lwz r12, 0x6fc(r31)
/* 804BF520  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804BF524  7D 89 03 A6 */	mtctr r12
/* 804BF528  4E 80 04 21 */	bctrl 
/* 804BF52C  88 1F 08 50 */	lbz r0, 0x850(r31)
/* 804BF530  98 1F 08 51 */	stb r0, 0x851(r31)
/* 804BF534  48 00 00 08 */	b lbl_804BF53C
lbl_804BF538:
/* 804BF538  3B 5F 09 A0 */	addi r26, r31, 0x9a0
lbl_804BF53C:
/* 804BF53C  7F 83 E3 78 */	mr r3, r28
/* 804BF540  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 804BF544  81 8C 00 84 */	lwz r12, 0x84(r12)
/* 804BF548  7D 89 03 A6 */	mtctr r12
/* 804BF54C  4E 80 04 21 */	bctrl 
/* 804BF550  2C 03 00 00 */	cmpwi r3, 0
/* 804BF554  40 82 00 40 */	bne lbl_804BF594
/* 804BF558  80 1F 08 94 */	lwz r0, 0x894(r31)
/* 804BF55C  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 804BF560  40 82 00 34 */	bne lbl_804BF594
/* 804BF564  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BF568  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 804BF56C  41 82 00 18 */	beq lbl_804BF584
/* 804BF570  38 7D 01 1C */	addi r3, r29, 0x11c
/* 804BF574  A0 63 00 54 */	lhz r3, 0x54(r3)
/* 804BF578  A0 1F 05 E4 */	lhz r0, 0x5e4(r31)
/* 804BF57C  7C 03 00 40 */	cmplw r3, r0
/* 804BF580  40 82 00 14 */	bne lbl_804BF594
lbl_804BF584:
/* 804BF584  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BF588  60 00 40 00 */	ori r0, r0, 0x4000
/* 804BF58C  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804BF590  48 00 00 10 */	b lbl_804BF5A0
lbl_804BF594:
/* 804BF594  80 1F 08 94 */	lwz r0, 0x894(r31)
/* 804BF598  60 00 04 00 */	ori r0, r0, 0x400
/* 804BF59C  90 1F 08 94 */	stw r0, 0x894(r31)
lbl_804BF5A0:
/* 804BF5A0  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BF5A4  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 804BF5A8  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804BF5AC  48 00 00 F8 */	b lbl_804BF6A4
lbl_804BF5B0:
/* 804BF5B0  7F 83 E3 78 */	mr r3, r28
/* 804BF5B4  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 804BF5B8  81 8C 00 84 */	lwz r12, 0x84(r12)
/* 804BF5BC  7D 89 03 A6 */	mtctr r12
/* 804BF5C0  4E 80 04 21 */	bctrl 
/* 804BF5C4  2C 03 00 00 */	cmpwi r3, 0
/* 804BF5C8  40 82 00 10 */	bne lbl_804BF5D8
/* 804BF5CC  80 7F 08 90 */	lwz r3, 0x890(r31)
/* 804BF5D0  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 804BF5D4  41 82 00 58 */	beq lbl_804BF62C
lbl_804BF5D8:
/* 804BF5D8  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BF5DC  60 00 08 00 */	ori r0, r0, 0x800
/* 804BF5E0  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804BF5E4  7F 83 E3 78 */	mr r3, r28
/* 804BF5E8  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 804BF5EC  81 8C 00 84 */	lwz r12, 0x84(r12)
/* 804BF5F0  7D 89 03 A6 */	mtctr r12
/* 804BF5F4  4E 80 04 21 */	bctrl 
/* 804BF5F8  2C 03 00 00 */	cmpwi r3, 0
/* 804BF5FC  40 82 00 14 */	bne lbl_804BF610
/* 804BF600  80 1F 08 94 */	lwz r0, 0x894(r31)
/* 804BF604  60 00 02 00 */	ori r0, r0, 0x200
/* 804BF608  90 1F 08 94 */	stw r0, 0x894(r31)
/* 804BF60C  48 00 00 10 */	b lbl_804BF61C
lbl_804BF610:
/* 804BF610  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BF614  60 00 00 20 */	ori r0, r0, 0x20
/* 804BF618  90 1F 08 90 */	stw r0, 0x890(r31)
lbl_804BF61C:
/* 804BF61C  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BF620  54 00 06 2C */	rlwinm r0, r0, 0, 0x18, 0x16
/* 804BF624  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804BF628  48 00 00 7C */	b lbl_804BF6A4
lbl_804BF62C:
/* 804BF62C  54 60 05 29 */	rlwinm. r0, r3, 0, 0x14, 0x14
/* 804BF630  41 82 00 68 */	beq lbl_804BF698
/* 804BF634  80 7F 08 90 */	lwz r3, 0x890(r31)
/* 804BF638  38 00 F5 FF */	li r0, -2561
/* 804BF63C  7C 60 00 38 */	and r0, r3, r0
/* 804BF640  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804BF644  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BF648  60 00 10 00 */	ori r0, r0, 0x1000
/* 804BF64C  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804BF650  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BF654  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804BF658  41 82 00 4C */	beq lbl_804BF6A4
/* 804BF65C  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BF660  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 804BF664  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804BF668  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006001E@ha */
/* 804BF66C  38 03 00 1E */	addi r0, r3, 0x001E /* 0x0006001E@l */
/* 804BF670  90 01 00 10 */	stw r0, 0x10(r1)
/* 804BF674  38 7F 06 FC */	addi r3, r31, 0x6fc
/* 804BF678  38 81 00 10 */	addi r4, r1, 0x10
/* 804BF67C  88 BF 08 51 */	lbz r5, 0x851(r31)
/* 804BF680  38 C0 FF FF */	li r6, -1
/* 804BF684  81 9F 06 FC */	lwz r12, 0x6fc(r31)
/* 804BF688  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804BF68C  7D 89 03 A6 */	mtctr r12
/* 804BF690  4E 80 04 21 */	bctrl 
/* 804BF694  48 00 00 10 */	b lbl_804BF6A4
lbl_804BF698:
/* 804BF698  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BF69C  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 804BF6A0  90 1F 08 90 */	stw r0, 0x890(r31)
lbl_804BF6A4:
/* 804BF6A4  80 1F 08 C0 */	lwz r0, 0x8c0(r31)
/* 804BF6A8  28 00 00 0C */	cmplwi r0, 0xc
/* 804BF6AC  40 82 00 F4 */	bne lbl_804BF7A0
/* 804BF6B0  80 7E 5D B4 */	lwz r3, 0x5db4(r30)
/* 804BF6B4  80 03 05 74 */	lwz r0, 0x574(r3)
/* 804BF6B8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 804BF6BC  41 82 00 B4 */	beq lbl_804BF770
/* 804BF6C0  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BF6C4  60 00 08 00 */	ori r0, r0, 0x800
/* 804BF6C8  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804BF6CC  80 7D 04 34 */	lwz r3, 0x434(r29)
/* 804BF6D0  80 1D 04 38 */	lwz r0, 0x438(r29)
/* 804BF6D4  90 61 00 78 */	stw r3, 0x78(r1)
/* 804BF6D8  90 01 00 7C */	stw r0, 0x7c(r1)
/* 804BF6DC  80 1D 04 3C */	lwz r0, 0x43c(r29)
/* 804BF6E0  90 01 00 80 */	stw r0, 0x80(r1)
/* 804BF6E4  38 7D 00 98 */	addi r3, r29, 0x98
/* 804BF6E8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804BF6EC  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 804BF6F0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 804BF6F4  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 804BF6F8  80 7C 06 50 */	lwz r3, 0x650(r28)
/* 804BF6FC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804BF700  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804BF704  38 63 04 B0 */	addi r3, r3, 0x4b0
/* 804BF708  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 804BF70C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 804BF710  4B E8 6D A0 */	b PSMTXCopy
/* 804BF714  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804BF718  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804BF71C  38 80 C0 00 */	li r4, -16384
/* 804BF720  38 A0 C0 00 */	li r5, -16384
/* 804BF724  38 C0 00 00 */	li r6, 0
/* 804BF728  4B B4 CB 78 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 804BF72C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804BF730  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804BF734  38 81 00 78 */	addi r4, r1, 0x78
/* 804BF738  38 A1 00 6C */	addi r5, r1, 0x6c
/* 804BF73C  4B E8 76 30 */	b PSMTXMultVec
/* 804BF740  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 804BF744  38 81 00 6C */	addi r4, r1, 0x6c
/* 804BF748  C0 3D 04 28 */	lfs f1, 0x428(r29)
/* 804BF74C  4B DB 10 60 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 804BF750  2C 03 00 00 */	cmpwi r3, 0
/* 804BF754  41 82 00 3C */	beq lbl_804BF790
/* 804BF758  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804BF75C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804BF760  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 804BF764  80 9F 08 8C */	lwz r4, 0x88c(r31)
/* 804BF768  4B B8 8A 14 */	b cutEnd__16dEvent_manager_cFi
/* 804BF76C  48 00 00 24 */	b lbl_804BF790
lbl_804BF770:
/* 804BF770  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BF774  54 00 05 66 */	rlwinm r0, r0, 0, 0x15, 0x13
/* 804BF778  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804BF77C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804BF780  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804BF784  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 804BF788  80 9F 08 8C */	lwz r4, 0x88c(r31)
/* 804BF78C  4B B8 89 F0 */	b cutEnd__16dEvent_manager_cFi
lbl_804BF790:
/* 804BF790  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BF794  54 00 02 90 */	rlwinm r0, r0, 0, 0xa, 8
/* 804BF798  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804BF79C  48 00 07 C4 */	b lbl_804BFF60
lbl_804BF7A0:
/* 804BF7A0  28 00 00 0D */	cmplwi r0, 0xd
/* 804BF7A4  40 82 00 58 */	bne lbl_804BF7FC
/* 804BF7A8  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804BF7AC  38 80 00 01 */	li r4, 1
/* 804BF7B0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804BF7B4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804BF7B8  40 82 00 18 */	bne lbl_804BF7D0
/* 804BF7BC  C0 3D 00 B8 */	lfs f1, 0xb8(r29)
/* 804BF7C0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804BF7C4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804BF7C8  41 82 00 08 */	beq lbl_804BF7D0
/* 804BF7CC  38 80 00 00 */	li r4, 0
lbl_804BF7D0:
/* 804BF7D0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804BF7D4  41 82 00 18 */	beq lbl_804BF7EC
/* 804BF7D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804BF7DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804BF7E0  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 804BF7E4  80 9F 08 8C */	lwz r4, 0x88c(r31)
/* 804BF7E8  4B B8 89 94 */	b cutEnd__16dEvent_manager_cFi
lbl_804BF7EC:
/* 804BF7EC  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BF7F0  54 00 02 90 */	rlwinm r0, r0, 0, 0xa, 8
/* 804BF7F4  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804BF7F8  48 00 07 68 */	b lbl_804BFF60
lbl_804BF7FC:
/* 804BF7FC  28 00 00 11 */	cmplwi r0, 0x11
/* 804BF800  41 82 00 0C */	beq lbl_804BF80C
/* 804BF804  28 00 00 12 */	cmplwi r0, 0x12
/* 804BF808  40 82 00 4C */	bne lbl_804BF854
lbl_804BF80C:
/* 804BF80C  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804BF810  38 80 00 01 */	li r4, 1
/* 804BF814  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804BF818  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804BF81C  40 82 00 18 */	bne lbl_804BF834
/* 804BF820  C0 3D 00 B8 */	lfs f1, 0xb8(r29)
/* 804BF824  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804BF828  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804BF82C  41 82 00 08 */	beq lbl_804BF834
/* 804BF830  38 80 00 00 */	li r4, 0
lbl_804BF834:
/* 804BF834  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804BF838  41 82 07 28 */	beq lbl_804BFF60
/* 804BF83C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804BF840  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804BF844  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 804BF848  80 9F 08 8C */	lwz r4, 0x88c(r31)
/* 804BF84C  4B B8 89 30 */	b cutEnd__16dEvent_manager_cFi
/* 804BF850  48 00 07 10 */	b lbl_804BFF60
lbl_804BF854:
/* 804BF854  28 00 00 03 */	cmplwi r0, 3
/* 804BF858  41 82 00 5C */	beq lbl_804BF8B4
/* 804BF85C  28 00 00 06 */	cmplwi r0, 6
/* 804BF860  41 82 00 54 */	beq lbl_804BF8B4
/* 804BF864  28 00 00 04 */	cmplwi r0, 4
/* 804BF868  41 82 00 4C */	beq lbl_804BF8B4
/* 804BF86C  28 00 00 13 */	cmplwi r0, 0x13
/* 804BF870  41 82 00 44 */	beq lbl_804BF8B4
/* 804BF874  28 00 00 14 */	cmplwi r0, 0x14
/* 804BF878  41 82 00 3C */	beq lbl_804BF8B4
/* 804BF87C  28 00 00 15 */	cmplwi r0, 0x15
/* 804BF880  41 82 00 34 */	beq lbl_804BF8B4
/* 804BF884  28 00 00 07 */	cmplwi r0, 7
/* 804BF888  41 82 00 2C */	beq lbl_804BF8B4
/* 804BF88C  28 00 00 0E */	cmplwi r0, 0xe
/* 804BF890  41 82 00 24 */	beq lbl_804BF8B4
/* 804BF894  28 00 00 05 */	cmplwi r0, 5
/* 804BF898  41 82 00 1C */	beq lbl_804BF8B4
/* 804BF89C  28 00 00 10 */	cmplwi r0, 0x10
/* 804BF8A0  41 82 00 14 */	beq lbl_804BF8B4
/* 804BF8A4  28 00 00 0B */	cmplwi r0, 0xb
/* 804BF8A8  41 82 00 0C */	beq lbl_804BF8B4
/* 804BF8AC  28 00 00 08 */	cmplwi r0, 8
/* 804BF8B0  40 82 04 6C */	bne lbl_804BFD1C
lbl_804BF8B4:
/* 804BF8B4  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BF8B8  60 00 08 00 */	ori r0, r0, 0x800
/* 804BF8BC  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804BF8C0  80 9F 08 90 */	lwz r4, 0x890(r31)
/* 804BF8C4  3C 60 FF C0 */	lis r3, 0xFFC0 /* 0xFFBFEFFF@ha */
/* 804BF8C8  38 03 EF FF */	addi r0, r3, 0xEFFF /* 0xFFBFEFFF@l */
/* 804BF8CC  7C 80 00 38 */	and r0, r4, r0
/* 804BF8D0  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804BF8D4  80 1F 08 C0 */	lwz r0, 0x8c0(r31)
/* 804BF8D8  28 00 00 10 */	cmplwi r0, 0x10
/* 804BF8DC  40 82 00 44 */	bne lbl_804BF920
/* 804BF8E0  C0 1F 09 B8 */	lfs f0, 0x9b8(r31)
/* 804BF8E4  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 804BF8E8  C0 1F 09 BC */	lfs f0, 0x9bc(r31)
/* 804BF8EC  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 804BF8F0  C0 1F 09 C0 */	lfs f0, 0x9c0(r31)
/* 804BF8F4  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 804BF8F8  A8 1F 08 7C */	lha r0, 0x87c(r31)
/* 804BF8FC  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 804BF900  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 804BF904  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 804BF908  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804BF90C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804BF910  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 804BF914  80 9F 08 8C */	lwz r4, 0x88c(r31)
/* 804BF918  4B B8 88 64 */	b cutEnd__16dEvent_manager_cFi
/* 804BF91C  48 00 06 44 */	b lbl_804BFF60
lbl_804BF920:
/* 804BF920  28 00 00 03 */	cmplwi r0, 3
/* 804BF924  41 82 00 0C */	beq lbl_804BF930
/* 804BF928  28 00 00 06 */	cmplwi r0, 6
/* 804BF92C  40 82 00 A0 */	bne lbl_804BF9CC
lbl_804BF930:
/* 804BF930  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 804BF934  38 9F 09 B8 */	addi r4, r31, 0x9b8
/* 804BF938  C0 3D 04 64 */	lfs f1, 0x464(r29)
/* 804BF93C  C0 5F 08 D8 */	lfs f2, 0x8d8(r31)
/* 804BF940  C0 7D 00 BC */	lfs f3, 0xbc(r29)
/* 804BF944  4B DB 01 74 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 804BF948  C0 1D 00 BC */	lfs f0, 0xbc(r29)
/* 804BF94C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804BF950  40 80 00 1C */	bge lbl_804BF96C
/* 804BF954  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804BF958  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804BF95C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 804BF960  80 9F 08 8C */	lwz r4, 0x88c(r31)
/* 804BF964  4B B8 88 18 */	b cutEnd__16dEvent_manager_cFi
/* 804BF968  48 00 05 F8 */	b lbl_804BFF60
lbl_804BF96C:
/* 804BF96C  38 61 00 3C */	addi r3, r1, 0x3c
/* 804BF970  38 9F 09 B8 */	addi r4, r31, 0x9b8
/* 804BF974  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 804BF978  4B DA 71 BC */	b __mi__4cXyzCFRC3Vec
/* 804BF97C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 804BF980  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 804BF984  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 804BF988  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 804BF98C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 804BF990  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 804BF994  38 61 00 60 */	addi r3, r1, 0x60
/* 804BF998  4B DA 77 90 */	b atan2sX_Z__4cXyzCFv
/* 804BF99C  7C 64 1B 78 */	mr r4, r3
/* 804BF9A0  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 804BF9A4  38 A0 00 02 */	li r5, 2
/* 804BF9A8  38 C0 10 00 */	li r6, 0x1000
/* 804BF9AC  38 E0 04 00 */	li r7, 0x400
/* 804BF9B0  4B DB 0B 90 */	b cLib_addCalcAngleS__FPsssss
/* 804BF9B4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 804BF9B8  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 804BF9BC  80 1F 08 98 */	lwz r0, 0x898(r31)
/* 804BF9C0  60 00 00 01 */	ori r0, r0, 1
/* 804BF9C4  90 1F 08 98 */	stw r0, 0x898(r31)
/* 804BF9C8  48 00 05 98 */	b lbl_804BFF60
lbl_804BF9CC:
/* 804BF9CC  28 00 00 04 */	cmplwi r0, 4
/* 804BF9D0  40 82 00 44 */	bne lbl_804BFA14
/* 804BF9D4  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 804BF9D8  A8 9F 08 7C */	lha r4, 0x87c(r31)
/* 804BF9DC  38 A0 00 02 */	li r5, 2
/* 804BF9E0  38 C0 10 00 */	li r6, 0x1000
/* 804BF9E4  38 E0 04 00 */	li r7, 0x400
/* 804BF9E8  4B DB 0B 58 */	b cLib_addCalcAngleS__FPsssss
/* 804BF9EC  7C 60 07 35 */	extsh. r0, r3
/* 804BF9F0  40 82 00 18 */	bne lbl_804BFA08
/* 804BF9F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804BF9F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804BF9FC  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 804BFA00  80 9F 08 8C */	lwz r4, 0x88c(r31)
/* 804BFA04  4B B8 87 78 */	b cutEnd__16dEvent_manager_cFi
lbl_804BFA08:
/* 804BFA08  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 804BFA0C  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 804BFA10  48 00 05 50 */	b lbl_804BFF60
lbl_804BFA14:
/* 804BFA14  28 00 00 08 */	cmplwi r0, 8
/* 804BFA18  40 82 00 C4 */	bne lbl_804BFADC
/* 804BFA1C  38 7D 01 1C */	addi r3, r29, 0x11c
/* 804BFA20  A0 63 00 E4 */	lhz r3, 0xe4(r3)
/* 804BFA24  A0 1F 05 E4 */	lhz r0, 0x5e4(r31)
/* 804BFA28  7C 03 00 40 */	cmplw r3, r0
/* 804BFA2C  40 82 05 34 */	bne lbl_804BFF60
/* 804BFA30  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 804BFA34  A8 9F 08 7C */	lha r4, 0x87c(r31)
/* 804BFA38  38 A0 00 02 */	li r5, 2
/* 804BFA3C  38 C0 20 00 */	li r6, 0x2000
/* 804BFA40  38 E0 08 00 */	li r7, 0x800
/* 804BFA44  4B DB 0A FC */	b cLib_addCalcAngleS__FPsssss
/* 804BFA48  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 804BFA4C  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 804BFA50  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804BFA54  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 804BFA58  C0 1D 04 68 */	lfs f0, 0x468(r29)
/* 804BFA5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804BFA60  4C 41 13 82 */	cror 2, 1, 2
/* 804BFA64  40 82 00 14 */	bne lbl_804BFA78
/* 804BFA68  7F E3 FB 78 */	mr r3, r31
/* 804BFA6C  38 80 00 03 */	li r4, 3
/* 804BFA70  48 00 13 A9 */	bl setRightHandShape__9daMidna_cFUs
/* 804BFA74  48 00 00 20 */	b lbl_804BFA94
lbl_804BFA78:
/* 804BFA78  C0 1D 04 6C */	lfs f0, 0x46c(r29)
/* 804BFA7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804BFA80  4C 41 13 82 */	cror 2, 1, 2
/* 804BFA84  40 82 00 10 */	bne lbl_804BFA94
/* 804BFA88  7F E3 FB 78 */	mr r3, r31
/* 804BFA8C  38 80 00 02 */	li r4, 2
/* 804BFA90  48 00 13 89 */	bl setRightHandShape__9daMidna_cFUs
lbl_804BFA94:
/* 804BFA94  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804BFA98  38 80 00 01 */	li r4, 1
/* 804BFA9C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804BFAA0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804BFAA4  40 82 00 18 */	bne lbl_804BFABC
/* 804BFAA8  C0 3D 00 B8 */	lfs f1, 0xb8(r29)
/* 804BFAAC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804BFAB0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804BFAB4  41 82 00 08 */	beq lbl_804BFABC
/* 804BFAB8  38 80 00 00 */	li r4, 0
lbl_804BFABC:
/* 804BFABC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804BFAC0  41 82 04 A0 */	beq lbl_804BFF60
/* 804BFAC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804BFAC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804BFACC  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 804BFAD0  80 9F 08 8C */	lwz r4, 0x88c(r31)
/* 804BFAD4  4B B8 86 A8 */	b cutEnd__16dEvent_manager_cFi
/* 804BFAD8  48 00 04 88 */	b lbl_804BFF60
lbl_804BFADC:
/* 804BFADC  28 00 00 07 */	cmplwi r0, 7
/* 804BFAE0  40 82 00 5C */	bne lbl_804BFB3C
/* 804BFAE4  38 7D 01 1C */	addi r3, r29, 0x11c
/* 804BFAE8  A0 63 02 4C */	lhz r3, 0x24c(r3)
/* 804BFAEC  A0 1F 06 0C */	lhz r0, 0x60c(r31)
/* 804BFAF0  7C 03 00 40 */	cmplw r3, r0
/* 804BFAF4  40 82 04 6C */	bne lbl_804BFF60
/* 804BFAF8  38 60 00 01 */	li r3, 1
/* 804BFAFC  88 1F 05 A5 */	lbz r0, 0x5a5(r31)
/* 804BFB00  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804BFB04  40 82 00 18 */	bne lbl_804BFB1C
/* 804BFB08  C0 3D 00 B8 */	lfs f1, 0xb8(r29)
/* 804BFB0C  C0 1F 05 AC */	lfs f0, 0x5ac(r31)
/* 804BFB10  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804BFB14  41 82 00 08 */	beq lbl_804BFB1C
/* 804BFB18  38 60 00 00 */	li r3, 0
lbl_804BFB1C:
/* 804BFB1C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804BFB20  41 82 04 40 */	beq lbl_804BFF60
/* 804BFB24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804BFB28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804BFB2C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 804BFB30  80 9F 08 8C */	lwz r4, 0x88c(r31)
/* 804BFB34  4B B8 86 48 */	b cutEnd__16dEvent_manager_cFi
/* 804BFB38  48 00 04 28 */	b lbl_804BFF60
lbl_804BFB3C:
/* 804BFB3C  28 00 00 0E */	cmplwi r0, 0xe
/* 804BFB40  40 82 00 5C */	bne lbl_804BFB9C
/* 804BFB44  38 7D 01 1C */	addi r3, r29, 0x11c
/* 804BFB48  A0 63 02 64 */	lhz r3, 0x264(r3)
/* 804BFB4C  A0 1F 06 0C */	lhz r0, 0x60c(r31)
/* 804BFB50  7C 03 00 40 */	cmplw r3, r0
/* 804BFB54  40 82 04 0C */	bne lbl_804BFF60
/* 804BFB58  38 60 00 01 */	li r3, 1
/* 804BFB5C  88 1F 05 A5 */	lbz r0, 0x5a5(r31)
/* 804BFB60  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804BFB64  40 82 00 18 */	bne lbl_804BFB7C
/* 804BFB68  C0 3D 00 B8 */	lfs f1, 0xb8(r29)
/* 804BFB6C  C0 1F 05 AC */	lfs f0, 0x5ac(r31)
/* 804BFB70  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804BFB74  41 82 00 08 */	beq lbl_804BFB7C
/* 804BFB78  38 60 00 00 */	li r3, 0
lbl_804BFB7C:
/* 804BFB7C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804BFB80  41 82 03 E0 */	beq lbl_804BFF60
/* 804BFB84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804BFB88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804BFB8C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 804BFB90  80 9F 08 8C */	lwz r4, 0x88c(r31)
/* 804BFB94  4B B8 85 E8 */	b cutEnd__16dEvent_manager_cFi
/* 804BFB98  48 00 03 C8 */	b lbl_804BFF60
lbl_804BFB9C:
/* 804BFB9C  28 00 00 05 */	cmplwi r0, 5
/* 804BFBA0  40 82 00 7C */	bne lbl_804BFC1C
/* 804BFBA4  38 9D 01 1C */	addi r4, r29, 0x11c
/* 804BFBA8  A0 64 00 D8 */	lhz r3, 0xd8(r4)
/* 804BFBAC  A0 1F 05 E4 */	lhz r0, 0x5e4(r31)
/* 804BFBB0  7C 03 00 40 */	cmplw r3, r0
/* 804BFBB4  41 82 00 14 */	beq lbl_804BFBC8
/* 804BFBB8  A0 64 01 50 */	lhz r3, 0x150(r4)
/* 804BFBBC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 804BFBC0  7C 03 00 40 */	cmplw r3, r0
/* 804BFBC4  40 82 03 9C */	bne lbl_804BFF60
lbl_804BFBC8:
/* 804BFBC8  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804BFBCC  38 80 00 01 */	li r4, 1
/* 804BFBD0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804BFBD4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804BFBD8  40 82 00 18 */	bne lbl_804BFBF0
/* 804BFBDC  C0 3D 00 B8 */	lfs f1, 0xb8(r29)
/* 804BFBE0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804BFBE4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804BFBE8  41 82 00 08 */	beq lbl_804BFBF0
/* 804BFBEC  38 80 00 00 */	li r4, 0
lbl_804BFBF0:
/* 804BFBF0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804BFBF4  41 82 03 6C */	beq lbl_804BFF60
/* 804BFBF8  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BFBFC  54 00 05 A6 */	rlwinm r0, r0, 0, 0x16, 0x13
/* 804BFC00  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804BFC04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804BFC08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804BFC0C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 804BFC10  80 9F 08 8C */	lwz r4, 0x88c(r31)
/* 804BFC14  4B B8 85 68 */	b cutEnd__16dEvent_manager_cFi
/* 804BFC18  48 00 03 48 */	b lbl_804BFF60
lbl_804BFC1C:
/* 804BFC1C  28 00 00 13 */	cmplwi r0, 0x13
/* 804BFC20  41 82 00 14 */	beq lbl_804BFC34
/* 804BFC24  28 00 00 15 */	cmplwi r0, 0x15
/* 804BFC28  41 82 00 0C */	beq lbl_804BFC34
/* 804BFC2C  28 00 00 14 */	cmplwi r0, 0x14
/* 804BFC30  40 82 03 30 */	bne lbl_804BFF60
lbl_804BFC34:
/* 804BFC34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804BFC38  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 804BFC3C  3B 7A 4E C8 */	addi r27, r26, 0x4ec8
/* 804BFC40  7F 63 DB 78 */	mr r3, r27
/* 804BFC44  80 9A 4F 90 */	lwz r4, 0x4f90(r26)
/* 804BFC48  4B B8 36 A4 */	b convPId__14dEvt_control_cFUi
/* 804BFC4C  28 03 00 00 */	cmplwi r3, 0
/* 804BFC50  41 82 00 44 */	beq lbl_804BFC94
/* 804BFC54  7F 63 DB 78 */	mr r3, r27
/* 804BFC58  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 804BFC5C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 804BFC60  80 84 4F 90 */	lwz r4, 0x4f90(r4)
/* 804BFC64  4B B8 36 88 */	b convPId__14dEvt_control_cFUi
/* 804BFC68  7C 64 1B 78 */	mr r4, r3
/* 804BFC6C  7F E3 FB 78 */	mr r3, r31
/* 804BFC70  4B B5 AA A0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 804BFC74  7C 64 1B 78 */	mr r4, r3
/* 804BFC78  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 804BFC7C  38 A0 00 02 */	li r5, 2
/* 804BFC80  38 C0 20 00 */	li r6, 0x2000
/* 804BFC84  38 E0 08 00 */	li r7, 0x800
/* 804BFC88  4B DB 08 B8 */	b cLib_addCalcAngleS__FPsssss
/* 804BFC8C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 804BFC90  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_804BFC94:
/* 804BFC94  80 BF 08 C0 */	lwz r5, 0x8c0(r31)
/* 804BFC98  28 05 00 14 */	cmplwi r5, 0x14
/* 804BFC9C  41 82 00 70 */	beq lbl_804BFD0C
/* 804BFCA0  28 05 00 15 */	cmplwi r5, 0x15
/* 804BFCA4  40 82 00 34 */	bne lbl_804BFCD8
/* 804BFCA8  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804BFCAC  38 80 00 01 */	li r4, 1
/* 804BFCB0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804BFCB4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804BFCB8  40 82 00 18 */	bne lbl_804BFCD0
/* 804BFCBC  C0 3D 00 B8 */	lfs f1, 0xb8(r29)
/* 804BFCC0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804BFCC4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804BFCC8  41 82 00 08 */	beq lbl_804BFCD0
/* 804BFCCC  38 80 00 00 */	li r4, 0
lbl_804BFCD0:
/* 804BFCD0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804BFCD4  40 82 00 38 */	bne lbl_804BFD0C
lbl_804BFCD8:
/* 804BFCD8  28 05 00 13 */	cmplwi r5, 0x13
/* 804BFCDC  40 82 02 84 */	bne lbl_804BFF60
/* 804BFCE0  38 60 00 01 */	li r3, 1
/* 804BFCE4  88 1F 05 A5 */	lbz r0, 0x5a5(r31)
/* 804BFCE8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804BFCEC  40 82 00 18 */	bne lbl_804BFD04
/* 804BFCF0  C0 3D 00 B8 */	lfs f1, 0xb8(r29)
/* 804BFCF4  C0 1F 05 AC */	lfs f0, 0x5ac(r31)
/* 804BFCF8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804BFCFC  41 82 00 08 */	beq lbl_804BFD04
/* 804BFD00  38 60 00 00 */	li r3, 0
lbl_804BFD04:
/* 804BFD04  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804BFD08  41 82 02 58 */	beq lbl_804BFF60
lbl_804BFD0C:
/* 804BFD0C  38 7A 4F F8 */	addi r3, r26, 0x4ff8
/* 804BFD10  80 9F 08 8C */	lwz r4, 0x88c(r31)
/* 804BFD14  4B B8 84 68 */	b cutEnd__16dEvent_manager_cFi
/* 804BFD18  48 00 02 48 */	b lbl_804BFF60
lbl_804BFD1C:
/* 804BFD1C  28 1A 00 00 */	cmplwi r26, 0
/* 804BFD20  41 82 02 34 */	beq lbl_804BFF54
/* 804BFD24  80 1F 08 98 */	lwz r0, 0x898(r31)
/* 804BFD28  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 804BFD2C  41 82 00 60 */	beq lbl_804BFD8C
/* 804BFD30  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BFD34  60 00 02 00 */	ori r0, r0, 0x200
/* 804BFD38  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804BFD3C  C0 1A 00 00 */	lfs f0, 0(r26)
/* 804BFD40  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 804BFD44  C0 1A 00 04 */	lfs f0, 4(r26)
/* 804BFD48  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 804BFD4C  C0 1A 00 08 */	lfs f0, 8(r26)
/* 804BFD50  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 804BFD54  7F E3 FB 78 */	mr r3, r31
/* 804BFD58  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 804BFD5C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 804BFD60  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 804BFD64  4B B5 A9 AC */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 804BFD68  B0 7F 04 E6 */	sth r3, 0x4e6(r31)
/* 804BFD6C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 804BFD70  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 804BFD74  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 804BFD78  B0 1F 08 5A */	sth r0, 0x85a(r31)
/* 804BFD7C  80 1F 08 98 */	lwz r0, 0x898(r31)
/* 804BFD80  60 00 01 00 */	ori r0, r0, 0x100
/* 804BFD84  90 1F 08 98 */	stw r0, 0x898(r31)
/* 804BFD88  48 00 00 F0 */	b lbl_804BFE78
lbl_804BFD8C:
/* 804BFD8C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 804BFD90  7F 44 D3 78 */	mr r4, r26
/* 804BFD94  C0 3F 08 D4 */	lfs f1, 0x8d4(r31)
/* 804BFD98  4B DB 0A 14 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 804BFD9C  2C 03 00 00 */	cmpwi r3, 0
/* 804BFDA0  41 82 00 38 */	beq lbl_804BFDD8
/* 804BFDA4  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BFDA8  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 804BFDAC  40 82 00 1C */	bne lbl_804BFDC8
/* 804BFDB0  7F E3 FB 78 */	mr r3, r31
/* 804BFDB4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 804BFDB8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 804BFDBC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 804BFDC0  4B B5 A9 50 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 804BFDC4  B0 7F 08 76 */	sth r3, 0x876(r31)
lbl_804BFDC8:
/* 804BFDC8  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BFDCC  60 00 02 00 */	ori r0, r0, 0x200
/* 804BFDD0  90 1F 08 90 */	stw r0, 0x890(r31)
/* 804BFDD4  48 00 00 A4 */	b lbl_804BFE78
lbl_804BFDD8:
/* 804BFDD8  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 804BFDDC  C0 3D 03 E4 */	lfs f1, 0x3e4(r29)
/* 804BFDE0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804BFDE4  EC 21 00 2A */	fadds f1, f1, f0
/* 804BFDE8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804BFDEC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 804BFDF0  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 804BFDF4  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 804BFDF8  38 61 00 30 */	addi r3, r1, 0x30
/* 804BFDFC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 804BFE00  C0 3D 03 A4 */	lfs f1, 0x3a4(r29)
/* 804BFE04  4B DA 6D 80 */	b __ml__4cXyzCFf
/* 804BFE08  38 61 00 24 */	addi r3, r1, 0x24
/* 804BFE0C  38 81 00 30 */	addi r4, r1, 0x30
/* 804BFE10  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 804BFE14  4B DA 6D 20 */	b __mi__4cXyzCFRC3Vec
/* 804BFE18  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 804BFE1C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 804BFE20  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 804BFE24  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 804BFE28  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 804BFE2C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 804BFE30  C0 1D 03 E4 */	lfs f0, 0x3e4(r29)
/* 804BFE34  EC 01 00 2A */	fadds f0, f1, f0
/* 804BFE38  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 804BFE3C  38 7F 07 D8 */	addi r3, r31, 0x7d8
/* 804BFE40  38 81 00 54 */	addi r4, r1, 0x54
/* 804BFE44  38 A1 00 48 */	addi r5, r1, 0x48
/* 804BFE48  7F E6 FB 78 */	mr r6, r31
/* 804BFE4C  4B BB 7F 18 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 804BFE50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804BFE54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804BFE58  38 63 0F 38 */	addi r3, r3, 0xf38
/* 804BFE5C  38 9F 07 D8 */	addi r4, r31, 0x7d8
/* 804BFE60  4B BB 45 54 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 804BFE64  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804BFE68  41 82 00 10 */	beq lbl_804BFE78
/* 804BFE6C  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BFE70  64 00 00 40 */	oris r0, r0, 0x40
/* 804BFE74  90 1F 08 90 */	stw r0, 0x890(r31)
lbl_804BFE78:
/* 804BFE78  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 804BFE7C  38 BD 01 1C */	addi r5, r29, 0x11c
/* 804BFE80  A0 65 00 54 */	lhz r3, 0x54(r5)
/* 804BFE84  A0 1F 05 E4 */	lhz r0, 0x5e4(r31)
/* 804BFE88  7C 03 00 40 */	cmplw r3, r0
/* 804BFE8C  40 82 00 4C */	bne lbl_804BFED8
/* 804BFE90  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804BFE94  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 804BFE98  C0 1D 04 70 */	lfs f0, 0x470(r29)
/* 804BFE9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804BFEA0  4C 41 13 82 */	cror 2, 1, 2
/* 804BFEA4  40 82 00 98 */	bne lbl_804BFF3C
/* 804BFEA8  C0 1D 03 D0 */	lfs f0, 0x3d0(r29)
/* 804BFEAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804BFEB0  40 80 00 8C */	bge lbl_804BFF3C
/* 804BFEB4  A8 7F 08 76 */	lha r3, 0x876(r31)
/* 804BFEB8  7C 04 18 50 */	subf r0, r4, r3
/* 804BFEBC  7C 00 07 35 */	extsh. r0, r0
/* 804BFEC0  40 80 00 10 */	bge lbl_804BFED0
/* 804BFEC4  38 04 7F FF */	addi r0, r4, 0x7fff
/* 804BFEC8  7C 04 07 34 */	extsh r4, r0
/* 804BFECC  48 00 00 70 */	b lbl_804BFF3C
lbl_804BFED0:
/* 804BFED0  7C 64 1B 78 */	mr r4, r3
/* 804BFED4  48 00 00 68 */	b lbl_804BFF3C
lbl_804BFED8:
/* 804BFED8  A0 65 00 48 */	lhz r3, 0x48(r5)
/* 804BFEDC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 804BFEE0  7C 03 00 40 */	cmplw r3, r0
/* 804BFEE4  40 82 00 34 */	bne lbl_804BFF18
/* 804BFEE8  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BFEEC  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 804BFEF0  40 82 00 4C */	bne lbl_804BFF3C
/* 804BFEF4  C0 3A 00 00 */	lfs f1, 0(r26)
/* 804BFEF8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804BFEFC  EC 21 00 28 */	fsubs f1, f1, f0
/* 804BFF00  C0 5A 00 08 */	lfs f2, 8(r26)
/* 804BFF04  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804BFF08  EC 42 00 28 */	fsubs f2, f2, f0
/* 804BFF0C  4B DA 77 68 */	b cM_atan2s__Fff
/* 804BFF10  7C 64 1B 78 */	mr r4, r3
/* 804BFF14  48 00 00 28 */	b lbl_804BFF3C
lbl_804BFF18:
/* 804BFF18  7F E3 FB 78 */	mr r3, r31
/* 804BFF1C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 804BFF20  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 804BFF24  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 804BFF28  4B B5 A7 E8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 804BFF2C  7C 64 1B 78 */	mr r4, r3
/* 804BFF30  80 1F 08 98 */	lwz r0, 0x898(r31)
/* 804BFF34  60 00 01 00 */	ori r0, r0, 0x100
/* 804BFF38  90 1F 08 98 */	stw r0, 0x898(r31)
lbl_804BFF3C:
/* 804BFF3C  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 804BFF40  38 A0 00 02 */	li r5, 2
/* 804BFF44  38 C0 20 00 */	li r6, 0x2000
/* 804BFF48  38 E0 08 00 */	li r7, 0x800
/* 804BFF4C  4B DB 05 F4 */	b cLib_addCalcAngleS__FPsssss
/* 804BFF50  48 00 00 10 */	b lbl_804BFF60
lbl_804BFF54:
/* 804BFF54  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 804BFF58  54 00 02 90 */	rlwinm r0, r0, 0, 0xa, 8
/* 804BFF5C  90 1F 08 90 */	stw r0, 0x890(r31)
lbl_804BFF60:
/* 804BFF60  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 804BFF64  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 804BFF68  39 61 00 B0 */	addi r11, r1, 0xb0
/* 804BFF6C  4B EA 22 B0 */	b _restgpr_26
/* 804BFF70  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 804BFF74  7C 08 03 A6 */	mtlr r0
/* 804BFF78  38 21 00 C0 */	addi r1, r1, 0xc0
/* 804BFF7C  4E 80 00 20 */	blr 

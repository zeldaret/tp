lbl_800AF11C:
/* 800AF11C  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 800AF120  7C 08 02 A6 */	mflr r0
/* 800AF124  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 800AF128  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 800AF12C  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 800AF130  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 800AF134  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 800AF138  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 800AF13C  F3 A1 00 88 */	psq_st f29, 136(r1), 0, 0 /* qr0 */
/* 800AF140  DB 81 00 70 */	stfd f28, 0x70(r1)
/* 800AF144  F3 81 00 78 */	psq_st f28, 120(r1), 0, 0 /* qr0 */
/* 800AF148  DB 61 00 60 */	stfd f27, 0x60(r1)
/* 800AF14C  F3 61 00 68 */	psq_st f27, 104(r1), 0, 0 /* qr0 */
/* 800AF150  DB 41 00 50 */	stfd f26, 0x50(r1)
/* 800AF154  F3 41 00 58 */	psq_st f26, 88(r1), 0, 0 /* qr0 */
/* 800AF158  DB 21 00 40 */	stfd f25, 0x40(r1)
/* 800AF15C  F3 21 00 48 */	psq_st f25, 72(r1), 0, 0 /* qr0 */
/* 800AF160  DB 01 00 30 */	stfd f24, 0x30(r1)
/* 800AF164  F3 01 00 38 */	psq_st f24, 56(r1), 0, 0 /* qr0 */
/* 800AF168  39 61 00 30 */	addi r11, r1, 0x30
/* 800AF16C  48 2B 30 6D */	bl _savegpr_28
/* 800AF170  7C 7F 1B 78 */	mr r31, r3
/* 800AF174  FF E0 08 90 */	fmr f31, f1
/* 800AF178  3C 80 80 39 */	lis r4, lit_3757@ha
/* 800AF17C  3B C4 D6 58 */	addi r30, r4, lit_3757@l
/* 800AF180  38 80 00 01 */	li r4, 1
/* 800AF184  48 03 33 99 */	bl checkBootsMoveAnime__9daAlink_cFi
/* 800AF188  2C 03 00 00 */	cmpwi r3, 0
/* 800AF18C  41 82 00 38 */	beq lbl_800AF1C4
/* 800AF190  38 7E 00 BC */	addi r3, r30, 0xbc
/* 800AF194  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 800AF198  D0 1F 05 94 */	stfs f0, 0x594(r31)
/* 800AF19C  C3 A3 00 48 */	lfs f29, 0x48(r3)
/* 800AF1A0  C3 83 00 30 */	lfs f28, 0x30(r3)
/* 800AF1A4  C3 63 00 34 */	lfs f27, 0x34(r3)
/* 800AF1A8  C3 43 00 08 */	lfs f26, 8(r3)
/* 800AF1AC  C3 22 92 B8 */	lfs f25, lit_6040(r2)
/* 800AF1B0  FF 00 C8 90 */	fmr f24, f25
/* 800AF1B4  3B C0 00 11 */	li r30, 0x11
/* 800AF1B8  3B A0 00 0F */	li r29, 0xf
/* 800AF1BC  3B 80 00 0F */	li r28, 0xf
/* 800AF1C0  48 00 00 78 */	b lbl_800AF238
lbl_800AF1C4:
/* 800AF1C4  80 1F 27 EC */	lwz r0, 0x27ec(r31)
/* 800AF1C8  28 00 00 00 */	cmplwi r0, 0
/* 800AF1CC  41 82 00 38 */	beq lbl_800AF204
/* 800AF1D0  38 7E 00 BC */	addi r3, r30, 0xbc
/* 800AF1D4  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 800AF1D8  D0 1F 05 94 */	stfs f0, 0x594(r31)
/* 800AF1DC  C3 A3 00 48 */	lfs f29, 0x48(r3)
/* 800AF1E0  C3 83 00 30 */	lfs f28, 0x30(r3)
/* 800AF1E4  C3 63 00 34 */	lfs f27, 0x34(r3)
/* 800AF1E8  C3 43 00 08 */	lfs f26, 8(r3)
/* 800AF1EC  C3 23 00 28 */	lfs f25, 0x28(r3)
/* 800AF1F0  C3 03 00 2C */	lfs f24, 0x2c(r3)
/* 800AF1F4  3B C0 00 11 */	li r30, 0x11
/* 800AF1F8  3B A0 00 04 */	li r29, 4
/* 800AF1FC  3B 80 00 05 */	li r28, 5
/* 800AF200  48 00 00 38 */	b lbl_800AF238
lbl_800AF204:
/* 800AF204  38 9E 01 10 */	addi r4, r30, 0x110
/* 800AF208  C0 04 00 38 */	lfs f0, 0x38(r4)
/* 800AF20C  D0 1F 05 94 */	stfs f0, 0x594(r31)
/* 800AF210  C3 A4 00 48 */	lfs f29, 0x48(r4)
/* 800AF214  C3 84 00 30 */	lfs f28, 0x30(r4)
/* 800AF218  C3 64 00 34 */	lfs f27, 0x34(r4)
/* 800AF21C  38 7E 00 64 */	addi r3, r30, 0x64
/* 800AF220  C3 43 00 1C */	lfs f26, 0x1c(r3)
/* 800AF224  C3 24 00 28 */	lfs f25, 0x28(r4)
/* 800AF228  C3 04 00 2C */	lfs f24, 0x2c(r4)
/* 800AF22C  3B C0 00 19 */	li r30, 0x19
/* 800AF230  3B A0 00 02 */	li r29, 2
/* 800AF234  3B 80 00 03 */	li r28, 3
lbl_800AF238:
/* 800AF238  7F E3 FB 78 */	mr r3, r31
/* 800AF23C  4B FF EB 4D */	bl getMoveGroundAngleSpeedRate__9daAlink_cFv
/* 800AF240  FF C0 08 90 */	fmr f30, f1
/* 800AF244  FC 1E E0 40 */	fcmpo cr0, f30, f28
/* 800AF248  40 80 00 70 */	bge lbl_800AF2B8
/* 800AF24C  EF 1E E0 24 */	fdivs f24, f30, f28
/* 800AF250  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800AF254  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800AF258  40 82 00 14 */	bne lbl_800AF26C
/* 800AF25C  7F E3 FB 78 */	mr r3, r31
/* 800AF260  48 00 46 A5 */	bl checkZeroSpeedF__9daAlink_cCFv
/* 800AF264  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800AF268  41 82 00 14 */	beq lbl_800AF27C
lbl_800AF26C:
/* 800AF26C  38 C0 00 02 */	li r6, 2
/* 800AF270  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800AF274  D0 1F 33 9C */	stfs f0, 0x339c(r31)
/* 800AF278  48 00 00 1C */	b lbl_800AF294
lbl_800AF27C:
/* 800AF27C  38 C0 00 03 */	li r6, 3
/* 800AF280  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800AF284  D0 1F 33 9C */	stfs f0, 0x339c(r31)
/* 800AF288  EC 00 E8 28 */	fsubs f0, f0, f29
/* 800AF28C  EC 18 00 32 */	fmuls f0, f24, f0
/* 800AF290  EF 1D 00 2A */	fadds f24, f29, f0
lbl_800AF294:
/* 800AF294  7F E3 FB 78 */	mr r3, r31
/* 800AF298  FC 20 C0 90 */	fmr f1, f24
/* 800AF29C  FC 40 D0 90 */	fmr f2, f26
/* 800AF2A0  FC 60 C8 90 */	fmr f3, f25
/* 800AF2A4  7F C4 F3 78 */	mr r4, r30
/* 800AF2A8  7F A5 EB 78 */	mr r5, r29
/* 800AF2AC  FC 80 F8 90 */	fmr f4, f31
/* 800AF2B0  4B FF D7 65 */	bl setDoubleAnime__9daAlink_cFfffQ29daAlink_c11daAlink_ANMQ29daAlink_c11daAlink_ANMif
/* 800AF2B4  48 00 00 78 */	b lbl_800AF32C
lbl_800AF2B8:
/* 800AF2B8  FC 1E D8 40 */	fcmpo cr0, f30, f27
/* 800AF2BC  40 80 00 44 */	bge lbl_800AF300
/* 800AF2C0  EC 3E E0 28 */	fsubs f1, f30, f28
/* 800AF2C4  EC 1B E0 28 */	fsubs f0, f27, f28
/* 800AF2C8  EF A1 00 24 */	fdivs f29, f1, f0
/* 800AF2CC  7F E3 FB 78 */	mr r3, r31
/* 800AF2D0  FC 20 E8 90 */	fmr f1, f29
/* 800AF2D4  FC 40 C8 90 */	fmr f2, f25
/* 800AF2D8  FC 60 C0 90 */	fmr f3, f24
/* 800AF2DC  7F A4 EB 78 */	mr r4, r29
/* 800AF2E0  7F 85 E3 78 */	mr r5, r28
/* 800AF2E4  38 C0 00 03 */	li r6, 3
/* 800AF2E8  FC 80 F8 90 */	fmr f4, f31
/* 800AF2EC  4B FF D7 29 */	bl setDoubleAnime__9daAlink_cFfffQ29daAlink_c11daAlink_ANMQ29daAlink_c11daAlink_ANMif
/* 800AF2F0  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800AF2F4  EC 00 E8 28 */	fsubs f0, f0, f29
/* 800AF2F8  D0 1F 33 9C */	stfs f0, 0x339c(r31)
/* 800AF2FC  48 00 00 30 */	b lbl_800AF32C
lbl_800AF300:
/* 800AF300  7F E3 FB 78 */	mr r3, r31
/* 800AF304  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800AF308  FC 40 C0 90 */	fmr f2, f24
/* 800AF30C  FC 60 C0 90 */	fmr f3, f24
/* 800AF310  7F 84 E3 78 */	mr r4, r28
/* 800AF314  7F 85 E3 78 */	mr r5, r28
/* 800AF318  38 C0 00 03 */	li r6, 3
/* 800AF31C  FC 80 F8 90 */	fmr f4, f31
/* 800AF320  4B FF D6 F5 */	bl setDoubleAnime__9daAlink_cFfffQ29daAlink_c11daAlink_ANMQ29daAlink_c11daAlink_ANMif
/* 800AF324  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800AF328  D0 1F 33 9C */	stfs f0, 0x339c(r31)
lbl_800AF32C:
/* 800AF32C  88 1F 2F 8C */	lbz r0, 0x2f8c(r31)
/* 800AF330  28 00 00 02 */	cmplwi r0, 2
/* 800AF334  41 82 00 C0 */	beq lbl_800AF3F4
/* 800AF338  3B BF 1F D0 */	addi r29, r31, 0x1fd0
/* 800AF33C  2C 1C 00 05 */	cmpwi r28, 5
/* 800AF340  40 82 00 4C */	bne lbl_800AF38C
/* 800AF344  7F A3 EB 78 */	mr r3, r29
/* 800AF348  C0 22 94 B4 */	lfs f1, lit_17382(r2)
/* 800AF34C  48 27 90 E1 */	bl checkPass__12J3DFrameCtrlFf
/* 800AF350  2C 03 00 00 */	cmpwi r3, 0
/* 800AF354  41 82 00 14 */	beq lbl_800AF368
/* 800AF358  80 1F 05 84 */	lwz r0, 0x584(r31)
/* 800AF35C  60 00 00 10 */	ori r0, r0, 0x10
/* 800AF360  90 1F 05 84 */	stw r0, 0x584(r31)
/* 800AF364  48 00 00 90 */	b lbl_800AF3F4
lbl_800AF368:
/* 800AF368  7F A3 EB 78 */	mr r3, r29
/* 800AF36C  C0 22 93 8C */	lfs f1, lit_8783(r2)
/* 800AF370  48 27 90 BD */	bl checkPass__12J3DFrameCtrlFf
/* 800AF374  2C 03 00 00 */	cmpwi r3, 0
/* 800AF378  41 82 00 7C */	beq lbl_800AF3F4
/* 800AF37C  80 1F 05 84 */	lwz r0, 0x584(r31)
/* 800AF380  60 00 00 20 */	ori r0, r0, 0x20
/* 800AF384  90 1F 05 84 */	stw r0, 0x584(r31)
/* 800AF388  48 00 00 6C */	b lbl_800AF3F4
lbl_800AF38C:
/* 800AF38C  7F A3 EB 78 */	mr r3, r29
/* 800AF390  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800AF394  48 27 90 99 */	bl checkPass__12J3DFrameCtrlFf
/* 800AF398  2C 03 00 00 */	cmpwi r3, 0
/* 800AF39C  41 82 00 14 */	beq lbl_800AF3B0
/* 800AF3A0  80 1F 05 84 */	lwz r0, 0x584(r31)
/* 800AF3A4  60 00 00 10 */	ori r0, r0, 0x10
/* 800AF3A8  90 1F 05 84 */	stw r0, 0x584(r31)
/* 800AF3AC  48 00 00 48 */	b lbl_800AF3F4
lbl_800AF3B0:
/* 800AF3B0  7F A3 EB 78 */	mr r3, r29
/* 800AF3B4  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 800AF3B8  A8 1D 00 08 */	lha r0, 8(r29)
/* 800AF3BC  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800AF3C0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800AF3C4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800AF3C8  3C 00 43 30 */	lis r0, 0x4330
/* 800AF3CC  90 01 00 18 */	stw r0, 0x18(r1)
/* 800AF3D0  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 800AF3D4  EC 00 08 28 */	fsubs f0, f0, f1
/* 800AF3D8  EC 22 00 32 */	fmuls f1, f2, f0
/* 800AF3DC  48 27 90 51 */	bl checkPass__12J3DFrameCtrlFf
/* 800AF3E0  2C 03 00 00 */	cmpwi r3, 0
/* 800AF3E4  41 82 00 10 */	beq lbl_800AF3F4
/* 800AF3E8  80 1F 05 84 */	lwz r0, 0x584(r31)
/* 800AF3EC  60 00 00 20 */	ori r0, r0, 0x20
/* 800AF3F0  90 1F 05 84 */	stw r0, 0x584(r31)
lbl_800AF3F4:
/* 800AF3F4  7F E3 FB 78 */	mr r3, r31
/* 800AF3F8  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800AF3FC  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 800AF400  7D 89 03 A6 */	mtctr r12
/* 800AF404  4E 80 04 21 */	bctrl 
/* 800AF408  2C 03 00 00 */	cmpwi r3, 0
/* 800AF40C  41 82 00 4C */	beq lbl_800AF458
/* 800AF410  C0 02 93 A0 */	lfs f0, lit_9054(r2)
/* 800AF414  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 800AF418  40 81 00 40 */	ble lbl_800AF458
/* 800AF41C  80 1F 05 84 */	lwz r0, 0x584(r31)
/* 800AF420  54 00 06 B7 */	rlwinm. r0, r0, 0, 0x1a, 0x1b
/* 800AF424  41 82 00 34 */	beq lbl_800AF458
/* 800AF428  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800AF42C  D0 21 00 08 */	stfs f1, 8(r1)
/* 800AF430  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800AF434  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800AF438  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800AF43C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800AF440  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800AF444  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800AF448  38 80 00 01 */	li r4, 1
/* 800AF44C  38 A0 00 0F */	li r5, 0xf
/* 800AF450  38 C1 00 08 */	addi r6, r1, 8
/* 800AF454  4B FC 05 D1 */	bl StartShock__12dVibration_cFii4cXyz
lbl_800AF458:
/* 800AF458  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 800AF45C  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 800AF460  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 800AF464  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 800AF468  E3 A1 00 88 */	psq_l f29, 136(r1), 0, 0 /* qr0 */
/* 800AF46C  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 800AF470  E3 81 00 78 */	psq_l f28, 120(r1), 0, 0 /* qr0 */
/* 800AF474  CB 81 00 70 */	lfd f28, 0x70(r1)
/* 800AF478  E3 61 00 68 */	psq_l f27, 104(r1), 0, 0 /* qr0 */
/* 800AF47C  CB 61 00 60 */	lfd f27, 0x60(r1)
/* 800AF480  E3 41 00 58 */	psq_l f26, 88(r1), 0, 0 /* qr0 */
/* 800AF484  CB 41 00 50 */	lfd f26, 0x50(r1)
/* 800AF488  E3 21 00 48 */	psq_l f25, 72(r1), 0, 0 /* qr0 */
/* 800AF48C  CB 21 00 40 */	lfd f25, 0x40(r1)
/* 800AF490  E3 01 00 38 */	psq_l f24, 56(r1), 0, 0 /* qr0 */
/* 800AF494  CB 01 00 30 */	lfd f24, 0x30(r1)
/* 800AF498  39 61 00 30 */	addi r11, r1, 0x30
/* 800AF49C  48 2B 2D 89 */	bl _restgpr_28
/* 800AF4A0  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 800AF4A4  7C 08 03 A6 */	mtlr r0
/* 800AF4A8  38 21 00 B0 */	addi r1, r1, 0xb0
/* 800AF4AC  4E 80 00 20 */	blr 

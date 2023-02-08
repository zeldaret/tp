lbl_80629FB0:
/* 80629FB0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80629FB4  7C 08 02 A6 */	mflr r0
/* 80629FB8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80629FBC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80629FC0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80629FC4  39 61 00 30 */	addi r11, r1, 0x30
/* 80629FC8  4B D3 82 0D */	bl _savegpr_27
/* 80629FCC  7C 7E 1B 78 */	mr r30, r3
/* 80629FD0  3C 80 80 63 */	lis r4, lit_3920@ha /* 0x8062E634@ha */
/* 80629FD4  3B E4 E6 34 */	addi r31, r4, lit_3920@l /* 0x8062E634@l */
/* 80629FD8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80629FDC  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80629FE0  83 9D 5D AC */	lwz r28, 0x5dac(r29)
/* 80629FE4  7F 84 E3 78 */	mr r4, r28
/* 80629FE8  4B 9F 07 29 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80629FEC  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80629FF0  7C 00 18 50 */	subf r0, r0, r3
/* 80629FF4  7C 1B 07 34 */	extsh r27, r0
/* 80629FF8  7F C3 F3 78 */	mr r3, r30
/* 80629FFC  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 8062A000  4B 9F 07 E1 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8062A004  FF E0 08 90 */	fmr f31, f1
/* 8062A008  80 1E 06 F4 */	lwz r0, 0x6f4(r30)
/* 8062A00C  2C 00 00 04 */	cmpwi r0, 4
/* 8062A010  40 80 00 1C */	bge lbl_8062A02C
/* 8062A014  2C 00 00 01 */	cmpwi r0, 1
/* 8062A018  41 82 01 A4 */	beq lbl_8062A1BC
/* 8062A01C  40 80 02 2C */	bge lbl_8062A248
/* 8062A020  2C 00 00 00 */	cmpwi r0, 0
/* 8062A024  40 80 00 1C */	bge lbl_8062A040
/* 8062A028  48 00 03 88 */	b lbl_8062A3B0
lbl_8062A02C:
/* 8062A02C  2C 00 00 0C */	cmpwi r0, 0xc
/* 8062A030  40 80 03 80 */	bge lbl_8062A3B0
/* 8062A034  2C 00 00 0A */	cmpwi r0, 0xa
/* 8062A038  40 80 00 08 */	bge lbl_8062A040
/* 8062A03C  48 00 03 74 */	b lbl_8062A3B0
lbl_8062A040:
/* 8062A040  7F C3 F3 78 */	mr r3, r30
/* 8062A044  38 80 00 00 */	li r4, 0
/* 8062A048  4B FF 69 99 */	bl setSwordAtBit__8daB_TN_cFi
/* 8062A04C  7F C3 F3 78 */	mr r3, r30
/* 8062A050  38 80 00 01 */	li r4, 1
/* 8062A054  4B FF 6A 91 */	bl setSwordAtBreak__8daB_TN_cFi
/* 8062A058  80 1E 36 18 */	lwz r0, 0x3618(r30)
/* 8062A05C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8062A060  90 1E 36 18 */	stw r0, 0x3618(r30)
/* 8062A064  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8062A068  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8062A06C  80 1E 06 F4 */	lwz r0, 0x6f4(r30)
/* 8062A070  2C 00 00 00 */	cmpwi r0, 0
/* 8062A074  40 82 00 B4 */	bne lbl_8062A128
/* 8062A078  38 00 00 01 */	li r0, 1
/* 8062A07C  98 1E 0A 91 */	stb r0, 0xa91(r30)
/* 8062A080  7F C3 F3 78 */	mr r3, r30
/* 8062A084  4B FF 6F 1D */	bl getCutType__8daB_TN_cFv
/* 8062A088  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 8062A08C  41 82 00 20 */	beq lbl_8062A0AC
/* 8062A090  7F C3 F3 78 */	mr r3, r30
/* 8062A094  38 80 00 1C */	li r4, 0x1c
/* 8062A098  38 A0 00 00 */	li r5, 0
/* 8062A09C  C0 3F 01 28 */	lfs f1, 0x128(r31)
/* 8062A0A0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8062A0A4  4B FF 68 25 */	bl setBck__8daB_TN_cFiUcff
/* 8062A0A8  48 00 00 6C */	b lbl_8062A114
lbl_8062A0AC:
/* 8062A0AC  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 8062A0B0  41 82 00 20 */	beq lbl_8062A0D0
/* 8062A0B4  7F C3 F3 78 */	mr r3, r30
/* 8062A0B8  38 80 00 1D */	li r4, 0x1d
/* 8062A0BC  38 A0 00 00 */	li r5, 0
/* 8062A0C0  C0 3F 01 28 */	lfs f1, 0x128(r31)
/* 8062A0C4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8062A0C8  4B FF 68 01 */	bl setBck__8daB_TN_cFiUcff
/* 8062A0CC  48 00 00 48 */	b lbl_8062A114
lbl_8062A0D0:
/* 8062A0D0  4B C3 D7 9D */	bl cM_rnd__Fv
/* 8062A0D4  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 8062A0D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8062A0DC  40 80 00 20 */	bge lbl_8062A0FC
/* 8062A0E0  7F C3 F3 78 */	mr r3, r30
/* 8062A0E4  38 80 00 1C */	li r4, 0x1c
/* 8062A0E8  38 A0 00 00 */	li r5, 0
/* 8062A0EC  C0 3F 01 28 */	lfs f1, 0x128(r31)
/* 8062A0F0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8062A0F4  4B FF 67 D5 */	bl setBck__8daB_TN_cFiUcff
/* 8062A0F8  48 00 00 1C */	b lbl_8062A114
lbl_8062A0FC:
/* 8062A0FC  7F C3 F3 78 */	mr r3, r30
/* 8062A100  38 80 00 1D */	li r4, 0x1d
/* 8062A104  38 A0 00 00 */	li r5, 0
/* 8062A108  C0 3F 01 28 */	lfs f1, 0x128(r31)
/* 8062A10C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8062A110  4B FF 67 B9 */	bl setBck__8daB_TN_cFiUcff
lbl_8062A114:
/* 8062A114  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8062A118  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8062A11C  38 00 00 01 */	li r0, 1
/* 8062A120  90 1E 06 F4 */	stw r0, 0x6f4(r30)
/* 8062A124  48 00 00 48 */	b lbl_8062A16C
lbl_8062A128:
/* 8062A128  2C 00 00 0B */	cmpwi r0, 0xb
/* 8062A12C  40 82 00 10 */	bne lbl_8062A13C
/* 8062A130  38 00 00 03 */	li r0, 3
/* 8062A134  90 1E 06 F4 */	stw r0, 0x6f4(r30)
/* 8062A138  48 00 00 0C */	b lbl_8062A144
lbl_8062A13C:
/* 8062A13C  38 00 00 02 */	li r0, 2
/* 8062A140  90 1E 06 F4 */	stw r0, 0x6f4(r30)
lbl_8062A144:
/* 8062A144  38 00 00 00 */	li r0, 0
/* 8062A148  98 1E 0A 91 */	stb r0, 0xa91(r30)
/* 8062A14C  7F C3 F3 78 */	mr r3, r30
/* 8062A150  38 80 00 1A */	li r4, 0x1a
/* 8062A154  38 A0 00 00 */	li r5, 0
/* 8062A158  C0 3F 01 28 */	lfs f1, 0x128(r31)
/* 8062A15C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8062A160  4B FF 67 69 */	bl setBck__8daB_TN_cFiUcff
/* 8062A164  C0 1F 01 8C */	lfs f0, 0x18c(r31)
/* 8062A168  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_8062A16C:
/* 8062A16C  88 1E 0A A7 */	lbz r0, 0xaa7(r30)
/* 8062A170  28 00 00 00 */	cmplwi r0, 0
/* 8062A174  41 82 00 18 */	beq lbl_8062A18C
/* 8062A178  7F C3 F3 78 */	mr r3, r30
/* 8062A17C  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 8062A180  4B 9F 05 91 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8062A184  B0 7E 04 E6 */	sth r3, 0x4e6(r30)
/* 8062A188  48 00 00 20 */	b lbl_8062A1A8
lbl_8062A18C:
/* 8062A18C  7F C3 F3 78 */	mr r3, r30
/* 8062A190  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 8062A194  4B 9F 05 7D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8062A198  7C 64 1B 78 */	mr r4, r3
/* 8062A19C  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 8062A1A0  38 A0 20 00 */	li r5, 0x2000
/* 8062A1A4  4B C4 69 ED */	bl cLib_chaseAngleS__FPsss
lbl_8062A1A8:
/* 8062A1A8  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 8062A1AC  3C 63 00 01 */	addis r3, r3, 1
/* 8062A1B0  38 03 80 00 */	addi r0, r3, -32768
/* 8062A1B4  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8062A1B8  48 00 01 F8 */	b lbl_8062A3B0
lbl_8062A1BC:
/* 8062A1BC  38 00 00 00 */	li r0, 0
/* 8062A1C0  98 1E 0A 91 */	stb r0, 0xa91(r30)
/* 8062A1C4  88 1C 05 68 */	lbz r0, 0x568(r28)
/* 8062A1C8  28 00 00 05 */	cmplwi r0, 5
/* 8062A1CC  41 82 00 1C */	beq lbl_8062A1E8
/* 8062A1D0  7F 63 DB 78 */	mr r3, r27
/* 8062A1D4  4B D3 AE FD */	bl abs
/* 8062A1D8  2C 03 30 00 */	cmpwi r3, 0x3000
/* 8062A1DC  40 80 00 0C */	bge lbl_8062A1E8
/* 8062A1E0  38 00 00 01 */	li r0, 1
/* 8062A1E4  98 1E 0A 91 */	stb r0, 0xa91(r30)
lbl_8062A1E8:
/* 8062A1E8  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8062A1EC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8062A1F0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8062A1F4  4B C4 65 4D */	bl cLib_chaseF__FPfff
/* 8062A1F8  80 7E 06 00 */	lwz r3, 0x600(r30)
/* 8062A1FC  38 80 00 01 */	li r4, 1
/* 8062A200  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8062A204  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8062A208  40 82 00 18 */	bne lbl_8062A220
/* 8062A20C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8062A210  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8062A214  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8062A218  41 82 00 08 */	beq lbl_8062A220
/* 8062A21C  38 80 00 00 */	li r4, 0
lbl_8062A220:
/* 8062A220  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8062A224  41 82 01 8C */	beq lbl_8062A3B0
/* 8062A228  88 1C 05 68 */	lbz r0, 0x568(r28)
/* 8062A22C  28 00 00 05 */	cmplwi r0, 5
/* 8062A230  41 82 01 80 */	beq lbl_8062A3B0
/* 8062A234  7F C3 F3 78 */	mr r3, r30
/* 8062A238  38 80 00 09 */	li r4, 9
/* 8062A23C  38 A0 00 00 */	li r5, 0
/* 8062A240  4B FF 67 89 */	bl setActionMode__8daB_TN_cFii
/* 8062A244  48 00 01 6C */	b lbl_8062A3B0
lbl_8062A248:
/* 8062A248  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8062A24C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8062A250  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8062A254  4B C4 64 ED */	bl cLib_chaseF__FPfff
/* 8062A258  7F 63 DB 78 */	mr r3, r27
/* 8062A25C  4B D3 AE 75 */	bl abs
/* 8062A260  2C 03 30 00 */	cmpwi r3, 0x3000
/* 8062A264  40 80 00 10 */	bge lbl_8062A274
/* 8062A268  38 00 00 01 */	li r0, 1
/* 8062A26C  98 1E 0A 91 */	stb r0, 0xa91(r30)
/* 8062A270  48 00 00 0C */	b lbl_8062A27C
lbl_8062A274:
/* 8062A274  38 00 00 00 */	li r0, 0
/* 8062A278  98 1E 0A 91 */	stb r0, 0xa91(r30)
lbl_8062A27C:
/* 8062A27C  80 7E 06 00 */	lwz r3, 0x600(r30)
/* 8062A280  38 63 00 0C */	addi r3, r3, 0xc
/* 8062A284  C0 3F 01 C4 */	lfs f1, 0x1c4(r31)
/* 8062A288  4B CF E1 A5 */	bl checkPass__12J3DFrameCtrlFf
/* 8062A28C  2C 03 00 00 */	cmpwi r3, 0
/* 8062A290  41 82 00 2C */	beq lbl_8062A2BC
/* 8062A294  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007039F@ha */
/* 8062A298  38 03 03 9F */	addi r0, r3, 0x039F /* 0x0007039F@l */
/* 8062A29C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8062A2A0  38 7E 06 4C */	addi r3, r30, 0x64c
/* 8062A2A4  38 81 00 0C */	addi r4, r1, 0xc
/* 8062A2A8  38 A0 FF FF */	li r5, -1
/* 8062A2AC  81 9E 06 4C */	lwz r12, 0x64c(r30)
/* 8062A2B0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8062A2B4  7D 89 03 A6 */	mtctr r12
/* 8062A2B8  4E 80 04 21 */	bctrl 
lbl_8062A2BC:
/* 8062A2BC  80 7E 06 00 */	lwz r3, 0x600(r30)
/* 8062A2C0  38 63 00 0C */	addi r3, r3, 0xc
/* 8062A2C4  C0 3F 01 D8 */	lfs f1, 0x1d8(r31)
/* 8062A2C8  4B CF E1 65 */	bl checkPass__12J3DFrameCtrlFf
/* 8062A2CC  2C 03 00 00 */	cmpwi r3, 0
/* 8062A2D0  41 82 00 30 */	beq lbl_8062A300
/* 8062A2D4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A6@ha */
/* 8062A2D8  38 03 03 A6 */	addi r0, r3, 0x03A6 /* 0x000703A6@l */
/* 8062A2DC  90 01 00 08 */	stw r0, 8(r1)
/* 8062A2E0  38 7E 06 4C */	addi r3, r30, 0x64c
/* 8062A2E4  38 81 00 08 */	addi r4, r1, 8
/* 8062A2E8  38 A0 00 00 */	li r5, 0
/* 8062A2EC  38 C0 FF FF */	li r6, -1
/* 8062A2F0  81 9E 06 4C */	lwz r12, 0x64c(r30)
/* 8062A2F4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8062A2F8  7D 89 03 A6 */	mtctr r12
/* 8062A2FC  4E 80 04 21 */	bctrl 
lbl_8062A300:
/* 8062A300  80 1E 06 F4 */	lwz r0, 0x6f4(r30)
/* 8062A304  2C 00 00 03 */	cmpwi r0, 3
/* 8062A308  40 82 00 68 */	bne lbl_8062A370
/* 8062A30C  80 7E 06 00 */	lwz r3, 0x600(r30)
/* 8062A310  38 63 00 0C */	addi r3, r3, 0xc
/* 8062A314  C0 3F 01 40 */	lfs f1, 0x140(r31)
/* 8062A318  4B CF E1 15 */	bl checkPass__12J3DFrameCtrlFf
/* 8062A31C  2C 03 00 00 */	cmpwi r3, 0
/* 8062A320  41 82 00 90 */	beq lbl_8062A3B0
/* 8062A324  38 00 00 01 */	li r0, 1
/* 8062A328  98 1E 0A 91 */	stb r0, 0xa91(r30)
/* 8062A32C  7F C3 F3 78 */	mr r3, r30
/* 8062A330  4B FF D9 8D */	bl checkAttackAble__8daB_TN_cFv
/* 8062A334  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8062A338  41 82 00 24 */	beq lbl_8062A35C
/* 8062A33C  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 8062A340  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8062A344  40 80 00 18 */	bge lbl_8062A35C
/* 8062A348  7F C3 F3 78 */	mr r3, r30
/* 8062A34C  38 80 00 0B */	li r4, 0xb
/* 8062A350  38 A0 00 00 */	li r5, 0
/* 8062A354  4B FF 66 75 */	bl setActionMode__8daB_TN_cFii
/* 8062A358  48 00 00 58 */	b lbl_8062A3B0
lbl_8062A35C:
/* 8062A35C  7F C3 F3 78 */	mr r3, r30
/* 8062A360  38 80 00 0A */	li r4, 0xa
/* 8062A364  38 A0 00 0B */	li r5, 0xb
/* 8062A368  4B FF 66 61 */	bl setActionMode__8daB_TN_cFii
/* 8062A36C  48 00 00 44 */	b lbl_8062A3B0
lbl_8062A370:
/* 8062A370  80 7E 06 00 */	lwz r3, 0x600(r30)
/* 8062A374  38 80 00 01 */	li r4, 1
/* 8062A378  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8062A37C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8062A380  40 82 00 18 */	bne lbl_8062A398
/* 8062A384  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8062A388  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8062A38C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8062A390  41 82 00 08 */	beq lbl_8062A398
/* 8062A394  38 80 00 00 */	li r4, 0
lbl_8062A398:
/* 8062A398  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8062A39C  41 82 00 14 */	beq lbl_8062A3B0
/* 8062A3A0  7F C3 F3 78 */	mr r3, r30
/* 8062A3A4  38 80 00 09 */	li r4, 9
/* 8062A3A8  38 A0 00 00 */	li r5, 0
/* 8062A3AC  4B FF 66 1D */	bl setActionMode__8daB_TN_cFii
lbl_8062A3B0:
/* 8062A3B0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8062A3B4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8062A3B8  39 61 00 30 */	addi r11, r1, 0x30
/* 8062A3BC  4B D3 7E 65 */	bl _restgpr_27
/* 8062A3C0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8062A3C4  7C 08 03 A6 */	mtlr r0
/* 8062A3C8  38 21 00 40 */	addi r1, r1, 0x40
/* 8062A3CC  4E 80 00 20 */	blr 

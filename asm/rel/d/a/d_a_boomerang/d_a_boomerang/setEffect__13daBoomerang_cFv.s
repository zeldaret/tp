lbl_804A012C:
/* 804A012C  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 804A0130  7C 08 02 A6 */	mflr r0
/* 804A0134  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 804A0138  39 61 00 B0 */	addi r11, r1, 0xb0
/* 804A013C  4B EC 20 70 */	b _savegpr_17
/* 804A0140  7C 73 1B 78 */	mr r19, r3
/* 804A0144  3C 60 80 4A */	lis r3, lit_1109@ha
/* 804A0148  3B 83 2C D0 */	addi r28, r3, lit_1109@l
/* 804A014C  3C 60 80 4A */	lis r3, lit_4078@ha
/* 804A0150  3B A3 28 50 */	addi r29, r3, lit_4078@l
/* 804A0154  88 1C 00 41 */	lbz r0, 0x41(r28)
/* 804A0158  7C 00 07 75 */	extsb. r0, r0
/* 804A015C  40 82 00 24 */	bne lbl_804A0180
/* 804A0160  C0 3D 00 54 */	lfs f1, 0x54(r29)
/* 804A0164  D0 3C 00 44 */	stfs f1, 0x44(r28)
/* 804A0168  C0 1D 00 C0 */	lfs f0, 0xc0(r29)
/* 804A016C  38 7C 00 44 */	addi r3, r28, 0x44
/* 804A0170  D0 03 00 04 */	stfs f0, 4(r3)
/* 804A0174  D0 23 00 08 */	stfs f1, 8(r3)
/* 804A0178  38 00 00 01 */	li r0, 1
/* 804A017C  98 1C 00 41 */	stb r0, 0x41(r28)
lbl_804A0180:
/* 804A0180  88 1C 00 50 */	lbz r0, 0x50(r28)
/* 804A0184  7C 00 07 75 */	extsb. r0, r0
/* 804A0188  40 82 00 20 */	bne lbl_804A01A8
/* 804A018C  C0 1D 00 D0 */	lfs f0, 0xd0(r29)
/* 804A0190  D0 1C 00 54 */	stfs f0, 0x54(r28)
/* 804A0194  38 7C 00 54 */	addi r3, r28, 0x54
/* 804A0198  D0 03 00 04 */	stfs f0, 4(r3)
/* 804A019C  D0 03 00 08 */	stfs f0, 8(r3)
/* 804A01A0  38 00 00 01 */	li r0, 1
/* 804A01A4  98 1C 00 50 */	stb r0, 0x50(r28)
lbl_804A01A8:
/* 804A01A8  88 1C 00 60 */	lbz r0, 0x60(r28)
/* 804A01AC  7C 00 07 75 */	extsb. r0, r0
/* 804A01B0  40 82 00 20 */	bne lbl_804A01D0
/* 804A01B4  C0 1D 00 D4 */	lfs f0, 0xd4(r29)
/* 804A01B8  D0 1C 00 64 */	stfs f0, 0x64(r28)
/* 804A01BC  38 7C 00 64 */	addi r3, r28, 0x64
/* 804A01C0  D0 03 00 04 */	stfs f0, 4(r3)
/* 804A01C4  D0 03 00 08 */	stfs f0, 8(r3)
/* 804A01C8  38 00 00 01 */	li r0, 1
/* 804A01CC  98 1C 00 60 */	stb r0, 0x60(r28)
lbl_804A01D0:
/* 804A01D0  88 1C 00 70 */	lbz r0, 0x70(r28)
/* 804A01D4  7C 00 07 75 */	extsb. r0, r0
/* 804A01D8  40 82 00 20 */	bne lbl_804A01F8
/* 804A01DC  C0 1D 00 D8 */	lfs f0, 0xd8(r29)
/* 804A01E0  D0 1C 00 74 */	stfs f0, 0x74(r28)
/* 804A01E4  38 7C 00 74 */	addi r3, r28, 0x74
/* 804A01E8  D0 03 00 04 */	stfs f0, 4(r3)
/* 804A01EC  D0 03 00 08 */	stfs f0, 8(r3)
/* 804A01F0  38 00 00 01 */	li r0, 1
/* 804A01F4  98 1C 00 70 */	stb r0, 0x70(r28)
lbl_804A01F8:
/* 804A01F8  80 13 00 B0 */	lwz r0, 0xb0(r19)
/* 804A01FC  28 00 00 00 */	cmplwi r0, 0
/* 804A0200  41 82 05 B4 */	beq lbl_804A07B4
/* 804A0204  7E 63 9B 78 */	mr r3, r19
/* 804A0208  38 93 09 6C */	addi r4, r19, 0x96c
/* 804A020C  38 A0 01 FE */	li r5, 0x1fe
/* 804A0210  4B FF FE 5D */	bl setEffectTraceMatrix__13daBoomerang_cFPUlUs
/* 804A0214  7E 63 9B 78 */	mr r3, r19
/* 804A0218  38 93 09 70 */	addi r4, r19, 0x970
/* 804A021C  38 A0 01 FF */	li r5, 0x1ff
/* 804A0220  4B FF FE 4D */	bl setEffectTraceMatrix__13daBoomerang_cFPUlUs
/* 804A0224  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804A0228  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 804A022C  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 804A0230  38 00 00 FF */	li r0, 0xff
/* 804A0234  90 01 00 08 */	stw r0, 8(r1)
/* 804A0238  38 80 00 00 */	li r4, 0
/* 804A023C  90 81 00 0C */	stw r4, 0xc(r1)
/* 804A0240  38 00 FF FF */	li r0, -1
/* 804A0244  90 01 00 10 */	stw r0, 0x10(r1)
/* 804A0248  90 81 00 14 */	stw r4, 0x14(r1)
/* 804A024C  90 81 00 18 */	stw r4, 0x18(r1)
/* 804A0250  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804A0254  80 93 09 74 */	lwz r4, 0x974(r19)
/* 804A0258  38 A0 00 00 */	li r5, 0
/* 804A025C  38 C0 02 4C */	li r6, 0x24c
/* 804A0260  38 F3 04 D0 */	addi r7, r19, 0x4d0
/* 804A0264  39 13 01 0C */	addi r8, r19, 0x10c
/* 804A0268  39 20 00 00 */	li r9, 0
/* 804A026C  39 40 00 00 */	li r10, 0
/* 804A0270  C0 3D 00 C0 */	lfs f1, 0xc0(r29)
/* 804A0274  4B BA D2 58 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804A0278  90 73 09 74 */	stw r3, 0x974(r19)
/* 804A027C  C0 13 04 D0 */	lfs f0, 0x4d0(r19)
/* 804A0280  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 804A0284  C0 13 04 D4 */	lfs f0, 0x4d4(r19)
/* 804A0288  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 804A028C  C0 13 04 D8 */	lfs f0, 0x4d8(r19)
/* 804A0290  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 804A0294  38 73 07 40 */	addi r3, r19, 0x740
/* 804A0298  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 804A029C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 804A02A0  3A 24 0F 38 */	addi r17, r4, 0xf38
/* 804A02A4  7E 24 8B 78 */	mr r4, r17
/* 804A02A8  4B BD 68 04 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 804A02AC  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 804A02B0  D0 13 04 D0 */	stfs f0, 0x4d0(r19)
/* 804A02B4  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 804A02B8  D0 13 04 D4 */	stfs f0, 0x4d4(r19)
/* 804A02BC  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 804A02C0  D0 13 04 D8 */	stfs f0, 0x4d8(r19)
/* 804A02C4  80 73 05 6C */	lwz r3, 0x56c(r19)
/* 804A02C8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804A02CC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804A02D0  C0 43 00 EC */	lfs f2, 0xec(r3)
/* 804A02D4  C0 23 01 0C */	lfs f1, 0x10c(r3)
/* 804A02D8  C0 03 00 CC */	lfs f0, 0xcc(r3)
/* 804A02DC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 804A02E0  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 804A02E4  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 804A02E8  3A C0 00 00 */	li r22, 0
/* 804A02EC  3C 60 80 4A */	lis r3, __vt__8cM3dGPla@ha
/* 804A02F0  38 03 2C B4 */	addi r0, r3, __vt__8cM3dGPla@l
/* 804A02F4  90 01 00 6C */	stw r0, 0x6c(r1)
/* 804A02F8  80 13 07 6C */	lwz r0, 0x76c(r19)
/* 804A02FC  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 804A0300  41 82 00 4C */	beq lbl_804A034C
/* 804A0304  7E 23 8B 78 */	mr r3, r17
/* 804A0308  38 93 08 C0 */	addi r4, r19, 0x8c0
/* 804A030C  4B BD 4B 44 */	b GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 804A0310  2C 03 00 06 */	cmpwi r3, 6
/* 804A0314  41 82 00 38 */	beq lbl_804A034C
/* 804A0318  C0 33 09 0C */	lfs f1, 0x90c(r19)
/* 804A031C  C0 13 07 D8 */	lfs f0, 0x7d8(r19)
/* 804A0320  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A0324  40 81 00 28 */	ble lbl_804A034C
/* 804A0328  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 804A032C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A0330  40 81 00 1C */	ble lbl_804A034C
/* 804A0334  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 804A0338  3A C1 00 44 */	addi r22, r1, 0x44
/* 804A033C  7E 23 8B 78 */	mr r3, r17
/* 804A0340  38 93 08 C0 */	addi r4, r19, 0x8c0
/* 804A0344  38 A1 00 5C */	addi r5, r1, 0x5c
/* 804A0348  4B BD 43 FC */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
lbl_804A034C:
/* 804A034C  28 16 00 00 */	cmplwi r22, 0
/* 804A0350  40 82 00 2C */	bne lbl_804A037C
/* 804A0354  C0 33 07 D8 */	lfs f1, 0x7d8(r19)
/* 804A0358  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 804A035C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A0360  40 81 00 1C */	ble lbl_804A037C
/* 804A0364  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 804A0368  3A C1 00 44 */	addi r22, r1, 0x44
/* 804A036C  7E 23 8B 78 */	mr r3, r17
/* 804A0370  38 93 08 30 */	addi r4, r19, 0x830
/* 804A0374  38 A1 00 5C */	addi r5, r1, 0x5c
/* 804A0378  4B BD 43 CC */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
lbl_804A037C:
/* 804A037C  88 13 04 E2 */	lbz r0, 0x4e2(r19)
/* 804A0380  7C 00 07 74 */	extsb r0, r0
/* 804A0384  90 01 00 08 */	stw r0, 8(r1)
/* 804A0388  38 73 09 18 */	addi r3, r19, 0x918
/* 804A038C  38 93 01 0C */	addi r4, r19, 0x10c
/* 804A0390  38 A1 00 44 */	addi r5, r1, 0x44
/* 804A0394  38 C0 00 04 */	li r6, 4
/* 804A0398  3C E0 00 06 */	lis r7, 6
/* 804A039C  7E C8 B3 78 */	mr r8, r22
/* 804A03A0  39 33 04 DC */	addi r9, r19, 0x4dc
/* 804A03A4  39 40 00 00 */	li r10, 0
/* 804A03A8  C0 3D 00 54 */	lfs f1, 0x54(r29)
/* 804A03AC  C0 53 05 2C */	lfs f2, 0x52c(r19)
/* 804A03B0  4B BB 0C 58 */	b setEffectCenter__7dPaPo_cFPC12dKy_tevstr_cPC4cXyzUlUlPC4cXyzPC5csXyzPC4cXyzScff
/* 804A03B4  3A A0 00 00 */	li r21, 0
/* 804A03B8  3A 40 00 00 */	li r18, 0
/* 804A03BC  3B 5C 00 54 */	addi r26, r28, 0x54
/* 804A03C0  3B 3C 00 44 */	addi r25, r28, 0x44
/* 804A03C4  3B 1C 00 74 */	addi r24, r28, 0x74
/* 804A03C8  3A FC 00 64 */	addi r23, r28, 0x64
lbl_804A03CC:
/* 804A03CC  38 15 09 4C */	addi r0, r21, 0x94c
/* 804A03D0  7F F3 00 AE */	lbzx r31, r19, r0
/* 804A03D4  3A 80 00 00 */	li r20, 0
/* 804A03D8  3A 20 00 00 */	li r17, 0
/* 804A03DC  7F 73 92 14 */	add r27, r19, r18
lbl_804A03E0:
/* 804A03E0  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 804A03E4  38 63 02 10 */	addi r3, r3, 0x210
/* 804A03E8  38 11 09 20 */	addi r0, r17, 0x920
/* 804A03EC  7C 9B 00 2E */	lwzx r4, r27, r0
/* 804A03F0  4B BA B5 28 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 804A03F4  28 03 00 00 */	cmplwi r3, 0
/* 804A03F8  41 82 01 68 */	beq lbl_804A0560
/* 804A03FC  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 804A0400  40 82 00 40 */	bne lbl_804A0440
/* 804A0404  38 00 00 3C */	li r0, 0x3c
/* 804A0408  B0 03 00 54 */	sth r0, 0x54(r3)
/* 804A040C  38 00 00 14 */	li r0, 0x14
/* 804A0410  B0 03 00 52 */	sth r0, 0x52(r3)
/* 804A0414  C0 1D 00 DC */	lfs f0, 0xdc(r29)
/* 804A0418  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 804A041C  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 804A0420  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 804A0424  C0 1D 00 54 */	lfs f0, 0x54(r29)
/* 804A0428  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 804A042C  C0 3A 00 04 */	lfs f1, 4(r26)
/* 804A0430  C0 1C 00 54 */	lfs f0, 0x54(r28)
/* 804A0434  D0 03 00 B0 */	stfs f0, 0xb0(r3)
/* 804A0438  D0 23 00 B4 */	stfs f1, 0xb4(r3)
/* 804A043C  48 00 01 24 */	b lbl_804A0560
lbl_804A0440:
/* 804A0440  28 00 00 01 */	cmplwi r0, 1
/* 804A0444  40 82 00 44 */	bne lbl_804A0488
/* 804A0448  38 00 00 32 */	li r0, 0x32
/* 804A044C  B0 03 00 54 */	sth r0, 0x54(r3)
/* 804A0450  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 804A0454  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 804A0458  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 804A045C  C0 1C 00 44 */	lfs f0, 0x44(r28)
/* 804A0460  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 804A0464  C0 19 00 04 */	lfs f0, 4(r25)
/* 804A0468  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 804A046C  C0 19 00 08 */	lfs f0, 8(r25)
/* 804A0470  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 804A0474  C0 38 00 04 */	lfs f1, 4(r24)
/* 804A0478  C0 1C 00 74 */	lfs f0, 0x74(r28)
/* 804A047C  D0 03 00 B0 */	stfs f0, 0xb0(r3)
/* 804A0480  D0 23 00 B4 */	stfs f1, 0xb4(r3)
/* 804A0484  48 00 00 DC */	b lbl_804A0560
lbl_804A0488:
/* 804A0488  28 00 00 02 */	cmplwi r0, 2
/* 804A048C  40 82 00 48 */	bne lbl_804A04D4
/* 804A0490  C0 1C 00 44 */	lfs f0, 0x44(r28)
/* 804A0494  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 804A0498  C0 19 00 04 */	lfs f0, 4(r25)
/* 804A049C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 804A04A0  C0 19 00 08 */	lfs f0, 8(r25)
/* 804A04A4  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 804A04A8  C0 1C 00 54 */	lfs f0, 0x54(r28)
/* 804A04AC  D0 03 00 98 */	stfs f0, 0x98(r3)
/* 804A04B0  C0 1A 00 04 */	lfs f0, 4(r26)
/* 804A04B4  D0 03 00 9C */	stfs f0, 0x9c(r3)
/* 804A04B8  C0 1A 00 08 */	lfs f0, 8(r26)
/* 804A04BC  D0 03 00 A0 */	stfs f0, 0xa0(r3)
/* 804A04C0  C0 3A 00 04 */	lfs f1, 4(r26)
/* 804A04C4  C0 1C 00 54 */	lfs f0, 0x54(r28)
/* 804A04C8  D0 03 00 B0 */	stfs f0, 0xb0(r3)
/* 804A04CC  D0 23 00 B4 */	stfs f1, 0xb4(r3)
/* 804A04D0  48 00 00 90 */	b lbl_804A0560
lbl_804A04D4:
/* 804A04D4  28 00 00 03 */	cmplwi r0, 3
/* 804A04D8  40 82 00 48 */	bne lbl_804A0520
/* 804A04DC  38 00 00 3C */	li r0, 0x3c
/* 804A04E0  B0 03 00 54 */	sth r0, 0x54(r3)
/* 804A04E4  38 00 00 0F */	li r0, 0xf
/* 804A04E8  B0 03 00 52 */	sth r0, 0x52(r3)
/* 804A04EC  C0 1D 00 DC */	lfs f0, 0xdc(r29)
/* 804A04F0  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 804A04F4  C0 1C 00 44 */	lfs f0, 0x44(r28)
/* 804A04F8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 804A04FC  C0 19 00 04 */	lfs f0, 4(r25)
/* 804A0500  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 804A0504  C0 19 00 08 */	lfs f0, 8(r25)
/* 804A0508  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 804A050C  C0 37 00 04 */	lfs f1, 4(r23)
/* 804A0510  C0 1C 00 64 */	lfs f0, 0x64(r28)
/* 804A0514  D0 03 00 B0 */	stfs f0, 0xb0(r3)
/* 804A0518  D0 23 00 B4 */	stfs f1, 0xb4(r3)
/* 804A051C  48 00 00 44 */	b lbl_804A0560
lbl_804A0520:
/* 804A0520  28 00 00 04 */	cmplwi r0, 4
/* 804A0524  40 82 00 3C */	bne lbl_804A0560
/* 804A0528  38 00 00 3C */	li r0, 0x3c
/* 804A052C  B0 03 00 54 */	sth r0, 0x54(r3)
/* 804A0530  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 804A0534  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 804A0538  C0 1C 00 44 */	lfs f0, 0x44(r28)
/* 804A053C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 804A0540  C0 19 00 04 */	lfs f0, 4(r25)
/* 804A0544  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 804A0548  C0 19 00 08 */	lfs f0, 8(r25)
/* 804A054C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 804A0550  C0 3A 00 04 */	lfs f1, 4(r26)
/* 804A0554  C0 1C 00 54 */	lfs f0, 0x54(r28)
/* 804A0558  D0 03 00 B0 */	stfs f0, 0xb0(r3)
/* 804A055C  D0 23 00 B4 */	stfs f1, 0xb4(r3)
lbl_804A0560:
/* 804A0560  3A 94 00 01 */	addi r20, r20, 1
/* 804A0564  2C 14 00 04 */	cmpwi r20, 4
/* 804A0568  3A 31 00 04 */	addi r17, r17, 4
/* 804A056C  41 80 FE 74 */	blt lbl_804A03E0
/* 804A0570  3A B5 00 01 */	addi r21, r21, 1
/* 804A0574  2C 15 00 02 */	cmpwi r21, 2
/* 804A0578  3A 52 00 10 */	addi r18, r18, 0x10
/* 804A057C  41 80 FE 50 */	blt lbl_804A03CC
/* 804A0580  28 16 00 00 */	cmplwi r22, 0
/* 804A0584  41 82 01 DC */	beq lbl_804A0760
/* 804A0588  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 804A058C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804A0590  C0 1D 00 54 */	lfs f0, 0x54(r29)
/* 804A0594  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804A0598  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 804A059C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804A05A0  38 61 00 2C */	addi r3, r1, 0x2c
/* 804A05A4  4B EA 6B 94 */	b PSVECSquareMag
/* 804A05A8  C0 1D 00 54 */	lfs f0, 0x54(r29)
/* 804A05AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A05B0  40 81 00 58 */	ble lbl_804A0608
/* 804A05B4  FC 00 08 34 */	frsqrte f0, f1
/* 804A05B8  C8 9D 00 E8 */	lfd f4, 0xe8(r29)
/* 804A05BC  FC 44 00 32 */	fmul f2, f4, f0
/* 804A05C0  C8 7D 00 F0 */	lfd f3, 0xf0(r29)
/* 804A05C4  FC 00 00 32 */	fmul f0, f0, f0
/* 804A05C8  FC 01 00 32 */	fmul f0, f1, f0
/* 804A05CC  FC 03 00 28 */	fsub f0, f3, f0
/* 804A05D0  FC 02 00 32 */	fmul f0, f2, f0
/* 804A05D4  FC 44 00 32 */	fmul f2, f4, f0
/* 804A05D8  FC 00 00 32 */	fmul f0, f0, f0
/* 804A05DC  FC 01 00 32 */	fmul f0, f1, f0
/* 804A05E0  FC 03 00 28 */	fsub f0, f3, f0
/* 804A05E4  FC 02 00 32 */	fmul f0, f2, f0
/* 804A05E8  FC 44 00 32 */	fmul f2, f4, f0
/* 804A05EC  FC 00 00 32 */	fmul f0, f0, f0
/* 804A05F0  FC 01 00 32 */	fmul f0, f1, f0
/* 804A05F4  FC 03 00 28 */	fsub f0, f3, f0
/* 804A05F8  FC 02 00 32 */	fmul f0, f2, f0
/* 804A05FC  FC 21 00 32 */	fmul f1, f1, f0
/* 804A0600  FC 20 08 18 */	frsp f1, f1
/* 804A0604  48 00 00 88 */	b lbl_804A068C
lbl_804A0608:
/* 804A0608  C8 1D 00 F8 */	lfd f0, 0xf8(r29)
/* 804A060C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A0610  40 80 00 10 */	bge lbl_804A0620
/* 804A0614  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804A0618  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 804A061C  48 00 00 70 */	b lbl_804A068C
lbl_804A0620:
/* 804A0620  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 804A0624  80 81 00 20 */	lwz r4, 0x20(r1)
/* 804A0628  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804A062C  3C 00 7F 80 */	lis r0, 0x7f80
/* 804A0630  7C 03 00 00 */	cmpw r3, r0
/* 804A0634  41 82 00 14 */	beq lbl_804A0648
/* 804A0638  40 80 00 40 */	bge lbl_804A0678
/* 804A063C  2C 03 00 00 */	cmpwi r3, 0
/* 804A0640  41 82 00 20 */	beq lbl_804A0660
/* 804A0644  48 00 00 34 */	b lbl_804A0678
lbl_804A0648:
/* 804A0648  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804A064C  41 82 00 0C */	beq lbl_804A0658
/* 804A0650  38 00 00 01 */	li r0, 1
/* 804A0654  48 00 00 28 */	b lbl_804A067C
lbl_804A0658:
/* 804A0658  38 00 00 02 */	li r0, 2
/* 804A065C  48 00 00 20 */	b lbl_804A067C
lbl_804A0660:
/* 804A0660  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804A0664  41 82 00 0C */	beq lbl_804A0670
/* 804A0668  38 00 00 05 */	li r0, 5
/* 804A066C  48 00 00 10 */	b lbl_804A067C
lbl_804A0670:
/* 804A0670  38 00 00 03 */	li r0, 3
/* 804A0674  48 00 00 08 */	b lbl_804A067C
lbl_804A0678:
/* 804A0678  38 00 00 04 */	li r0, 4
lbl_804A067C:
/* 804A067C  2C 00 00 01 */	cmpwi r0, 1
/* 804A0680  40 82 00 0C */	bne lbl_804A068C
/* 804A0684  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804A0688  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_804A068C:
/* 804A068C  C0 41 00 60 */	lfs f2, 0x60(r1)
/* 804A0690  4B DC 6F E4 */	b cM_atan2s__Fff
/* 804A0694  7C 64 1B 78 */	mr r4, r3
/* 804A0698  38 61 00 24 */	addi r3, r1, 0x24
/* 804A069C  38 A0 00 00 */	li r5, 0
/* 804A06A0  38 C0 00 00 */	li r6, 0
/* 804A06A4  4B DC 6D 50 */	b __ct__5csXyzFsss
/* 804A06A8  A8 01 00 24 */	lha r0, 0x24(r1)
/* 804A06AC  2C 00 00 00 */	cmpwi r0, 0
/* 804A06B0  41 82 00 10 */	beq lbl_804A06C0
/* 804A06B4  38 61 00 5C */	addi r3, r1, 0x5c
/* 804A06B8  4B DC 6A 70 */	b atan2sX_Z__4cXyzCFv
/* 804A06BC  B0 61 00 26 */	sth r3, 0x26(r1)
lbl_804A06C0:
/* 804A06C0  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 804A06C4  38 00 00 FF */	li r0, 0xff
/* 804A06C8  90 01 00 08 */	stw r0, 8(r1)
/* 804A06CC  38 80 00 00 */	li r4, 0
/* 804A06D0  90 81 00 0C */	stw r4, 0xc(r1)
/* 804A06D4  38 00 FF FF */	li r0, -1
/* 804A06D8  90 01 00 10 */	stw r0, 0x10(r1)
/* 804A06DC  90 81 00 14 */	stw r4, 0x14(r1)
/* 804A06E0  90 81 00 18 */	stw r4, 0x18(r1)
/* 804A06E4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804A06E8  80 93 09 78 */	lwz r4, 0x978(r19)
/* 804A06EC  38 A0 00 00 */	li r5, 0
/* 804A06F0  38 C0 02 56 */	li r6, 0x256
/* 804A06F4  7E C7 B3 78 */	mr r7, r22
/* 804A06F8  39 13 01 0C */	addi r8, r19, 0x10c
/* 804A06FC  39 21 00 24 */	addi r9, r1, 0x24
/* 804A0700  39 40 00 00 */	li r10, 0
/* 804A0704  C0 3D 00 C0 */	lfs f1, 0xc0(r29)
/* 804A0708  4B BA CD C4 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804A070C  90 73 09 78 */	stw r3, 0x978(r19)
/* 804A0710  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 804A0714  38 00 00 FF */	li r0, 0xff
/* 804A0718  90 01 00 08 */	stw r0, 8(r1)
/* 804A071C  38 80 00 00 */	li r4, 0
/* 804A0720  90 81 00 0C */	stw r4, 0xc(r1)
/* 804A0724  38 00 FF FF */	li r0, -1
/* 804A0728  90 01 00 10 */	stw r0, 0x10(r1)
/* 804A072C  90 81 00 14 */	stw r4, 0x14(r1)
/* 804A0730  90 81 00 18 */	stw r4, 0x18(r1)
/* 804A0734  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804A0738  80 93 09 7C */	lwz r4, 0x97c(r19)
/* 804A073C  38 A0 00 00 */	li r5, 0
/* 804A0740  38 C0 02 57 */	li r6, 0x257
/* 804A0744  7E C7 B3 78 */	mr r7, r22
/* 804A0748  39 13 01 0C */	addi r8, r19, 0x10c
/* 804A074C  39 21 00 24 */	addi r9, r1, 0x24
/* 804A0750  39 40 00 00 */	li r10, 0
/* 804A0754  C0 3D 00 C0 */	lfs f1, 0xc0(r29)
/* 804A0758  4B BA CD 74 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804A075C  90 73 09 7C */	stw r3, 0x97c(r19)
lbl_804A0760:
/* 804A0760  C0 33 04 D8 */	lfs f1, 0x4d8(r19)
/* 804A0764  C0 13 04 D0 */	lfs f0, 0x4d0(r19)
/* 804A0768  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804A076C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 804A0770  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804A0774  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 804A0778  38 73 0C 74 */	addi r3, r19, 0xc74
/* 804A077C  38 81 00 38 */	addi r4, r1, 0x38
/* 804A0780  4B DC EA 5C */	b SetC__8cM3dGCylFRC4cXyz
/* 804A0784  C0 33 04 D4 */	lfs f1, 0x4d4(r19)
/* 804A0788  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 804A078C  EC 21 00 28 */	fsubs f1, f1, f0
/* 804A0790  C0 1D 01 00 */	lfs f0, 0x100(r29)
/* 804A0794  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A0798  40 80 00 08 */	bge lbl_804A07A0
/* 804A079C  FC 20 00 90 */	fmr f1, f0
lbl_804A07A0:
/* 804A07A0  38 73 0C 74 */	addi r3, r19, 0xc74
/* 804A07A4  4B DC EA 54 */	b SetH__8cM3dGCylFf
/* 804A07A8  3C 60 80 4A */	lis r3, __vt__8cM3dGPla@ha
/* 804A07AC  38 03 2C B4 */	addi r0, r3, __vt__8cM3dGPla@l
/* 804A07B0  90 01 00 6C */	stw r0, 0x6c(r1)
lbl_804A07B4:
/* 804A07B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804A07B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804A07BC  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 804A07C0  54 00 03 19 */	rlwinm. r0, r0, 0, 0xc, 0xc
/* 804A07C4  41 82 00 24 */	beq lbl_804A07E8
/* 804A07C8  80 13 00 B0 */	lwz r0, 0xb0(r19)
/* 804A07CC  28 00 00 00 */	cmplwi r0, 0
/* 804A07D0  40 82 00 18 */	bne lbl_804A07E8
/* 804A07D4  7E 63 9B 78 */	mr r3, r19
/* 804A07D8  38 93 09 68 */	addi r4, r19, 0x968
/* 804A07DC  38 A0 07 40 */	li r5, 0x740
/* 804A07E0  4B FF F8 8D */	bl setEffectTraceMatrix__13daBoomerang_cFPUlUs
/* 804A07E4  48 00 00 30 */	b lbl_804A0814
lbl_804A07E8:
/* 804A07E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804A07EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804A07F0  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 804A07F4  38 63 02 10 */	addi r3, r3, 0x210
/* 804A07F8  80 93 09 68 */	lwz r4, 0x968(r19)
/* 804A07FC  4B BA B1 1C */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 804A0800  28 03 00 00 */	cmplwi r3, 0
/* 804A0804  41 82 00 10 */	beq lbl_804A0814
/* 804A0808  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 804A080C  60 00 00 04 */	ori r0, r0, 4
/* 804A0810  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_804A0814:
/* 804A0814  39 61 00 B0 */	addi r11, r1, 0xb0
/* 804A0818  4B EC 19 E0 */	b _restgpr_17
/* 804A081C  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 804A0820  7C 08 03 A6 */	mtlr r0
/* 804A0824  38 21 00 B0 */	addi r1, r1, 0xb0
/* 804A0828  4E 80 00 20 */	blr 

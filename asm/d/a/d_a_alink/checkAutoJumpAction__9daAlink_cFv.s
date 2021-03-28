lbl_800B607C:
/* 800B607C  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 800B6080  7C 08 02 A6 */	mflr r0
/* 800B6084  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 800B6088  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 800B608C  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 800B6090  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 800B6094  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 800B6098  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 800B609C  F3 A1 00 98 */	psq_st f29, 152(r1), 0, 0 /* qr0 */
/* 800B60A0  DB 81 00 80 */	stfd f28, 0x80(r1)
/* 800B60A4  F3 81 00 88 */	psq_st f28, 136(r1), 0, 0 /* qr0 */
/* 800B60A8  DB 61 00 70 */	stfd f27, 0x70(r1)
/* 800B60AC  F3 61 00 78 */	psq_st f27, 120(r1), 0, 0 /* qr0 */
/* 800B60B0  DB 41 00 60 */	stfd f26, 0x60(r1)
/* 800B60B4  F3 41 00 68 */	psq_st f26, 104(r1), 0, 0 /* qr0 */
/* 800B60B8  39 61 00 60 */	addi r11, r1, 0x60
/* 800B60BC  48 2A C1 15 */	bl _savegpr_26
/* 800B60C0  7C 7A 1B 78 */	mr r26, r3
/* 800B60C4  3C 80 80 39 */	lis r4, lit_3757@ha
/* 800B60C8  3B C4 D6 58 */	addi r30, r4, lit_3757@l
/* 800B60CC  48 02 CE BD */	bl checkMagneBootsFly__9daAlink_cFv
/* 800B60D0  2C 03 00 00 */	cmpwi r3, 0
/* 800B60D4  41 82 00 0C */	beq lbl_800B60E0
/* 800B60D8  38 60 00 01 */	li r3, 1
/* 800B60DC  48 00 08 A8 */	b lbl_800B6984
lbl_800B60E0:
/* 800B60E0  88 1A 2F BD */	lbz r0, 0x2fbd(r26)
/* 800B60E4  28 00 00 FF */	cmplwi r0, 0xff
/* 800B60E8  41 82 00 14 */	beq lbl_800B60FC
/* 800B60EC  7F 43 D3 78 */	mr r3, r26
/* 800B60F0  48 06 20 81 */	bl checkFlyAtnWait__9daAlink_cFv
/* 800B60F4  2C 03 00 00 */	cmpwi r3, 0
/* 800B60F8  41 82 00 0C */	beq lbl_800B6104
lbl_800B60FC:
/* 800B60FC  38 60 00 01 */	li r3, 1
/* 800B6100  48 00 08 84 */	b lbl_800B6984
lbl_800B6104:
/* 800B6104  A0 BA 2F E8 */	lhz r5, 0x2fe8(r26)
/* 800B6108  28 05 01 25 */	cmplwi r5, 0x125
/* 800B610C  41 82 00 0C */	beq lbl_800B6118
/* 800B6110  28 05 01 26 */	cmplwi r5, 0x126
/* 800B6114  40 82 00 18 */	bne lbl_800B612C
lbl_800B6118:
/* 800B6118  A8 1A 30 12 */	lha r0, 0x3012(r26)
/* 800B611C  2C 00 00 00 */	cmpwi r0, 0
/* 800B6120  41 82 00 0C */	beq lbl_800B612C
/* 800B6124  38 60 00 00 */	li r3, 0
/* 800B6128  48 00 08 5C */	b lbl_800B6984
lbl_800B612C:
/* 800B612C  80 9A 31 A0 */	lwz r4, 0x31a0(r26)
/* 800B6130  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070C12@ha */
/* 800B6134  38 03 0C 12 */	addi r0, r3, 0x0C12 /* 0x00070C12@l */
/* 800B6138  7C 80 00 39 */	and. r0, r4, r0
/* 800B613C  40 82 07 A0 */	bne lbl_800B68DC
/* 800B6140  28 05 00 B0 */	cmplwi r5, 0xb0
/* 800B6144  41 82 07 98 */	beq lbl_800B68DC
/* 800B6148  28 05 01 4F */	cmplwi r5, 0x14f
/* 800B614C  41 82 07 90 */	beq lbl_800B68DC
/* 800B6150  38 00 00 00 */	li r0, 0
/* 800B6154  88 7A 05 6A */	lbz r3, 0x56a(r26)
/* 800B6158  28 03 00 00 */	cmplwi r3, 0
/* 800B615C  41 82 00 10 */	beq lbl_800B616C
/* 800B6160  28 03 00 26 */	cmplwi r3, 0x26
/* 800B6164  40 80 00 08 */	bge lbl_800B616C
/* 800B6168  38 00 00 01 */	li r0, 1
lbl_800B616C:
/* 800B616C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800B6170  40 82 07 6C */	bne lbl_800B68DC
/* 800B6174  A0 1A 06 04 */	lhz r0, 0x604(r26)
/* 800B6178  2C 00 00 05 */	cmpwi r0, 5
/* 800B617C  41 82 07 60 */	beq lbl_800B68DC
/* 800B6180  80 7A 05 70 */	lwz r3, 0x570(r26)
/* 800B6184  54 60 04 E7 */	rlwinm. r0, r3, 0, 0x13, 0x13
/* 800B6188  40 82 07 54 */	bne lbl_800B68DC
/* 800B618C  80 1A 19 9C */	lwz r0, 0x199c(r26)
/* 800B6190  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800B6194  40 82 07 48 */	bne lbl_800B68DC
/* 800B6198  54 60 02 11 */	rlwinm. r0, r3, 0, 8, 8
/* 800B619C  41 82 00 1C */	beq lbl_800B61B8
/* 800B61A0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800B61A4  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 800B61A8  7F 43 D3 78 */	mr r3, r26
/* 800B61AC  38 80 00 00 */	li r4, 0
/* 800B61B0  48 04 E1 49 */	bl procSwimWaitInit__9daAlink_cFi
/* 800B61B4  48 00 07 D0 */	b lbl_800B6984
lbl_800B61B8:
/* 800B61B8  C0 3A 1A 08 */	lfs f1, 0x1a08(r26)
/* 800B61BC  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 800B61C0  EF E1 00 28 */	fsubs f31, f1, f0
/* 800B61C4  C0 0D 81 14 */	lfs f0, l_autoDownHeight(r13)
/* 800B61C8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800B61CC  40 80 07 B4 */	bge lbl_800B6980
/* 800B61D0  38 60 00 00 */	li r3, 0
/* 800B61D4  A0 1A 1F BC */	lhz r0, 0x1fbc(r26)
/* 800B61D8  28 00 00 62 */	cmplwi r0, 0x62
/* 800B61DC  41 82 00 10 */	beq lbl_800B61EC
/* 800B61E0  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800B61E4  28 00 02 A0 */	cmplwi r0, 0x2a0
/* 800B61E8  40 82 00 08 */	bne lbl_800B61F0
lbl_800B61EC:
/* 800B61EC  38 60 00 01 */	li r3, 1
lbl_800B61F0:
/* 800B61F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B61F4  41 82 00 14 */	beq lbl_800B6208
/* 800B61F8  7F 43 D3 78 */	mr r3, r26
/* 800B61FC  38 80 00 02 */	li r4, 2
/* 800B6200  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800B6204  4B FF 75 21 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
lbl_800B6208:
/* 800B6208  C0 7A 35 C4 */	lfs f3, 0x35c4(r26)
/* 800B620C  C0 5A 35 AC */	lfs f2, 0x35ac(r26)
/* 800B6210  C0 3A 04 F8 */	lfs f1, 0x4f8(r26)
/* 800B6214  C0 1A 35 94 */	lfs f0, 0x3594(r26)
/* 800B6218  EC 01 00 2A */	fadds f0, f1, f0
/* 800B621C  EC 02 00 2A */	fadds f0, f2, f0
/* 800B6220  EF C3 00 2A */	fadds f30, f3, f0
/* 800B6224  C0 7A 35 CC */	lfs f3, 0x35cc(r26)
/* 800B6228  C0 5A 35 B4 */	lfs f2, 0x35b4(r26)
/* 800B622C  C0 3A 05 00 */	lfs f1, 0x500(r26)
/* 800B6230  C0 1A 35 9C */	lfs f0, 0x359c(r26)
/* 800B6234  EC 01 00 2A */	fadds f0, f1, f0
/* 800B6238  EC 02 00 2A */	fadds f0, f2, f0
/* 800B623C  EF A3 00 2A */	fadds f29, f3, f0
/* 800B6240  38 00 00 01 */	li r0, 1
/* 800B6244  EC 3E 07 B2 */	fmuls f1, f30, f30
/* 800B6248  EC 1D 07 72 */	fmuls f0, f29, f29
/* 800B624C  EC 21 00 2A */	fadds f1, f1, f0
/* 800B6250  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800B6254  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B6258  40 81 00 0C */	ble lbl_800B6264
/* 800B625C  FC 00 08 34 */	frsqrte f0, f1
/* 800B6260  EC 20 00 72 */	fmuls f1, f0, f1
lbl_800B6264:
/* 800B6264  FF 60 08 90 */	fmr f27, f1
/* 800B6268  C0 02 93 E4 */	lfs f0, lit_12328(r2)
/* 800B626C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B6270  40 80 00 50 */	bge lbl_800B62C0
/* 800B6274  C0 3A 04 D0 */	lfs f1, 0x4d0(r26)
/* 800B6278  C0 1A 35 40 */	lfs f0, 0x3540(r26)
/* 800B627C  EF C1 00 28 */	fsubs f30, f1, f0
/* 800B6280  C0 3A 04 D8 */	lfs f1, 0x4d8(r26)
/* 800B6284  C0 1A 35 48 */	lfs f0, 0x3548(r26)
/* 800B6288  EF A1 00 28 */	fsubs f29, f1, f0
/* 800B628C  EC 3E 07 B2 */	fmuls f1, f30, f30
/* 800B6290  EC 1D 07 72 */	fmuls f0, f29, f29
/* 800B6294  EC 21 00 2A */	fadds f1, f1, f0
/* 800B6298  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800B629C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B62A0  40 81 00 0C */	ble lbl_800B62AC
/* 800B62A4  FC 00 08 34 */	frsqrte f0, f1
/* 800B62A8  EC 20 00 72 */	fmuls f1, f0, f1
lbl_800B62AC:
/* 800B62AC  FF 60 08 90 */	fmr f27, f1
/* 800B62B0  C0 02 93 E4 */	lfs f0, lit_12328(r2)
/* 800B62B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B62B8  40 80 00 08 */	bge lbl_800B62C0
/* 800B62BC  38 00 00 00 */	li r0, 0
lbl_800B62C0:
/* 800B62C0  2C 00 00 00 */	cmpwi r0, 0
/* 800B62C4  41 82 05 D8 */	beq lbl_800B689C
/* 800B62C8  FC 20 F0 90 */	fmr f1, f30
/* 800B62CC  FC 40 E8 90 */	fmr f2, f29
/* 800B62D0  48 1B 13 A5 */	bl cM_atan2s__Fff
/* 800B62D4  7C 7C 1B 78 */	mr r28, r3
/* 800B62D8  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800B62DC  EC 00 D8 24 */	fdivs f0, f0, f27
/* 800B62E0  EF DE 00 32 */	fmuls f30, f30, f0
/* 800B62E4  EF 9D 00 32 */	fmuls f28, f29, f0
/* 800B62E8  C0 3A 04 D4 */	lfs f1, 0x4d4(r26)
/* 800B62EC  C0 1A 04 FC */	lfs f0, 0x4fc(r26)
/* 800B62F0  EC 01 00 28 */	fsubs f0, f1, f0
/* 800B62F4  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 800B62F8  C0 1A 37 A0 */	lfs f0, 0x37a0(r26)
/* 800B62FC  C0 42 92 E0 */	lfs f2, lit_6845(r2)
/* 800B6300  EF A2 07 32 */	fmuls f29, f2, f28
/* 800B6304  EC 60 E8 28 */	fsubs f3, f0, f29
/* 800B6308  C0 22 93 50 */	lfs f1, lit_8247(r2)
/* 800B630C  C0 1A 37 9C */	lfs f0, 0x379c(r26)
/* 800B6310  EC 21 00 2A */	fadds f1, f1, f0
/* 800B6314  C0 1A 37 98 */	lfs f0, 0x3798(r26)
/* 800B6318  EF 62 07 B2 */	fmuls f27, f2, f30
/* 800B631C  EC 00 D8 28 */	fsubs f0, f0, f27
/* 800B6320  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800B6324  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 800B6328  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 800B632C  38 7A 1D 08 */	addi r3, r26, 0x1d08
/* 800B6330  38 81 00 14 */	addi r4, r1, 0x14
/* 800B6334  48 1B 19 F5 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 800B6338  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 800B633C  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 800B6340  90 01 00 44 */	stw r0, 0x44(r1)
/* 800B6344  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800B6348  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800B634C  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 800B6350  7F A3 EB 78 */	mr r3, r29
/* 800B6354  38 9A 1D 08 */	addi r4, r26, 0x1d08
/* 800B6358  4B FB E1 49 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 800B635C  C0 5A 04 D4 */	lfs f2, 0x4d4(r26)
/* 800B6360  C0 02 93 50 */	lfs f0, lit_8247(r2)
/* 800B6364  EC 02 00 28 */	fsubs f0, f2, f0
/* 800B6368  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B636C  40 81 00 1C */	ble lbl_800B6388
/* 800B6370  7F A3 EB 78 */	mr r3, r29
/* 800B6374  38 9A 1D 1C */	addi r4, r26, 0x1d1c
/* 800B6378  38 A1 00 34 */	addi r5, r1, 0x34
/* 800B637C  4B FB E3 C9 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800B6380  7C 7F 1B 78 */	mr r31, r3
/* 800B6384  48 00 00 08 */	b lbl_800B638C
lbl_800B6388:
/* 800B6388  3B E0 00 00 */	li r31, 0
lbl_800B638C:
/* 800B638C  C0 7A 04 D8 */	lfs f3, 0x4d8(r26)
/* 800B6390  EC A3 E8 2A */	fadds f5, f3, f29
/* 800B6394  C0 3A 04 D4 */	lfs f1, 0x4d4(r26)
/* 800B6398  C0 02 93 3C */	lfs f0, lit_7808(r2)
/* 800B639C  EC 81 00 28 */	fsubs f4, f1, f0
/* 800B63A0  C0 5A 04 D0 */	lfs f2, 0x4d0(r26)
/* 800B63A4  EC 02 D8 2A */	fadds f0, f2, f27
/* 800B63A8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800B63AC  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 800B63B0  D0 A1 00 1C */	stfs f5, 0x1c(r1)
/* 800B63B4  C0 22 93 50 */	lfs f1, lit_8247(r2)
/* 800B63B8  EC 01 07 32 */	fmuls f0, f1, f28
/* 800B63BC  EC 63 00 28 */	fsubs f3, f3, f0
/* 800B63C0  EC 01 07 B2 */	fmuls f0, f1, f30
/* 800B63C4  EC 02 00 28 */	fsubs f0, f2, f0
/* 800B63C8  D0 01 00 08 */	stfs f0, 8(r1)
/* 800B63CC  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 800B63D0  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 800B63D4  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 800B63D8  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 800B63DC  90 01 00 30 */	stw r0, 0x30(r1)
/* 800B63E0  7F 43 D3 78 */	mr r3, r26
/* 800B63E4  38 81 00 14 */	addi r4, r1, 0x14
/* 800B63E8  38 A1 00 08 */	addi r5, r1, 8
/* 800B63EC  4B FE BD AD */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800B63F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B63F4  41 82 00 18 */	beq lbl_800B640C
/* 800B63F8  7F A3 EB 78 */	mr r3, r29
/* 800B63FC  38 9A 1B 5C */	addi r4, r26, 0x1b5c
/* 800B6400  38 A1 00 20 */	addi r5, r1, 0x20
/* 800B6404  4B FB E3 41 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800B6408  48 00 00 08 */	b lbl_800B6410
lbl_800B640C:
/* 800B640C  38 60 00 00 */	li r3, 0
lbl_800B6410:
/* 800B6410  7C 7B 1B 78 */	mr r27, r3
/* 800B6414  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B6418  41 82 00 64 */	beq lbl_800B647C
/* 800B641C  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 800B6420  48 1B 1D F1 */	bl cBgW_CheckBWall__Ff
/* 800B6424  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B6428  40 82 00 54 */	bne lbl_800B647C
/* 800B642C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800B6430  C0 22 93 00 */	lfs f1, lit_6895(r2)
/* 800B6434  EC 00 08 28 */	fsubs f0, f0, f1
/* 800B6438  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800B643C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800B6440  EC 00 08 28 */	fsubs f0, f0, f1
/* 800B6444  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800B6448  7F 43 D3 78 */	mr r3, r26
/* 800B644C  38 81 00 14 */	addi r4, r1, 0x14
/* 800B6450  38 A1 00 08 */	addi r5, r1, 8
/* 800B6454  4B FE BD 45 */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800B6458  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B645C  41 82 00 1C */	beq lbl_800B6478
/* 800B6460  7F A3 EB 78 */	mr r3, r29
/* 800B6464  38 9A 1B 5C */	addi r4, r26, 0x1b5c
/* 800B6468  38 A1 00 20 */	addi r5, r1, 0x20
/* 800B646C  4B FB E2 D9 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800B6470  7C 7B 1B 78 */	mr r27, r3
/* 800B6474  48 00 00 08 */	b lbl_800B647C
lbl_800B6478:
/* 800B6478  3B 60 00 00 */	li r27, 0
lbl_800B647C:
/* 800B647C  C3 BA 33 98 */	lfs f29, 0x3398(r26)
/* 800B6480  80 7A 05 74 */	lwz r3, 0x574(r26)
/* 800B6484  54 60 01 8D */	rlwinm. r0, r3, 0, 6, 6
/* 800B6488  41 82 00 28 */	beq lbl_800B64B0
/* 800B648C  54 60 02 53 */	rlwinm. r0, r3, 0, 9, 9
/* 800B6490  41 82 00 10 */	beq lbl_800B64A0
/* 800B6494  38 7E 1A 50 */	addi r3, r30, 0x1a50
/* 800B6498  C3 43 00 44 */	lfs f26, 0x44(r3)
/* 800B649C  48 00 00 0C */	b lbl_800B64A8
lbl_800B64A0:
/* 800B64A0  38 7E 1A 50 */	addi r3, r30, 0x1a50
/* 800B64A4  C3 43 00 64 */	lfs f26, 0x64(r3)
lbl_800B64A8:
/* 800B64A8  C3 62 92 C0 */	lfs f27, lit_6108(r2)
/* 800B64AC  48 00 00 24 */	b lbl_800B64D0
lbl_800B64B0:
/* 800B64B0  A0 1A 1F BC */	lhz r0, 0x1fbc(r26)
/* 800B64B4  28 00 01 9C */	cmplwi r0, 0x19c
/* 800B64B8  40 82 00 0C */	bne lbl_800B64C4
/* 800B64BC  C3 42 92 C4 */	lfs f26, lit_6109(r2)
/* 800B64C0  48 00 00 0C */	b lbl_800B64CC
lbl_800B64C4:
/* 800B64C4  38 7E 0A 10 */	addi r3, r30, 0xa10
/* 800B64C8  C3 43 00 5C */	lfs f26, 0x5c(r3)
lbl_800B64CC:
/* 800B64CC  C3 62 93 B4 */	lfs f27, lit_10040(r2)
lbl_800B64D0:
/* 800B64D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800B64D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800B64D8  A0 03 00 02 */	lhz r0, 2(r3)
/* 800B64DC  28 00 00 00 */	cmplwi r0, 0
/* 800B64E0  40 82 00 18 */	bne lbl_800B64F8
/* 800B64E4  38 63 00 9C */	addi r3, r3, 0x9c
/* 800B64E8  38 80 00 6C */	li r4, 0x6c
/* 800B64EC  4B F7 D1 F5 */	bl checkBottle__17dSv_player_item_cFUc
/* 800B64F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B64F4  41 82 02 CC */	beq lbl_800B67C0
lbl_800B64F8:
/* 800B64F8  88 1A 05 6A */	lbz r0, 0x56a(r26)
/* 800B64FC  28 00 00 2B */	cmplwi r0, 0x2b
/* 800B6500  41 82 02 C0 */	beq lbl_800B67C0
/* 800B6504  48 00 A1 2D */	bl checkNotAutoJumpStage__9daAlink_cFv
/* 800B6508  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B650C  41 82 00 10 */	beq lbl_800B651C
/* 800B6510  80 1A 05 74 */	lwz r0, 0x574(r26)
/* 800B6514  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B6518  41 82 02 A8 */	beq lbl_800B67C0
lbl_800B651C:
/* 800B651C  80 1A 31 78 */	lwz r0, 0x3178(r26)
/* 800B6520  2C 00 00 03 */	cmpwi r0, 3
/* 800B6524  41 82 01 34 */	beq lbl_800B6658
/* 800B6528  80 1A 05 88 */	lwz r0, 0x588(r26)
/* 800B652C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800B6530  40 82 01 28 */	bne lbl_800B6658
/* 800B6534  FC 1D D0 40 */	fcmpo cr0, f29, f26
/* 800B6538  4C 41 13 82 */	cror 2, 1, 2
/* 800B653C  40 82 01 1C */	bne lbl_800B6658
/* 800B6540  7F 43 D3 78 */	mr r3, r26
/* 800B6544  81 9A 06 28 */	lwz r12, 0x628(r26)
/* 800B6548  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 800B654C  7D 89 03 A6 */	mtctr r12
/* 800B6550  4E 80 04 21 */	bctrl 
/* 800B6554  2C 03 00 00 */	cmpwi r3, 0
/* 800B6558  41 82 00 10 */	beq lbl_800B6568
/* 800B655C  A0 1A 1F BC */	lhz r0, 0x1fbc(r26)
/* 800B6560  28 00 01 9C */	cmplwi r0, 0x19c
/* 800B6564  40 82 00 F4 */	bne lbl_800B6658
lbl_800B6568:
/* 800B6568  C0 1A 33 A8 */	lfs f0, 0x33a8(r26)
/* 800B656C  C0 22 95 DC */	lfs f1, lit_27477(r2)
/* 800B6570  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800B6574  41 81 00 34 */	bgt lbl_800B65A8
/* 800B6578  A0 1A 1F BC */	lhz r0, 0x1fbc(r26)
/* 800B657C  28 00 01 9C */	cmplwi r0, 0x19c
/* 800B6580  40 82 00 10 */	bne lbl_800B6590
/* 800B6584  C0 1A 33 AC */	lfs f0, 0x33ac(r26)
/* 800B6588  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800B658C  41 81 00 1C */	bgt lbl_800B65A8
lbl_800B6590:
/* 800B6590  A0 1A 2F E8 */	lhz r0, 0x2fe8(r26)
/* 800B6594  28 00 01 37 */	cmplwi r0, 0x137
/* 800B6598  41 82 00 10 */	beq lbl_800B65A8
/* 800B659C  80 1A 05 88 */	lwz r0, 0x588(r26)
/* 800B65A0  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 800B65A4  41 82 00 B4 */	beq lbl_800B6658
lbl_800B65A8:
/* 800B65A8  7F 83 E3 78 */	mr r3, r28
/* 800B65AC  A8 9A 04 E6 */	lha r4, 0x4e6(r26)
/* 800B65B0  48 1B A8 75 */	bl cLib_distanceAngleS__Fss
/* 800B65B4  2C 03 08 00 */	cmpwi r3, 0x800
/* 800B65B8  40 80 00 A0 */	bge lbl_800B6658
/* 800B65BC  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 800B65C0  41 82 00 14 */	beq lbl_800B65D4
/* 800B65C4  C0 1A 1B 78 */	lfs f0, 0x1b78(r26)
/* 800B65C8  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 800B65CC  C0 1A 1B 80 */	lfs f0, 0x1b80(r26)
/* 800B65D0  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
lbl_800B65D4:
/* 800B65D4  80 1A 05 74 */	lwz r0, 0x574(r26)
/* 800B65D8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B65DC  41 82 00 24 */	beq lbl_800B6600
/* 800B65E0  7F 43 D3 78 */	mr r3, r26
/* 800B65E4  38 80 00 00 */	li r4, 0
/* 800B65E8  48 07 83 E1 */	bl procWolfAutoJumpInit__9daAlink_cFi
/* 800B65EC  3C 80 80 3A */	lis r4, __vt__8cM3dGPla@ha
/* 800B65F0  38 04 37 C0 */	addi r0, r4, __vt__8cM3dGPla@l
/* 800B65F4  90 01 00 30 */	stw r0, 0x30(r1)
/* 800B65F8  90 01 00 44 */	stw r0, 0x44(r1)
/* 800B65FC  48 00 03 88 */	b lbl_800B6984
lbl_800B6600:
/* 800B6600  7F 43 D3 78 */	mr r3, r26
/* 800B6604  48 02 D6 69 */	bl checkGrabAnime__9daAlink_cCFv
/* 800B6608  2C 03 00 00 */	cmpwi r3, 0
/* 800B660C  40 82 00 2C */	bne lbl_800B6638
/* 800B6610  80 1A 31 78 */	lwz r0, 0x3178(r26)
/* 800B6614  2C 00 00 07 */	cmpwi r0, 7
/* 800B6618  40 82 00 20 */	bne lbl_800B6638
/* 800B661C  7F 43 D3 78 */	mr r3, r26
/* 800B6620  48 01 00 BD */	bl procDiveJumpInit__9daAlink_cFv
/* 800B6624  3C 80 80 3A */	lis r4, __vt__8cM3dGPla@ha
/* 800B6628  38 04 37 C0 */	addi r0, r4, __vt__8cM3dGPla@l
/* 800B662C  90 01 00 30 */	stw r0, 0x30(r1)
/* 800B6630  90 01 00 44 */	stw r0, 0x44(r1)
/* 800B6634  48 00 03 50 */	b lbl_800B6984
lbl_800B6638:
/* 800B6638  7F 43 D3 78 */	mr r3, r26
/* 800B663C  38 80 00 00 */	li r4, 0
/* 800B6640  48 00 F8 29 */	bl procAutoJumpInit__9daAlink_cFi
/* 800B6644  3C 80 80 3A */	lis r4, __vt__8cM3dGPla@ha
/* 800B6648  38 04 37 C0 */	addi r0, r4, __vt__8cM3dGPla@l
/* 800B664C  90 01 00 30 */	stw r0, 0x30(r1)
/* 800B6650  90 01 00 44 */	stw r0, 0x44(r1)
/* 800B6654  48 00 03 30 */	b lbl_800B6984
lbl_800B6658:
/* 800B6658  80 1A 05 88 */	lwz r0, 0x588(r26)
/* 800B665C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800B6660  40 82 01 60 */	bne lbl_800B67C0
/* 800B6664  88 1A 05 6A */	lbz r0, 0x56a(r26)
/* 800B6668  28 00 00 2B */	cmplwi r0, 0x2b
/* 800B666C  41 82 01 54 */	beq lbl_800B67C0
/* 800B6670  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 800B6674  41 82 01 4C */	beq lbl_800B67C0
/* 800B6678  7F A3 EB 78 */	mr r3, r29
/* 800B667C  38 9A 1B 5C */	addi r4, r26, 0x1b5c
/* 800B6680  4B FB E7 81 */	bl GetWallCode__4dBgSFRC13cBgS_PolyInfo
/* 800B6684  2C 03 00 02 */	cmpwi r3, 2
/* 800B6688  41 82 01 38 */	beq lbl_800B67C0
/* 800B668C  38 7E 0B 9C */	addi r3, r30, 0xb9c
/* 800B6690  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 800B6694  FC 00 00 50 */	fneg f0, f0
/* 800B6698  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800B669C  40 80 01 24 */	bge lbl_800B67C0
/* 800B66A0  C0 3A 04 D4 */	lfs f1, 0x4d4(r26)
/* 800B66A4  C0 1A 33 B4 */	lfs f0, 0x33b4(r26)
/* 800B66A8  EC 01 00 28 */	fsubs f0, f1, f0
/* 800B66AC  FC 00 D8 40 */	fcmpo cr0, f0, f27
/* 800B66B0  40 81 01 10 */	ble lbl_800B67C0
/* 800B66B4  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 800B66B8  FC 00 0A 10 */	fabs f0, f1
/* 800B66BC  FC 40 00 18 */	frsp f2, f0
/* 800B66C0  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800B66C4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800B66C8  4C 40 13 82 */	cror 2, 0, 2
/* 800B66CC  41 82 00 38 */	beq lbl_800B6704
/* 800B66D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B66D4  40 80 00 EC */	bge lbl_800B67C0
/* 800B66D8  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 800B66DC  41 82 00 E4 */	beq lbl_800B67C0
/* 800B66E0  38 9A 1B 78 */	addi r4, r26, 0x1b78
/* 800B66E4  7F 43 D3 78 */	mr r3, r26
/* 800B66E8  38 A1 00 20 */	addi r5, r1, 0x20
/* 800B66EC  38 C1 00 34 */	addi r6, r1, 0x34
/* 800B66F0  7C 87 23 78 */	mr r7, r4
/* 800B66F4  39 00 00 00 */	li r8, 0
/* 800B66F8  4B FF 9B 05 */	bl getWallEdgePos__9daAlink_cFRC4cXyzP8cM3dGPlaP8cM3dGPlaP4cXyzi
/* 800B66FC  2C 03 00 00 */	cmpwi r3, 0
/* 800B6700  41 82 00 C0 */	beq lbl_800B67C0
lbl_800B6704:
/* 800B6704  C0 1A 1B 78 */	lfs f0, 0x1b78(r26)
/* 800B6708  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 800B670C  C0 1A 1B 80 */	lfs f0, 0x1b80(r26)
/* 800B6710  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 800B6714  80 1A 05 74 */	lwz r0, 0x574(r26)
/* 800B6718  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B671C  40 82 00 4C */	bne lbl_800B6768
/* 800B6720  7F 43 D3 78 */	mr r3, r26
/* 800B6724  38 9A 1B 5C */	addi r4, r26, 0x1b5c
/* 800B6728  48 04 79 31 */	bl checkClimbCode__9daAlink_cFR13cBgS_PolyInfo
/* 800B672C  2C 03 00 00 */	cmpwi r3, 0
/* 800B6730  41 82 00 38 */	beq lbl_800B6768
/* 800B6734  38 7A 1E 1C */	addi r3, r26, 0x1e1c
/* 800B6738  38 9A 1B 5C */	addi r4, r26, 0x1b5c
/* 800B673C  48 1B 1A 0D */	bl SetPolyInfo__13cBgS_PolyInfoFRC13cBgS_PolyInfo
/* 800B6740  38 61 00 20 */	addi r3, r1, 0x20
/* 800B6744  48 1B 09 E5 */	bl atan2sX_Z__4cXyzCFv
/* 800B6748  7C 64 1B 78 */	mr r4, r3
/* 800B674C  7F 43 D3 78 */	mr r3, r26
/* 800B6750  48 04 90 C9 */	bl procClimbDownStartInit__9daAlink_cFs
/* 800B6754  3C 80 80 3A */	lis r4, __vt__8cM3dGPla@ha
/* 800B6758  38 04 37 C0 */	addi r0, r4, __vt__8cM3dGPla@l
/* 800B675C  90 01 00 30 */	stw r0, 0x30(r1)
/* 800B6760  90 01 00 44 */	stw r0, 0x44(r1)
/* 800B6764  48 00 02 20 */	b lbl_800B6984
lbl_800B6768:
/* 800B6768  80 1A 05 74 */	lwz r0, 0x574(r26)
/* 800B676C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B6770  41 82 00 18 */	beq lbl_800B6788
/* 800B6774  7F 43 D3 78 */	mr r3, r26
/* 800B6778  38 81 00 20 */	addi r4, r1, 0x20
/* 800B677C  48 07 F5 5D */	bl procWolfHangFallStartInit__9daAlink_cFP8cM3dGPla
/* 800B6780  2C 03 00 00 */	cmpwi r3, 0
/* 800B6784  40 82 00 24 */	bne lbl_800B67A8
lbl_800B6788:
/* 800B6788  80 1A 05 74 */	lwz r0, 0x574(r26)
/* 800B678C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B6790  40 82 00 30 */	bne lbl_800B67C0
/* 800B6794  7F 43 D3 78 */	mr r3, r26
/* 800B6798  38 81 00 20 */	addi r4, r1, 0x20
/* 800B679C  48 04 47 31 */	bl procHangFallStartInit__9daAlink_cFP8cM3dGPla
/* 800B67A0  2C 03 00 00 */	cmpwi r3, 0
/* 800B67A4  41 82 00 1C */	beq lbl_800B67C0
lbl_800B67A8:
/* 800B67A8  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 800B67AC  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 800B67B0  90 01 00 30 */	stw r0, 0x30(r1)
/* 800B67B4  90 01 00 44 */	stw r0, 0x44(r1)
/* 800B67B8  38 60 00 01 */	li r3, 1
/* 800B67BC  48 00 01 C8 */	b lbl_800B6984
lbl_800B67C0:
/* 800B67C0  A0 1A 2F E8 */	lhz r0, 0x2fe8(r26)
/* 800B67C4  28 00 00 0E */	cmplwi r0, 0xe
/* 800B67C8  40 82 00 0C */	bne lbl_800B67D4
/* 800B67CC  C3 A2 92 C0 */	lfs f29, lit_6108(r2)
/* 800B67D0  48 00 00 0C */	b lbl_800B67DC
lbl_800B67D4:
/* 800B67D4  38 7E 0A 10 */	addi r3, r30, 0xa10
/* 800B67D8  C3 A3 00 70 */	lfs f29, 0x70(r3)
lbl_800B67DC:
/* 800B67DC  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 800B67E0  41 82 00 10 */	beq lbl_800B67F0
/* 800B67E4  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 800B67E8  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 800B67EC  48 00 00 0C */	b lbl_800B67F8
lbl_800B67F0:
/* 800B67F0  FC 20 F0 90 */	fmr f1, f30
/* 800B67F4  FC 40 E0 90 */	fmr f2, f28
lbl_800B67F8:
/* 800B67F8  C0 7A 04 D0 */	lfs f3, 0x4d0(r26)
/* 800B67FC  C0 1A 34 28 */	lfs f0, 0x3428(r26)
/* 800B6800  EC 00 00 72 */	fmuls f0, f0, f1
/* 800B6804  EC 03 00 2A */	fadds f0, f3, f0
/* 800B6808  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 800B680C  C0 7A 04 D8 */	lfs f3, 0x4d8(r26)
/* 800B6810  C0 1A 34 28 */	lfs f0, 0x3428(r26)
/* 800B6814  EC 00 00 B2 */	fmuls f0, f0, f2
/* 800B6818  EC 03 00 2A */	fadds f0, f3, f0
/* 800B681C  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 800B6820  80 1A 05 74 */	lwz r0, 0x574(r26)
/* 800B6824  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B6828  41 82 00 60 */	beq lbl_800B6888
/* 800B682C  48 1B 0E 49 */	bl cM_atan2s__Fff
/* 800B6830  A8 9A 04 E6 */	lha r4, 0x4e6(r26)
/* 800B6834  48 1B A5 F1 */	bl cLib_distanceAngleS__Fss
/* 800B6838  2C 03 40 00 */	cmpwi r3, 0x4000
/* 800B683C  41 80 00 4C */	blt lbl_800B6888
/* 800B6840  A8 1A 04 E6 */	lha r0, 0x4e6(r26)
/* 800B6844  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800B6848  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800B684C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 800B6850  7C 03 04 2E */	lfsx f0, r3, r0
/* 800B6854  C0 3A 04 D0 */	lfs f1, 0x4d0(r26)
/* 800B6858  C0 42 94 80 */	lfs f2, lit_16036(r2)
/* 800B685C  EC 02 00 32 */	fmuls f0, f2, f0
/* 800B6860  EC 01 00 28 */	fsubs f0, f1, f0
/* 800B6864  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 800B6868  A8 1A 04 E6 */	lha r0, 0x4e6(r26)
/* 800B686C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800B6870  7C 63 02 14 */	add r3, r3, r0
/* 800B6874  C0 03 00 04 */	lfs f0, 4(r3)
/* 800B6878  C0 3A 04 D8 */	lfs f1, 0x4d8(r26)
/* 800B687C  EC 02 00 32 */	fmuls f0, f2, f0
/* 800B6880  EC 01 00 28 */	fsubs f0, f1, f0
/* 800B6884  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
lbl_800B6888:
/* 800B6888  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 800B688C  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 800B6890  90 01 00 30 */	stw r0, 0x30(r1)
/* 800B6894  90 01 00 44 */	stw r0, 0x44(r1)
/* 800B6898  48 00 00 0C */	b lbl_800B68A4
lbl_800B689C:
/* 800B689C  38 7E 0A 10 */	addi r3, r30, 0xa10
/* 800B68A0  C3 A3 00 70 */	lfs f29, 0x70(r3)
lbl_800B68A4:
/* 800B68A4  80 1A 05 74 */	lwz r0, 0x574(r26)
/* 800B68A8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B68AC  41 82 00 1C */	beq lbl_800B68C8
/* 800B68B0  7F 43 D3 78 */	mr r3, r26
/* 800B68B4  38 80 00 01 */	li r4, 1
/* 800B68B8  38 BE 1A 50 */	addi r5, r30, 0x1a50
/* 800B68BC  C0 25 00 54 */	lfs f1, 0x54(r5)
/* 800B68C0  48 07 85 11 */	bl procWolfFallInit__9daAlink_cFif
/* 800B68C4  48 00 00 C0 */	b lbl_800B6984
lbl_800B68C8:
/* 800B68C8  7F 43 D3 78 */	mr r3, r26
/* 800B68CC  38 80 00 01 */	li r4, 1
/* 800B68D0  FC 20 E8 90 */	fmr f1, f29
/* 800B68D4  48 01 01 75 */	bl procFallInit__9daAlink_cFif
/* 800B68D8  48 00 00 AC */	b lbl_800B6984
lbl_800B68DC:
/* 800B68DC  7F 43 D3 78 */	mr r3, r26
/* 800B68E0  48 02 D6 41 */	bl checkGrabRooster__9daAlink_cFv
/* 800B68E4  2C 03 00 00 */	cmpwi r3, 0
/* 800B68E8  41 82 00 30 */	beq lbl_800B6918
/* 800B68EC  C0 3A 35 B0 */	lfs f1, 0x35b0(r26)
/* 800B68F0  C0 02 93 30 */	lfs f0, lit_7625(r2)
/* 800B68F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B68F8  40 81 00 20 */	ble lbl_800B6918
/* 800B68FC  80 1A 19 9C */	lwz r0, 0x199c(r26)
/* 800B6900  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 800B6904  90 1A 19 9C */	stw r0, 0x199c(r26)
/* 800B6908  7F 43 D3 78 */	mr r3, r26
/* 800B690C  38 80 00 01 */	li r4, 1
/* 800B6910  48 00 F5 59 */	bl procAutoJumpInit__9daAlink_cFi
/* 800B6914  48 00 00 70 */	b lbl_800B6984
lbl_800B6918:
/* 800B6918  80 1A 05 88 */	lwz r0, 0x588(r26)
/* 800B691C  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 800B6920  41 82 00 28 */	beq lbl_800B6948
/* 800B6924  80 1A 19 9C */	lwz r0, 0x199c(r26)
/* 800B6928  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800B692C  41 82 00 1C */	beq lbl_800B6948
/* 800B6930  80 1A 05 74 */	lwz r0, 0x574(r26)
/* 800B6934  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B6938  40 82 00 10 */	bne lbl_800B6948
/* 800B693C  7F 43 D3 78 */	mr r3, r26
/* 800B6940  48 00 FF 11 */	bl procRollJumpInit__9daAlink_cFv
/* 800B6944  48 00 00 40 */	b lbl_800B6984
lbl_800B6948:
/* 800B6948  80 7A 05 70 */	lwz r3, 0x570(r26)
/* 800B694C  54 60 04 E7 */	rlwinm. r0, r3, 0, 0x13, 0x13
/* 800B6950  41 82 00 30 */	beq lbl_800B6980
/* 800B6954  54 60 04 A5 */	rlwinm. r0, r3, 0, 0x12, 0x12
/* 800B6958  40 82 00 28 */	bne lbl_800B6980
/* 800B695C  7F 43 D3 78 */	mr r3, r26
/* 800B6960  48 02 C4 65 */	bl cancelMagneBootsOn__9daAlink_cFv
/* 800B6964  2C 03 00 00 */	cmpwi r3, 0
/* 800B6968  41 82 00 18 */	beq lbl_800B6980
/* 800B696C  7F 43 D3 78 */	mr r3, r26
/* 800B6970  38 80 00 01 */	li r4, 1
/* 800B6974  C0 22 93 3C */	lfs f1, lit_7808(r2)
/* 800B6978  48 01 00 D1 */	bl procFallInit__9daAlink_cFif
/* 800B697C  48 00 00 08 */	b lbl_800B6984
lbl_800B6980:
/* 800B6980  38 60 00 00 */	li r3, 0
lbl_800B6984:
/* 800B6984  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 800B6988  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 800B698C  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 800B6990  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 800B6994  E3 A1 00 98 */	psq_l f29, 152(r1), 0, 0 /* qr0 */
/* 800B6998  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 800B699C  E3 81 00 88 */	psq_l f28, 136(r1), 0, 0 /* qr0 */
/* 800B69A0  CB 81 00 80 */	lfd f28, 0x80(r1)
/* 800B69A4  E3 61 00 78 */	psq_l f27, 120(r1), 0, 0 /* qr0 */
/* 800B69A8  CB 61 00 70 */	lfd f27, 0x70(r1)
/* 800B69AC  E3 41 00 68 */	psq_l f26, 104(r1), 0, 0 /* qr0 */
/* 800B69B0  CB 41 00 60 */	lfd f26, 0x60(r1)
/* 800B69B4  39 61 00 60 */	addi r11, r1, 0x60
/* 800B69B8  48 2A B8 65 */	bl _restgpr_26
/* 800B69BC  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 800B69C0  7C 08 03 A6 */	mtlr r0
/* 800B69C4  38 21 00 C0 */	addi r1, r1, 0xc0
/* 800B69C8  4E 80 00 20 */	blr 

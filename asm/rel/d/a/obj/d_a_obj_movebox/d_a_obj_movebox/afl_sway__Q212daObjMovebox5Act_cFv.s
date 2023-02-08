lbl_8047F11C:
/* 8047F11C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8047F120  7C 08 02 A6 */	mflr r0
/* 8047F124  90 01 00 44 */	stw r0, 0x44(r1)
/* 8047F128  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8047F12C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8047F130  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8047F134  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8047F138  39 61 00 20 */	addi r11, r1, 0x20
/* 8047F13C  4B EE 30 95 */	bl _savegpr_26
/* 8047F140  7C 7C 1B 78 */	mr r28, r3
/* 8047F144  3C 60 80 48 */	lis r3, M_lin5__Q212daObjMovebox5Bgc_c@ha /* 0x80480F28@ha */
/* 8047F148  3B E3 0F 28 */	addi r31, r3, M_lin5__Q212daObjMovebox5Bgc_c@l /* 0x80480F28@l */
/* 8047F14C  C0 1C 08 C0 */	lfs f0, 0x8c0(r28)
/* 8047F150  EC 20 00 32 */	fmuls f1, f0, f0
/* 8047F154  C0 1C 08 C4 */	lfs f0, 0x8c4(r28)
/* 8047F158  EC 00 00 32 */	fmuls f0, f0, f0
/* 8047F15C  EF E1 00 2A */	fadds f31, f1, f0
/* 8047F160  80 1C 08 AC */	lwz r0, 0x8ac(r28)
/* 8047F164  1C 00 00 A0 */	mulli r0, r0, 0xa0
/* 8047F168  38 7F 02 40 */	addi r3, r31, 0x240
/* 8047F16C  7C 63 02 14 */	add r3, r3, r0
/* 8047F170  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 8047F174  EF C0 00 32 */	fmuls f30, f0, f0
/* 8047F178  88 63 00 9E */	lbz r3, 0x9e(r3)
/* 8047F17C  28 03 00 00 */	cmplwi r3, 0
/* 8047F180  38 1F 00 00 */	addi r0, r31, 0
/* 8047F184  41 82 00 08 */	beq lbl_8047F18C
/* 8047F188  38 1F 00 50 */	addi r0, r31, 0x50
lbl_8047F18C:
/* 8047F18C  7C 1D 03 78 */	mr r29, r0
/* 8047F190  28 03 00 00 */	cmplwi r3, 0
/* 8047F194  3B 40 00 05 */	li r26, 5
/* 8047F198  41 82 00 08 */	beq lbl_8047F1A0
/* 8047F19C  3B 40 00 15 */	li r26, 0x15
lbl_8047F1A0:
/* 8047F1A0  3B C0 00 01 */	li r30, 1
/* 8047F1A4  38 7C 07 28 */	addi r3, r28, 0x728
/* 8047F1A8  7F 84 E3 78 */	mr r4, r28
/* 8047F1AC  7F A5 EB 78 */	mr r5, r29
/* 8047F1B0  7F 46 D3 78 */	mr r6, r26
/* 8047F1B4  3C E0 80 45 */	lis r7, M_dir_base__Q212daObjMovebox5Act_c@ha /* 0x80451D28@ha */
/* 8047F1B8  38 E7 1D 28 */	addi r7, r7, M_dir_base__Q212daObjMovebox5Act_c@l /* 0x80451D28@l */
/* 8047F1BC  A8 E7 00 00 */	lha r7, 0(r7)
/* 8047F1C0  4B FF F3 E1 */	bl chk_wall_touch2__Q212daObjMovebox5Bgc_cFPCQ212daObjMovebox5Act_cPCQ212daObjMovebox8BgcSrc_cis
/* 8047F1C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8047F1C8  40 82 00 30 */	bne lbl_8047F1F8
/* 8047F1CC  38 7C 07 28 */	addi r3, r28, 0x728
/* 8047F1D0  7F 84 E3 78 */	mr r4, r28
/* 8047F1D4  7F A5 EB 78 */	mr r5, r29
/* 8047F1D8  7F 46 D3 78 */	mr r6, r26
/* 8047F1DC  3C E0 80 45 */	lis r7, M_dir_base__Q212daObjMovebox5Act_c@ha /* 0x80451D28@ha */
/* 8047F1E0  38 E7 1D 28 */	addi r7, r7, M_dir_base__Q212daObjMovebox5Act_c@l /* 0x80451D28@l */
/* 8047F1E4  A8 E7 00 04 */	lha r7, 4(r7)
/* 8047F1E8  4B FF F3 B9 */	bl chk_wall_touch2__Q212daObjMovebox5Bgc_cFPCQ212daObjMovebox5Act_cPCQ212daObjMovebox8BgcSrc_cis
/* 8047F1EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8047F1F0  40 82 00 08 */	bne lbl_8047F1F8
/* 8047F1F4  3B C0 00 00 */	li r30, 0
lbl_8047F1F8:
/* 8047F1F8  3B 60 00 01 */	li r27, 1
/* 8047F1FC  38 7C 07 28 */	addi r3, r28, 0x728
/* 8047F200  7F 84 E3 78 */	mr r4, r28
/* 8047F204  7F A5 EB 78 */	mr r5, r29
/* 8047F208  7F 46 D3 78 */	mr r6, r26
/* 8047F20C  3C E0 80 45 */	lis r7, M_dir_base__Q212daObjMovebox5Act_c@ha /* 0x80451D28@ha */
/* 8047F210  38 E7 1D 28 */	addi r7, r7, M_dir_base__Q212daObjMovebox5Act_c@l /* 0x80451D28@l */
/* 8047F214  A8 E7 00 02 */	lha r7, 2(r7)
/* 8047F218  4B FF F3 89 */	bl chk_wall_touch2__Q212daObjMovebox5Bgc_cFPCQ212daObjMovebox5Act_cPCQ212daObjMovebox8BgcSrc_cis
/* 8047F21C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8047F220  40 82 00 30 */	bne lbl_8047F250
/* 8047F224  38 7C 07 28 */	addi r3, r28, 0x728
/* 8047F228  7F 84 E3 78 */	mr r4, r28
/* 8047F22C  7F A5 EB 78 */	mr r5, r29
/* 8047F230  7F 46 D3 78 */	mr r6, r26
/* 8047F234  3C E0 80 45 */	lis r7, M_dir_base__Q212daObjMovebox5Act_c@ha /* 0x80451D28@ha */
/* 8047F238  38 E7 1D 28 */	addi r7, r7, M_dir_base__Q212daObjMovebox5Act_c@l /* 0x80451D28@l */
/* 8047F23C  A8 E7 00 06 */	lha r7, 6(r7)
/* 8047F240  4B FF F3 61 */	bl chk_wall_touch2__Q212daObjMovebox5Bgc_cFPCQ212daObjMovebox5Act_cPCQ212daObjMovebox8BgcSrc_cis
/* 8047F244  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8047F248  40 82 00 08 */	bne lbl_8047F250
/* 8047F24C  3B 60 00 00 */	li r27, 0
lbl_8047F250:
/* 8047F250  FC 1F F0 40 */	fcmpo cr0, f31, f30
/* 8047F254  40 81 00 50 */	ble lbl_8047F2A4
/* 8047F258  80 1C 08 AC */	lwz r0, 0x8ac(r28)
/* 8047F25C  1C 00 00 A0 */	mulli r0, r0, 0xa0
/* 8047F260  38 7F 02 40 */	addi r3, r31, 0x240
/* 8047F264  7C 63 02 14 */	add r3, r3, r0
/* 8047F268  C0 1F 01 C0 */	lfs f0, 0x1c0(r31)
/* 8047F26C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8047F270  40 81 00 10 */	ble lbl_8047F280
/* 8047F274  FC 00 F8 34 */	frsqrte f0, f31
/* 8047F278  EC 20 07 F2 */	fmuls f1, f0, f31
/* 8047F27C  48 00 00 08 */	b lbl_8047F284
lbl_8047F280:
/* 8047F280  FC 20 F8 90 */	fmr f1, f31
lbl_8047F284:
/* 8047F284  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 8047F288  EC 20 08 24 */	fdivs f1, f0, f1
/* 8047F28C  C0 1C 08 C0 */	lfs f0, 0x8c0(r28)
/* 8047F290  EC 00 00 72 */	fmuls f0, f0, f1
/* 8047F294  D0 1C 08 C0 */	stfs f0, 0x8c0(r28)
/* 8047F298  C0 1C 08 C4 */	lfs f0, 0x8c4(r28)
/* 8047F29C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8047F2A0  D0 1C 08 C4 */	stfs f0, 0x8c4(r28)
lbl_8047F2A4:
/* 8047F2A4  C0 3C 08 CC */	lfs f1, 0x8cc(r28)
/* 8047F2A8  C0 1C 08 C4 */	lfs f0, 0x8c4(r28)
/* 8047F2AC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8047F2B0  FC 00 00 50 */	fneg f0, f0
/* 8047F2B4  80 1C 08 AC */	lwz r0, 0x8ac(r28)
/* 8047F2B8  1C 00 00 A0 */	mulli r0, r0, 0xa0
/* 8047F2BC  38 7F 02 40 */	addi r3, r31, 0x240
/* 8047F2C0  7C 63 02 14 */	add r3, r3, r0
/* 8047F2C4  C0 83 00 50 */	lfs f4, 0x50(r3)
/* 8047F2C8  EC A0 01 32 */	fmuls f5, f0, f4
/* 8047F2CC  C0 1C 08 D4 */	lfs f0, 0x8d4(r28)
/* 8047F2D0  FC 00 00 50 */	fneg f0, f0
/* 8047F2D4  C0 63 00 54 */	lfs f3, 0x54(r3)
/* 8047F2D8  EC C0 00 F2 */	fmuls f6, f0, f3
/* 8047F2DC  C0 5C 08 D0 */	lfs f2, 0x8d0(r28)
/* 8047F2E0  C0 3C 08 C8 */	lfs f1, 0x8c8(r28)
/* 8047F2E4  C0 1C 08 C0 */	lfs f0, 0x8c0(r28)
/* 8047F2E8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8047F2EC  FC 00 00 50 */	fneg f0, f0
/* 8047F2F0  EC 20 01 32 */	fmuls f1, f0, f4
/* 8047F2F4  FC 00 10 50 */	fneg f0, f2
/* 8047F2F8  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8047F2FC  EC 01 00 2A */	fadds f0, f1, f0
/* 8047F300  EC 02 00 2A */	fadds f0, f2, f0
/* 8047F304  D0 1C 08 D0 */	stfs f0, 0x8d0(r28)
/* 8047F308  C0 3C 08 D4 */	lfs f1, 0x8d4(r28)
/* 8047F30C  EC 05 30 2A */	fadds f0, f5, f6
/* 8047F310  EC 01 00 2A */	fadds f0, f1, f0
/* 8047F314  D0 1C 08 D4 */	stfs f0, 0x8d4(r28)
/* 8047F318  C0 3C 08 C8 */	lfs f1, 0x8c8(r28)
/* 8047F31C  C0 1C 08 D0 */	lfs f0, 0x8d0(r28)
/* 8047F320  EC 01 00 2A */	fadds f0, f1, f0
/* 8047F324  D0 1C 08 C8 */	stfs f0, 0x8c8(r28)
/* 8047F328  C0 3C 08 CC */	lfs f1, 0x8cc(r28)
/* 8047F32C  C0 1C 08 D4 */	lfs f0, 0x8d4(r28)
/* 8047F330  EC 01 00 2A */	fadds f0, f1, f0
/* 8047F334  D0 1C 08 CC */	stfs f0, 0x8cc(r28)
/* 8047F338  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 8047F33C  41 82 00 0C */	beq lbl_8047F348
/* 8047F340  C0 1F 01 C0 */	lfs f0, 0x1c0(r31)
/* 8047F344  D0 1C 08 C8 */	stfs f0, 0x8c8(r28)
lbl_8047F348:
/* 8047F348  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8047F34C  41 82 00 0C */	beq lbl_8047F358
/* 8047F350  C0 1F 01 C0 */	lfs f0, 0x1c0(r31)
/* 8047F354  D0 1C 08 CC */	stfs f0, 0x8cc(r28)
lbl_8047F358:
/* 8047F358  C0 1F 01 C0 */	lfs f0, 0x1c0(r31)
/* 8047F35C  D0 1C 08 C0 */	stfs f0, 0x8c0(r28)
/* 8047F360  D0 1C 08 C4 */	stfs f0, 0x8c4(r28)
/* 8047F364  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8047F368  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8047F36C  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8047F370  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8047F374  39 61 00 20 */	addi r11, r1, 0x20
/* 8047F378  4B EE 2E A5 */	bl _restgpr_26
/* 8047F37C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8047F380  7C 08 03 A6 */	mtlr r0
/* 8047F384  38 21 00 40 */	addi r1, r1, 0x40
/* 8047F388  4E 80 00 20 */	blr 

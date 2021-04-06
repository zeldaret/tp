lbl_80C9A040:
/* 80C9A040  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C9A044  7C 08 02 A6 */	mflr r0
/* 80C9A048  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C9A04C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80C9A050  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80C9A054  39 61 00 40 */	addi r11, r1, 0x40
/* 80C9A058  4B 6C 81 75 */	bl _savegpr_25
/* 80C9A05C  7C 9D 23 78 */	mr r29, r4
/* 80C9A060  A8 05 00 08 */	lha r0, 8(r5)
/* 80C9A064  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80C9A068  40 82 01 D8 */	bne lbl_80C9A240
/* 80C9A06C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C9A070  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C9A074  83 E3 5D AC */	lwz r31, 0x5dac(r3)
/* 80C9A078  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 80C9A07C  38 63 00 24 */	addi r3, r3, 0x24
/* 80C9A080  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9A084  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9A088  4B 6A C4 29 */	bl PSMTXCopy
/* 80C9A08C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9A090  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9A094  7C 64 1B 78 */	mr r4, r3
/* 80C9A098  4B 6A C5 19 */	bl PSMTXInverse
/* 80C9A09C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C9A0A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C9A0A4  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80C9A0A8  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80C9A0AC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80C9A0B0  41 82 00 E4 */	beq lbl_80C9A194
/* 80C9A0B4  3B 20 00 00 */	li r25, 0
/* 80C9A0B8  3C 60 80 CA */	lis r3, l_minPos@ha /* 0x80C9B244@ha */
/* 80C9A0BC  3B 43 B2 44 */	addi r26, r3, l_minPos@l /* 0x80C9B244@l */
/* 80C9A0C0  3C 60 80 CA */	lis r3, l_maxPos@ha /* 0x80C9B250@ha */
/* 80C9A0C4  3B 83 B2 50 */	addi r28, r3, l_maxPos@l /* 0x80C9B250@l */
/* 80C9A0C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9A0CC  3B 63 D4 70 */	addi r27, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9A0D0  C3 FA 00 00 */	lfs f31, 0(r26)
lbl_80C9A0D4:
/* 80C9A0D4  2C 19 00 02 */	cmpwi r25, 2
/* 80C9A0D8  41 82 00 34 */	beq lbl_80C9A10C
/* 80C9A0DC  40 80 00 14 */	bge lbl_80C9A0F0
/* 80C9A0E0  2C 19 00 00 */	cmpwi r25, 0
/* 80C9A0E4  41 82 00 18 */	beq lbl_80C9A0FC
/* 80C9A0E8  40 80 00 1C */	bge lbl_80C9A104
/* 80C9A0EC  48 00 00 2C */	b lbl_80C9A118
lbl_80C9A0F0:
/* 80C9A0F0  2C 19 00 04 */	cmpwi r25, 4
/* 80C9A0F4  40 80 00 24 */	bge lbl_80C9A118
/* 80C9A0F8  48 00 00 1C */	b lbl_80C9A114
lbl_80C9A0FC:
/* 80C9A0FC  3B DF 05 C8 */	addi r30, r31, 0x5c8
/* 80C9A100  48 00 00 18 */	b lbl_80C9A118
lbl_80C9A104:
/* 80C9A104  3B DF 05 D4 */	addi r30, r31, 0x5d4
/* 80C9A108  48 00 00 10 */	b lbl_80C9A118
lbl_80C9A10C:
/* 80C9A10C  3B DF 05 E0 */	addi r30, r31, 0x5e0
/* 80C9A110  48 00 00 08 */	b lbl_80C9A118
lbl_80C9A114:
/* 80C9A114  3B DF 05 EC */	addi r30, r31, 0x5ec
lbl_80C9A118:
/* 80C9A118  4B 37 2B B1 */	bl push__14mDoMtx_stack_cFv
/* 80C9A11C  7F 63 DB 78 */	mr r3, r27
/* 80C9A120  7F C4 F3 78 */	mr r4, r30
/* 80C9A124  38 A1 00 08 */	addi r5, r1, 8
/* 80C9A128  4B 6A CC 45 */	bl PSMTXMultVec
/* 80C9A12C  4B 37 2B E9 */	bl pop__14mDoMtx_stack_cFv
/* 80C9A130  C0 21 00 08 */	lfs f1, 8(r1)
/* 80C9A134  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80C9A138  4C 41 13 82 */	cror 2, 1, 2
/* 80C9A13C  40 82 00 48 */	bne lbl_80C9A184
/* 80C9A140  3C 60 80 CA */	lis r3, l_maxPos@ha /* 0x80C9B250@ha */
/* 80C9A144  C0 03 B2 50 */	lfs f0, l_maxPos@l(r3)  /* 0x80C9B250@l */
/* 80C9A148  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C9A14C  4C 40 13 82 */	cror 2, 0, 2
/* 80C9A150  40 82 00 34 */	bne lbl_80C9A184
/* 80C9A154  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80C9A158  C0 1A 00 08 */	lfs f0, 8(r26)
/* 80C9A15C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C9A160  4C 41 13 82 */	cror 2, 1, 2
/* 80C9A164  40 82 00 20 */	bne lbl_80C9A184
/* 80C9A168  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80C9A16C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C9A170  4C 40 13 82 */	cror 2, 0, 2
/* 80C9A174  40 82 00 10 */	bne lbl_80C9A184
/* 80C9A178  38 00 00 0F */	li r0, 0xf
/* 80C9A17C  98 1D 08 75 */	stb r0, 0x875(r29)
/* 80C9A180  48 00 00 C0 */	b lbl_80C9A240
lbl_80C9A184:
/* 80C9A184  3B 39 00 01 */	addi r25, r25, 1
/* 80C9A188  2C 19 00 04 */	cmpwi r25, 4
/* 80C9A18C  41 80 FF 48 */	blt lbl_80C9A0D4
/* 80C9A190  48 00 00 B0 */	b lbl_80C9A240
lbl_80C9A194:
/* 80C9A194  3B 40 00 00 */	li r26, 0
/* 80C9A198  3C 60 80 CA */	lis r3, l_minPos@ha /* 0x80C9B244@ha */
/* 80C9A19C  3B 63 B2 44 */	addi r27, r3, l_minPos@l /* 0x80C9B244@l */
/* 80C9A1A0  3C 60 80 CA */	lis r3, l_maxPos@ha /* 0x80C9B250@ha */
/* 80C9A1A4  3B 83 B2 50 */	addi r28, r3, l_maxPos@l /* 0x80C9B250@l */
/* 80C9A1A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9A1AC  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9A1B0  C3 FB 00 00 */	lfs f31, 0(r27)
lbl_80C9A1B4:
/* 80C9A1B4  2C 1A 00 00 */	cmpwi r26, 0
/* 80C9A1B8  40 82 00 0C */	bne lbl_80C9A1C4
/* 80C9A1BC  3B 3F 05 E0 */	addi r25, r31, 0x5e0
/* 80C9A1C0  48 00 00 08 */	b lbl_80C9A1C8
lbl_80C9A1C4:
/* 80C9A1C4  3B 3F 05 EC */	addi r25, r31, 0x5ec
lbl_80C9A1C8:
/* 80C9A1C8  4B 37 2B 01 */	bl push__14mDoMtx_stack_cFv
/* 80C9A1CC  7F C3 F3 78 */	mr r3, r30
/* 80C9A1D0  7F 24 CB 78 */	mr r4, r25
/* 80C9A1D4  38 A1 00 08 */	addi r5, r1, 8
/* 80C9A1D8  4B 6A CB 95 */	bl PSMTXMultVec
/* 80C9A1DC  4B 37 2B 39 */	bl pop__14mDoMtx_stack_cFv
/* 80C9A1E0  C0 21 00 08 */	lfs f1, 8(r1)
/* 80C9A1E4  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80C9A1E8  4C 41 13 82 */	cror 2, 1, 2
/* 80C9A1EC  40 82 00 48 */	bne lbl_80C9A234
/* 80C9A1F0  3C 60 80 CA */	lis r3, l_maxPos@ha /* 0x80C9B250@ha */
/* 80C9A1F4  C0 03 B2 50 */	lfs f0, l_maxPos@l(r3)  /* 0x80C9B250@l */
/* 80C9A1F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C9A1FC  4C 40 13 82 */	cror 2, 0, 2
/* 80C9A200  40 82 00 34 */	bne lbl_80C9A234
/* 80C9A204  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80C9A208  C0 1B 00 08 */	lfs f0, 8(r27)
/* 80C9A20C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C9A210  4C 41 13 82 */	cror 2, 1, 2
/* 80C9A214  40 82 00 20 */	bne lbl_80C9A234
/* 80C9A218  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80C9A21C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C9A220  4C 40 13 82 */	cror 2, 0, 2
/* 80C9A224  40 82 00 10 */	bne lbl_80C9A234
/* 80C9A228  38 00 00 0F */	li r0, 0xf
/* 80C9A22C  98 1D 08 75 */	stb r0, 0x875(r29)
/* 80C9A230  48 00 00 10 */	b lbl_80C9A240
lbl_80C9A234:
/* 80C9A234  3B 5A 00 01 */	addi r26, r26, 1
/* 80C9A238  2C 1A 00 02 */	cmpwi r26, 2
/* 80C9A23C  41 80 FF 78 */	blt lbl_80C9A1B4
lbl_80C9A240:
/* 80C9A240  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80C9A244  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80C9A248  39 61 00 40 */	addi r11, r1, 0x40
/* 80C9A24C  4B 6C 7F CD */	bl _restgpr_25
/* 80C9A250  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C9A254  7C 08 03 A6 */	mtlr r0
/* 80C9A258  38 21 00 50 */	addi r1, r1, 0x50
/* 80C9A25C  4E 80 00 20 */	blr 

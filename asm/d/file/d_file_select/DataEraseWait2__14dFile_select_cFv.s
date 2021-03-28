lbl_80189FFC:
/* 80189FFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8018A000  7C 08 02 A6 */	mflr r0
/* 8018A004  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018A008  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8018A00C  7C 7F 1B 78 */	mr r31, r3
/* 8018A010  A8 03 03 AC */	lha r0, 0x3ac(r3)
/* 8018A014  2C 00 00 00 */	cmpwi r0, 0
/* 8018A018  41 82 00 48 */	beq lbl_8018A060
/* 8018A01C  38 00 00 AB */	li r0, 0xab
/* 8018A020  90 01 00 10 */	stw r0, 0x10(r1)
/* 8018A024  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8018A028  38 81 00 10 */	addi r4, r1, 0x10
/* 8018A02C  38 A0 00 00 */	li r5, 0
/* 8018A030  38 C0 00 00 */	li r6, 0
/* 8018A034  38 E0 00 00 */	li r7, 0
/* 8018A038  C0 22 9F 40 */	lfs f1, lit_4611(r2)
/* 8018A03C  FC 40 08 90 */	fmr f2, f1
/* 8018A040  C0 62 9F 44 */	lfs f3, lit_4612(r2)
/* 8018A044  FC 80 18 90 */	fmr f4, f3
/* 8018A048  39 00 00 00 */	li r8, 0
/* 8018A04C  48 12 24 C1 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8018A050  A8 7F 03 AC */	lha r3, 0x3ac(r31)
/* 8018A054  38 03 FF FF */	addi r0, r3, -1
/* 8018A058  B0 1F 03 AC */	sth r0, 0x3ac(r31)
/* 8018A05C  48 00 01 24 */	b lbl_8018A180
lbl_8018A060:
/* 8018A060  80 1F 03 B4 */	lwz r0, 0x3b4(r31)
/* 8018A064  2C 00 00 02 */	cmpwi r0, 2
/* 8018A068  40 82 00 90 */	bne lbl_8018A0F8
/* 8018A06C  38 00 00 AF */	li r0, 0xaf
/* 8018A070  90 01 00 0C */	stw r0, 0xc(r1)
/* 8018A074  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8018A078  38 81 00 0C */	addi r4, r1, 0xc
/* 8018A07C  38 A0 00 00 */	li r5, 0
/* 8018A080  38 C0 00 00 */	li r6, 0
/* 8018A084  38 E0 00 00 */	li r7, 0
/* 8018A088  C0 22 9F 40 */	lfs f1, lit_4611(r2)
/* 8018A08C  FC 40 08 90 */	fmr f2, f1
/* 8018A090  C0 62 9F 44 */	lfs f3, lit_4612(r2)
/* 8018A094  FC 80 18 90 */	fmr f4, f3
/* 8018A098  39 00 00 00 */	li r8, 0
/* 8018A09C  48 12 18 E9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8018A0A0  7F E3 FB 78 */	mr r3, r31
/* 8018A0A4  38 80 00 4C */	li r4, 0x4c
/* 8018A0A8  38 A0 00 00 */	li r5, 0
/* 8018A0AC  38 C0 00 00 */	li r6, 0
/* 8018A0B0  48 00 30 35 */	bl headerTxtSet__14dFile_select_cFUsUcUc
/* 8018A0B4  80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 8018A0B8  48 00 80 55 */	bl closeInit__15dFile_warning_cFv
/* 8018A0BC  7F E3 FB 78 */	mr r3, r31
/* 8018A0C0  38 80 00 01 */	li r4, 1
/* 8018A0C4  48 00 32 DD */	bl modoruTxtDispAnmInit__14dFile_select_cFUc
/* 8018A0C8  7F E3 FB 78 */	mr r3, r31
/* 8018A0CC  38 80 00 01 */	li r4, 1
/* 8018A0D0  48 00 34 29 */	bl ketteiTxtDispAnmInit__14dFile_select_cFUc
/* 8018A0D4  38 80 00 00 */	li r4, 0
/* 8018A0D8  88 1F 02 65 */	lbz r0, 0x265(r31)
/* 8018A0DC  54 00 10 3A */	slwi r0, r0, 2
/* 8018A0E0  7C 7F 02 14 */	add r3, r31, r0
/* 8018A0E4  80 63 01 4C */	lwz r3, 0x14c(r3)
/* 8018A0E8  B0 83 00 16 */	sth r4, 0x16(r3)
/* 8018A0EC  38 00 00 27 */	li r0, 0x27
/* 8018A0F0  98 1F 02 6F */	stb r0, 0x26f(r31)
/* 8018A0F4  48 00 00 8C */	b lbl_8018A180
lbl_8018A0F8:
/* 8018A0F8  2C 00 00 01 */	cmpwi r0, 1
/* 8018A0FC  40 82 00 84 */	bne lbl_8018A180
/* 8018A100  38 00 00 AC */	li r0, 0xac
/* 8018A104  90 01 00 08 */	stw r0, 8(r1)
/* 8018A108  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8018A10C  38 81 00 08 */	addi r4, r1, 8
/* 8018A110  38 A0 00 00 */	li r5, 0
/* 8018A114  38 C0 00 00 */	li r6, 0
/* 8018A118  38 E0 00 00 */	li r7, 0
/* 8018A11C  C0 22 9F 40 */	lfs f1, lit_4611(r2)
/* 8018A120  FC 40 08 90 */	fmr f2, f1
/* 8018A124  C0 62 9F 44 */	lfs f3, lit_4612(r2)
/* 8018A128  FC 80 18 90 */	fmr f4, f3
/* 8018A12C  39 00 00 00 */	li r8, 0
/* 8018A130  48 12 18 55 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8018A134  38 80 00 00 */	li r4, 0
/* 8018A138  98 9F 03 B1 */	stb r4, 0x3b1(r31)
/* 8018A13C  88 1F 02 65 */	lbz r0, 0x265(r31)
/* 8018A140  54 00 10 3A */	slwi r0, r0, 2
/* 8018A144  7C 7F 02 14 */	add r3, r31, r0
/* 8018A148  80 63 01 4C */	lwz r3, 0x14c(r3)
/* 8018A14C  B0 83 00 16 */	sth r4, 0x16(r3)
/* 8018A150  88 1F 02 65 */	lbz r0, 0x265(r31)
/* 8018A154  54 00 10 3A */	slwi r0, r0, 2
/* 8018A158  7C 7F 02 14 */	add r3, r31, r0
/* 8018A15C  80 63 02 2C */	lwz r3, 0x22c(r3)
/* 8018A160  B0 83 00 16 */	sth r4, 0x16(r3)
/* 8018A164  88 1F 02 65 */	lbz r0, 0x265(r31)
/* 8018A168  54 00 10 3A */	slwi r0, r0, 2
/* 8018A16C  7C 7F 02 14 */	add r3, r31, r0
/* 8018A170  80 63 02 20 */	lwz r3, 0x220(r3)
/* 8018A174  B0 83 00 16 */	sth r4, 0x16(r3)
/* 8018A178  38 00 00 25 */	li r0, 0x25
/* 8018A17C  98 1F 02 6F */	stb r0, 0x26f(r31)
lbl_8018A180:
/* 8018A180  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8018A184  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8018A188  7C 08 03 A6 */	mtlr r0
/* 8018A18C  38 21 00 20 */	addi r1, r1, 0x20
/* 8018A190  4E 80 00 20 */	blr 

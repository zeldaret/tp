lbl_802BF304:
/* 802BF304  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802BF308  7C 08 02 A6 */	mflr r0
/* 802BF30C  90 01 00 34 */	stw r0, 0x34(r1)
/* 802BF310  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 802BF314  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 802BF318  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 802BF31C  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 802BF320  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BF324  93 C1 00 08 */	stw r30, 8(r1)
/* 802BF328  7C 7F 1B 78 */	mr r31, r3
/* 802BF32C  FF C0 08 90 */	fmr f30, f1
/* 802BF330  FF E0 10 90 */	fmr f31, f2
/* 802BF334  80 03 00 20 */	lwz r0, 0x20(r3)
/* 802BF338  28 00 00 00 */	cmplwi r0, 0
/* 802BF33C  41 82 02 FC */	beq lbl_802BF638
/* 802BF340  3B C0 00 00 */	li r30, 0
/* 802BF344  48 00 02 E8 */	b lbl_802BF62C
lbl_802BF348:
/* 802BF348  7F E3 FB 78 */	mr r3, r31
/* 802BF34C  7F C4 F3 78 */	mr r4, r30
/* 802BF350  48 01 CE BD */	bl getNthLink__10JSUPtrListCFUl
/* 802BF354  28 03 00 00 */	cmplwi r3, 0
/* 802BF358  41 82 00 08 */	beq lbl_802BF360
/* 802BF35C  38 63 FF FC */	addi r3, r3, -4
lbl_802BF360:
/* 802BF360  80 03 00 00 */	lwz r0, 0(r3)
/* 802BF364  28 00 00 00 */	cmplwi r0, 0
/* 802BF368  41 82 02 C0 */	beq lbl_802BF628
/* 802BF36C  7F E3 FB 78 */	mr r3, r31
/* 802BF370  7F C4 F3 78 */	mr r4, r30
/* 802BF374  48 01 CE 99 */	bl getNthLink__10JSUPtrListCFUl
/* 802BF378  28 03 00 00 */	cmplwi r3, 0
/* 802BF37C  41 82 00 08 */	beq lbl_802BF384
/* 802BF380  38 63 FF FC */	addi r3, r3, -4
lbl_802BF384:
/* 802BF384  80 63 00 00 */	lwz r3, 0(r3)
/* 802BF388  88 03 00 1F */	lbz r0, 0x1f(r3)
/* 802BF38C  54 00 E7 BE */	rlwinm r0, r0, 0x1c, 0x1e, 0x1f
/* 802BF390  2C 00 00 01 */	cmpwi r0, 1
/* 802BF394  41 82 00 10 */	beq lbl_802BF3A4
/* 802BF398  40 80 02 90 */	bge lbl_802BF628
/* 802BF39C  48 00 02 8C */	b lbl_802BF628
/* 802BF3A0  48 00 02 88 */	b lbl_802BF628
lbl_802BF3A4:
/* 802BF3A4  7F E3 FB 78 */	mr r3, r31
/* 802BF3A8  7F C4 F3 78 */	mr r4, r30
/* 802BF3AC  48 01 CE 61 */	bl getNthLink__10JSUPtrListCFUl
/* 802BF3B0  28 03 00 00 */	cmplwi r3, 0
/* 802BF3B4  41 82 00 08 */	beq lbl_802BF3BC
/* 802BF3B8  38 63 FF FC */	addi r3, r3, -4
lbl_802BF3BC:
/* 802BF3BC  80 63 00 00 */	lwz r3, 0(r3)
/* 802BF3C0  80 63 00 20 */	lwz r3, 0x20(r3)
/* 802BF3C4  38 80 00 00 */	li r4, 0
/* 802BF3C8  C0 02 C1 50 */	lfs f0, lit_3821(r2)
/* 802BF3CC  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 802BF3D0  40 82 00 14 */	bne lbl_802BF3E4
/* 802BF3D4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 802BF3D8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 802BF3DC  41 82 00 08 */	beq lbl_802BF3E4
/* 802BF3E0  38 80 00 01 */	li r4, 1
lbl_802BF3E4:
/* 802BF3E4  80 A3 00 10 */	lwz r5, 0x10(r3)
/* 802BF3E8  54 A6 06 73 */	rlwinm. r6, r5, 0, 0x19, 0x19
/* 802BF3EC  41 82 01 24 */	beq lbl_802BF510
/* 802BF3F0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802BF3F4  41 82 00 34 */	beq lbl_802BF428
/* 802BF3F8  7F E3 FB 78 */	mr r3, r31
/* 802BF3FC  7F C4 F3 78 */	mr r4, r30
/* 802BF400  48 01 CE 0D */	bl getNthLink__10JSUPtrListCFUl
/* 802BF404  28 03 00 00 */	cmplwi r3, 0
/* 802BF408  41 82 00 08 */	beq lbl_802BF410
/* 802BF40C  38 63 FF FC */	addi r3, r3, -4
lbl_802BF410:
/* 802BF410  80 83 00 00 */	lwz r4, 0(r3)
/* 802BF414  38 60 00 01 */	li r3, 1
/* 802BF418  88 04 00 1C */	lbz r0, 0x1c(r4)
/* 802BF41C  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 802BF420  98 04 00 1C */	stb r0, 0x1c(r4)
/* 802BF424  48 00 02 04 */	b lbl_802BF628
lbl_802BF428:
/* 802BF428  C0 23 00 04 */	lfs f1, 4(r3)
/* 802BF42C  C0 03 00 08 */	lfs f0, 8(r3)
/* 802BF430  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802BF434  40 82 00 0C */	bne lbl_802BF440
/* 802BF438  38 00 00 01 */	li r0, 1
/* 802BF43C  48 00 00 48 */	b lbl_802BF484
lbl_802BF440:
/* 802BF440  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BF444  40 81 00 20 */	ble lbl_802BF464
/* 802BF448  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 802BF44C  4C 40 13 82 */	cror 2, 0, 2
/* 802BF450  40 82 00 30 */	bne lbl_802BF480
/* 802BF454  FC 1E 08 40 */	fcmpo cr0, f30, f1
/* 802BF458  40 80 00 28 */	bge lbl_802BF480
/* 802BF45C  38 00 00 01 */	li r0, 1
/* 802BF460  48 00 00 24 */	b lbl_802BF484
lbl_802BF464:
/* 802BF464  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 802BF468  4C 40 13 82 */	cror 2, 0, 2
/* 802BF46C  40 82 00 14 */	bne lbl_802BF480
/* 802BF470  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 802BF474  40 80 00 0C */	bge lbl_802BF480
/* 802BF478  38 00 00 01 */	li r0, 1
/* 802BF47C  48 00 00 08 */	b lbl_802BF484
lbl_802BF480:
/* 802BF480  38 00 00 00 */	li r0, 0
lbl_802BF484:
/* 802BF484  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 802BF488  41 82 00 64 */	beq lbl_802BF4EC
/* 802BF48C  7F E3 FB 78 */	mr r3, r31
/* 802BF490  7F C4 F3 78 */	mr r4, r30
/* 802BF494  48 01 CD 79 */	bl getNthLink__10JSUPtrListCFUl
/* 802BF498  28 03 00 00 */	cmplwi r3, 0
/* 802BF49C  41 82 00 08 */	beq lbl_802BF4A4
/* 802BF4A0  38 63 FF FC */	addi r3, r3, -4
lbl_802BF4A4:
/* 802BF4A4  80 63 00 00 */	lwz r3, 0(r3)
/* 802BF4A8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 802BF4AC  28 00 00 01 */	cmplwi r0, 1
/* 802BF4B0  40 80 00 0C */	bge lbl_802BF4BC
/* 802BF4B4  38 00 00 01 */	li r0, 1
/* 802BF4B8  90 03 00 10 */	stw r0, 0x10(r3)
lbl_802BF4BC:
/* 802BF4BC  7F E3 FB 78 */	mr r3, r31
/* 802BF4C0  7F C4 F3 78 */	mr r4, r30
/* 802BF4C4  48 01 CD 49 */	bl getNthLink__10JSUPtrListCFUl
/* 802BF4C8  28 03 00 00 */	cmplwi r3, 0
/* 802BF4CC  41 82 00 08 */	beq lbl_802BF4D4
/* 802BF4D0  38 63 FF FC */	addi r3, r3, -4
lbl_802BF4D4:
/* 802BF4D4  80 83 00 00 */	lwz r4, 0(r3)
/* 802BF4D8  38 60 00 00 */	li r3, 0
/* 802BF4DC  88 04 00 1C */	lbz r0, 0x1c(r4)
/* 802BF4E0  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 802BF4E4  98 04 00 1C */	stb r0, 0x1c(r4)
/* 802BF4E8  48 00 01 40 */	b lbl_802BF628
lbl_802BF4EC:
/* 802BF4EC  7F E3 FB 78 */	mr r3, r31
/* 802BF4F0  7F C4 F3 78 */	mr r4, r30
/* 802BF4F4  48 01 CD 19 */	bl getNthLink__10JSUPtrListCFUl
/* 802BF4F8  28 03 00 00 */	cmplwi r3, 0
/* 802BF4FC  41 82 00 08 */	beq lbl_802BF504
/* 802BF500  38 63 FF FC */	addi r3, r3, -4
lbl_802BF504:
/* 802BF504  80 63 00 00 */	lwz r3, 0(r3)
/* 802BF508  4B FE 30 91 */	bl stop__8JAISoundFv
/* 802BF50C  48 00 01 1C */	b lbl_802BF628
lbl_802BF510:
/* 802BF510  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802BF514  41 82 00 28 */	beq lbl_802BF53C
/* 802BF518  7F E3 FB 78 */	mr r3, r31
/* 802BF51C  7F C4 F3 78 */	mr r4, r30
/* 802BF520  48 01 CC ED */	bl getNthLink__10JSUPtrListCFUl
/* 802BF524  28 03 00 00 */	cmplwi r3, 0
/* 802BF528  41 82 00 08 */	beq lbl_802BF530
/* 802BF52C  38 63 FF FC */	addi r3, r3, -4
lbl_802BF530:
/* 802BF530  80 63 00 00 */	lwz r3, 0(r3)
/* 802BF534  4B FE 30 65 */	bl stop__8JAISoundFv
/* 802BF538  48 00 00 F0 */	b lbl_802BF628
lbl_802BF53C:
/* 802BF53C  54 A0 06 F7 */	rlwinm. r0, r5, 0, 0x1b, 0x1b
/* 802BF540  41 82 00 E8 */	beq lbl_802BF628
/* 802BF544  88 1F 00 44 */	lbz r0, 0x44(r31)
/* 802BF548  28 06 00 00 */	cmplwi r6, 0
/* 802BF54C  41 82 00 70 */	beq lbl_802BF5BC
/* 802BF550  C0 23 00 04 */	lfs f1, 4(r3)
/* 802BF554  C0 03 00 08 */	lfs f0, 8(r3)
/* 802BF558  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802BF55C  40 82 00 0C */	bne lbl_802BF568
/* 802BF560  38 00 00 01 */	li r0, 1
/* 802BF564  48 00 00 48 */	b lbl_802BF5AC
lbl_802BF568:
/* 802BF568  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BF56C  40 81 00 20 */	ble lbl_802BF58C
/* 802BF570  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 802BF574  4C 40 13 82 */	cror 2, 0, 2
/* 802BF578  40 82 00 30 */	bne lbl_802BF5A8
/* 802BF57C  FC 1E 08 40 */	fcmpo cr0, f30, f1
/* 802BF580  40 80 00 28 */	bge lbl_802BF5A8
/* 802BF584  38 00 00 01 */	li r0, 1
/* 802BF588  48 00 00 24 */	b lbl_802BF5AC
lbl_802BF58C:
/* 802BF58C  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 802BF590  4C 40 13 82 */	cror 2, 0, 2
/* 802BF594  40 82 00 14 */	bne lbl_802BF5A8
/* 802BF598  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 802BF59C  40 80 00 0C */	bge lbl_802BF5A8
/* 802BF5A0  38 00 00 01 */	li r0, 1
/* 802BF5A4  48 00 00 08 */	b lbl_802BF5AC
lbl_802BF5A8:
/* 802BF5A8  38 00 00 00 */	li r0, 0
lbl_802BF5AC:
/* 802BF5AC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802BF5B0  7C 00 00 34 */	cntlzw r0, r0
/* 802BF5B4  54 00 D9 7E */	srwi r0, r0, 5
/* 802BF5B8  48 00 00 48 */	b lbl_802BF600
lbl_802BF5BC:
/* 802BF5BC  C0 03 00 04 */	lfs f0, 4(r3)
/* 802BF5C0  C0 23 00 08 */	lfs f1, 8(r3)
/* 802BF5C4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802BF5C8  40 82 00 0C */	bne lbl_802BF5D4
/* 802BF5CC  38 00 00 00 */	li r0, 0
/* 802BF5D0  48 00 00 30 */	b lbl_802BF600
lbl_802BF5D4:
/* 802BF5D4  28 00 00 00 */	cmplwi r0, 0
/* 802BF5D8  41 82 00 18 */	beq lbl_802BF5F0
/* 802BF5DC  FC 1E 08 40 */	fcmpo cr0, f30, f1
/* 802BF5E0  4C 40 13 82 */	cror 2, 0, 2
/* 802BF5E4  7C 00 00 26 */	mfcr r0
/* 802BF5E8  54 00 1F FE */	rlwinm r0, r0, 3, 0x1f, 0x1f
/* 802BF5EC  48 00 00 14 */	b lbl_802BF600
lbl_802BF5F0:
/* 802BF5F0  FC 1E 08 40 */	fcmpo cr0, f30, f1
/* 802BF5F4  4C 41 13 82 */	cror 2, 1, 2
/* 802BF5F8  7C 00 00 26 */	mfcr r0
/* 802BF5FC  54 00 1F FE */	rlwinm r0, r0, 3, 0x1f, 0x1f
lbl_802BF600:
/* 802BF600  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 802BF604  41 82 00 24 */	beq lbl_802BF628
/* 802BF608  7F E3 FB 78 */	mr r3, r31
/* 802BF60C  7F C4 F3 78 */	mr r4, r30
/* 802BF610  48 01 CB FD */	bl getNthLink__10JSUPtrListCFUl
/* 802BF614  28 03 00 00 */	cmplwi r3, 0
/* 802BF618  41 82 00 08 */	beq lbl_802BF620
/* 802BF61C  38 63 FF FC */	addi r3, r3, -4
lbl_802BF620:
/* 802BF620  80 63 00 00 */	lwz r3, 0(r3)
/* 802BF624  4B FE 2F 75 */	bl stop__8JAISoundFv
lbl_802BF628:
/* 802BF628  3B DE 00 01 */	addi r30, r30, 1
lbl_802BF62C:
/* 802BF62C  80 1F 00 08 */	lwz r0, 8(r31)
/* 802BF630  7C 1E 00 00 */	cmpw r30, r0
/* 802BF634  41 80 FD 14 */	blt lbl_802BF348
lbl_802BF638:
/* 802BF638  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 802BF63C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 802BF640  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 802BF644  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 802BF648  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BF64C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802BF650  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802BF654  7C 08 03 A6 */	mtlr r0
/* 802BF658  38 21 00 30 */	addi r1, r1, 0x30
/* 802BF65C  4E 80 00 20 */	blr 

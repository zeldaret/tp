lbl_80234150:
/* 80234150  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80234154  7C 08 02 A6 */	mflr r0
/* 80234158  90 01 00 24 */	stw r0, 0x24(r1)
/* 8023415C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80234160  7C 7F 1B 78 */	mr r31, r3
/* 80234164  88 03 04 CB */	lbz r0, 0x4cb(r3)
/* 80234168  28 00 00 00 */	cmplwi r0, 0
/* 8023416C  40 82 00 10 */	bne lbl_8023417C
/* 80234170  88 1F 04 CC */	lbz r0, 0x4cc(r31)
/* 80234174  28 00 00 00 */	cmplwi r0, 0
/* 80234178  41 82 01 08 */	beq lbl_80234280
lbl_8023417C:
/* 8023417C  7F E3 FB 78 */	mr r3, r31
/* 80234180  48 00 2F B9 */	bl isMidonaNormalTalkWait__12dMsgObject_cFv
/* 80234184  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80234188  41 82 01 7C */	beq lbl_80234304
/* 8023418C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80234190  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80234194  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 80234198  7C 00 07 74 */	extsb r0, r0
/* 8023419C  1C 00 00 38 */	mulli r0, r0, 0x38
/* 802341A0  7C 63 02 14 */	add r3, r3, r0
/* 802341A4  80 03 5D 7C */	lwz r0, 0x5d7c(r3)
/* 802341A8  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 802341AC  40 82 00 24 */	bne lbl_802341D0
/* 802341B0  48 00 37 85 */	bl isCameraCancelFlag__12dMsgObject_cFv
/* 802341B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802341B8  40 82 00 18 */	bne lbl_802341D0
/* 802341BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 802341C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 802341C4  88 03 5E B5 */	lbz r0, 0x5eb5(r3)
/* 802341C8  28 00 00 00 */	cmplwi r0, 0
/* 802341CC  41 82 01 38 */	beq lbl_80234304
lbl_802341D0:
/* 802341D0  88 1F 04 CA */	lbz r0, 0x4ca(r31)
/* 802341D4  28 00 00 00 */	cmplwi r0, 0
/* 802341D8  41 82 00 70 */	beq lbl_80234248
/* 802341DC  38 00 00 00 */	li r0, 0
/* 802341E0  98 1F 01 9D */	stb r0, 0x19d(r31)
/* 802341E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 802341E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 802341EC  98 03 5E 86 */	stb r0, 0x5e86(r3)
/* 802341F0  98 1F 01 9F */	stb r0, 0x19f(r31)
/* 802341F4  7F E3 FB 78 */	mr r3, r31
/* 802341F8  38 80 00 02 */	li r4, 2
/* 802341FC  48 00 26 E9 */	bl setStatusLocal__12dMsgObject_cFUs
/* 80234200  7F E3 FB 78 */	mr r3, r31
/* 80234204  48 00 30 39 */	bl isTalkMessage__12dMsgObject_cFv
/* 80234208  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8023420C  41 82 00 F8 */	beq lbl_80234304
/* 80234210  38 00 00 61 */	li r0, 0x61
/* 80234214  90 01 00 0C */	stw r0, 0xc(r1)
/* 80234218  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8023421C  38 81 00 0C */	addi r4, r1, 0xc
/* 80234220  38 A0 00 00 */	li r5, 0
/* 80234224  38 C0 00 00 */	li r6, 0
/* 80234228  38 E0 00 00 */	li r7, 0
/* 8023422C  C0 22 B0 C0 */	lfs f1, lit_4084(r2)
/* 80234230  FC 40 08 90 */	fmr f2, f1
/* 80234234  C0 62 B1 10 */	lfs f3, lit_4145(r2)
/* 80234238  FC 80 18 90 */	fmr f4, f3
/* 8023423C  39 00 00 00 */	li r8, 0
/* 80234240  48 07 77 45 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80234244  48 00 00 C0 */	b lbl_80234304
lbl_80234248:
/* 80234248  80 9F 01 54 */	lwz r4, 0x154(r31)
/* 8023424C  28 04 04 7F */	cmplwi r4, 0x47f
/* 80234250  41 80 00 1C */	blt lbl_8023426C
/* 80234254  28 04 04 87 */	cmplwi r4, 0x487
/* 80234258  41 81 00 14 */	bgt lbl_8023426C
/* 8023425C  7F E3 FB 78 */	mr r3, r31
/* 80234260  38 A0 00 01 */	li r5, 1
/* 80234264  4B FF FC 0D */	bl setMessageIndexDemo__12dMsgObject_cFUlb
/* 80234268  48 00 00 9C */	b lbl_80234304
lbl_8023426C:
/* 8023426C  7F E3 FB 78 */	mr r3, r31
/* 80234270  80 BF 01 5C */	lwz r5, 0x15c(r31)
/* 80234274  38 C0 00 01 */	li r6, 1
/* 80234278  4B FF FA 8D */	bl setMessageIndex__12dMsgObject_cFUlUlb
/* 8023427C  48 00 00 88 */	b lbl_80234304
lbl_80234280:
/* 80234280  88 1F 04 CA */	lbz r0, 0x4ca(r31)
/* 80234284  28 00 00 00 */	cmplwi r0, 0
/* 80234288  41 82 00 7C */	beq lbl_80234304
/* 8023428C  88 1F 04 CD */	lbz r0, 0x4cd(r31)
/* 80234290  28 00 00 00 */	cmplwi r0, 0
/* 80234294  41 82 00 10 */	beq lbl_802342A4
/* 80234298  38 80 00 0B */	li r4, 0xb
/* 8023429C  48 00 26 49 */	bl setStatusLocal__12dMsgObject_cFUs
/* 802342A0  48 00 00 64 */	b lbl_80234304
lbl_802342A4:
/* 802342A4  38 00 00 00 */	li r0, 0
/* 802342A8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 802342AC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 802342B0  98 04 5E 86 */	stb r0, 0x5e86(r4)
/* 802342B4  98 1F 01 9F */	stb r0, 0x19f(r31)
/* 802342B8  38 80 00 02 */	li r4, 2
/* 802342BC  48 00 26 29 */	bl setStatusLocal__12dMsgObject_cFUs
/* 802342C0  7F E3 FB 78 */	mr r3, r31
/* 802342C4  48 00 2F 79 */	bl isTalkMessage__12dMsgObject_cFv
/* 802342C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802342CC  41 82 00 38 */	beq lbl_80234304
/* 802342D0  38 00 00 61 */	li r0, 0x61
/* 802342D4  90 01 00 08 */	stw r0, 8(r1)
/* 802342D8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 802342DC  38 81 00 08 */	addi r4, r1, 8
/* 802342E0  38 A0 00 00 */	li r5, 0
/* 802342E4  38 C0 00 00 */	li r6, 0
/* 802342E8  38 E0 00 00 */	li r7, 0
/* 802342EC  C0 22 B0 C0 */	lfs f1, lit_4084(r2)
/* 802342F0  FC 40 08 90 */	fmr f2, f1
/* 802342F4  C0 62 B1 10 */	lfs f3, lit_4145(r2)
/* 802342F8  FC 80 18 90 */	fmr f4, f3
/* 802342FC  39 00 00 00 */	li r8, 0
/* 80234300  48 07 76 85 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80234304:
/* 80234304  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80234308  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8023430C  7C 08 03 A6 */	mtlr r0
/* 80234310  38 21 00 20 */	addi r1, r1, 0x20
/* 80234314  4E 80 00 20 */	blr 

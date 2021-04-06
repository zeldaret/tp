lbl_802BD338:
/* 802BD338  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802BD33C  7C 08 02 A6 */	mflr r0
/* 802BD340  90 01 00 34 */	stw r0, 0x34(r1)
/* 802BD344  39 61 00 30 */	addi r11, r1, 0x30
/* 802BD348  48 0A 4E 89 */	bl _savegpr_26
/* 802BD34C  7C 7B 1B 78 */	mr r27, r3
/* 802BD350  7C 9C 23 78 */	mr r28, r4
/* 802BD354  7C DD 33 78 */	mr r29, r6
/* 802BD358  38 60 00 01 */	li r3, 1
/* 802BD35C  80 1B 01 D4 */	lwz r0, 0x1d4(r27)
/* 802BD360  7C 63 00 30 */	slw r3, r3, r0
/* 802BD364  38 03 FF FF */	addi r0, r3, -1
/* 802BD368  7C 00 00 F8 */	nor r0, r0, r0
/* 802BD36C  7C FF 03 78 */	or r31, r7, r0
/* 802BD370  3C 1F 00 01 */	addis r0, r31, 1
/* 802BD374  28 00 FF FF */	cmplwi r0, 0xffff
/* 802BD378  40 82 00 0C */	bne lbl_802BD384
/* 802BD37C  38 60 00 00 */	li r3, 0
/* 802BD380  48 00 01 3C */	b lbl_802BD4BC
lbl_802BD384:
/* 802BD384  80 05 00 00 */	lwz r0, 0(r5)
/* 802BD388  90 01 00 0C */	stw r0, 0xc(r1)
/* 802BD38C  80 6D 85 CC */	lwz r3, data_80450B4C(r13)
/* 802BD390  38 81 00 0C */	addi r4, r1, 0xc
/* 802BD394  4B FF DD C5 */	bl getAudibleSwFull__11Z2SoundInfoF10JAISoundID
/* 802BD398  90 61 00 10 */	stw r3, 0x10(r1)
/* 802BD39C  88 01 00 10 */	lbz r0, 0x10(r1)
/* 802BD3A0  54 03 E7 3E */	rlwinm r3, r0, 0x1c, 0x1c, 0x1f
/* 802BD3A4  30 03 FF FF */	addic r0, r3, -1
/* 802BD3A8  7F C0 19 10 */	subfe r30, r0, r3
/* 802BD3AC  88 0D 8D D4 */	lbz r0, data_80451354(r13)
/* 802BD3B0  7C 00 07 75 */	extsb. r0, r0
/* 802BD3B4  40 82 00 34 */	bne lbl_802BD3E8
/* 802BD3B8  3C 60 80 43 */	lis r3, data_804341E4@ha /* 0x804341E4@ha */
/* 802BD3BC  38 63 41 E4 */	addi r3, r3, data_804341E4@l /* 0x804341E4@l */
/* 802BD3C0  4B FD 34 89 */	bl __ct__17JASGenericMemPoolFv
/* 802BD3C4  3C 60 80 43 */	lis r3, data_804341E4@ha /* 0x804341E4@ha */
/* 802BD3C8  38 63 41 E4 */	addi r3, r3, data_804341E4@l /* 0x804341E4@l */
/* 802BD3CC  3C 80 80 2C */	lis r4, func_802BD288@ha /* 0x802BD288@ha */
/* 802BD3D0  38 84 D2 88 */	addi r4, r4, func_802BD288@l /* 0x802BD288@l */
/* 802BD3D4  3C A0 80 43 */	lis r5, lit_1539@ha /* 0x804341D8@ha */
/* 802BD3D8  38 A5 41 D8 */	addi r5, r5, lit_1539@l /* 0x804341D8@l */
/* 802BD3DC  48 0A 48 49 */	bl __register_global_object
/* 802BD3E0  38 00 00 01 */	li r0, 1
/* 802BD3E4  98 0D 8D D4 */	stb r0, data_80451354(r13)
lbl_802BD3E8:
/* 802BD3E8  3C 60 80 43 */	lis r3, data_804341E4@ha /* 0x804341E4@ha */
/* 802BD3EC  38 63 41 E4 */	addi r3, r3, data_804341E4@l /* 0x804341E4@l */
/* 802BD3F0  38 80 00 68 */	li r4, 0x68
/* 802BD3F4  4B FD 35 55 */	bl alloc__17JASGenericMemPoolFUl
/* 802BD3F8  7C 7A 1B 79 */	or. r26, r3, r3
/* 802BD3FC  41 82 00 1C */	beq lbl_802BD418
/* 802BD400  7F 84 E3 78 */	mr r4, r28
/* 802BD404  7F A5 EB 78 */	mr r5, r29
/* 802BD408  7F E6 FB 78 */	mr r6, r31
/* 802BD40C  7F C7 F3 78 */	mr r7, r30
/* 802BD410  4B FF E9 85 */	bl func_802BBD94
/* 802BD414  7C 7A 1B 78 */	mr r26, r3
lbl_802BD418:
/* 802BD418  28 1A 00 00 */	cmplwi r26, 0
/* 802BD41C  40 82 00 0C */	bne lbl_802BD428
/* 802BD420  38 60 00 00 */	li r3, 0
/* 802BD424  48 00 00 98 */	b lbl_802BD4BC
lbl_802BD428:
/* 802BD428  80 01 00 10 */	lwz r0, 0x10(r1)
/* 802BD42C  90 01 00 08 */	stw r0, 8(r1)
/* 802BD430  90 1A 00 10 */	stw r0, 0x10(r26)
/* 802BD434  3B C0 00 00 */	li r30, 0
/* 802BD438  3B 80 00 00 */	li r28, 0
/* 802BD43C  48 00 00 54 */	b lbl_802BD490
lbl_802BD440:
/* 802BD440  7F 43 D3 78 */	mr r3, r26
/* 802BD444  7F C4 F3 78 */	mr r4, r30
/* 802BD448  4B FF ED BD */	bl getChannel__9Z2AudibleFi
/* 802BD44C  7C 7D 1B 79 */	or. r29, r3, r3
/* 802BD450  41 82 00 38 */	beq lbl_802BD488
/* 802BD454  7F 43 D3 78 */	mr r3, r26
/* 802BD458  4B FF ED C1 */	bl getDistVolBit__9Z2AudibleFv
/* 802BD45C  7C 7F 1B 78 */	mr r31, r3
/* 802BD460  38 7C 01 34 */	addi r3, r28, 0x134
/* 802BD464  7C 7B 1A 14 */	add r3, r27, r3
/* 802BD468  7F 44 D3 78 */	mr r4, r26
/* 802BD46C  7F C5 F3 78 */	mr r5, r30
/* 802BD470  4B FF F7 7D */	bl convertAbsToRel__13Z2AudioCameraFP9Z2Audiblei
/* 802BD474  7F 63 DB 78 */	mr r3, r27
/* 802BD478  C0 3D 00 24 */	lfs f1, 0x24(r29)
/* 802BD47C  7F E4 FB 78 */	mr r4, r31
/* 802BD480  38 A0 00 00 */	li r5, 0
/* 802BD484  48 00 07 C1 */	bl calcDeltaPriority___10Z2AudienceCFfib
lbl_802BD488:
/* 802BD488  3B DE 00 01 */	addi r30, r30, 1
/* 802BD48C  3B 9C 00 74 */	addi r28, r28, 0x74
lbl_802BD490:
/* 802BD490  80 1B 01 D4 */	lwz r0, 0x1d4(r27)
/* 802BD494  7C 1E 00 00 */	cmpw r30, r0
/* 802BD498  41 80 FF A8 */	blt lbl_802BD440
/* 802BD49C  88 1B 01 CD */	lbz r0, 0x1cd(r27)
/* 802BD4A0  28 00 00 00 */	cmplwi r0, 0
/* 802BD4A4  41 82 00 14 */	beq lbl_802BD4B8
/* 802BD4A8  38 7B 01 A8 */	addi r3, r27, 0x1a8
/* 802BD4AC  7F 44 D3 78 */	mr r4, r26
/* 802BD4B0  4B FF FA AD */	bl calcMicDist__9Z2SpotMicFP9Z2Audible
/* 802BD4B4  D0 3A 00 64 */	stfs f1, 0x64(r26)
lbl_802BD4B8:
/* 802BD4B8  7F 43 D3 78 */	mr r3, r26
lbl_802BD4BC:
/* 802BD4BC  39 61 00 30 */	addi r11, r1, 0x30
/* 802BD4C0  48 0A 4D 5D */	bl _restgpr_26
/* 802BD4C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802BD4C8  7C 08 03 A6 */	mtlr r0
/* 802BD4CC  38 21 00 30 */	addi r1, r1, 0x30
/* 802BD4D0  4E 80 00 20 */	blr 

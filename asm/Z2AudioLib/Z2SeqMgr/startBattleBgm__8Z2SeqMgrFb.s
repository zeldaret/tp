lbl_802B4EB0:
/* 802B4EB0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802B4EB4  7C 08 02 A6 */	mflr r0
/* 802B4EB8  90 01 00 44 */	stw r0, 0x44(r1)
/* 802B4EBC  39 61 00 40 */	addi r11, r1, 0x40
/* 802B4EC0  48 0A D3 11 */	bl _savegpr_26
/* 802B4EC4  7C 7C 1B 78 */	mr r28, r3
/* 802B4EC8  7C 9D 23 78 */	mr r29, r4
/* 802B4ECC  88 63 00 D0 */	lbz r3, 0xd0(r3)
/* 802B4ED0  54 60 E7 FF */	rlwinm. r0, r3, 0x1c, 0x1f, 0x1f
/* 802B4ED4  40 82 03 18 */	bne lbl_802B51EC
/* 802B4ED8  80 8D 86 00 */	lwz r4, __OSReport_disable-0x18(r13)
/* 802B4EDC  88 04 00 1D */	lbz r0, 0x1d(r4)
/* 802B4EE0  28 00 00 00 */	cmplwi r0, 0
/* 802B4EE4  41 82 03 08 */	beq lbl_802B51EC
/* 802B4EE8  88 1C 00 BF */	lbz r0, 0xbf(r28)
/* 802B4EEC  28 00 00 00 */	cmplwi r0, 0
/* 802B4EF0  40 82 02 FC */	bne lbl_802B51EC
/* 802B4EF4  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 802B4EF8  40 82 00 10 */	bne lbl_802B4F08
/* 802B4EFC  88 1C 00 BE */	lbz r0, 0xbe(r28)
/* 802B4F00  28 00 00 01 */	cmplwi r0, 1
/* 802B4F04  41 81 02 E8 */	bgt lbl_802B51EC
lbl_802B4F08:
/* 802B4F08  3C 60 01 00 */	lis r3, 0x0100 /* 0x0100000F@ha */
/* 802B4F0C  38 03 00 0F */	addi r0, r3, 0x000F /* 0x0100000F@l */
/* 802B4F10  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B4F14  88 04 00 1E */	lbz r0, 0x1e(r4)
/* 802B4F18  28 00 00 00 */	cmplwi r0, 0
/* 802B4F1C  40 82 00 14 */	bne lbl_802B4F30
/* 802B4F20  80 6D 85 C8 */	lwz r3, __OSReport_disable-0x50(r13)
/* 802B4F24  48 00 B2 C1 */	bl isTwilightBattle__13Z2SoundObjMgrFv
/* 802B4F28  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802B4F2C  41 82 00 14 */	beq lbl_802B4F40
lbl_802B4F30:
/* 802B4F30  3C 60 01 00 */	lis r3, 0x0100 /* 0x0100001B@ha */
/* 802B4F34  38 03 00 1B */	addi r0, r3, 0x001B /* 0x0100001B@l */
/* 802B4F38  90 01 00 10 */	stw r0, 0x10(r1)
/* 802B4F3C  90 01 00 14 */	stw r0, 0x14(r1)
lbl_802B4F40:
/* 802B4F40  80 7C 00 04 */	lwz r3, 4(r28)
/* 802B4F44  28 03 00 00 */	cmplwi r3, 0
/* 802B4F48  41 82 00 10 */	beq lbl_802B4F58
/* 802B4F4C  80 03 00 18 */	lwz r0, 0x18(r3)
/* 802B4F50  90 01 00 08 */	stw r0, 8(r1)
/* 802B4F54  48 00 00 08 */	b lbl_802B4F5C
lbl_802B4F58:
/* 802B4F58  38 00 FF FF */	li r0, -1
lbl_802B4F5C:
/* 802B4F5C  83 61 00 14 */	lwz r27, 0x14(r1)
/* 802B4F60  7C 00 D8 40 */	cmplw r0, r27
/* 802B4F64  41 82 02 88 */	beq lbl_802B51EC
/* 802B4F68  38 00 00 01 */	li r0, 1
/* 802B4F6C  98 1C 00 BF */	stb r0, 0xbf(r28)
/* 802B4F70  93 61 00 0C */	stw r27, 0xc(r1)
/* 802B4F74  80 6D 85 E0 */	lwz r3, __OSReport_disable-0x38(r13)
/* 802B4F78  38 81 00 0C */	addi r4, r1, 0xc
/* 802B4F7C  38 BC 00 04 */	addi r5, r28, 4
/* 802B4F80  38 C0 00 00 */	li r6, 0
/* 802B4F84  81 83 00 00 */	lwz r12, 0(r3)
/* 802B4F88  81 8C 00 08 */	lwz r12, 8(r12)
/* 802B4F8C  7D 89 03 A6 */	mtctr r12
/* 802B4F90  4E 80 04 21 */	bctrl 
/* 802B4F94  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802B4F98  41 82 02 54 */	beq lbl_802B51EC
/* 802B4F9C  80 6D 85 C8 */	lwz r3, __OSReport_disable-0x50(r13)
/* 802B4FA0  48 00 B1 61 */	bl setBattleInit__13Z2SoundObjMgrFv
/* 802B4FA4  38 00 00 FF */	li r0, 0xff
/* 802B4FA8  98 1C 00 BD */	stb r0, 0xbd(r28)
/* 802B4FAC  80 6D 8D E0 */	lwz r3, mLinkPtr__14Z2CreatureLink(r13)
/* 802B4FB0  88 63 00 C8 */	lbz r3, 0xc8(r3)
/* 802B4FB4  38 03 FF E9 */	addi r0, r3, -23
/* 802B4FB8  7C 1A 07 35 */	extsh. r26, r0
/* 802B4FBC  40 80 00 08 */	bge lbl_802B4FC4
/* 802B4FC0  3B 40 00 00 */	li r26, 0
lbl_802B4FC4:
/* 802B4FC4  7F 40 07 34 */	extsh r0, r26
/* 802B4FC8  88 8D 82 E1 */	lbz r4, struct_80450861+0x0(r13)
/* 802B4FCC  7C 00 20 00 */	cmpw r0, r4
/* 802B4FD0  40 81 00 08 */	ble lbl_802B4FD8
/* 802B4FD4  7C 9A 23 78 */	mr r26, r4
lbl_802B4FD8:
/* 802B4FD8  3C 60 01 00 */	lis r3, 0x0100 /* 0x0100001B@ha */
/* 802B4FDC  38 03 00 1B */	addi r0, r3, 0x001B /* 0x0100001B@l */
/* 802B4FE0  7C 1B 00 00 */	cmpw r27, r0
/* 802B4FE4  41 82 00 F4 */	beq lbl_802B50D8
/* 802B4FE8  40 80 01 1C */	bge lbl_802B5104
/* 802B4FEC  38 03 00 0F */	addi r0, r3, 0xf
/* 802B4FF0  7C 1B 00 00 */	cmpw r27, r0
/* 802B4FF4  41 82 00 08 */	beq lbl_802B4FFC
/* 802B4FF8  48 00 01 0C */	b lbl_802B5104
lbl_802B4FFC:
/* 802B4FFC  7F 43 07 34 */	extsh r3, r26
/* 802B5000  7C 03 20 50 */	subf r0, r3, r4
/* 802B5004  54 1F 06 3E */	clrlwi r31, r0, 0x18
/* 802B5008  7C 60 0E 70 */	srawi r0, r3, 1
/* 802B500C  7C 60 01 94 */	addze r3, r0
/* 802B5010  88 0D 82 E2 */	lbz r0, struct_80450862+0x0(r13)
/* 802B5014  7C 03 00 50 */	subf r0, r3, r0
/* 802B5018  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 802B501C  88 1C 00 D0 */	lbz r0, 0xd0(r28)
/* 802B5020  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 802B5024  40 82 00 84 */	bne lbl_802B50A8
/* 802B5028  7F 83 E3 78 */	mr r3, r28
/* 802B502C  38 9C 00 04 */	addi r4, r28, 4
/* 802B5030  38 A0 00 02 */	li r5, 2
/* 802B5034  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B5038  38 C0 00 00 */	li r6, 0
/* 802B503C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B5040  FC 60 10 90 */	fmr f3, f2
/* 802B5044  4B FF EF A9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B5048  7F 83 E3 78 */	mr r3, r28
/* 802B504C  38 9C 00 04 */	addi r4, r28, 4
/* 802B5050  38 A0 00 03 */	li r5, 3
/* 802B5054  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B5058  38 C0 00 00 */	li r6, 0
/* 802B505C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B5060  FC 60 10 90 */	fmr f3, f2
/* 802B5064  4B FF EF 89 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B5068  7F 83 E3 78 */	mr r3, r28
/* 802B506C  38 9C 00 04 */	addi r4, r28, 4
/* 802B5070  38 A0 00 0C */	li r5, 0xc
/* 802B5074  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B5078  38 C0 00 00 */	li r6, 0
/* 802B507C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B5080  FC 60 10 90 */	fmr f3, f2
/* 802B5084  4B FF EF 69 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B5088  7F 83 E3 78 */	mr r3, r28
/* 802B508C  38 9C 00 04 */	addi r4, r28, 4
/* 802B5090  38 A0 00 0E */	li r5, 0xe
/* 802B5094  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B5098  38 C0 00 00 */	li r6, 0
/* 802B509C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B50A0  FC 60 10 90 */	fmr f3, f2
/* 802B50A4  4B FF EF 49 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
lbl_802B50A8:
/* 802B50A8  88 1C 00 BE */	lbz r0, 0xbe(r28)
/* 802B50AC  28 00 00 00 */	cmplwi r0, 0
/* 802B50B0  41 82 00 54 */	beq lbl_802B5104
/* 802B50B4  7F 83 E3 78 */	mr r3, r28
/* 802B50B8  38 9C 00 04 */	addi r4, r28, 4
/* 802B50BC  88 AD 82 EC */	lbz r5, data_8045086C(r13)
/* 802B50C0  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B50C4  38 C0 00 00 */	li r6, 0
/* 802B50C8  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B50CC  FC 60 10 90 */	fmr f3, f2
/* 802B50D0  4B FF EF 1D */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B50D4  48 00 00 30 */	b lbl_802B5104
lbl_802B50D8:
/* 802B50D8  80 6D 85 C8 */	lwz r3, __OSReport_disable-0x50(r13)
/* 802B50DC  48 00 B1 09 */	bl isTwilightBattle__13Z2SoundObjMgrFv
/* 802B50E0  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 802B50E4  7F 83 E3 78 */	mr r3, r28
/* 802B50E8  4B FF CD 0D */	bl changeSubBgmStatus__8Z2SeqMgrFl
/* 802B50EC  7F 40 07 34 */	extsh r0, r26
/* 802B50F0  7C 00 16 70 */	srawi r0, r0, 2
/* 802B50F4  7C 00 01 94 */	addze r0, r0
/* 802B50F8  20 00 00 19 */	subfic r0, r0, 0x19
/* 802B50FC  54 1F 06 3E */	clrlwi r31, r0, 0x18
/* 802B5100  7F FE FB 78 */	mr r30, r31
lbl_802B5104:
/* 802B5104  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 802B5108  41 82 00 6C */	beq lbl_802B5174
/* 802B510C  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B5110  D0 3C 00 24 */	stfs f1, 0x24(r28)
/* 802B5114  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 802B5118  41 82 00 40 */	beq lbl_802B5158
/* 802B511C  C0 1C 00 24 */	lfs f0, 0x24(r28)
/* 802B5120  90 1C 00 30 */	stw r0, 0x30(r28)
/* 802B5124  C0 62 BF 98 */	lfs f3, lit_3372(r2)
/* 802B5128  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B512C  80 1C 00 30 */	lwz r0, 0x30(r28)
/* 802B5130  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802B5134  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802B5138  3C 00 43 30 */	lis r0, 0x4330
/* 802B513C  90 01 00 18 */	stw r0, 0x18(r1)
/* 802B5140  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802B5144  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B5148  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B514C  D0 1C 00 28 */	stfs f0, 0x28(r28)
/* 802B5150  D0 7C 00 2C */	stfs f3, 0x2c(r28)
/* 802B5154  48 00 00 3C */	b lbl_802B5190
lbl_802B5158:
/* 802B5158  C0 02 BF 98 */	lfs f0, lit_3372(r2)
/* 802B515C  D0 1C 00 24 */	stfs f0, 0x24(r28)
/* 802B5160  D0 3C 00 28 */	stfs f1, 0x28(r28)
/* 802B5164  38 00 00 00 */	li r0, 0
/* 802B5168  90 1C 00 30 */	stw r0, 0x30(r28)
/* 802B516C  D0 3C 00 2C */	stfs f1, 0x2c(r28)
/* 802B5170  48 00 00 20 */	b lbl_802B5190
lbl_802B5174:
/* 802B5174  C0 02 BF 98 */	lfs f0, lit_3372(r2)
/* 802B5178  D0 1C 00 24 */	stfs f0, 0x24(r28)
/* 802B517C  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802B5180  D0 1C 00 28 */	stfs f0, 0x28(r28)
/* 802B5184  38 00 00 00 */	li r0, 0
/* 802B5188  90 1C 00 30 */	stw r0, 0x30(r28)
/* 802B518C  D0 1C 00 2C */	stfs f0, 0x2c(r28)
lbl_802B5190:
/* 802B5190  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 802B5194  41 82 00 40 */	beq lbl_802B51D4
/* 802B5198  C0 1C 00 14 */	lfs f0, 0x14(r28)
/* 802B519C  90 1C 00 20 */	stw r0, 0x20(r28)
/* 802B51A0  C0 62 BF 9C */	lfs f3, lit_3373(r2)
/* 802B51A4  EC 43 00 28 */	fsubs f2, f3, f0
/* 802B51A8  80 1C 00 20 */	lwz r0, 0x20(r28)
/* 802B51AC  C8 22 BF A8 */	lfd f1, lit_3561(r2)
/* 802B51B0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802B51B4  3C 00 43 30 */	lis r0, 0x4330
/* 802B51B8  90 01 00 18 */	stw r0, 0x18(r1)
/* 802B51BC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802B51C0  EC 00 08 28 */	fsubs f0, f0, f1
/* 802B51C4  EC 02 00 24 */	fdivs f0, f2, f0
/* 802B51C8  D0 1C 00 18 */	stfs f0, 0x18(r28)
/* 802B51CC  D0 7C 00 1C */	stfs f3, 0x1c(r28)
/* 802B51D0  48 00 00 1C */	b lbl_802B51EC
lbl_802B51D4:
/* 802B51D4  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802B51D8  D0 1C 00 14 */	stfs f0, 0x14(r28)
/* 802B51DC  D0 1C 00 18 */	stfs f0, 0x18(r28)
/* 802B51E0  38 00 00 00 */	li r0, 0
/* 802B51E4  90 1C 00 20 */	stw r0, 0x20(r28)
/* 802B51E8  D0 1C 00 1C */	stfs f0, 0x1c(r28)
lbl_802B51EC:
/* 802B51EC  39 61 00 40 */	addi r11, r1, 0x40
/* 802B51F0  48 0A D0 2D */	bl _restgpr_26
/* 802B51F4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802B51F8  7C 08 03 A6 */	mtlr r0
/* 802B51FC  38 21 00 40 */	addi r1, r1, 0x40
/* 802B5200  4E 80 00 20 */	blr 

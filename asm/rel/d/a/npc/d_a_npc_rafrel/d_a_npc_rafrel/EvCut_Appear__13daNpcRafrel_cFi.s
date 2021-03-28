lbl_80ABD124:
/* 80ABD124  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80ABD128  7C 08 02 A6 */	mflr r0
/* 80ABD12C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80ABD130  39 61 00 40 */	addi r11, r1, 0x40
/* 80ABD134  4B 8A 50 9C */	b _savegpr_26
/* 80ABD138  7C 7C 1B 78 */	mr r28, r3
/* 80ABD13C  7C 9A 23 78 */	mr r26, r4
/* 80ABD140  3C 60 80 AC */	lis r3, m__19daNpcRafrel_Param_c@ha
/* 80ABD144  3B A3 F9 E0 */	addi r29, r3, m__19daNpcRafrel_Param_c@l
/* 80ABD148  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80ABD14C  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80ABD150  3B 7E 4F F8 */	addi r27, r30, 0x4ff8
/* 80ABD154  7F 63 DB 78 */	mr r3, r27
/* 80ABD158  4B 58 AE 04 */	b getMyNowCutName__16dEvent_manager_cFi
/* 80ABD15C  7C 7F 1B 78 */	mr r31, r3
/* 80ABD160  7F 63 DB 78 */	mr r3, r27
/* 80ABD164  7F 44 D3 78 */	mr r4, r26
/* 80ABD168  4B 58 AB E4 */	b getIsAddvance__16dEvent_manager_cFi
/* 80ABD16C  2C 03 00 00 */	cmpwi r3, 0
/* 80ABD170  41 82 01 BC */	beq lbl_80ABD32C
/* 80ABD174  80 9F 00 00 */	lwz r4, 0(r31)
/* 80ABD178  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303034@ha */
/* 80ABD17C  38 03 30 34 */	addi r0, r3, 0x3034 /* 0x30303034@l */
/* 80ABD180  7C 04 00 00 */	cmpw r4, r0
/* 80ABD184  41 82 00 F0 */	beq lbl_80ABD274
/* 80ABD188  40 80 00 24 */	bge lbl_80ABD1AC
/* 80ABD18C  38 03 30 32 */	addi r0, r3, 0x3032
/* 80ABD190  7C 04 00 00 */	cmpw r4, r0
/* 80ABD194  41 82 00 D4 */	beq lbl_80ABD268
/* 80ABD198  40 80 00 8C */	bge lbl_80ABD224
/* 80ABD19C  38 03 30 31 */	addi r0, r3, 0x3031
/* 80ABD1A0  7C 04 00 00 */	cmpw r4, r0
/* 80ABD1A4  40 80 00 38 */	bge lbl_80ABD1DC
/* 80ABD1A8  48 00 01 84 */	b lbl_80ABD32C
lbl_80ABD1AC:
/* 80ABD1AC  38 03 31 30 */	addi r0, r3, 0x3130
/* 80ABD1B0  7C 04 00 00 */	cmpw r4, r0
/* 80ABD1B4  41 82 01 20 */	beq lbl_80ABD2D4
/* 80ABD1B8  40 80 00 14 */	bge lbl_80ABD1CC
/* 80ABD1BC  38 03 30 3A */	addi r0, r3, 0x303a
/* 80ABD1C0  7C 04 00 00 */	cmpw r4, r0
/* 80ABD1C4  40 80 01 68 */	bge lbl_80ABD32C
/* 80ABD1C8  48 00 00 5C */	b lbl_80ABD224
lbl_80ABD1CC:
/* 80ABD1CC  38 03 31 32 */	addi r0, r3, 0x3132
/* 80ABD1D0  7C 04 00 00 */	cmpw r4, r0
/* 80ABD1D4  40 80 01 58 */	bge lbl_80ABD32C
/* 80ABD1D8  48 00 00 4C */	b lbl_80ABD224
lbl_80ABD1DC:
/* 80ABD1DC  A8 1C 0E 0E */	lha r0, 0xe0e(r28)
/* 80ABD1E0  2C 00 00 00 */	cmpwi r0, 0
/* 80ABD1E4  40 82 00 10 */	bne lbl_80ABD1F4
/* 80ABD1E8  80 1C 0C 9C */	lwz r0, 0xc9c(r28)
/* 80ABD1EC  28 00 00 00 */	cmplwi r0, 0
/* 80ABD1F0  41 82 00 10 */	beq lbl_80ABD200
lbl_80ABD1F4:
/* 80ABD1F4  38 00 00 00 */	li r0, 0
/* 80ABD1F8  B0 1C 0E 0E */	sth r0, 0xe0e(r28)
/* 80ABD1FC  90 1C 0C 9C */	stw r0, 0xc9c(r28)
lbl_80ABD200:
/* 80ABD200  7F 83 E3 78 */	mr r3, r28
/* 80ABD204  A8 9C 0E 0C */	lha r4, 0xe0c(r28)
/* 80ABD208  38 A0 00 00 */	li r5, 0
/* 80ABD20C  4B 69 6B 10 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80ABD210  38 00 00 00 */	li r0, 0
/* 80ABD214  90 1C 09 50 */	stw r0, 0x950(r28)
/* 80ABD218  38 00 00 01 */	li r0, 1
/* 80ABD21C  98 1C 0E 14 */	stb r0, 0xe14(r28)
/* 80ABD220  48 00 01 0C */	b lbl_80ABD32C
lbl_80ABD224:
/* 80ABD224  A8 1C 0E 0E */	lha r0, 0xe0e(r28)
/* 80ABD228  2C 00 00 03 */	cmpwi r0, 3
/* 80ABD22C  40 82 00 10 */	bne lbl_80ABD23C
/* 80ABD230  80 1C 0C 9C */	lwz r0, 0xc9c(r28)
/* 80ABD234  28 00 00 00 */	cmplwi r0, 0
/* 80ABD238  41 82 00 14 */	beq lbl_80ABD24C
lbl_80ABD23C:
/* 80ABD23C  38 00 00 03 */	li r0, 3
/* 80ABD240  B0 1C 0E 0E */	sth r0, 0xe0e(r28)
/* 80ABD244  38 00 00 00 */	li r0, 0
/* 80ABD248  90 1C 0C 9C */	stw r0, 0xc9c(r28)
lbl_80ABD24C:
/* 80ABD24C  7F 83 E3 78 */	mr r3, r28
/* 80ABD250  A8 9C 0E 0C */	lha r4, 0xe0c(r28)
/* 80ABD254  38 A0 00 00 */	li r5, 0
/* 80ABD258  4B 69 6A C4 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80ABD25C  38 00 00 00 */	li r0, 0
/* 80ABD260  90 1C 09 50 */	stw r0, 0x950(r28)
/* 80ABD264  48 00 00 C8 */	b lbl_80ABD32C
lbl_80ABD268:
/* 80ABD268  38 00 00 00 */	li r0, 0
/* 80ABD26C  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 80ABD270  48 00 00 BC */	b lbl_80ABD32C
lbl_80ABD274:
/* 80ABD274  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80ABD278  80 63 00 04 */	lwz r3, 4(r3)
/* 80ABD27C  80 83 00 04 */	lwz r4, 4(r3)
/* 80ABD280  80 64 00 60 */	lwz r3, 0x60(r4)
/* 80ABD284  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80ABD288  80 63 00 08 */	lwz r3, 8(r3)
/* 80ABD28C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80ABD290  60 00 00 01 */	ori r0, r0, 1
/* 80ABD294  90 03 00 0C */	stw r0, 0xc(r3)
/* 80ABD298  80 64 00 60 */	lwz r3, 0x60(r4)
/* 80ABD29C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80ABD2A0  80 63 00 08 */	lwz r3, 8(r3)
/* 80ABD2A4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80ABD2A8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80ABD2AC  90 03 00 0C */	stw r0, 0xc(r3)
/* 80ABD2B0  7F 83 E3 78 */	mr r3, r28
/* 80ABD2B4  38 80 00 0C */	li r4, 0xc
/* 80ABD2B8  C0 3D 03 50 */	lfs f1, 0x350(r29)
/* 80ABD2BC  38 A0 00 00 */	li r5, 0
/* 80ABD2C0  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ABD2C4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ABD2C8  7D 89 03 A6 */	mtctr r12
/* 80ABD2CC  4E 80 04 21 */	bctrl 
/* 80ABD2D0  48 00 00 5C */	b lbl_80ABD32C
lbl_80ABD2D4:
/* 80ABD2D4  38 00 00 00 */	li r0, 0
/* 80ABD2D8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80ABD2DC  38 7C 09 F8 */	addi r3, r28, 0x9f8
/* 80ABD2E0  38 81 00 10 */	addi r4, r1, 0x10
/* 80ABD2E4  4B 78 D2 44 */	b getEventId__10dMsgFlow_cFPi
/* 80ABD2E8  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80ABD2EC  28 00 00 01 */	cmplwi r0, 1
/* 80ABD2F0  40 82 00 3C */	bne lbl_80ABD32C
/* 80ABD2F4  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80ABD2F8  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80ABD2FC  38 A0 00 00 */	li r5, 0
/* 80ABD300  38 C0 FF FF */	li r6, -1
/* 80ABD304  38 E0 FF FF */	li r7, -1
/* 80ABD308  39 00 00 00 */	li r8, 0
/* 80ABD30C  39 20 00 00 */	li r9, 0
/* 80ABD310  4B 55 E8 D8 */	b fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 80ABD314  90 7C 0E 00 */	stw r3, 0xe00(r28)
/* 80ABD318  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80ABD31C  80 9C 0E 00 */	lwz r4, 0xe00(r28)
/* 80ABD320  4B 58 63 CC */	b setPtI_Id__14dEvt_control_cFUi
/* 80ABD324  38 00 FF FF */	li r0, -1
/* 80ABD328  90 1C 0E 00 */	stw r0, 0xe00(r28)
lbl_80ABD32C:
/* 80ABD32C  80 9F 00 00 */	lwz r4, 0(r31)
/* 80ABD330  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303034@ha */
/* 80ABD334  38 03 30 34 */	addi r0, r3, 0x3034 /* 0x30303034@l */
/* 80ABD338  7C 04 00 00 */	cmpw r4, r0
/* 80ABD33C  41 82 03 FC */	beq lbl_80ABD738
/* 80ABD340  40 80 00 24 */	bge lbl_80ABD364
/* 80ABD344  38 03 30 32 */	addi r0, r3, 0x3032
/* 80ABD348  7C 04 00 00 */	cmpw r4, r0
/* 80ABD34C  41 82 02 4C */	beq lbl_80ABD598
/* 80ABD350  40 80 00 68 */	bge lbl_80ABD3B8
/* 80ABD354  38 03 30 31 */	addi r0, r3, 0x3031
/* 80ABD358  7C 04 00 00 */	cmpw r4, r0
/* 80ABD35C  40 80 00 38 */	bge lbl_80ABD394
/* 80ABD360  48 00 03 F0 */	b lbl_80ABD750
lbl_80ABD364:
/* 80ABD364  38 03 31 30 */	addi r0, r3, 0x3130
/* 80ABD368  7C 04 00 00 */	cmpw r4, r0
/* 80ABD36C  41 82 03 D4 */	beq lbl_80ABD740
/* 80ABD370  40 80 00 14 */	bge lbl_80ABD384
/* 80ABD374  38 03 30 3A */	addi r0, r3, 0x303a
/* 80ABD378  7C 04 00 00 */	cmpw r4, r0
/* 80ABD37C  40 80 03 D4 */	bge lbl_80ABD750
/* 80ABD380  48 00 00 38 */	b lbl_80ABD3B8
lbl_80ABD384:
/* 80ABD384  38 03 31 32 */	addi r0, r3, 0x3132
/* 80ABD388  7C 04 00 00 */	cmpw r4, r0
/* 80ABD38C  40 80 03 C4 */	bge lbl_80ABD750
/* 80ABD390  48 00 00 28 */	b lbl_80ABD3B8
lbl_80ABD394:
/* 80ABD394  7F 83 E3 78 */	mr r3, r28
/* 80ABD398  38 80 00 00 */	li r4, 0
/* 80ABD39C  38 A0 00 01 */	li r5, 1
/* 80ABD3A0  38 C0 00 00 */	li r6, 0
/* 80ABD3A4  4B 69 69 E0 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80ABD3A8  2C 03 00 00 */	cmpwi r3, 0
/* 80ABD3AC  41 82 03 A4 */	beq lbl_80ABD750
/* 80ABD3B0  38 60 00 01 */	li r3, 1
/* 80ABD3B4  48 00 04 D4 */	b lbl_80ABD888
lbl_80ABD3B8:
/* 80ABD3B8  7F 83 E3 78 */	mr r3, r28
/* 80ABD3BC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80ABD3C0  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 80ABD3C4  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80ABD3C8  4B 55 D3 48 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80ABD3CC  A8 9C 08 F2 */	lha r4, 0x8f2(r28)
/* 80ABD3D0  7C 60 07 34 */	extsh r0, r3
/* 80ABD3D4  7C 04 00 00 */	cmpw r4, r0
/* 80ABD3D8  40 82 00 40 */	bne lbl_80ABD418
/* 80ABD3DC  7F 83 E3 78 */	mr r3, r28
/* 80ABD3E0  38 80 00 00 */	li r4, 0
/* 80ABD3E4  38 A0 00 01 */	li r5, 1
/* 80ABD3E8  38 C0 00 00 */	li r6, 0
/* 80ABD3EC  4B 69 69 98 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80ABD3F0  2C 03 00 00 */	cmpwi r3, 0
/* 80ABD3F4  41 82 03 5C */	beq lbl_80ABD750
/* 80ABD3F8  A0 1C 0A 32 */	lhz r0, 0xa32(r28)
/* 80ABD3FC  7C 00 07 35 */	extsh. r0, r0
/* 80ABD400  40 81 00 10 */	ble lbl_80ABD410
/* 80ABD404  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80ABD408  7F 84 E3 78 */	mr r4, r28
/* 80ABD40C  4B 58 51 0C */	b reset__14dEvt_control_cFPv
lbl_80ABD410:
/* 80ABD410  38 60 00 01 */	li r3, 1
/* 80ABD414  48 00 04 74 */	b lbl_80ABD888
lbl_80ABD418:
/* 80ABD418  7F 83 E3 78 */	mr r3, r28
/* 80ABD41C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80ABD420  4B 55 D2 F0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80ABD424  7C 7E 1B 78 */	mr r30, r3
/* 80ABD428  80 1C 09 6C */	lwz r0, 0x96c(r28)
/* 80ABD42C  2C 00 00 00 */	cmpwi r0, 0
/* 80ABD430  40 82 00 D4 */	bne lbl_80ABD504
/* 80ABD434  C0 5D 03 58 */	lfs f2, 0x358(r29)
/* 80ABD438  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 80ABD43C  7C 00 F0 50 */	subf r0, r0, r30
/* 80ABD440  7C 00 07 34 */	extsh r0, r0
/* 80ABD444  C8 3D 03 70 */	lfd f1, 0x370(r29)
/* 80ABD448  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80ABD44C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80ABD450  3C 00 43 30 */	lis r0, 0x4330
/* 80ABD454  90 01 00 18 */	stw r0, 0x18(r1)
/* 80ABD458  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80ABD45C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80ABD460  EC 02 00 32 */	fmuls f0, f2, f0
/* 80ABD464  FC 00 02 10 */	fabs f0, f0
/* 80ABD468  FC 00 00 18 */	frsp f0, f0
/* 80ABD46C  FC 00 00 1E */	fctiwz f0, f0
/* 80ABD470  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80ABD474  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80ABD478  2C 00 00 28 */	cmpwi r0, 0x28
/* 80ABD47C  40 81 00 40 */	ble lbl_80ABD4BC
/* 80ABD480  7F 83 E3 78 */	mr r3, r28
/* 80ABD484  38 80 00 07 */	li r4, 7
/* 80ABD488  C0 3D 03 50 */	lfs f1, 0x350(r29)
/* 80ABD48C  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ABD490  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ABD494  7D 89 03 A6 */	mtctr r12
/* 80ABD498  4E 80 04 21 */	bctrl 
/* 80ABD49C  7F 83 E3 78 */	mr r3, r28
/* 80ABD4A0  38 80 00 12 */	li r4, 0x12
/* 80ABD4A4  C0 3D 03 50 */	lfs f1, 0x350(r29)
/* 80ABD4A8  38 A0 00 00 */	li r5, 0
/* 80ABD4AC  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ABD4B0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ABD4B4  7D 89 03 A6 */	mtctr r12
/* 80ABD4B8  4E 80 04 21 */	bctrl 
lbl_80ABD4BC:
/* 80ABD4BC  B3 DC 09 96 */	sth r30, 0x996(r28)
/* 80ABD4C0  38 00 00 00 */	li r0, 0
/* 80ABD4C4  90 1C 09 68 */	stw r0, 0x968(r28)
/* 80ABD4C8  A8 7C 08 F2 */	lha r3, 0x8f2(r28)
/* 80ABD4CC  A8 1C 09 96 */	lha r0, 0x996(r28)
/* 80ABD4D0  7C 03 00 00 */	cmpw r3, r0
/* 80ABD4D4  40 82 00 10 */	bne lbl_80ABD4E4
/* 80ABD4D8  80 7C 09 6C */	lwz r3, 0x96c(r28)
/* 80ABD4DC  38 03 00 01 */	addi r0, r3, 1
/* 80ABD4E0  90 1C 09 6C */	stw r0, 0x96c(r28)
lbl_80ABD4E4:
/* 80ABD4E4  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 80ABD4E8  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80ABD4EC  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ABD4F0  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80ABD4F4  80 7C 09 6C */	lwz r3, 0x96c(r28)
/* 80ABD4F8  38 03 00 01 */	addi r0, r3, 1
/* 80ABD4FC  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 80ABD500  48 00 00 60 */	b lbl_80ABD560
lbl_80ABD504:
/* 80ABD504  2C 00 00 01 */	cmpwi r0, 1
/* 80ABD508  40 82 00 58 */	bne lbl_80ABD560
/* 80ABD50C  7F 83 E3 78 */	mr r3, r28
/* 80ABD510  A8 9C 09 96 */	lha r4, 0x996(r28)
/* 80ABD514  C0 3D 03 5C */	lfs f1, 0x35c(r29)
/* 80ABD518  38 A0 00 00 */	li r5, 0
/* 80ABD51C  4B 69 69 D8 */	b turn__8daNpcF_cFsfi
/* 80ABD520  2C 03 00 00 */	cmpwi r3, 0
/* 80ABD524  41 82 00 2C */	beq lbl_80ABD550
/* 80ABD528  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ABD52C  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80ABD530  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ABD534  B0 1C 08 F2 */	sth r0, 0x8f2(r28)
/* 80ABD538  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ABD53C  B0 1C 08 F8 */	sth r0, 0x8f8(r28)
/* 80ABD540  80 7C 09 6C */	lwz r3, 0x96c(r28)
/* 80ABD544  38 03 00 01 */	addi r0, r3, 1
/* 80ABD548  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 80ABD54C  48 00 00 14 */	b lbl_80ABD560
lbl_80ABD550:
/* 80ABD550  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ABD554  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80ABD558  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ABD55C  B0 1C 08 F2 */	sth r0, 0x8f2(r28)
lbl_80ABD560:
/* 80ABD560  80 1C 09 6C */	lwz r0, 0x96c(r28)
/* 80ABD564  2C 00 00 01 */	cmpwi r0, 1
/* 80ABD568  40 81 01 E8 */	ble lbl_80ABD750
/* 80ABD56C  7F 83 E3 78 */	mr r3, r28
/* 80ABD570  38 80 00 00 */	li r4, 0
/* 80ABD574  C0 3D 03 50 */	lfs f1, 0x350(r29)
/* 80ABD578  38 A0 00 00 */	li r5, 0
/* 80ABD57C  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ABD580  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ABD584  7D 89 03 A6 */	mtctr r12
/* 80ABD588  4E 80 04 21 */	bctrl 
/* 80ABD58C  38 00 00 00 */	li r0, 0
/* 80ABD590  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 80ABD594  48 00 01 BC */	b lbl_80ABD750
lbl_80ABD598:
/* 80ABD598  7F 83 E3 78 */	mr r3, r28
/* 80ABD59C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80ABD5A0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80ABD5A4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80ABD5A8  4B 55 D1 68 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80ABD5AC  7C 7E 1B 78 */	mr r30, r3
/* 80ABD5B0  80 1C 09 6C */	lwz r0, 0x96c(r28)
/* 80ABD5B4  2C 00 00 00 */	cmpwi r0, 0
/* 80ABD5B8  40 82 00 D4 */	bne lbl_80ABD68C
/* 80ABD5BC  C0 5D 03 58 */	lfs f2, 0x358(r29)
/* 80ABD5C0  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 80ABD5C4  7C 00 F0 50 */	subf r0, r0, r30
/* 80ABD5C8  7C 00 07 34 */	extsh r0, r0
/* 80ABD5CC  C8 3D 03 70 */	lfd f1, 0x370(r29)
/* 80ABD5D0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80ABD5D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80ABD5D8  3C 00 43 30 */	lis r0, 0x4330
/* 80ABD5DC  90 01 00 20 */	stw r0, 0x20(r1)
/* 80ABD5E0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80ABD5E4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80ABD5E8  EC 02 00 32 */	fmuls f0, f2, f0
/* 80ABD5EC  FC 00 02 10 */	fabs f0, f0
/* 80ABD5F0  FC 00 00 18 */	frsp f0, f0
/* 80ABD5F4  FC 00 00 1E */	fctiwz f0, f0
/* 80ABD5F8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80ABD5FC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80ABD600  2C 00 00 28 */	cmpwi r0, 0x28
/* 80ABD604  40 81 00 40 */	ble lbl_80ABD644
/* 80ABD608  7F 83 E3 78 */	mr r3, r28
/* 80ABD60C  38 80 00 07 */	li r4, 7
/* 80ABD610  C0 3D 03 50 */	lfs f1, 0x350(r29)
/* 80ABD614  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ABD618  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ABD61C  7D 89 03 A6 */	mtctr r12
/* 80ABD620  4E 80 04 21 */	bctrl 
/* 80ABD624  7F 83 E3 78 */	mr r3, r28
/* 80ABD628  38 80 00 11 */	li r4, 0x11
/* 80ABD62C  C0 3D 03 50 */	lfs f1, 0x350(r29)
/* 80ABD630  38 A0 00 00 */	li r5, 0
/* 80ABD634  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ABD638  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ABD63C  7D 89 03 A6 */	mtctr r12
/* 80ABD640  4E 80 04 21 */	bctrl 
lbl_80ABD644:
/* 80ABD644  B3 DC 09 96 */	sth r30, 0x996(r28)
/* 80ABD648  38 00 00 00 */	li r0, 0
/* 80ABD64C  90 1C 09 68 */	stw r0, 0x968(r28)
/* 80ABD650  A8 7C 08 F2 */	lha r3, 0x8f2(r28)
/* 80ABD654  A8 1C 09 96 */	lha r0, 0x996(r28)
/* 80ABD658  7C 03 00 00 */	cmpw r3, r0
/* 80ABD65C  40 82 00 10 */	bne lbl_80ABD66C
/* 80ABD660  80 7C 09 6C */	lwz r3, 0x96c(r28)
/* 80ABD664  38 03 00 01 */	addi r0, r3, 1
/* 80ABD668  90 1C 09 6C */	stw r0, 0x96c(r28)
lbl_80ABD66C:
/* 80ABD66C  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 80ABD670  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80ABD674  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ABD678  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80ABD67C  80 7C 09 6C */	lwz r3, 0x96c(r28)
/* 80ABD680  38 03 00 01 */	addi r0, r3, 1
/* 80ABD684  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 80ABD688  48 00 00 60 */	b lbl_80ABD6E8
lbl_80ABD68C:
/* 80ABD68C  2C 00 00 01 */	cmpwi r0, 1
/* 80ABD690  40 82 00 58 */	bne lbl_80ABD6E8
/* 80ABD694  7F 83 E3 78 */	mr r3, r28
/* 80ABD698  A8 9C 09 96 */	lha r4, 0x996(r28)
/* 80ABD69C  C0 3D 03 A8 */	lfs f1, 0x3a8(r29)
/* 80ABD6A0  38 A0 00 00 */	li r5, 0
/* 80ABD6A4  4B 69 68 50 */	b turn__8daNpcF_cFsfi
/* 80ABD6A8  2C 03 00 00 */	cmpwi r3, 0
/* 80ABD6AC  41 82 00 2C */	beq lbl_80ABD6D8
/* 80ABD6B0  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ABD6B4  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80ABD6B8  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ABD6BC  B0 1C 08 F2 */	sth r0, 0x8f2(r28)
/* 80ABD6C0  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ABD6C4  B0 1C 08 F8 */	sth r0, 0x8f8(r28)
/* 80ABD6C8  80 7C 09 6C */	lwz r3, 0x96c(r28)
/* 80ABD6CC  38 03 00 01 */	addi r0, r3, 1
/* 80ABD6D0  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 80ABD6D4  48 00 00 14 */	b lbl_80ABD6E8
lbl_80ABD6D8:
/* 80ABD6D8  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ABD6DC  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80ABD6E0  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80ABD6E4  B0 1C 08 F2 */	sth r0, 0x8f2(r28)
lbl_80ABD6E8:
/* 80ABD6E8  80 1C 09 6C */	lwz r0, 0x96c(r28)
/* 80ABD6EC  2C 00 00 01 */	cmpwi r0, 1
/* 80ABD6F0  40 81 00 60 */	ble lbl_80ABD750
/* 80ABD6F4  7F 83 E3 78 */	mr r3, r28
/* 80ABD6F8  38 80 00 07 */	li r4, 7
/* 80ABD6FC  C0 3D 03 50 */	lfs f1, 0x350(r29)
/* 80ABD700  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ABD704  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ABD708  7D 89 03 A6 */	mtctr r12
/* 80ABD70C  4E 80 04 21 */	bctrl 
/* 80ABD710  7F 83 E3 78 */	mr r3, r28
/* 80ABD714  38 80 00 00 */	li r4, 0
/* 80ABD718  C0 3D 03 50 */	lfs f1, 0x350(r29)
/* 80ABD71C  38 A0 00 00 */	li r5, 0
/* 80ABD720  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ABD724  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ABD728  7D 89 03 A6 */	mtctr r12
/* 80ABD72C  4E 80 04 21 */	bctrl 
/* 80ABD730  38 60 00 01 */	li r3, 1
/* 80ABD734  48 00 01 54 */	b lbl_80ABD888
lbl_80ABD738:
/* 80ABD738  38 60 00 01 */	li r3, 1
/* 80ABD73C  48 00 01 4C */	b lbl_80ABD888
lbl_80ABD740:
/* 80ABD740  38 00 00 01 */	li r0, 1
/* 80ABD744  98 1C 09 EB */	stb r0, 0x9eb(r28)
/* 80ABD748  38 60 00 01 */	li r3, 1
/* 80ABD74C  48 00 01 3C */	b lbl_80ABD888
lbl_80ABD750:
/* 80ABD750  83 7C 09 50 */	lwz r27, 0x950(r28)
/* 80ABD754  7F 83 E3 78 */	mr r3, r28
/* 80ABD758  38 81 00 0C */	addi r4, r1, 0xc
/* 80ABD75C  38 A1 00 08 */	addi r5, r1, 8
/* 80ABD760  7F 86 E3 78 */	mr r6, r28
/* 80ABD764  38 E0 00 00 */	li r7, 0
/* 80ABD768  4B 69 5F B0 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80ABD76C  2C 03 00 00 */	cmpwi r3, 0
/* 80ABD770  41 82 00 50 */	beq lbl_80ABD7C0
/* 80ABD774  88 1C 09 EB */	lbz r0, 0x9eb(r28)
/* 80ABD778  28 00 00 00 */	cmplwi r0, 0
/* 80ABD77C  40 82 01 08 */	bne lbl_80ABD884
/* 80ABD780  7F 83 E3 78 */	mr r3, r28
/* 80ABD784  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80ABD788  C0 3D 03 50 */	lfs f1, 0x350(r29)
/* 80ABD78C  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ABD790  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ABD794  7D 89 03 A6 */	mtctr r12
/* 80ABD798  4E 80 04 21 */	bctrl 
/* 80ABD79C  7F 83 E3 78 */	mr r3, r28
/* 80ABD7A0  80 81 00 08 */	lwz r4, 8(r1)
/* 80ABD7A4  C0 3D 03 50 */	lfs f1, 0x350(r29)
/* 80ABD7A8  38 A0 00 00 */	li r5, 0
/* 80ABD7AC  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ABD7B0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ABD7B4  7D 89 03 A6 */	mtctr r12
/* 80ABD7B8  4E 80 04 21 */	bctrl 
/* 80ABD7BC  48 00 00 C8 */	b lbl_80ABD884
lbl_80ABD7C0:
/* 80ABD7C0  2C 1B 00 00 */	cmpwi r27, 0
/* 80ABD7C4  41 82 00 C0 */	beq lbl_80ABD884
/* 80ABD7C8  80 1C 09 50 */	lwz r0, 0x950(r28)
/* 80ABD7CC  2C 00 00 00 */	cmpwi r0, 0
/* 80ABD7D0  40 82 00 B4 */	bne lbl_80ABD884
/* 80ABD7D4  88 1C 09 EB */	lbz r0, 0x9eb(r28)
/* 80ABD7D8  28 00 00 00 */	cmplwi r0, 0
/* 80ABD7DC  40 82 00 A8 */	bne lbl_80ABD884
/* 80ABD7E0  A8 1C 09 DE */	lha r0, 0x9de(r28)
/* 80ABD7E4  2C 00 00 02 */	cmpwi r0, 2
/* 80ABD7E8  41 82 00 40 */	beq lbl_80ABD828
/* 80ABD7EC  40 80 00 10 */	bge lbl_80ABD7FC
/* 80ABD7F0  2C 00 00 01 */	cmpwi r0, 1
/* 80ABD7F4  40 80 00 14 */	bge lbl_80ABD808
/* 80ABD7F8  48 00 00 70 */	b lbl_80ABD868
lbl_80ABD7FC:
/* 80ABD7FC  2C 00 00 04 */	cmpwi r0, 4
/* 80ABD800  40 80 00 68 */	bge lbl_80ABD868
/* 80ABD804  48 00 00 44 */	b lbl_80ABD848
lbl_80ABD808:
/* 80ABD808  7F 83 E3 78 */	mr r3, r28
/* 80ABD80C  38 80 00 04 */	li r4, 4
/* 80ABD810  C0 3D 03 50 */	lfs f1, 0x350(r29)
/* 80ABD814  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ABD818  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ABD81C  7D 89 03 A6 */	mtctr r12
/* 80ABD820  4E 80 04 21 */	bctrl 
/* 80ABD824  48 00 00 60 */	b lbl_80ABD884
lbl_80ABD828:
/* 80ABD828  7F 83 E3 78 */	mr r3, r28
/* 80ABD82C  38 80 00 05 */	li r4, 5
/* 80ABD830  C0 3D 03 50 */	lfs f1, 0x350(r29)
/* 80ABD834  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ABD838  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ABD83C  7D 89 03 A6 */	mtctr r12
/* 80ABD840  4E 80 04 21 */	bctrl 
/* 80ABD844  48 00 00 40 */	b lbl_80ABD884
lbl_80ABD848:
/* 80ABD848  7F 83 E3 78 */	mr r3, r28
/* 80ABD84C  38 80 00 06 */	li r4, 6
/* 80ABD850  C0 3D 03 50 */	lfs f1, 0x350(r29)
/* 80ABD854  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ABD858  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ABD85C  7D 89 03 A6 */	mtctr r12
/* 80ABD860  4E 80 04 21 */	bctrl 
/* 80ABD864  48 00 00 20 */	b lbl_80ABD884
lbl_80ABD868:
/* 80ABD868  7F 83 E3 78 */	mr r3, r28
/* 80ABD86C  38 80 00 07 */	li r4, 7
/* 80ABD870  C0 3D 03 50 */	lfs f1, 0x350(r29)
/* 80ABD874  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80ABD878  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ABD87C  7D 89 03 A6 */	mtctr r12
/* 80ABD880  4E 80 04 21 */	bctrl 
lbl_80ABD884:
/* 80ABD884  38 60 00 00 */	li r3, 0
lbl_80ABD888:
/* 80ABD888  39 61 00 40 */	addi r11, r1, 0x40
/* 80ABD88C  4B 8A 49 90 */	b _restgpr_26
/* 80ABD890  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80ABD894  7C 08 03 A6 */	mtlr r0
/* 80ABD898  38 21 00 40 */	addi r1, r1, 0x40
/* 80ABD89C  4E 80 00 20 */	blr 

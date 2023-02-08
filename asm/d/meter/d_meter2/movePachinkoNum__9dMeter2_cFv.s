lbl_80224680:
/* 80224680  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80224684  7C 08 02 A6 */	mflr r0
/* 80224688  90 01 00 24 */	stw r0, 0x24(r1)
/* 8022468C  39 61 00 20 */	addi r11, r1, 0x20
/* 80224690  48 13 DB 4D */	bl _savegpr_29
/* 80224694  7C 7F 1B 78 */	mr r31, r3
/* 80224698  3C 60 80 43 */	lis r3, g_mwHIO@ha /* 0x8042E86C@ha */
/* 8022469C  38 63 E8 6C */	addi r3, r3, g_mwHIO@l /* 0x8042E86C@l */
/* 802246A0  4B FD 57 85 */	bl getPachinkoFlag__9dMw_HIO_cFv
/* 802246A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802246A8  41 82 00 40 */	beq lbl_802246E8
/* 802246AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802246B0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802246B4  88 04 00 F4 */	lbz r0, 0xf4(r4)
/* 802246B8  28 00 00 32 */	cmplwi r0, 0x32
/* 802246BC  41 82 00 10 */	beq lbl_802246CC
/* 802246C0  A8 64 5D F6 */	lha r3, 0x5df6(r4)
/* 802246C4  38 03 00 32 */	addi r0, r3, 0x32
/* 802246C8  B0 04 5D F6 */	sth r0, 0x5df6(r4)
lbl_802246CC:
/* 802246CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802246D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802246D4  A8 03 5D F6 */	lha r0, 0x5df6(r3)
/* 802246D8  2C 00 00 00 */	cmpwi r0, 0
/* 802246DC  40 80 00 0C */	bge lbl_802246E8
/* 802246E0  38 00 00 00 */	li r0, 0
/* 802246E4  B0 03 5D F6 */	sth r0, 0x5df6(r3)
lbl_802246E8:
/* 802246E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802246EC  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802246F0  A8 A4 5D F6 */	lha r5, 0x5df6(r4)
/* 802246F4  7C A0 07 35 */	extsh. r0, r5
/* 802246F8  40 82 00 20 */	bne lbl_80224718
/* 802246FC  88 1F 01 FC */	lbz r0, 0x1fc(r31)
/* 80224700  28 00 00 32 */	cmplwi r0, 0x32
/* 80224704  40 82 00 14 */	bne lbl_80224718
/* 80224708  88 64 00 F4 */	lbz r3, 0xf4(r4)
/* 8022470C  88 1F 01 DB */	lbz r0, 0x1db(r31)
/* 80224710  7C 00 18 40 */	cmplw r0, r3
/* 80224714  41 82 01 B8 */	beq lbl_802248CC
lbl_80224718:
/* 80224718  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8022471C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80224720  88 03 00 F4 */	lbz r0, 0xf4(r3)
/* 80224724  7C 00 2A 14 */	add r0, r0, r5
/* 80224728  7C 05 07 35 */	extsh. r5, r0
/* 8022472C  38 00 00 00 */	li r0, 0
/* 80224730  B0 04 5D F6 */	sth r0, 0x5df6(r4)
/* 80224734  40 80 00 08 */	bge lbl_8022473C
/* 80224738  38 A0 00 00 */	li r5, 0
lbl_8022473C:
/* 8022473C  7C A0 07 34 */	extsh r0, r5
/* 80224740  2C 00 00 32 */	cmpwi r0, 0x32
/* 80224744  40 81 00 08 */	ble lbl_8022474C
/* 80224748  38 A0 00 32 */	li r5, 0x32
lbl_8022474C:
/* 8022474C  98 A3 00 F4 */	stb r5, 0xf4(r3)
/* 80224750  38 00 00 32 */	li r0, 0x32
/* 80224754  98 1F 01 FC */	stb r0, 0x1fc(r31)
/* 80224758  88 03 00 F4 */	lbz r0, 0xf4(r3)
/* 8022475C  88 9F 01 DB */	lbz r4, 0x1db(r31)
/* 80224760  7C 04 00 40 */	cmplw r4, r0
/* 80224764  40 80 01 20 */	bge lbl_80224884
/* 80224768  38 04 00 01 */	addi r0, r4, 1
/* 8022476C  98 1F 01 DB */	stb r0, 0x1db(r31)
/* 80224770  88 1F 01 EB */	lbz r0, 0x1eb(r31)
/* 80224774  60 00 00 04 */	ori r0, r0, 4
/* 80224778  98 1F 01 EB */	stb r0, 0x1eb(r31)
/* 8022477C  88 9F 01 EB */	lbz r4, 0x1eb(r31)
/* 80224780  54 80 F7 FF */	rlwinm. r0, r4, 0x1e, 0x1f, 0x1f
/* 80224784  41 82 01 0C */	beq lbl_80224890
/* 80224788  88 63 00 F4 */	lbz r3, 0xf4(r3)
/* 8022478C  88 1F 01 DB */	lbz r0, 0x1db(r31)
/* 80224790  7C 00 18 40 */	cmplw r0, r3
/* 80224794  41 82 00 80 */	beq lbl_80224814
/* 80224798  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 8022479C  40 82 00 68 */	bne lbl_80224804
/* 802247A0  7F E3 FB 78 */	mr r3, r31
/* 802247A4  48 00 12 C1 */	bl isPachinkoEquip__9dMeter2_cFv
/* 802247A8  2C 03 00 00 */	cmpwi r3, 0
/* 802247AC  41 82 00 58 */	beq lbl_80224804
/* 802247B0  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 802247B4  4B FF 69 15 */	bl isButtonVisible__13dMeter2Draw_cFv
/* 802247B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802247BC  41 82 00 48 */	beq lbl_80224804
/* 802247C0  88 1F 01 EB */	lbz r0, 0x1eb(r31)
/* 802247C4  60 00 00 01 */	ori r0, r0, 1
/* 802247C8  98 1F 01 EB */	stb r0, 0x1eb(r31)
/* 802247CC  38 00 00 1B */	li r0, 0x1b
/* 802247D0  90 01 00 0C */	stw r0, 0xc(r1)
/* 802247D4  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 802247D8  38 81 00 0C */	addi r4, r1, 0xc
/* 802247DC  38 A0 00 00 */	li r5, 0
/* 802247E0  38 C0 00 00 */	li r6, 0
/* 802247E4  38 E0 00 00 */	li r7, 0
/* 802247E8  C0 22 AF CC */	lfs f1, lit_4663(r2)
/* 802247EC  FC 40 08 90 */	fmr f2, f1
/* 802247F0  C0 62 AF D0 */	lfs f3, lit_4837(r2)
/* 802247F4  FC 80 18 90 */	fmr f4, f3
/* 802247F8  39 00 00 00 */	li r8, 0
/* 802247FC  48 08 71 89 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80224800  48 00 00 90 */	b lbl_80224890
lbl_80224804:
/* 80224804  88 1F 01 EB */	lbz r0, 0x1eb(r31)
/* 80224808  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 8022480C  98 1F 01 EB */	stb r0, 0x1eb(r31)
/* 80224810  48 00 00 80 */	b lbl_80224890
lbl_80224814:
/* 80224814  7F E3 FB 78 */	mr r3, r31
/* 80224818  48 00 12 4D */	bl isPachinkoEquip__9dMeter2_cFv
/* 8022481C  2C 03 00 00 */	cmpwi r3, 0
/* 80224820  41 82 00 48 */	beq lbl_80224868
/* 80224824  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 80224828  4B FF 68 A1 */	bl isButtonVisible__13dMeter2Draw_cFv
/* 8022482C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80224830  41 82 00 38 */	beq lbl_80224868
/* 80224834  38 00 00 1C */	li r0, 0x1c
/* 80224838  90 01 00 08 */	stw r0, 8(r1)
/* 8022483C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80224840  38 81 00 08 */	addi r4, r1, 8
/* 80224844  38 A0 00 00 */	li r5, 0
/* 80224848  38 C0 00 00 */	li r6, 0
/* 8022484C  38 E0 00 00 */	li r7, 0
/* 80224850  C0 22 AF CC */	lfs f1, lit_4663(r2)
/* 80224854  FC 40 08 90 */	fmr f2, f1
/* 80224858  C0 62 AF D0 */	lfs f3, lit_4837(r2)
/* 8022485C  FC 80 18 90 */	fmr f4, f3
/* 80224860  39 00 00 00 */	li r8, 0
/* 80224864  48 08 71 21 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80224868:
/* 80224868  88 1F 01 EB */	lbz r0, 0x1eb(r31)
/* 8022486C  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80224870  98 1F 01 EB */	stb r0, 0x1eb(r31)
/* 80224874  88 1F 01 EB */	lbz r0, 0x1eb(r31)
/* 80224878  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 8022487C  98 1F 01 EB */	stb r0, 0x1eb(r31)
/* 80224880  48 00 00 10 */	b lbl_80224890
lbl_80224884:
/* 80224884  40 81 00 0C */	ble lbl_80224890
/* 80224888  38 04 FF FF */	addi r0, r4, -1
/* 8022488C  98 1F 01 DB */	stb r0, 0x1db(r31)
lbl_80224890:
/* 80224890  3B A0 00 00 */	li r29, 0
/* 80224894  3B C0 00 00 */	li r30, 0
lbl_80224898:
/* 80224898  38 1E 01 D2 */	addi r0, r30, 0x1d2
/* 8022489C  7C 1F 00 AE */	lbzx r0, r31, r0
/* 802248A0  28 00 00 4B */	cmplwi r0, 0x4b
/* 802248A4  40 82 00 18 */	bne lbl_802248BC
/* 802248A8  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 802248AC  57 A4 06 3E */	clrlwi r4, r29, 0x18
/* 802248B0  88 BF 01 DB */	lbz r5, 0x1db(r31)
/* 802248B4  38 C0 00 32 */	li r6, 0x32
/* 802248B8  4B FF 62 CD */	bl setItemNum__13dMeter2Draw_cFUcUcUc
lbl_802248BC:
/* 802248BC  3B BD 00 01 */	addi r29, r29, 1
/* 802248C0  2C 1D 00 02 */	cmpwi r29, 2
/* 802248C4  3B DE 00 02 */	addi r30, r30, 2
/* 802248C8  41 80 FF D0 */	blt lbl_80224898
lbl_802248CC:
/* 802248CC  39 61 00 20 */	addi r11, r1, 0x20
/* 802248D0  48 13 D9 59 */	bl _restgpr_29
/* 802248D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802248D8  7C 08 03 A6 */	mtlr r0
/* 802248DC  38 21 00 20 */	addi r1, r1, 0x20
/* 802248E0  4E 80 00 20 */	blr 

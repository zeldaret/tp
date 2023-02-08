lbl_80106A38:
/* 80106A38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80106A3C  7C 08 02 A6 */	mflr r0
/* 80106A40  90 01 00 24 */	stw r0, 0x24(r1)
/* 80106A44  39 61 00 20 */	addi r11, r1, 0x20
/* 80106A48  48 25 B7 95 */	bl _savegpr_29
/* 80106A4C  7C 7F 1B 78 */	mr r31, r3
/* 80106A50  7C 9D 23 78 */	mr r29, r4
/* 80106A54  A0 03 2F DC */	lhz r0, 0x2fdc(r3)
/* 80106A58  28 00 01 03 */	cmplwi r0, 0x103
/* 80106A5C  41 82 00 14 */	beq lbl_80106A70
/* 80106A60  38 80 00 01 */	li r4, 1
/* 80106A64  38 A0 00 01 */	li r5, 1
/* 80106A68  4B FB A8 75 */	bl deleteEquipItem__9daAlink_cFii
/* 80106A6C  48 00 00 08 */	b lbl_80106A74
lbl_80106A70:
/* 80106A70  48 00 9D D1 */	bl offKandelaarModel__9daAlink_cFv
lbl_80106A74:
/* 80106A74  7F E3 FB 78 */	mr r3, r31
/* 80106A78  4B FD E1 5D */	bl freeGrabItem__9daAlink_cFv
/* 80106A7C  7F E3 FB 78 */	mr r3, r31
/* 80106A80  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 80106A84  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 80106A88  7D 89 03 A6 */	mtctr r12
/* 80106A8C  4E 80 04 21 */	bctrl 
/* 80106A90  28 03 00 00 */	cmplwi r3, 0
/* 80106A94  40 82 00 14 */	bne lbl_80106AA8
/* 80106A98  7F E3 FB 78 */	mr r3, r31
/* 80106A9C  38 80 00 02 */	li r4, 2
/* 80106AA0  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 80106AA4  4B FA 6C 81 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
lbl_80106AA8:
/* 80106AA8  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 80106AAC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80106AB0  41 82 00 20 */	beq lbl_80106AD0
/* 80106AB4  28 1D 00 00 */	cmplwi r29, 0
/* 80106AB8  40 82 00 18 */	bne lbl_80106AD0
/* 80106ABC  7F E3 FB 78 */	mr r3, r31
/* 80106AC0  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80106AC4  38 80 00 01 */	li r4, 1
/* 80106AC8  48 00 07 51 */	bl procBoardJumpInit__9daAlink_cFfi
/* 80106ACC  48 00 00 E8 */	b lbl_80106BB4
lbl_80106AD0:
/* 80106AD0  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 80106AD4  20 00 00 A6 */	subfic r0, r0, 0xa6
/* 80106AD8  7C 00 00 34 */	cntlzw r0, r0
/* 80106ADC  54 1E DE 3E */	rlwinm r30, r0, 0x1b, 0x18, 0x1f
/* 80106AE0  7F E3 FB 78 */	mr r3, r31
/* 80106AE4  38 80 00 A7 */	li r4, 0xa7
/* 80106AE8  4B FB C2 BD */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 80106AEC  2C 03 00 00 */	cmpwi r3, 0
/* 80106AF0  40 82 00 0C */	bne lbl_80106AFC
/* 80106AF4  38 60 00 00 */	li r3, 0
/* 80106AF8  48 00 00 BC */	b lbl_80106BB4
lbl_80106AFC:
/* 80106AFC  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80106B00  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80106B04  28 1D 00 00 */	cmplwi r29, 0
/* 80106B08  41 82 00 94 */	beq lbl_80106B9C
/* 80106B0C  38 7F 28 14 */	addi r3, r31, 0x2814
/* 80106B10  7F A4 EB 78 */	mr r4, r29
/* 80106B14  48 05 81 A5 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 80106B18  38 00 00 01 */	li r0, 1
/* 80106B1C  98 1D 09 60 */	stb r0, 0x960(r29)
/* 80106B20  2C 1E 00 00 */	cmpwi r30, 0
/* 80106B24  41 82 00 48 */	beq lbl_80106B6C
/* 80106B28  C0 3F 33 98 */	lfs f1, 0x3398(r31)
/* 80106B2C  3C 60 80 39 */	lis r3, m__18daAlinkHIO_move_c0@ha /* 0x8038D6BC@ha */
/* 80106B30  38 63 D6 BC */	addi r3, r3, m__18daAlinkHIO_move_c0@l /* 0x8038D6BC@l */
/* 80106B34  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 80106B38  EC 41 00 24 */	fdivs f2, f1, f0
/* 80106B3C  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80106B40  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80106B44  40 81 00 08 */	ble lbl_80106B4C
/* 80106B48  FC 40 00 90 */	fmr f2, f0
lbl_80106B4C:
/* 80106B4C  3C 60 80 39 */	lis r3, m__19daAlinkHIO_board_c0@ha /* 0x8038E870@ha */
/* 80106B50  38 63 E8 70 */	addi r3, r3, m__19daAlinkHIO_board_c0@l /* 0x8038E870@l */
/* 80106B54  C0 23 00 70 */	lfs f1, 0x70(r3)
/* 80106B58  C0 03 00 74 */	lfs f0, 0x74(r3)
/* 80106B5C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80106B60  EC 01 00 2A */	fadds f0, f1, f0
/* 80106B64  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 80106B68  48 00 00 0C */	b lbl_80106B74
lbl_80106B6C:
/* 80106B6C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80106B70  D0 1F 33 98 */	stfs f0, 0x3398(r31)
lbl_80106B74:
/* 80106B74  3C 60 80 39 */	lis r3, m__19daAlinkHIO_board_c0@ha /* 0x8038E870@ha */
/* 80106B78  38 63 E8 70 */	addi r3, r3, m__19daAlinkHIO_board_c0@l /* 0x8038E870@l */
/* 80106B7C  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 80106B80  D0 1F 05 94 */	stfs f0, 0x594(r31)
/* 80106B84  38 00 00 00 */	li r0, 0
/* 80106B88  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 80106B8C  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 80106B90  7F E3 FB 78 */	mr r3, r31
/* 80106B94  38 80 00 00 */	li r4, 0
/* 80106B98  4B FF F9 9D */	bl setCommonBoardAnime__9daAlink_cFi
lbl_80106B9C:
/* 80106B9C  38 00 00 04 */	li r0, 4
/* 80106BA0  98 1F 2F AA */	stb r0, 0x2faa(r31)
/* 80106BA4  38 00 00 00 */	li r0, 0
/* 80106BA8  B0 1F 30 12 */	sth r0, 0x3012(r31)
/* 80106BAC  B0 1F 30 0A */	sth r0, 0x300a(r31)
/* 80106BB0  38 60 00 01 */	li r3, 1
lbl_80106BB4:
/* 80106BB4  39 61 00 20 */	addi r11, r1, 0x20
/* 80106BB8  48 25 B6 71 */	bl _restgpr_29
/* 80106BBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80106BC0  7C 08 03 A6 */	mtlr r0
/* 80106BC4  38 21 00 20 */	addi r1, r1, 0x20
/* 80106BC8  4E 80 00 20 */	blr 

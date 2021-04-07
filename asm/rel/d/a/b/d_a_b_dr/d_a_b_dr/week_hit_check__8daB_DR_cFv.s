lbl_805BCAD4:
/* 805BCAD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BCAD8  7C 08 02 A6 */	mflr r0
/* 805BCADC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BCAE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BCAE4  7C 7F 1B 78 */	mr r31, r3
/* 805BCAE8  80 03 0A 5C */	lwz r0, 0xa5c(r3)
/* 805BCAEC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805BCAF0  41 82 00 CC */	beq lbl_805BCBBC
/* 805BCAF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805BCAF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805BCAFC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 805BCB00  80 03 05 88 */	lwz r0, 0x588(r3)
/* 805BCB04  64 00 02 00 */	oris r0, r0, 0x200
/* 805BCB08  90 03 05 88 */	stw r0, 0x588(r3)
/* 805BCB0C  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 805BCB10  2C 00 00 00 */	cmpwi r0, 0
/* 805BCB14  40 81 00 A8 */	ble lbl_805BCBBC
/* 805BCB18  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 805BCB1C  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 805BCB20  41 82 00 9C */	beq lbl_805BCBBC
/* 805BCB24  38 7F 07 D0 */	addi r3, r31, 0x7d0
/* 805BCB28  48 00 A0 D1 */	bl func_805C6BF8
/* 805BCB2C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805BCB30  40 82 00 8C */	bne lbl_805BCBBC
/* 805BCB34  80 1F 07 08 */	lwz r0, 0x708(r31)
/* 805BCB38  2C 00 00 03 */	cmpwi r0, 3
/* 805BCB3C  41 82 00 80 */	beq lbl_805BCBBC
/* 805BCB40  88 1F 07 D1 */	lbz r0, 0x7d1(r31)
/* 805BCB44  28 00 00 02 */	cmplwi r0, 2
/* 805BCB48  40 82 00 74 */	bne lbl_805BCBBC
/* 805BCB4C  38 7F 0A 44 */	addi r3, r31, 0xa44
/* 805BCB50  4B AC 79 11 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 805BCB54  28 03 00 00 */	cmplwi r3, 0
/* 805BCB58  41 82 00 5C */	beq lbl_805BCBB4
/* 805BCB5C  38 7F 0A 44 */	addi r3, r31, 0xa44
/* 805BCB60  4B AC 79 99 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 805BCB64  80 03 00 10 */	lwz r0, 0x10(r3)
/* 805BCB68  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 805BCB6C  41 82 00 48 */	beq lbl_805BCBB4
/* 805BCB70  3C 60 80 5C */	lis r3, lit_4011@ha /* 0x805C6CA4@ha */
/* 805BCB74  C0 03 6C A4 */	lfs f0, lit_4011@l(r3)  /* 0x805C6CA4@l */
/* 805BCB78  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 805BCB7C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805BCB80  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805BCB84  80 63 00 00 */	lwz r3, 0(r3)
/* 805BCB88  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805BCB8C  38 80 00 02 */	li r4, 2
/* 805BCB90  4B CF 33 FD */	bl changeBgmStatus__8Z2SeqMgrFl
/* 805BCB94  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 805BCB98  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 805BCB9C  38 00 00 00 */	li r0, 0
/* 805BCBA0  98 1F 07 E8 */	stb r0, 0x7e8(r31)
/* 805BCBA4  7F E3 FB 78 */	mr r3, r31
/* 805BCBA8  38 80 00 03 */	li r4, 3
/* 805BCBAC  38 A0 00 00 */	li r5, 0
/* 805BCBB0  4B FF E9 05 */	bl setActionMode__8daB_DR_cFii
lbl_805BCBB4:
/* 805BCBB4  38 7F 0A 24 */	addi r3, r31, 0xa24
/* 805BCBB8  4B AC 6C 79 */	bl Move__10dCcD_GSttsFv
lbl_805BCBBC:
/* 805BCBBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BCBC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BCBC4  7C 08 03 A6 */	mtlr r0
/* 805BCBC8  38 21 00 10 */	addi r1, r1, 0x10
/* 805BCBCC  4E 80 00 20 */	blr 

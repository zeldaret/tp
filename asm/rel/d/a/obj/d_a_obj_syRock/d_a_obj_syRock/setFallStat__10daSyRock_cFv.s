lbl_80D02AFC:
/* 80D02AFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D02B00  7C 08 02 A6 */	mflr r0
/* 80D02B04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D02B08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D02B0C  93 C1 00 08 */	stw r30, 8(r1)
/* 80D02B10  7C 7E 1B 78 */	mr r30, r3
/* 80D02B14  3C 60 80 D0 */	lis r3, searchWaterPillar__10daSyRock_cFPvPv@ha
/* 80D02B18  38 63 30 A8 */	addi r3, r3, searchWaterPillar__10daSyRock_cFPvPv@l
/* 80D02B1C  7F C4 F3 78 */	mr r4, r30
/* 80D02B20  4B 31 6C D8 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80D02B24  90 7E 09 94 */	stw r3, 0x994(r30)
/* 80D02B28  80 7E 09 94 */	lwz r3, 0x994(r30)
/* 80D02B2C  28 03 00 00 */	cmplwi r3, 0
/* 80D02B30  41 82 00 18 */	beq lbl_80D02B48
/* 80D02B34  38 00 00 01 */	li r0, 1
/* 80D02B38  98 03 0B 79 */	stb r0, 0xb79(r3)
/* 80D02B3C  38 00 00 04 */	li r0, 4
/* 80D02B40  98 1E 05 C8 */	stb r0, 0x5c8(r30)
/* 80D02B44  48 00 00 84 */	b lbl_80D02BC8
lbl_80D02B48:
/* 80D02B48  38 7E 07 BC */	addi r3, r30, 0x7bc
/* 80D02B4C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80D02B50  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80D02B54  3B E4 0F 38 */	addi r31, r4, 0xf38
/* 80D02B58  7F E4 FB 78 */	mr r4, r31
/* 80D02B5C  4B 37 3F 50 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80D02B60  80 1E 07 E8 */	lwz r0, 0x7e8(r30)
/* 80D02B64  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80D02B68  41 82 00 44 */	beq lbl_80D02BAC
/* 80D02B6C  C0 3E 09 88 */	lfs f1, 0x988(r30)
/* 80D02B70  C0 1E 08 54 */	lfs f0, 0x854(r30)
/* 80D02B74  EC 21 00 28 */	fsubs f1, f1, f0
/* 80D02B78  3C 60 80 D0 */	lis r3, lit_3669@ha
/* 80D02B7C  C0 03 3F AC */	lfs f0, lit_3669@l(r3)
/* 80D02B80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D02B84  4C 41 13 82 */	cror 2, 1, 2
/* 80D02B88  40 82 00 18 */	bne lbl_80D02BA0
/* 80D02B8C  3C 60 80 D0 */	lis r3, lit_3805@ha
/* 80D02B90  C0 03 3F E8 */	lfs f0, lit_3805@l(r3)
/* 80D02B94  D0 1E 07 6C */	stfs f0, 0x76c(r30)
/* 80D02B98  38 00 40 00 */	li r0, 0x4000
/* 80D02B9C  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
lbl_80D02BA0:
/* 80D02BA0  C0 1E 08 54 */	lfs f0, 0x854(r30)
/* 80D02BA4  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80D02BA8  48 00 00 0C */	b lbl_80D02BB4
lbl_80D02BAC:
/* 80D02BAC  C0 1E 08 54 */	lfs f0, 0x854(r30)
/* 80D02BB0  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
lbl_80D02BB4:
/* 80D02BB4  38 7E 07 BC */	addi r3, r30, 0x7bc
/* 80D02BB8  7F E4 FB 78 */	mr r4, r31
/* 80D02BBC  4B 37 3E F0 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80D02BC0  38 00 00 05 */	li r0, 5
/* 80D02BC4  98 1E 05 C8 */	stb r0, 0x5c8(r30)
lbl_80D02BC8:
/* 80D02BC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D02BCC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D02BD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D02BD4  7C 08 03 A6 */	mtlr r0
/* 80D02BD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D02BDC  4E 80 00 20 */	blr 

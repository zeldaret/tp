lbl_802248E4:
/* 802248E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802248E8  7C 08 02 A6 */	mflr r0
/* 802248EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802248F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802248F4  7C 7F 1B 78 */	mr r31, r3
/* 802248F8  80 83 01 24 */	lwz r4, 0x124(r3)
/* 802248FC  54 80 04 63 */	rlwinm. r0, r4, 0, 0x11, 0x11
/* 80224900  40 82 00 C4 */	bne lbl_802249C4
/* 80224904  54 80 06 73 */	rlwinm. r0, r4, 0, 0x19, 0x19
/* 80224908  41 82 00 44 */	beq lbl_8022494C
/* 8022490C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80224910  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80224914  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80224918  28 00 00 00 */	cmplwi r0, 0
/* 8022491C  41 82 00 10 */	beq lbl_8022492C
/* 80224920  A0 03 4F A4 */	lhz r0, 0x4fa4(r3)
/* 80224924  54 00 06 F6 */	rlwinm r0, r0, 0, 0x1b, 0x1b
/* 80224928  48 00 00 08 */	b lbl_80224930
lbl_8022492C:
/* 8022492C  38 00 00 00 */	li r0, 0
lbl_80224930:
/* 80224930  54 00 04 3F */	clrlwi. r0, r0, 0x10
/* 80224934  41 82 00 18 */	beq lbl_8022494C
/* 80224938  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8022493C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80224940  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 80224944  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80224948  41 82 00 7C */	beq lbl_802249C4
lbl_8022494C:
/* 8022494C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80224950  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80224954  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80224958  38 00 00 00 */	li r0, 0
/* 8022495C  88 63 05 6A */	lbz r3, 0x56a(r3)
/* 80224960  28 03 00 00 */	cmplwi r3, 0
/* 80224964  41 82 00 10 */	beq lbl_80224974
/* 80224968  28 03 00 26 */	cmplwi r3, 0x26
/* 8022496C  40 80 00 08 */	bge lbl_80224974
/* 80224970  38 00 00 01 */	li r0, 1
lbl_80224974:
/* 80224974  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80224978  40 82 00 4C */	bne lbl_802249C4
/* 8022497C  54 80 02 D7 */	rlwinm. r0, r4, 0, 0xb, 0xb
/* 80224980  40 82 00 44 */	bne lbl_802249C4
/* 80224984  54 80 00 01 */	rlwinm. r0, r4, 0, 0, 0
/* 80224988  40 82 00 3C */	bne lbl_802249C4
/* 8022498C  54 80 07 39 */	rlwinm. r0, r4, 0, 0x1c, 0x1c
/* 80224990  40 82 00 34 */	bne lbl_802249C4
/* 80224994  54 80 06 F7 */	rlwinm. r0, r4, 0, 0x1b, 0x1b
/* 80224998  40 82 00 2C */	bne lbl_802249C4
/* 8022499C  54 80 01 CF */	rlwinm. r0, r4, 0, 7, 7
/* 802249A0  40 82 00 24 */	bne lbl_802249C4
/* 802249A4  54 80 06 B5 */	rlwinm. r0, r4, 0, 0x1a, 0x1a
/* 802249A8  40 82 00 1C */	bne lbl_802249C4
/* 802249AC  54 80 01 4B */	rlwinm. r0, r4, 0, 5, 5
/* 802249B0  40 82 00 14 */	bne lbl_802249C4
/* 802249B4  54 80 01 09 */	rlwinm. r0, r4, 0, 4, 4
/* 802249B8  40 82 00 0C */	bne lbl_802249C4
/* 802249BC  54 80 00 C7 */	rlwinm. r0, r4, 0, 3, 3
/* 802249C0  41 82 00 10 */	beq lbl_802249D0
lbl_802249C4:
/* 802249C4  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 802249C8  4B FF 04 2D */	bl setAlphaLifeAnimeMin__13dMeter2Draw_cFv
/* 802249CC  48 00 00 18 */	b lbl_802249E4
lbl_802249D0:
/* 802249D0  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 802249D4  4B FF 04 81 */	bl setAlphaLifeAnimeMax__13dMeter2Draw_cFv
/* 802249D8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 802249DC  38 63 04 C4 */	addi r3, r3, 0x4c4
/* 802249E0  48 09 15 91 */	bl heartGaugeOn__11Z2StatusMgrFv
lbl_802249E4:
/* 802249E4  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 802249E8  38 80 00 00 */	li r4, 0
/* 802249EC  4B FF 02 35 */	bl setAlphaLifeChange__13dMeter2Draw_cFb
/* 802249F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802249F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802249F8  7C 08 03 A6 */	mtlr r0
/* 802249FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80224A00  4E 80 00 20 */	blr 

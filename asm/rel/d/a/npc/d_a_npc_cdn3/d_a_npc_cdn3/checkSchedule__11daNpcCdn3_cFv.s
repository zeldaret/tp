lbl_8097B288:
/* 8097B288  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8097B28C  7C 08 02 A6 */	mflr r0
/* 8097B290  90 01 00 24 */	stw r0, 0x24(r1)
/* 8097B294  39 61 00 20 */	addi r11, r1, 0x20
/* 8097B298  4B 9E 6F 44 */	b _savegpr_29
/* 8097B29C  7C 7F 1B 78 */	mr r31, r3
/* 8097B2A0  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8097B2A4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8097B2A8  2C 00 00 FF */	cmpwi r0, 0xff
/* 8097B2AC  41 82 00 C8 */	beq lbl_8097B374
/* 8097B2B0  80 7F 0B 88 */	lwz r3, 0xb88(r31)
/* 8097B2B4  28 03 00 00 */	cmplwi r3, 0
/* 8097B2B8  41 82 00 BC */	beq lbl_8097B374
/* 8097B2BC  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8097B2C0  54 05 A6 3E */	rlwinm r5, r0, 0x14, 0x18, 0x1f
/* 8097B2C4  38 80 00 0A */	li r4, 0xa
/* 8097B2C8  7C 05 23 D6 */	divw r0, r5, r4
/* 8097B2CC  1C 60 00 3C */	mulli r3, r0, 0x3c
/* 8097B2D0  7C 00 21 D6 */	mullw r0, r0, r4
/* 8097B2D4  7C 00 28 50 */	subf r0, r0, r5
/* 8097B2D8  1C 00 00 0A */	mulli r0, r0, 0xa
/* 8097B2DC  7C 03 02 14 */	add r0, r3, r0
/* 8097B2E0  54 1D 04 3E */	clrlwi r29, r0, 0x10
/* 8097B2E4  88 1F 0A C6 */	lbz r0, 0xac6(r31)
/* 8097B2E8  28 00 00 00 */	cmplwi r0, 0
/* 8097B2EC  41 82 00 10 */	beq lbl_8097B2FC
/* 8097B2F0  4B 82 48 40 */	b dKy_getDarktime_minute__Fv
/* 8097B2F4  7C 7E 1B 78 */	mr r30, r3
/* 8097B2F8  48 00 00 0C */	b lbl_8097B304
lbl_8097B2FC:
/* 8097B2FC  4B 82 47 40 */	b dKy_getdaytime_minute__Fv
/* 8097B300  7C 7E 1B 78 */	mr r30, r3
lbl_8097B304:
/* 8097B304  88 1F 0A C6 */	lbz r0, 0xac6(r31)
/* 8097B308  28 00 00 00 */	cmplwi r0, 0
/* 8097B30C  41 82 00 0C */	beq lbl_8097B318
/* 8097B310  4B 82 47 E4 */	b dKy_getDarktime_hour__Fv
/* 8097B314  48 00 00 08 */	b lbl_8097B31C
lbl_8097B318:
/* 8097B318  4B 82 46 F8 */	b dKy_getdaytime_hour__Fv
lbl_8097B31C:
/* 8097B31C  1C 03 00 3C */	mulli r0, r3, 0x3c
/* 8097B320  7F DE 02 14 */	add r30, r30, r0
/* 8097B324  88 1F 0A C6 */	lbz r0, 0xac6(r31)
/* 8097B328  28 00 00 00 */	cmplwi r0, 0
/* 8097B32C  41 82 00 10 */	beq lbl_8097B33C
/* 8097B330  4B 82 48 8C */	b dKy_getDarktime_week__Fv
/* 8097B334  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8097B338  48 00 00 08 */	b lbl_8097B340
lbl_8097B33C:
/* 8097B33C  4B 82 D7 FC */	b dKy_get_dayofweek__Fv
lbl_8097B340:
/* 8097B340  80 9F 0B 88 */	lwz r4, 0xb88(r31)
/* 8097B344  80 04 05 68 */	lwz r0, 0x568(r4)
/* 8097B348  7C 00 18 00 */	cmpw r0, r3
/* 8097B34C  40 82 00 28 */	bne lbl_8097B374
/* 8097B350  7C 1D F0 00 */	cmpw r29, r30
/* 8097B354  41 81 00 20 */	bgt lbl_8097B374
/* 8097B358  7F E3 FB 78 */	mr r3, r31
/* 8097B35C  48 00 00 31 */	bl setSchedule__11daNpcCdn3_cFP15daTagSchedule_c
/* 8097B360  38 00 00 00 */	li r0, 0
/* 8097B364  90 1F 0B 88 */	stw r0, 0xb88(r31)
/* 8097B368  7F E3 FB 78 */	mr r3, r31
/* 8097B36C  38 80 00 01 */	li r4, 1
/* 8097B370  4B FF DA 65 */	bl setAction__11daNpcCdn3_cFQ211daNpcCdn3_c6Mode_e
lbl_8097B374:
/* 8097B374  39 61 00 20 */	addi r11, r1, 0x20
/* 8097B378  4B 9E 6E B0 */	b _restgpr_29
/* 8097B37C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8097B380  7C 08 03 A6 */	mtlr r0
/* 8097B384  38 21 00 20 */	addi r1, r1, 0x20
/* 8097B388  4E 80 00 20 */	blr 

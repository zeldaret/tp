lbl_802B9D98:
/* 802B9D98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B9D9C  7C 08 02 A6 */	mflr r0
/* 802B9DA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B9DA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B9DA8  7C 7F 1B 78 */	mr r31, r3
/* 802B9DAC  80 6D 86 08 */	lwz r3, __OSReport_disable-0x10(r13)
/* 802B9DB0  38 80 00 00 */	li r4, 0
/* 802B9DB4  4B FF 3B 99 */	bl seStopAll__7Z2SeMgrFUl
/* 802B9DB8  80 6D 85 BC */	lwz r3, __OSReport_disable-0x5C(r13)
/* 802B9DBC  48 00 CB E1 */	bl resetSceneInner__10Z2EnvSeMgrFv
/* 802B9DC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802B9DC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802B9DC8  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 802B9DCC  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 802B9DD0  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 802B9DD4  A0 84 00 D0 */	lhz r4, 0xd0(r4)
/* 802B9DD8  4B D7 AB E5 */	bl isEventBit__11dSv_event_cCFUs
/* 802B9DDC  30 03 FF FF */	addic r0, r3, -1
/* 802B9DE0  7C 60 19 10 */	subfe r3, r0, r3
/* 802B9DE4  38 03 00 58 */	addi r0, r3, 0x58
/* 802B9DE8  98 1F 00 18 */	stb r0, 0x18(r31)
/* 802B9DEC  88 9F 00 10 */	lbz r4, 0x10(r31)
/* 802B9DF0  28 04 00 00 */	cmplwi r4, 0
/* 802B9DF4  41 82 00 20 */	beq lbl_802B9E14
/* 802B9DF8  88 1F 00 0F */	lbz r0, 0xf(r31)
/* 802B9DFC  7C 00 20 40 */	cmplw r0, r4
/* 802B9E00  41 82 00 14 */	beq lbl_802B9E14
/* 802B9E04  7F E3 FB 78 */	mr r3, r31
/* 802B9E08  48 00 07 C1 */	bl eraseSeWave__10Z2SceneMgrFUl
/* 802B9E0C  38 00 00 00 */	li r0, 0
/* 802B9E10  98 1F 00 10 */	stb r0, 0x10(r31)
lbl_802B9E14:
/* 802B9E14  88 7F 00 16 */	lbz r3, 0x16(r31)
/* 802B9E18  28 03 00 00 */	cmplwi r3, 0
/* 802B9E1C  41 82 00 48 */	beq lbl_802B9E64
/* 802B9E20  88 1F 00 15 */	lbz r0, 0x15(r31)
/* 802B9E24  7C 00 18 40 */	cmplw r0, r3
/* 802B9E28  41 82 00 3C */	beq lbl_802B9E64
/* 802B9E2C  88 9F 00 10 */	lbz r4, 0x10(r31)
/* 802B9E30  28 04 00 00 */	cmplwi r4, 0
/* 802B9E34  41 82 00 1C */	beq lbl_802B9E50
/* 802B9E38  7F E3 FB 78 */	mr r3, r31
/* 802B9E3C  48 00 07 8D */	bl eraseSeWave__10Z2SceneMgrFUl
/* 802B9E40  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802B9E44  41 82 00 0C */	beq lbl_802B9E50
/* 802B9E48  38 00 00 00 */	li r0, 0
/* 802B9E4C  98 1F 00 10 */	stb r0, 0x10(r31)
lbl_802B9E50:
/* 802B9E50  7F E3 FB 78 */	mr r3, r31
/* 802B9E54  88 9F 00 16 */	lbz r4, 0x16(r31)
/* 802B9E58  48 00 07 71 */	bl eraseSeWave__10Z2SceneMgrFUl
/* 802B9E5C  38 00 00 00 */	li r0, 0
/* 802B9E60  98 1F 00 16 */	stb r0, 0x16(r31)
lbl_802B9E64:
/* 802B9E64  88 7F 00 18 */	lbz r3, 0x18(r31)
/* 802B9E68  88 1F 00 19 */	lbz r0, 0x19(r31)
/* 802B9E6C  7C 03 00 40 */	cmplw r3, r0
/* 802B9E70  40 82 00 14 */	bne lbl_802B9E84
/* 802B9E74  88 7F 00 0D */	lbz r3, 0xd(r31)
/* 802B9E78  88 1F 00 0E */	lbz r0, 0xe(r31)
/* 802B9E7C  7C 03 00 40 */	cmplw r3, r0
/* 802B9E80  41 82 00 DC */	beq lbl_802B9F5C
lbl_802B9E84:
/* 802B9E84  88 9F 00 10 */	lbz r4, 0x10(r31)
/* 802B9E88  28 04 00 00 */	cmplwi r4, 0
/* 802B9E8C  41 82 00 1C */	beq lbl_802B9EA8
/* 802B9E90  7F E3 FB 78 */	mr r3, r31
/* 802B9E94  48 00 07 35 */	bl eraseSeWave__10Z2SceneMgrFUl
/* 802B9E98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802B9E9C  41 82 00 0C */	beq lbl_802B9EA8
/* 802B9EA0  38 00 00 00 */	li r0, 0
/* 802B9EA4  98 1F 00 10 */	stb r0, 0x10(r31)
lbl_802B9EA8:
/* 802B9EA8  88 9F 00 16 */	lbz r4, 0x16(r31)
/* 802B9EAC  28 04 00 00 */	cmplwi r4, 0
/* 802B9EB0  41 82 00 1C */	beq lbl_802B9ECC
/* 802B9EB4  7F E3 FB 78 */	mr r3, r31
/* 802B9EB8  48 00 07 11 */	bl eraseSeWave__10Z2SceneMgrFUl
/* 802B9EBC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802B9EC0  41 82 00 0C */	beq lbl_802B9ECC
/* 802B9EC4  38 00 00 00 */	li r0, 0
/* 802B9EC8  98 1F 00 16 */	stb r0, 0x16(r31)
lbl_802B9ECC:
/* 802B9ECC  88 9F 00 0E */	lbz r4, 0xe(r31)
/* 802B9ED0  28 04 00 00 */	cmplwi r4, 0
/* 802B9ED4  41 82 00 1C */	beq lbl_802B9EF0
/* 802B9ED8  7F E3 FB 78 */	mr r3, r31
/* 802B9EDC  48 00 06 ED */	bl eraseSeWave__10Z2SceneMgrFUl
/* 802B9EE0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802B9EE4  41 82 00 0C */	beq lbl_802B9EF0
/* 802B9EE8  38 00 00 00 */	li r0, 0
/* 802B9EEC  98 1F 00 0E */	stb r0, 0xe(r31)
lbl_802B9EF0:
/* 802B9EF0  88 1F 00 18 */	lbz r0, 0x18(r31)
/* 802B9EF4  88 9F 00 19 */	lbz r4, 0x19(r31)
/* 802B9EF8  7C 00 20 40 */	cmplw r0, r4
/* 802B9EFC  41 82 00 30 */	beq lbl_802B9F2C
/* 802B9F00  7F E3 FB 78 */	mr r3, r31
/* 802B9F04  48 00 06 C5 */	bl eraseSeWave__10Z2SceneMgrFUl
/* 802B9F08  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802B9F0C  41 82 00 20 */	beq lbl_802B9F2C
/* 802B9F10  7F E3 FB 78 */	mr r3, r31
/* 802B9F14  88 9F 00 18 */	lbz r4, 0x18(r31)
/* 802B9F18  48 00 07 ED */	bl loadSeWave__10Z2SceneMgrFUl
/* 802B9F1C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802B9F20  41 82 00 0C */	beq lbl_802B9F2C
/* 802B9F24  88 1F 00 18 */	lbz r0, 0x18(r31)
/* 802B9F28  98 1F 00 19 */	stb r0, 0x19(r31)
lbl_802B9F2C:
/* 802B9F2C  88 9F 00 0D */	lbz r4, 0xd(r31)
/* 802B9F30  28 04 00 00 */	cmplwi r4, 0
/* 802B9F34  41 82 00 20 */	beq lbl_802B9F54
/* 802B9F38  7F E3 FB 78 */	mr r3, r31
/* 802B9F3C  48 00 07 C9 */	bl loadSeWave__10Z2SceneMgrFUl
/* 802B9F40  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802B9F44  41 82 00 10 */	beq lbl_802B9F54
/* 802B9F48  88 1F 00 0D */	lbz r0, 0xd(r31)
/* 802B9F4C  98 1F 00 0E */	stb r0, 0xe(r31)
/* 802B9F50  48 00 00 0C */	b lbl_802B9F5C
lbl_802B9F54:
/* 802B9F54  38 00 00 00 */	li r0, 0
/* 802B9F58  98 1F 00 0E */	stb r0, 0xe(r31)
lbl_802B9F5C:
/* 802B9F5C  88 1F 00 1A */	lbz r0, 0x1a(r31)
/* 802B9F60  28 00 00 00 */	cmplwi r0, 0
/* 802B9F64  41 82 00 48 */	beq lbl_802B9FAC
/* 802B9F68  80 6D 86 04 */	lwz r3, __OSReport_disable-0x14(r13)
/* 802B9F6C  38 80 00 00 */	li r4, 0
/* 802B9F70  80 03 00 00 */	lwz r0, 0(r3)
/* 802B9F74  28 00 00 00 */	cmplwi r0, 0
/* 802B9F78  40 82 00 10 */	bne lbl_802B9F88
/* 802B9F7C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 802B9F80  28 00 00 00 */	cmplwi r0, 0
/* 802B9F84  41 82 00 08 */	beq lbl_802B9F8C
lbl_802B9F88:
/* 802B9F88  38 80 00 01 */	li r4, 1
lbl_802B9F8C:
/* 802B9F8C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802B9F90  41 82 00 1C */	beq lbl_802B9FAC
/* 802B9F94  38 80 00 0F */	li r4, 0xf
/* 802B9F98  38 A0 00 00 */	li r5, 0
/* 802B9F9C  4B FF 54 6D */	bl bgmStop__8Z2SeqMgrFUll
/* 802B9FA0  38 00 FF F1 */	li r0, -15
/* 802B9FA4  98 1F 00 17 */	stb r0, 0x17(r31)
/* 802B9FA8  48 00 00 0C */	b lbl_802B9FB4
lbl_802B9FAC:
/* 802B9FAC  7F E3 FB 78 */	mr r3, r31
/* 802B9FB0  48 00 00 19 */	bl _load1stWaveInner_2__10Z2SceneMgrFv
lbl_802B9FB4:
/* 802B9FB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B9FB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B9FBC  7C 08 03 A6 */	mtlr r0
/* 802B9FC0  38 21 00 10 */	addi r1, r1, 0x10
/* 802B9FC4  4E 80 00 20 */	blr 

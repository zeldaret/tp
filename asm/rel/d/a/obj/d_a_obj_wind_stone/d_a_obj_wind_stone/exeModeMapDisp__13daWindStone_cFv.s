lbl_80D3835C:
/* 80D3835C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D38360  7C 08 02 A6 */	mflr r0
/* 80D38364  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D38368  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3836C  7C 7F 1B 78 */	mr r31, r3
/* 80D38370  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D38374  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D38378  38 00 00 00 */	li r0, 0
/* 80D3837C  88 83 4F AD */	lbz r4, 0x4fad(r3)
/* 80D38380  28 04 00 00 */	cmplwi r4, 0
/* 80D38384  41 82 00 0C */	beq lbl_80D38390
/* 80D38388  28 04 00 02 */	cmplwi r4, 2
/* 80D3838C  40 82 00 08 */	bne lbl_80D38394
lbl_80D38390:
/* 80D38390  38 00 00 01 */	li r0, 1
lbl_80D38394:
/* 80D38394  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80D38398  40 82 00 10 */	bne lbl_80D383A8
/* 80D3839C  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80D383A0  28 00 00 00 */	cmplwi r0, 0
/* 80D383A4  40 82 00 44 */	bne lbl_80D383E8
lbl_80D383A8:
/* 80D383A8  7F E3 FB 78 */	mr r3, r31
/* 80D383AC  48 00 01 19 */	bl getGoldWolfIdx__13daWindStone_cFv
/* 80D383B0  3C 80 80 43 */	lis r4, g_meter2_info@ha /* 0x80430188@ha */
/* 80D383B4  38 84 01 88 */	addi r4, r4, g_meter2_info@l /* 0x80430188@l */
/* 80D383B8  98 64 00 E2 */	stb r3, 0xe2(r4)
/* 80D383BC  38 00 00 05 */	li r0, 5
/* 80D383C0  98 04 00 C1 */	stb r0, 0xc1(r4)
/* 80D383C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D383C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D383CC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D383D0  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80D383D4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D383D8  7C 05 07 74 */	extsb r5, r0
/* 80D383DC  4B 2F CE 25 */	bl onSwitch__10dSv_info_cFii
/* 80D383E0  38 00 00 02 */	li r0, 2
/* 80D383E4  98 1F 05 C4 */	stb r0, 0x5c4(r31)
lbl_80D383E8:
/* 80D383E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D383EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D383F0  7C 08 03 A6 */	mtlr r0
/* 80D383F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D383F8  4E 80 00 20 */	blr 

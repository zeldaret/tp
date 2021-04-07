lbl_80ACC328:
/* 80ACC328  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACC32C  7C 08 02 A6 */	mflr r0
/* 80ACC330  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACC334  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACC338  7C 7F 1B 78 */	mr r31, r3
/* 80ACC33C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80ACC340  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80ACC344  88 03 4E 00 */	lbz r0, 0x4e00(r3)
/* 80ACC348  2C 00 00 46 */	cmpwi r0, 0x46
/* 80ACC34C  40 82 00 0C */	bne lbl_80ACC358
/* 80ACC350  38 60 00 05 */	li r3, 5
/* 80ACC354  48 00 00 BC */	b lbl_80ACC410
lbl_80ACC358:
/* 80ACC358  38 63 00 28 */	addi r3, r3, 0x28
/* 80ACC35C  38 80 00 00 */	li r4, 0
/* 80ACC360  4B 56 68 51 */	bl isDarkClearLV__21dSv_player_status_b_cCFi
/* 80ACC364  2C 03 00 00 */	cmpwi r3, 0
/* 80ACC368  41 82 00 0C */	beq lbl_80ACC374
/* 80ACC36C  38 60 00 03 */	li r3, 3
/* 80ACC370  48 00 00 A0 */	b lbl_80ACC410
lbl_80ACC374:
/* 80ACC374  38 60 00 3D */	li r3, 0x3d
/* 80ACC378  4B 68 07 35 */	bl daNpcT_chkEvtBit__FUl
/* 80ACC37C  2C 03 00 00 */	cmpwi r3, 0
/* 80ACC380  40 82 00 14 */	bne lbl_80ACC394
/* 80ACC384  38 60 02 08 */	li r3, 0x208
/* 80ACC388  4B 68 07 25 */	bl daNpcT_chkEvtBit__FUl
/* 80ACC38C  2C 03 00 00 */	cmpwi r3, 0
/* 80ACC390  41 82 00 0C */	beq lbl_80ACC39C
lbl_80ACC394:
/* 80ACC394  38 60 00 03 */	li r3, 3
/* 80ACC398  48 00 00 78 */	b lbl_80ACC410
lbl_80ACC39C:
/* 80ACC39C  38 60 00 35 */	li r3, 0x35
/* 80ACC3A0  4B 68 07 0D */	bl daNpcT_chkEvtBit__FUl
/* 80ACC3A4  2C 03 00 00 */	cmpwi r3, 0
/* 80ACC3A8  41 82 00 0C */	beq lbl_80ACC3B4
/* 80ACC3AC  38 60 00 04 */	li r3, 4
/* 80ACC3B0  48 00 00 60 */	b lbl_80ACC410
lbl_80ACC3B4:
/* 80ACC3B4  7F E3 FB 78 */	mr r3, r31
/* 80ACC3B8  48 00 18 B5 */	bl checkStageIsSeirasShop__13daNpc_Seira_cFv
/* 80ACC3BC  2C 03 00 00 */	cmpwi r3, 0
/* 80ACC3C0  41 82 00 4C */	beq lbl_80ACC40C
/* 80ACC3C4  38 60 00 A5 */	li r3, 0xa5
/* 80ACC3C8  4B 68 06 E5 */	bl daNpcT_chkEvtBit__FUl
/* 80ACC3CC  2C 03 00 00 */	cmpwi r3, 0
/* 80ACC3D0  41 82 00 0C */	beq lbl_80ACC3DC
/* 80ACC3D4  38 60 00 01 */	li r3, 1
/* 80ACC3D8  48 00 00 38 */	b lbl_80ACC410
lbl_80ACC3DC:
/* 80ACC3DC  38 60 00 88 */	li r3, 0x88
/* 80ACC3E0  4B 68 06 CD */	bl daNpcT_chkEvtBit__FUl
/* 80ACC3E4  2C 03 00 00 */	cmpwi r3, 0
/* 80ACC3E8  41 82 00 0C */	beq lbl_80ACC3F4
/* 80ACC3EC  38 60 00 01 */	li r3, 1
/* 80ACC3F0  48 00 00 20 */	b lbl_80ACC410
lbl_80ACC3F4:
/* 80ACC3F4  38 60 00 95 */	li r3, 0x95
/* 80ACC3F8  4B 68 06 B5 */	bl daNpcT_chkEvtBit__FUl
/* 80ACC3FC  30 03 FF FF */	addic r0, r3, -1
/* 80ACC400  7C 00 19 10 */	subfe r0, r0, r3
/* 80ACC404  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80ACC408  48 00 00 08 */	b lbl_80ACC410
lbl_80ACC40C:
/* 80ACC40C  38 60 00 06 */	li r3, 6
lbl_80ACC410:
/* 80ACC410  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACC414  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACC418  7C 08 03 A6 */	mtlr r0
/* 80ACC41C  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACC420  4E 80 00 20 */	blr 

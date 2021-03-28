lbl_80AD6C58:
/* 80AD6C58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD6C5C  7C 08 02 A6 */	mflr r0
/* 80AD6C60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD6C64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD6C68  7C 7F 1B 78 */	mr r31, r3
/* 80AD6C6C  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80AD6C70  2C 00 00 02 */	cmpwi r0, 2
/* 80AD6C74  41 82 00 20 */	beq lbl_80AD6C94
/* 80AD6C78  40 80 00 A0 */	bge lbl_80AD6D18
/* 80AD6C7C  2C 00 00 00 */	cmpwi r0, 0
/* 80AD6C80  40 80 00 0C */	bge lbl_80AD6C8C
/* 80AD6C84  48 00 00 94 */	b lbl_80AD6D18
/* 80AD6C88  48 00 00 90 */	b lbl_80AD6D18
lbl_80AD6C8C:
/* 80AD6C8C  38 00 00 02 */	li r0, 2
/* 80AD6C90  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AD6C94:
/* 80AD6C94  88 1F 0E 80 */	lbz r0, 0xe80(r31)
/* 80AD6C98  28 00 00 00 */	cmplwi r0, 0
/* 80AD6C9C  41 82 00 2C */	beq lbl_80AD6CC8
/* 80AD6CA0  88 1F 0E 44 */	lbz r0, 0xe44(r31)
/* 80AD6CA4  28 00 00 00 */	cmplwi r0, 0
/* 80AD6CA8  40 82 00 14 */	bne lbl_80AD6CBC
/* 80AD6CAC  38 00 00 01 */	li r0, 1
/* 80AD6CB0  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80AD6CB4  98 1F 0E 33 */	stb r0, 0xe33(r31)
/* 80AD6CB8  48 00 00 10 */	b lbl_80AD6CC8
lbl_80AD6CBC:
/* 80AD6CBC  38 00 00 01 */	li r0, 1
/* 80AD6CC0  98 1F 0E 32 */	stb r0, 0xe32(r31)
/* 80AD6CC4  98 1F 0E 33 */	stb r0, 0xe33(r31)
lbl_80AD6CC8:
/* 80AD6CC8  88 1F 0E 45 */	lbz r0, 0xe45(r31)
/* 80AD6CCC  28 00 00 00 */	cmplwi r0, 0
/* 80AD6CD0  40 82 00 48 */	bne lbl_80AD6D18
/* 80AD6CD4  7F E3 FB 78 */	mr r3, r31
/* 80AD6CD8  4B FF FD 61 */	bl chkFirstMeeting__14daNpc_Seirei_cFv
/* 80AD6CDC  2C 03 00 00 */	cmpwi r3, 0
/* 80AD6CE0  41 82 00 38 */	beq lbl_80AD6D18
/* 80AD6CE4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80AD6CE8  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80AD6CEC  40 82 00 2C */	bne lbl_80AD6D18
/* 80AD6CF0  7F E3 FB 78 */	mr r3, r31
/* 80AD6CF4  4B 67 58 EC */	b daNpcT_chkDoBtnIsSpeak__FP10fopAc_ac_c
/* 80AD6CF8  2C 03 00 00 */	cmpwi r3, 0
/* 80AD6CFC  41 82 00 1C */	beq lbl_80AD6D18
/* 80AD6D00  38 00 00 08 */	li r0, 8
/* 80AD6D04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AD6D08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AD6D0C  98 03 5E 24 */	stb r0, 0x5e24(r3)
/* 80AD6D10  38 00 00 00 */	li r0, 0
/* 80AD6D14  98 03 5E 4A */	stb r0, 0x5e4a(r3)
lbl_80AD6D18:
/* 80AD6D18  38 60 00 01 */	li r3, 1
/* 80AD6D1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD6D20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD6D24  7C 08 03 A6 */	mtlr r0
/* 80AD6D28  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD6D2C  4E 80 00 20 */	blr 

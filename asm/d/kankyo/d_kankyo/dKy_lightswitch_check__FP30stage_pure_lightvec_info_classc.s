lbl_801A61F4:
/* 801A61F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801A61F8  7C 08 02 A6 */	mflr r0
/* 801A61FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A6200  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801A6204  7C 85 23 78 */	mr r5, r4
/* 801A6208  3B E0 00 01 */	li r31, 1
/* 801A620C  88 83 00 1F */	lbz r4, 0x1f(r3)
/* 801A6210  28 04 00 FF */	cmplwi r4, 0xff
/* 801A6214  41 82 00 4C */	beq lbl_801A6260
/* 801A6218  88 03 00 1E */	lbz r0, 0x1e(r3)
/* 801A621C  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 801A6220  40 82 00 24 */	bne lbl_801A6244
/* 801A6224  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801A6228  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801A622C  7C A5 07 74 */	extsb r5, r5
/* 801A6230  4B E8 F1 31 */	bl isSwitch__10dSv_info_cCFii
/* 801A6234  2C 03 00 00 */	cmpwi r3, 0
/* 801A6238  41 82 00 28 */	beq lbl_801A6260
/* 801A623C  3B E0 00 00 */	li r31, 0
/* 801A6240  48 00 00 20 */	b lbl_801A6260
lbl_801A6244:
/* 801A6244  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801A6248  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801A624C  7C A5 07 74 */	extsb r5, r5
/* 801A6250  4B E8 F1 11 */	bl isSwitch__10dSv_info_cCFii
/* 801A6254  2C 03 00 00 */	cmpwi r3, 0
/* 801A6258  40 82 00 08 */	bne lbl_801A6260
/* 801A625C  3B E0 00 00 */	li r31, 0
lbl_801A6260:
/* 801A6260  7F E3 FB 78 */	mr r3, r31
/* 801A6264  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A6268  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801A626C  7C 08 03 A6 */	mtlr r0
/* 801A6270  38 21 00 10 */	addi r1, r1, 0x10
/* 801A6274  4E 80 00 20 */	blr 

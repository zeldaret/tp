lbl_80072BD4:
/* 80072BD4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80072BD8  7C 08 02 A6 */	mflr r0
/* 80072BDC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80072BE0  39 61 00 50 */	addi r11, r1, 0x50
/* 80072BE4  48 2E F5 F9 */	bl _savegpr_29
/* 80072BE8  7C 7F 1B 78 */	mr r31, r3
/* 80072BEC  A0 03 04 C8 */	lhz r0, 0x4c8(r3)
/* 80072BF0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80072BF4  41 82 00 14 */	beq lbl_80072C08
/* 80072BF8  38 00 00 03 */	li r0, 3
/* 80072BFC  98 1F 01 9B */	stb r0, 0x19b(r31)
/* 80072C00  98 1F 03 13 */	stb r0, 0x313(r31)
/* 80072C04  48 00 01 64 */	b lbl_80072D68
lbl_80072C08:
/* 80072C08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80072C0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80072C10  80 63 61 B0 */	lwz r3, 0x61b0(r3)
/* 80072C14  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 80072C18  38 81 00 0C */	addi r4, r1, 0xc
/* 80072C1C  48 2D 39 95 */	bl PSMTXInverse
/* 80072C20  7F E3 FB 78 */	mr r3, r31
/* 80072C24  38 80 00 00 */	li r4, 0
/* 80072C28  48 00 09 15 */	bl LockonTarget__12dAttention_cFl
/* 80072C2C  7C 7E 1B 78 */	mr r30, r3
/* 80072C30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80072C34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80072C38  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80072C3C  28 00 00 00 */	cmplwi r0, 0
/* 80072C40  40 82 01 28 */	bne lbl_80072D68
/* 80072C44  28 1E 00 00 */	cmplwi r30, 0
/* 80072C48  41 82 00 B8 */	beq lbl_80072D00
/* 80072C4C  38 7F 00 28 */	addi r3, r31, 0x28
/* 80072C50  38 9E 05 50 */	addi r4, r30, 0x550
/* 80072C54  38 A1 00 0C */	addi r5, r1, 0xc
/* 80072C58  48 00 06 59 */	bl draw__10dAttDraw_cFR4cXyzPA4_f
/* 80072C5C  80 9F 03 D8 */	lwz r4, 0x3d8(r31)
/* 80072C60  2C 04 00 02 */	cmpwi r4, 2
/* 80072C64  41 80 00 60 */	blt lbl_80072CC4
/* 80072C68  88 1F 03 13 */	lbz r0, 0x313(r31)
/* 80072C6C  28 00 00 02 */	cmplwi r0, 2
/* 80072C70  40 82 00 54 */	bne lbl_80072CC4
/* 80072C74  80 7F 03 DC */	lwz r3, 0x3dc(r31)
/* 80072C78  2C 03 00 00 */	cmpwi r3, 0
/* 80072C7C  40 82 00 0C */	bne lbl_80072C88
/* 80072C80  38 04 FF FF */	addi r0, r4, -1
/* 80072C84  48 00 00 08 */	b lbl_80072C8C
lbl_80072C88:
/* 80072C88  38 03 FF FF */	addi r0, r3, -1
lbl_80072C8C:
/* 80072C8C  1C 60 00 14 */	mulli r3, r0, 0x14
/* 80072C90  3B A3 03 38 */	addi r29, r3, 0x338
/* 80072C94  7F BF EA 14 */	add r29, r31, r29
/* 80072C98  7F A3 EB 78 */	mr r3, r29
/* 80072C9C  48 00 0B C9 */	bl getActor__10dAttList_cFv
/* 80072CA0  28 03 00 00 */	cmplwi r3, 0
/* 80072CA4  41 82 00 20 */	beq lbl_80072CC4
/* 80072CA8  7F A3 EB 78 */	mr r3, r29
/* 80072CAC  48 00 0B B9 */	bl getActor__10dAttList_cFv
/* 80072CB0  7C 64 1B 78 */	mr r4, r3
/* 80072CB4  38 7F 01 A0 */	addi r3, r31, 0x1a0
/* 80072CB8  38 84 05 50 */	addi r4, r4, 0x550
/* 80072CBC  38 A1 00 0C */	addi r5, r1, 0xc
/* 80072CC0  48 00 05 F1 */	bl draw__10dAttDraw_cFR4cXyzPA4_f
lbl_80072CC4:
/* 80072CC4  28 1E 00 00 */	cmplwi r30, 0
/* 80072CC8  41 82 00 0C */	beq lbl_80072CD4
/* 80072CCC  80 1E 00 04 */	lwz r0, 4(r30)
/* 80072CD0  48 00 00 08 */	b lbl_80072CD8
lbl_80072CD4:
/* 80072CD4  38 00 FF FF */	li r0, -1
lbl_80072CD8:
/* 80072CD8  90 1F 03 18 */	stw r0, 0x318(r31)
/* 80072CDC  C0 1E 05 50 */	lfs f0, 0x550(r30)
/* 80072CE0  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 80072CE4  C0 1E 05 54 */	lfs f0, 0x554(r30)
/* 80072CE8  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 80072CEC  C0 1E 05 58 */	lfs f0, 0x558(r30)
/* 80072CF0  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 80072CF4  38 00 00 00 */	li r0, 0
/* 80072CF8  98 1F 03 28 */	stb r0, 0x328(r31)
/* 80072CFC  48 00 00 6C */	b lbl_80072D68
lbl_80072D00:
/* 80072D00  88 1F 03 28 */	lbz r0, 0x328(r31)
/* 80072D04  7C 00 07 75 */	extsb. r0, r0
/* 80072D08  40 81 00 60 */	ble lbl_80072D68
/* 80072D0C  80 1F 03 18 */	lwz r0, 0x318(r31)
/* 80072D10  90 01 00 08 */	stw r0, 8(r1)
/* 80072D14  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80072D18  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80072D1C  38 81 00 08 */	addi r4, r1, 8
/* 80072D20  4B FA 6A D9 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80072D24  7C 7E 1B 79 */	or. r30, r3, r3
/* 80072D28  41 82 00 30 */	beq lbl_80072D58
/* 80072D2C  38 7F 00 28 */	addi r3, r31, 0x28
/* 80072D30  38 9E 05 50 */	addi r4, r30, 0x550
/* 80072D34  38 A1 00 0C */	addi r5, r1, 0xc
/* 80072D38  48 00 05 79 */	bl draw__10dAttDraw_cFR4cXyzPA4_f
/* 80072D3C  C0 1E 05 50 */	lfs f0, 0x550(r30)
/* 80072D40  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 80072D44  C0 1E 05 54 */	lfs f0, 0x554(r30)
/* 80072D48  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 80072D4C  C0 1E 05 58 */	lfs f0, 0x558(r30)
/* 80072D50  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 80072D54  48 00 00 14 */	b lbl_80072D68
lbl_80072D58:
/* 80072D58  38 7F 00 28 */	addi r3, r31, 0x28
/* 80072D5C  38 9F 00 1C */	addi r4, r31, 0x1c
/* 80072D60  38 A1 00 0C */	addi r5, r1, 0xc
/* 80072D64  48 00 05 4D */	bl draw__10dAttDraw_cFR4cXyzPA4_f
lbl_80072D68:
/* 80072D68  39 61 00 50 */	addi r11, r1, 0x50
/* 80072D6C  48 2E F4 BD */	bl _restgpr_29
/* 80072D70  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80072D74  7C 08 03 A6 */	mtlr r0
/* 80072D78  38 21 00 50 */	addi r1, r1, 0x50
/* 80072D7C  4E 80 00 20 */	blr 

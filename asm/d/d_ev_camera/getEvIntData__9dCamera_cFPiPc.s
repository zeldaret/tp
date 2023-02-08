lbl_80088CB0:
/* 80088CB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80088CB4  7C 08 02 A6 */	mflr r0
/* 80088CB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80088CBC  39 61 00 20 */	addi r11, r1, 0x20
/* 80088CC0  48 2D 95 19 */	bl _savegpr_28
/* 80088CC4  7C 7C 1B 78 */	mr r28, r3
/* 80088CC8  7C 9D 23 78 */	mr r29, r4
/* 80088CCC  7C BE 2B 78 */	mr r30, r5
/* 80088CD0  80 03 06 0C */	lwz r0, 0x60c(r3)
/* 80088CD4  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 80088CD8  41 82 00 4C */	beq lbl_80088D24
/* 80088CDC  7F C4 F3 78 */	mr r4, r30
/* 80088CE0  4B FF FF 45 */	bl searchEventArgData__9dCamera_cFPc
/* 80088CE4  2C 03 FF FF */	cmpwi r3, -1
/* 80088CE8  40 82 00 0C */	bne lbl_80088CF4
/* 80088CEC  38 60 00 00 */	li r3, 0
/* 80088CF0  48 00 00 88 */	b lbl_80088D78
lbl_80088CF4:
/* 80088CF4  1C 03 00 18 */	mulli r0, r3, 0x18
/* 80088CF8  7C 7C 02 14 */	add r3, r28, r0
/* 80088CFC  80 03 05 24 */	lwz r0, 0x524(r3)
/* 80088D00  2C 00 00 00 */	cmpwi r0, 0
/* 80088D04  40 80 00 10 */	bge lbl_80088D14
/* 80088D08  80 03 05 28 */	lwz r0, 0x528(r3)
/* 80088D0C  90 1D 00 00 */	stw r0, 0(r29)
/* 80088D10  48 00 00 64 */	b lbl_80088D74
lbl_80088D14:
/* 80088D14  80 63 05 28 */	lwz r3, 0x528(r3)
/* 80088D18  80 03 00 00 */	lwz r0, 0(r3)
/* 80088D1C  90 1D 00 00 */	stw r0, 0(r29)
/* 80088D20  48 00 00 54 */	b lbl_80088D74
lbl_80088D24:
/* 80088D24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80088D28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80088D2C  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80088D30  7F E3 FB 78 */	mr r3, r31
/* 80088D34  80 9C 04 EC */	lwz r4, 0x4ec(r28)
/* 80088D38  4B FB F4 0D */	bl getMySubstanceNum__16dEvent_manager_cFiPCc
/* 80088D3C  2C 03 00 00 */	cmpwi r3, 0
/* 80088D40  41 82 00 24 */	beq lbl_80088D64
/* 80088D44  7F E3 FB 78 */	mr r3, r31
/* 80088D48  80 9C 04 EC */	lwz r4, 0x4ec(r28)
/* 80088D4C  7F C5 F3 78 */	mr r5, r30
/* 80088D50  38 C0 00 03 */	li r6, 3
/* 80088D54  4B FB F3 99 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80088D58  80 03 00 00 */	lwz r0, 0(r3)
/* 80088D5C  90 1D 00 00 */	stw r0, 0(r29)
/* 80088D60  48 00 00 14 */	b lbl_80088D74
lbl_80088D64:
/* 80088D64  38 00 00 01 */	li r0, 1
/* 80088D68  98 1C 04 F8 */	stb r0, 0x4f8(r28)
/* 80088D6C  38 60 00 00 */	li r3, 0
/* 80088D70  48 00 00 08 */	b lbl_80088D78
lbl_80088D74:
/* 80088D74  38 60 00 01 */	li r3, 1
lbl_80088D78:
/* 80088D78  39 61 00 20 */	addi r11, r1, 0x20
/* 80088D7C  48 2D 94 A9 */	bl _restgpr_28
/* 80088D80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80088D84  7C 08 03 A6 */	mtlr r0
/* 80088D88  38 21 00 20 */	addi r1, r1, 0x20
/* 80088D8C  4E 80 00 20 */	blr 

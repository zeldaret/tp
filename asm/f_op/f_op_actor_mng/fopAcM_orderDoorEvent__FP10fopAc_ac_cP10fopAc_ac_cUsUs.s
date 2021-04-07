lbl_8001B244:
/* 8001B244  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8001B248  7C 08 02 A6 */	mflr r0
/* 8001B24C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8001B250  39 61 00 30 */	addi r11, r1, 0x30
/* 8001B254  48 34 6F 7D */	bl _savegpr_26
/* 8001B258  7C 7E 1B 78 */	mr r30, r3
/* 8001B25C  7C 9F 23 78 */	mr r31, r4
/* 8001B260  7C BA 2B 78 */	mr r26, r5
/* 8001B264  7C DB 33 78 */	mr r27, r6
/* 8001B268  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8001B26C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8001B270  3B 83 4E C8 */	addi r28, r3, 0x4ec8
/* 8001B274  38 00 00 00 */	li r0, 0
/* 8001B278  88 83 4F AD */	lbz r4, 0x4fad(r3)
/* 8001B27C  28 04 00 00 */	cmplwi r4, 0
/* 8001B280  41 82 00 0C */	beq lbl_8001B28C
/* 8001B284  28 04 00 02 */	cmplwi r4, 2
/* 8001B288  40 82 00 08 */	bne lbl_8001B290
lbl_8001B28C:
/* 8001B28C  38 00 00 01 */	li r0, 1
lbl_8001B290:
/* 8001B290  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8001B294  40 82 00 20 */	bne lbl_8001B2B4
/* 8001B298  57 60 05 6B */	rlwinm. r0, r27, 0, 0x15, 0x15
/* 8001B29C  41 82 00 10 */	beq lbl_8001B2AC
/* 8001B2A0  80 1C 00 F8 */	lwz r0, 0xf8(r28)
/* 8001B2A4  7C 00 F0 40 */	cmplw r0, r30
/* 8001B2A8  41 82 00 0C */	beq lbl_8001B2B4
lbl_8001B2AC:
/* 8001B2AC  38 60 00 00 */	li r3, 0
/* 8001B2B0  48 00 00 6C */	b lbl_8001B31C
lbl_8001B2B4:
/* 8001B2B4  57 40 04 3F */	clrlwi. r0, r26, 0x10
/* 8001B2B8  40 82 00 08 */	bne lbl_8001B2C0
/* 8001B2BC  3B 40 00 FF */	li r26, 0xff
lbl_8001B2C0:
/* 8001B2C0  A9 5F 00 FC */	lha r10, 0xfc(r31)
/* 8001B2C4  8B BF 00 FE */	lbz r29, 0xfe(r31)
/* 8001B2C8  A8 1F 00 0E */	lha r0, 0xe(r31)
/* 8001B2CC  2C 00 00 55 */	cmpwi r0, 0x55
/* 8001B2D0  40 82 00 24 */	bne lbl_8001B2F4
/* 8001B2D4  28 1D 00 FF */	cmplwi r29, 0xff
/* 8001B2D8  41 82 00 1C */	beq lbl_8001B2F4
/* 8001B2DC  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8001B2E0  7F C4 F3 78 */	mr r4, r30
/* 8001B2E4  38 A0 00 00 */	li r5, 0
/* 8001B2E8  7F A6 EB 78 */	mr r6, r29
/* 8001B2EC  48 02 C4 6D */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 8001B2F0  7C 6A 1B 78 */	mr r10, r3
lbl_8001B2F4:
/* 8001B2F4  93 A1 00 08 */	stw r29, 8(r1)
/* 8001B2F8  7F 83 E3 78 */	mr r3, r28
/* 8001B2FC  38 80 00 01 */	li r4, 1
/* 8001B300  7F 45 D3 78 */	mr r5, r26
/* 8001B304  7F 66 DB 78 */	mr r6, r27
/* 8001B308  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 8001B30C  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 8001B310  7F C8 F3 78 */	mr r8, r30
/* 8001B314  7F E9 FB 78 */	mr r9, r31
/* 8001B318  48 02 63 51 */	bl order__14dEvt_control_cFUsUsUsUsPvPvsUc
lbl_8001B31C:
/* 8001B31C  39 61 00 30 */	addi r11, r1, 0x30
/* 8001B320  48 34 6E FD */	bl _restgpr_26
/* 8001B324  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8001B328  7C 08 03 A6 */	mtlr r0
/* 8001B32C  38 21 00 30 */	addi r1, r1, 0x30
/* 8001B330  4E 80 00 20 */	blr 

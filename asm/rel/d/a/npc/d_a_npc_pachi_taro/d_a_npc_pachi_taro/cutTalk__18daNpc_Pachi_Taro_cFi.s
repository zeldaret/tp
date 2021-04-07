lbl_80A9EFC0:
/* 80A9EFC0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A9EFC4  7C 08 02 A6 */	mflr r0
/* 80A9EFC8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A9EFCC  39 61 00 30 */	addi r11, r1, 0x30
/* 80A9EFD0  4B 8C 32 09 */	bl _savegpr_28
/* 80A9EFD4  7C 7C 1B 78 */	mr r28, r3
/* 80A9EFD8  7C 9D 23 78 */	mr r29, r4
/* 80A9EFDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A9EFE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A9EFE4  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80A9EFE8  7F C3 F3 78 */	mr r3, r30
/* 80A9EFEC  3C A0 80 AA */	lis r5, d_a_npc_pachi_taro__stringBase0@ha /* 0x80AA1814@ha */
/* 80A9EFF0  38 A5 18 14 */	addi r5, r5, d_a_npc_pachi_taro__stringBase0@l /* 0x80AA1814@l */
/* 80A9EFF4  38 A5 00 EF */	addi r5, r5, 0xef
/* 80A9EFF8  38 C0 00 03 */	li r6, 3
/* 80A9EFFC  4B 5A 90 F1 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A9F000  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A9F004  40 82 00 0C */	bne lbl_80A9F010
/* 80A9F008  38 60 00 01 */	li r3, 1
/* 80A9F00C  48 00 00 B8 */	b lbl_80A9F0C4
lbl_80A9F010:
/* 80A9F010  38 A1 00 08 */	addi r5, r1, 8
/* 80A9F014  3C 60 80 AA */	lis r3, lit_5615@ha /* 0x80AA1758@ha */
/* 80A9F018  38 63 17 58 */	addi r3, r3, lit_5615@l /* 0x80AA1758@l */
/* 80A9F01C  38 83 FF FC */	addi r4, r3, -4
/* 80A9F020  38 00 00 02 */	li r0, 2
/* 80A9F024  7C 09 03 A6 */	mtctr r0
lbl_80A9F028:
/* 80A9F028  80 64 00 04 */	lwz r3, 4(r4)
/* 80A9F02C  84 04 00 08 */	lwzu r0, 8(r4)
/* 80A9F030  90 65 00 04 */	stw r3, 4(r5)
/* 80A9F034  94 05 00 08 */	stwu r0, 8(r5)
/* 80A9F038  42 00 FF F0 */	bdnz lbl_80A9F028
/* 80A9F03C  80 04 00 04 */	lwz r0, 4(r4)
/* 80A9F040  90 05 00 04 */	stw r0, 4(r5)
/* 80A9F044  88 1C 0F E8 */	lbz r0, 0xfe8(r28)
/* 80A9F048  7C 00 07 75 */	extsb. r0, r0
/* 80A9F04C  40 80 00 0C */	bge lbl_80A9F058
/* 80A9F050  7F 83 E3 78 */	mr r3, r28
/* 80A9F054  4B FF F1 01 */	bl setMesPat__18daNpc_Pachi_Taro_cFv
lbl_80A9F058:
/* 80A9F058  38 00 00 00 */	li r0, 0
/* 80A9F05C  90 01 00 08 */	stw r0, 8(r1)
/* 80A9F060  7F C3 F3 78 */	mr r3, r30
/* 80A9F064  7F A4 EB 78 */	mr r4, r29
/* 80A9F068  88 1C 0F E8 */	lbz r0, 0xfe8(r28)
/* 80A9F06C  7C 00 07 74 */	extsb r0, r0
/* 80A9F070  54 00 10 3A */	slwi r0, r0, 2
/* 80A9F074  38 A1 00 0C */	addi r5, r1, 0xc
/* 80A9F078  7C A5 00 2E */	lwzx r5, r5, r0
/* 80A9F07C  38 C0 00 03 */	li r6, 3
/* 80A9F080  4B 5A 90 6D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A9F084  28 03 00 00 */	cmplwi r3, 0
/* 80A9F088  41 82 00 0C */	beq lbl_80A9F094
/* 80A9F08C  80 03 00 00 */	lwz r0, 0(r3)
/* 80A9F090  90 01 00 08 */	stw r0, 8(r1)
lbl_80A9F094:
/* 80A9F094  7F C3 F3 78 */	mr r3, r30
/* 80A9F098  7F A4 EB 78 */	mr r4, r29
/* 80A9F09C  4B 5A 8C B1 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A9F0A0  2C 03 00 00 */	cmpwi r3, 0
/* 80A9F0A4  41 82 00 10 */	beq lbl_80A9F0B4
/* 80A9F0A8  7F 83 E3 78 */	mr r3, r28
/* 80A9F0AC  7F E4 FB 78 */	mr r4, r31
/* 80A9F0B0  48 00 00 2D */	bl _cutTalk_Init__18daNpc_Pachi_Taro_cFRCi
lbl_80A9F0B4:
/* 80A9F0B4  7F 83 E3 78 */	mr r3, r28
/* 80A9F0B8  7F E4 FB 78 */	mr r4, r31
/* 80A9F0BC  38 A1 00 08 */	addi r5, r1, 8
/* 80A9F0C0  48 00 00 C9 */	bl _cutTalk_Main__18daNpc_Pachi_Taro_cFRCiRCi
lbl_80A9F0C4:
/* 80A9F0C4  39 61 00 30 */	addi r11, r1, 0x30
/* 80A9F0C8  4B 8C 31 5D */	bl _restgpr_28
/* 80A9F0CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A9F0D0  7C 08 03 A6 */	mtlr r0
/* 80A9F0D4  38 21 00 30 */	addi r1, r1, 0x30
/* 80A9F0D8  4E 80 00 20 */	blr 

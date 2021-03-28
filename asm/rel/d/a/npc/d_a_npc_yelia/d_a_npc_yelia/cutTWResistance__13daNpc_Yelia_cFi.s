lbl_80B4F3E0:
/* 80B4F3E0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B4F3E4  7C 08 02 A6 */	mflr r0
/* 80B4F3E8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B4F3EC  39 61 00 30 */	addi r11, r1, 0x30
/* 80B4F3F0  4B 81 2D E4 */	b _savegpr_27
/* 80B4F3F4  7C 7B 1B 78 */	mr r27, r3
/* 80B4F3F8  7C 9C 23 78 */	mr r28, r4
/* 80B4F3FC  3B C0 00 00 */	li r30, 0
/* 80B4F400  3B A0 FF FF */	li r29, -1
/* 80B4F404  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B4F408  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B4F40C  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80B4F410  7F E3 FB 78 */	mr r3, r31
/* 80B4F414  3C A0 80 B5 */	lis r5, struct_80B52408+0x0@ha
/* 80B4F418  38 A5 24 08 */	addi r5, r5, struct_80B52408+0x0@l
/* 80B4F41C  38 A5 00 AA */	addi r5, r5, 0xaa
/* 80B4F420  38 C0 00 03 */	li r6, 3
/* 80B4F424  4B 4F 8C C8 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B4F428  28 03 00 00 */	cmplwi r3, 0
/* 80B4F42C  41 82 00 08 */	beq lbl_80B4F434
/* 80B4F430  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80B4F434:
/* 80B4F434  3C 60 80 B5 */	lis r3, lit_5202@ha
/* 80B4F438  38 83 23 D4 */	addi r4, r3, lit_5202@l
/* 80B4F43C  80 64 00 00 */	lwz r3, 0(r4)
/* 80B4F440  80 04 00 04 */	lwz r0, 4(r4)
/* 80B4F444  90 61 00 08 */	stw r3, 8(r1)
/* 80B4F448  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B4F44C  93 61 00 08 */	stw r27, 8(r1)
/* 80B4F450  38 7B 0F 84 */	addi r3, r27, 0xf84
/* 80B4F454  4B 5F 62 B4 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B4F458  90 61 00 0C */	stw r3, 0xc(r1)
/* 80B4F45C  80 01 00 08 */	lwz r0, 8(r1)
/* 80B4F460  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B4F464  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B4F468  90 04 5E F0 */	stw r0, 0x5ef0(r4)
/* 80B4F46C  90 64 5E F4 */	stw r3, 0x5ef4(r4)
/* 80B4F470  38 00 00 00 */	li r0, 0
/* 80B4F474  90 04 5E F8 */	stw r0, 0x5ef8(r4)
/* 80B4F478  90 04 5E FC */	stw r0, 0x5efc(r4)
/* 80B4F47C  90 04 5F 00 */	stw r0, 0x5f00(r4)
/* 80B4F480  90 04 5F 04 */	stw r0, 0x5f04(r4)
/* 80B4F484  90 04 5F 08 */	stw r0, 0x5f08(r4)
/* 80B4F488  90 04 5F 0C */	stw r0, 0x5f0c(r4)
/* 80B4F48C  90 04 5F 10 */	stw r0, 0x5f10(r4)
/* 80B4F490  90 04 5F 14 */	stw r0, 0x5f14(r4)
/* 80B4F494  7F E3 FB 78 */	mr r3, r31
/* 80B4F498  7F 84 E3 78 */	mr r4, r28
/* 80B4F49C  4B 4F 88 B0 */	b getIsAddvance__16dEvent_manager_cFi
/* 80B4F4A0  2C 03 00 00 */	cmpwi r3, 0
/* 80B4F4A4  41 82 00 24 */	beq lbl_80B4F4C8
/* 80B4F4A8  2C 1D 00 01 */	cmpwi r29, 1
/* 80B4F4AC  41 82 00 0C */	beq lbl_80B4F4B8
/* 80B4F4B0  40 80 00 18 */	bge lbl_80B4F4C8
/* 80B4F4B4  48 00 00 14 */	b lbl_80B4F4C8
lbl_80B4F4B8:
/* 80B4F4B8  7F 63 DB 78 */	mr r3, r27
/* 80B4F4BC  80 9B 0A 7C */	lwz r4, 0xa7c(r27)
/* 80B4F4C0  38 A0 00 00 */	li r5, 0
/* 80B4F4C4  4B 5F C7 2C */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_80B4F4C8:
/* 80B4F4C8  2C 1D 00 01 */	cmpwi r29, 1
/* 80B4F4CC  41 82 00 1C */	beq lbl_80B4F4E8
/* 80B4F4D0  40 80 00 48 */	bge lbl_80B4F518
/* 80B4F4D4  2C 1D 00 00 */	cmpwi r29, 0
/* 80B4F4D8  40 80 00 08 */	bge lbl_80B4F4E0
/* 80B4F4DC  48 00 00 3C */	b lbl_80B4F518
lbl_80B4F4E0:
/* 80B4F4E0  3B C0 00 01 */	li r30, 1
/* 80B4F4E4  48 00 00 34 */	b lbl_80B4F518
lbl_80B4F4E8:
/* 80B4F4E8  7F 63 DB 78 */	mr r3, r27
/* 80B4F4EC  38 80 00 00 */	li r4, 0
/* 80B4F4F0  38 A0 00 01 */	li r5, 1
/* 80B4F4F4  38 C1 00 08 */	addi r6, r1, 8
/* 80B4F4F8  38 E0 00 00 */	li r7, 0
/* 80B4F4FC  4B 5F C7 7C */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B4F500  2C 03 00 00 */	cmpwi r3, 0
/* 80B4F504  41 82 00 14 */	beq lbl_80B4F518
/* 80B4F508  88 1B 09 9A */	lbz r0, 0x99a(r27)
/* 80B4F50C  28 00 00 01 */	cmplwi r0, 1
/* 80B4F510  40 82 00 08 */	bne lbl_80B4F518
/* 80B4F514  3B C0 00 01 */	li r30, 1
lbl_80B4F518:
/* 80B4F518  7F C3 F3 78 */	mr r3, r30
/* 80B4F51C  39 61 00 30 */	addi r11, r1, 0x30
/* 80B4F520  4B 81 2D 00 */	b _restgpr_27
/* 80B4F524  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B4F528  7C 08 03 A6 */	mtlr r0
/* 80B4F52C  38 21 00 30 */	addi r1, r1, 0x30
/* 80B4F530  4E 80 00 20 */	blr 

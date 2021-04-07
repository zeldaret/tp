lbl_8059E488:
/* 8059E488  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059E48C  7C 08 02 A6 */	mflr r0
/* 8059E490  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059E494  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059E498  93 C1 00 08 */	stw r30, 8(r1)
/* 8059E49C  7C 7E 1B 78 */	mr r30, r3
/* 8059E4A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8059E4A4  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8059E4A8  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 8059E4AC  A8 9E 05 78 */	lha r4, 0x578(r30)
/* 8059E4B0  4B AA 95 C9 */	bl endCheck__16dEvent_manager_cFs
/* 8059E4B4  2C 03 00 00 */	cmpwi r3, 0
/* 8059E4B8  41 82 00 18 */	beq lbl_8059E4D0
/* 8059E4BC  38 00 00 03 */	li r0, 3
/* 8059E4C0  98 1E 05 7B */	stb r0, 0x57b(r30)
/* 8059E4C4  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 8059E4C8  4B AA 3F A1 */	bl reset__14dEvt_control_cFv
/* 8059E4CC  48 00 00 20 */	b lbl_8059E4EC
lbl_8059E4D0:
/* 8059E4D0  7F C3 F3 78 */	mr r3, r30
/* 8059E4D4  48 00 00 35 */	bl demoProc__10daScExit_cFv
/* 8059E4D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8059E4DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8059E4E0  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 8059E4E4  64 00 04 00 */	oris r0, r0, 0x400
/* 8059E4E8  90 03 5F 1C */	stw r0, 0x5f1c(r3)
lbl_8059E4EC:
/* 8059E4EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059E4F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8059E4F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059E4F8  7C 08 03 A6 */	mtlr r0
/* 8059E4FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8059E500  4E 80 00 20 */	blr 

lbl_8045E094:
/* 8045E094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045E098  7C 08 02 A6 */	mflr r0
/* 8045E09C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045E0A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045E0A4  93 C1 00 08 */	stw r30, 8(r1)
/* 8045E0A8  7C 7E 1B 78 */	mr r30, r3
/* 8045E0AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8045E0B0  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8045E0B4  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 8045E0B8  3C 80 80 46 */	lis r4, d_a_door_dbdoor00__stringBase0@ha /* 0x8045E56C@ha */
/* 8045E0BC  38 84 E5 6C */	addi r4, r4, d_a_door_dbdoor00__stringBase0@l /* 0x8045E56C@l */
/* 8045E0C0  38 84 00 BE */	addi r4, r4, 0xbe
/* 8045E0C4  4B BE 9A 19 */	bl endCheckOld__16dEvent_manager_cFPCc
/* 8045E0C8  2C 03 00 00 */	cmpwi r3, 0
/* 8045E0CC  41 82 00 18 */	beq lbl_8045E0E4
/* 8045E0D0  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 8045E0D4  4B BE 43 95 */	bl reset__14dEvt_control_cFv
/* 8045E0D8  38 00 00 04 */	li r0, 4
/* 8045E0DC  98 1E 05 86 */	stb r0, 0x586(r30)
/* 8045E0E0  48 00 00 0C */	b lbl_8045E0EC
lbl_8045E0E4:
/* 8045E0E4  7F C3 F3 78 */	mr r3, r30
/* 8045E0E8  4B FF F9 C9 */	bl demoProc__12daDbDoor00_cFv
lbl_8045E0EC:
/* 8045E0EC  38 60 00 01 */	li r3, 1
/* 8045E0F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045E0F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8045E0F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045E0FC  7C 08 03 A6 */	mtlr r0
/* 8045E100  38 21 00 10 */	addi r1, r1, 0x10
/* 8045E104  4E 80 00 20 */	blr 

lbl_8046416C:
/* 8046416C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80464170  7C 08 02 A6 */	mflr r0
/* 80464174  90 01 00 14 */	stw r0, 0x14(r1)
/* 80464178  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046417C  93 C1 00 08 */	stw r30, 8(r1)
/* 80464180  7C 7E 1B 78 */	mr r30, r3
/* 80464184  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80464188  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8046418C  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80464190  88 1E 06 CB */	lbz r0, 0x6cb(r30)
/* 80464194  54 00 08 3C */	slwi r0, r0, 1
/* 80464198  7C 9E 02 14 */	add r4, r30, r0
/* 8046419C  A8 84 06 92 */	lha r4, 0x692(r4)
/* 804641A0  4B BE 38 D9 */	bl endCheck__16dEvent_manager_cFs
/* 804641A4  2C 03 00 00 */	cmpwi r3, 0
/* 804641A8  41 82 00 20 */	beq lbl_804641C8
/* 804641AC  38 00 00 01 */	li r0, 1
/* 804641B0  98 1E 06 90 */	stb r0, 0x690(r30)
/* 804641B4  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 804641B8  4B BD E2 B1 */	bl reset__14dEvt_control_cFv
/* 804641BC  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 804641C0  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 804641C4  48 00 00 0C */	b lbl_804641D0
lbl_804641C8:
/* 804641C8  7F C3 F3 78 */	mr r3, r30
/* 804641CC  4B FF EE 15 */	bl demoProc__10daDoor20_cFv
lbl_804641D0:
/* 804641D0  38 60 00 01 */	li r3, 1
/* 804641D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804641D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 804641DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804641E0  7C 08 03 A6 */	mtlr r0
/* 804641E4  38 21 00 10 */	addi r1, r1, 0x10
/* 804641E8  4E 80 00 20 */	blr 

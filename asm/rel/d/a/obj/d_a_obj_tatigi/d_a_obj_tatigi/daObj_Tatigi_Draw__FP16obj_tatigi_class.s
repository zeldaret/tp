lbl_80D079D8:
/* 80D079D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D079DC  7C 08 02 A6 */	mflr r0
/* 80D079E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D079E4  39 61 00 20 */	addi r11, r1, 0x20
/* 80D079E8  4B 65 A7 ED */	bl _savegpr_27
/* 80D079EC  7C 7B 1B 78 */	mr r27, r3
/* 80D079F0  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 80D079F4  7C 00 07 74 */	extsb r0, r0
/* 80D079F8  7C 1E 03 78 */	mr r30, r0
/* 80D079FC  3B BB 05 7C */	addi r29, r27, 0x57c
/* 80D07A00  3B 80 00 00 */	li r28, 0
/* 80D07A04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D07A08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D07A0C  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80D07A10  48 00 00 28 */	b lbl_80D07A38
lbl_80D07A14:
/* 80D07A14  88 1D 01 5C */	lbz r0, 0x15c(r29)
/* 80D07A18  7C 00 07 75 */	extsb. r0, r0
/* 80D07A1C  41 82 00 14 */	beq lbl_80D07A30
/* 80D07A20  7F E3 FB 78 */	mr r3, r31
/* 80D07A24  80 9D 00 00 */	lwz r4, 0(r29)
/* 80D07A28  7F C5 F3 78 */	mr r5, r30
/* 80D07A2C  4B 32 51 3D */	bl entrySimpleModel__14dComIfG_play_cFP8J3DModeli
lbl_80D07A30:
/* 80D07A30  3B 9C 00 01 */	addi r28, r28, 1
/* 80D07A34  3B BD 01 60 */	addi r29, r29, 0x160
lbl_80D07A38:
/* 80D07A38  80 1B 1B 7C */	lwz r0, 0x1b7c(r27)
/* 80D07A3C  7C 1C 00 00 */	cmpw r28, r0
/* 80D07A40  41 80 FF D4 */	blt lbl_80D07A14
/* 80D07A44  38 60 00 01 */	li r3, 1
/* 80D07A48  39 61 00 20 */	addi r11, r1, 0x20
/* 80D07A4C  4B 65 A7 D5 */	bl _restgpr_27
/* 80D07A50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D07A54  7C 08 03 A6 */	mtlr r0
/* 80D07A58  38 21 00 20 */	addi r1, r1, 0x20
/* 80D07A5C  4E 80 00 20 */	blr 

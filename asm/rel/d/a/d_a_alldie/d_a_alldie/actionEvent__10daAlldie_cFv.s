lbl_804D59A0:
/* 804D59A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D59A4  7C 08 02 A6 */	mflr r0
/* 804D59A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D59AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D59B0  93 C1 00 08 */	stw r30, 8(r1)
/* 804D59B4  7C 7E 1B 78 */	mr r30, r3
/* 804D59B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804D59BC  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804D59C0  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 804D59C4  A8 9E 05 6C */	lha r4, 0x56c(r30)
/* 804D59C8  4B B7 20 B1 */	bl endCheck__16dEvent_manager_cFs
/* 804D59CC  2C 03 00 00 */	cmpwi r3, 0
/* 804D59D0  41 82 00 58 */	beq lbl_804D5A28
/* 804D59D4  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 804D59D8  4B B6 CA 91 */	bl reset__14dEvt_control_cFv
/* 804D59DC  A8 1E 05 6E */	lha r0, 0x56e(r30)
/* 804D59E0  2C 00 FF FF */	cmpwi r0, -1
/* 804D59E4  41 82 00 34 */	beq lbl_804D5A18
/* 804D59E8  38 00 00 04 */	li r0, 4
/* 804D59EC  98 1E 05 68 */	stb r0, 0x568(r30)
/* 804D59F0  7F C3 F3 78 */	mr r3, r30
/* 804D59F4  A8 9E 05 6E */	lha r4, 0x56e(r30)
/* 804D59F8  A8 1E 05 70 */	lha r0, 0x570(r30)
/* 804D59FC  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 804D5A00  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 804D5A04  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 804D5A08  38 E0 00 00 */	li r7, 0
/* 804D5A0C  39 00 00 01 */	li r8, 1
/* 804D5A10  4B B4 5C 6D */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 804D5A14  48 00 00 14 */	b lbl_804D5A28
lbl_804D5A18:
/* 804D5A18  38 00 00 00 */	li r0, 0
/* 804D5A1C  98 1E 05 68 */	stb r0, 0x568(r30)
/* 804D5A20  38 00 FF FF */	li r0, -1
/* 804D5A24  B0 1E 05 70 */	sth r0, 0x570(r30)
lbl_804D5A28:
/* 804D5A28  38 60 00 01 */	li r3, 1
/* 804D5A2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D5A30  83 C1 00 08 */	lwz r30, 8(r1)
/* 804D5A34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D5A38  7C 08 03 A6 */	mtlr r0
/* 804D5A3C  38 21 00 10 */	addi r1, r1, 0x10
/* 804D5A40  4E 80 00 20 */	blr 

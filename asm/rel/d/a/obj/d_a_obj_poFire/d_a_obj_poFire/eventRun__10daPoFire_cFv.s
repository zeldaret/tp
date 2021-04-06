lbl_80CB3BE0:
/* 80CB3BE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB3BE4  7C 08 02 A6 */	mflr r0
/* 80CB3BE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB3BEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB3BF0  93 C1 00 08 */	stw r30, 8(r1)
/* 80CB3BF4  7C 7E 1B 78 */	mr r30, r3
/* 80CB3BF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CB3BFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CB3C00  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80CB3C04  7F E3 FB 78 */	mr r3, r31
/* 80CB3C08  80 9E 05 8C */	lwz r4, 0x58c(r30)
/* 80CB3C0C  3C A0 80 CB */	lis r5, action_table@ha /* 0x80CB404C@ha */
/* 80CB3C10  38 A5 40 4C */	addi r5, r5, action_table@l /* 0x80CB404C@l */
/* 80CB3C14  38 C0 00 01 */	li r6, 1
/* 80CB3C18  38 E0 00 00 */	li r7, 0
/* 80CB3C1C  39 00 00 00 */	li r8, 0
/* 80CB3C20  4B 39 41 F1 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80CB3C24  2C 03 00 00 */	cmpwi r3, 0
/* 80CB3C28  41 82 00 08 */	beq lbl_80CB3C30
/* 80CB3C2C  48 00 00 1C */	b lbl_80CB3C48
lbl_80CB3C30:
/* 80CB3C30  88 1E 05 94 */	lbz r0, 0x594(r30)
/* 80CB3C34  28 00 00 00 */	cmplwi r0, 0
/* 80CB3C38  41 82 00 10 */	beq lbl_80CB3C48
/* 80CB3C3C  7F E3 FB 78 */	mr r3, r31
/* 80CB3C40  80 9E 05 8C */	lwz r4, 0x58c(r30)
/* 80CB3C44  4B 39 45 39 */	bl cutEnd__16dEvent_manager_cFi
lbl_80CB3C48:
/* 80CB3C48  38 60 00 01 */	li r3, 1
/* 80CB3C4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB3C50  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CB3C54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB3C58  7C 08 03 A6 */	mtlr r0
/* 80CB3C5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB3C60  4E 80 00 20 */	blr 

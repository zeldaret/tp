lbl_80AF1B8C:
/* 80AF1B8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AF1B90  7C 08 02 A6 */	mflr r0
/* 80AF1B94  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AF1B98  39 61 00 20 */	addi r11, r1, 0x20
/* 80AF1B9C  4B 87 06 39 */	bl _savegpr_27
/* 80AF1BA0  7C 7B 1B 78 */	mr r27, r3
/* 80AF1BA4  7C 9C 23 78 */	mr r28, r4
/* 80AF1BA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AF1BAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AF1BB0  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80AF1BB4  3B C0 00 00 */	li r30, 0
/* 80AF1BB8  3B A0 FF FF */	li r29, -1
/* 80AF1BBC  7F E3 FB 78 */	mr r3, r31
/* 80AF1BC0  3C A0 80 AF */	lis r5, d_a_npc_soldierA__stringBase0@ha /* 0x80AF2864@ha */
/* 80AF1BC4  38 A5 28 64 */	addi r5, r5, d_a_npc_soldierA__stringBase0@l /* 0x80AF2864@l */
/* 80AF1BC8  38 A5 00 1F */	addi r5, r5, 0x1f
/* 80AF1BCC  38 C0 00 03 */	li r6, 3
/* 80AF1BD0  4B 55 65 1D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80AF1BD4  28 03 00 00 */	cmplwi r3, 0
/* 80AF1BD8  41 82 00 08 */	beq lbl_80AF1BE0
/* 80AF1BDC  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80AF1BE0:
/* 80AF1BE0  7F E3 FB 78 */	mr r3, r31
/* 80AF1BE4  7F 84 E3 78 */	mr r4, r28
/* 80AF1BE8  4B 55 61 65 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80AF1BEC  2C 03 00 00 */	cmpwi r3, 0
/* 80AF1BF0  41 82 00 4C */	beq lbl_80AF1C3C
/* 80AF1BF4  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80AF1BF8  41 82 00 20 */	beq lbl_80AF1C18
/* 80AF1BFC  40 80 00 10 */	bge lbl_80AF1C0C
/* 80AF1C00  2C 1D 00 00 */	cmpwi r29, 0
/* 80AF1C04  41 82 00 38 */	beq lbl_80AF1C3C
/* 80AF1C08  48 00 00 34 */	b lbl_80AF1C3C
lbl_80AF1C0C:
/* 80AF1C0C  2C 1D 00 14 */	cmpwi r29, 0x14
/* 80AF1C10  41 82 00 2C */	beq lbl_80AF1C3C
/* 80AF1C14  48 00 00 28 */	b lbl_80AF1C3C
lbl_80AF1C18:
/* 80AF1C18  7F 63 DB 78 */	mr r3, r27
/* 80AF1C1C  38 80 00 02 */	li r4, 2
/* 80AF1C20  3C A0 80 AF */	lis r5, lit_5059@ha /* 0x80AF2848@ha */
/* 80AF1C24  C0 25 28 48 */	lfs f1, lit_5059@l(r5)  /* 0x80AF2848@l */
/* 80AF1C28  38 A0 00 00 */	li r5, 0
/* 80AF1C2C  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80AF1C30  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AF1C34  7D 89 03 A6 */	mtctr r12
/* 80AF1C38  4E 80 04 21 */	bctrl 
lbl_80AF1C3C:
/* 80AF1C3C  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80AF1C40  41 82 00 28 */	beq lbl_80AF1C68
/* 80AF1C44  40 80 00 10 */	bge lbl_80AF1C54
/* 80AF1C48  2C 1D 00 00 */	cmpwi r29, 0
/* 80AF1C4C  41 82 00 14 */	beq lbl_80AF1C60
/* 80AF1C50  48 00 00 34 */	b lbl_80AF1C84
lbl_80AF1C54:
/* 80AF1C54  2C 1D 00 14 */	cmpwi r29, 0x14
/* 80AF1C58  41 82 00 24 */	beq lbl_80AF1C7C
/* 80AF1C5C  48 00 00 28 */	b lbl_80AF1C84
lbl_80AF1C60:
/* 80AF1C60  3B C0 00 01 */	li r30, 1
/* 80AF1C64  48 00 00 24 */	b lbl_80AF1C88
lbl_80AF1C68:
/* 80AF1C68  A8 1B 09 DA */	lha r0, 0x9da(r27)
/* 80AF1C6C  2C 00 00 00 */	cmpwi r0, 0
/* 80AF1C70  40 81 00 18 */	ble lbl_80AF1C88
/* 80AF1C74  3B C0 00 01 */	li r30, 1
/* 80AF1C78  48 00 00 10 */	b lbl_80AF1C88
lbl_80AF1C7C:
/* 80AF1C7C  3B C0 00 01 */	li r30, 1
/* 80AF1C80  48 00 00 08 */	b lbl_80AF1C88
lbl_80AF1C84:
/* 80AF1C84  3B C0 00 01 */	li r30, 1
lbl_80AF1C88:
/* 80AF1C88  7F C3 F3 78 */	mr r3, r30
/* 80AF1C8C  39 61 00 20 */	addi r11, r1, 0x20
/* 80AF1C90  4B 87 05 91 */	bl _restgpr_27
/* 80AF1C94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AF1C98  7C 08 03 A6 */	mtlr r0
/* 80AF1C9C  38 21 00 20 */	addi r1, r1, 0x20
/* 80AF1CA0  4E 80 00 20 */	blr 

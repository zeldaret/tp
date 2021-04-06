lbl_80A9EB3C:
/* 80A9EB3C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A9EB40  7C 08 02 A6 */	mflr r0
/* 80A9EB44  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A9EB48  39 61 00 30 */	addi r11, r1, 0x30
/* 80A9EB4C  4B 8C 36 91 */	bl _savegpr_29
/* 80A9EB50  7C 7D 1B 78 */	mr r29, r3
/* 80A9EB54  7C 9E 23 78 */	mr r30, r4
/* 80A9EB58  3C 60 80 AA */	lis r3, lit_5507@ha /* 0x80AA1728@ha */
/* 80A9EB5C  38 83 17 28 */	addi r4, r3, lit_5507@l /* 0x80AA1728@l */
/* 80A9EB60  80 64 00 00 */	lwz r3, 0(r4)
/* 80A9EB64  80 04 00 04 */	lwz r0, 4(r4)
/* 80A9EB68  90 61 00 08 */	stw r3, 8(r1)
/* 80A9EB6C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A9EB70  80 04 00 08 */	lwz r0, 8(r4)
/* 80A9EB74  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A9EB78  93 A1 00 08 */	stw r29, 8(r1)
/* 80A9EB7C  38 7D 0F 8C */	addi r3, r29, 0xf8c
/* 80A9EB80  4B 6A 6B 89 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A9EB84  90 61 00 0C */	stw r3, 0xc(r1)
/* 80A9EB88  38 7D 0F 94 */	addi r3, r29, 0xf94
/* 80A9EB8C  4B 6A 6B 7D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A9EB90  90 61 00 10 */	stw r3, 0x10(r1)
/* 80A9EB94  3B E0 00 00 */	li r31, 0
/* 80A9EB98  80 1E 00 00 */	lwz r0, 0(r30)
/* 80A9EB9C  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A9EBA0  41 82 00 08 */	beq lbl_80A9EBA8
/* 80A9EBA4  48 00 00 9C */	b lbl_80A9EC40
lbl_80A9EBA8:
/* 80A9EBA8  7F A3 EB 78 */	mr r3, r29
/* 80A9EBAC  38 80 00 00 */	li r4, 0
/* 80A9EBB0  38 A0 00 00 */	li r5, 0
/* 80A9EBB4  38 C1 00 08 */	addi r6, r1, 8
/* 80A9EBB8  38 E0 00 00 */	li r7, 0
/* 80A9EBBC  4B 6A D0 BD */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A9EBC0  2C 03 00 00 */	cmpwi r3, 0
/* 80A9EBC4  41 82 00 0C */	beq lbl_80A9EBD0
/* 80A9EBC8  3B E0 00 01 */	li r31, 1
/* 80A9EBCC  48 00 00 74 */	b lbl_80A9EC40
lbl_80A9EBD0:
/* 80A9EBD0  38 7D 09 74 */	addi r3, r29, 0x974
/* 80A9EBD4  4B 7A B9 6D */	bl getNowMsgNo__10dMsgFlow_cFv
/* 80A9EBD8  28 03 16 88 */	cmplwi r3, 0x1688
/* 80A9EBDC  41 82 00 0C */	beq lbl_80A9EBE8
/* 80A9EBE0  28 03 16 6B */	cmplwi r3, 0x166b
/* 80A9EBE4  40 82 00 34 */	bne lbl_80A9EC18
lbl_80A9EBE8:
/* 80A9EBE8  A8 7D 0F DA */	lha r3, 0xfda(r29)
/* 80A9EBEC  38 03 FF FF */	addi r0, r3, -1
/* 80A9EBF0  B0 1D 0F DA */	sth r0, 0xfda(r29)
/* 80A9EBF4  7C 00 07 35 */	extsh. r0, r0
/* 80A9EBF8  40 82 00 48 */	bne lbl_80A9EC40
/* 80A9EBFC  38 7D 0F 94 */	addi r3, r29, 0xf94
/* 80A9EC00  4B 6A 6B 09 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A9EC04  28 03 00 00 */	cmplwi r3, 0
/* 80A9EC08  41 82 00 38 */	beq lbl_80A9EC40
/* 80A9EC0C  38 00 00 03 */	li r0, 3
/* 80A9EC10  98 03 0F 9E */	stb r0, 0xf9e(r3)
/* 80A9EC14  48 00 00 2C */	b lbl_80A9EC40
lbl_80A9EC18:
/* 80A9EC18  28 03 16 89 */	cmplwi r3, 0x1689
/* 80A9EC1C  41 82 00 0C */	beq lbl_80A9EC28
/* 80A9EC20  28 03 16 6C */	cmplwi r3, 0x166c
/* 80A9EC24  40 82 00 1C */	bne lbl_80A9EC40
lbl_80A9EC28:
/* 80A9EC28  38 7D 0F 94 */	addi r3, r29, 0xf94
/* 80A9EC2C  4B 6A 6A DD */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A9EC30  28 03 00 00 */	cmplwi r3, 0
/* 80A9EC34  41 82 00 0C */	beq lbl_80A9EC40
/* 80A9EC38  38 00 00 04 */	li r0, 4
/* 80A9EC3C  98 03 0F 9E */	stb r0, 0xf9e(r3)
lbl_80A9EC40:
/* 80A9EC40  7F E3 FB 78 */	mr r3, r31
/* 80A9EC44  39 61 00 30 */	addi r11, r1, 0x30
/* 80A9EC48  4B 8C 35 E1 */	bl _restgpr_29
/* 80A9EC4C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A9EC50  7C 08 03 A6 */	mtlr r0
/* 80A9EC54  38 21 00 30 */	addi r1, r1, 0x30
/* 80A9EC58  4E 80 00 20 */	blr 

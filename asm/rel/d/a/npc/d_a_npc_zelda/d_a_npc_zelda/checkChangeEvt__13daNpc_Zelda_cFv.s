lbl_80B75E34:
/* 80B75E34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B75E38  7C 08 02 A6 */	mflr r0
/* 80B75E3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B75E40  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B75E44  7C 7F 1B 78 */	mr r31, r3
/* 80B75E48  3C 80 80 B8 */	lis r4, lit_4555@ha /* 0x80B78210@ha */
/* 80B75E4C  38 A4 82 10 */	addi r5, r4, lit_4555@l /* 0x80B78210@l */
/* 80B75E50  80 85 00 00 */	lwz r4, 0(r5)
/* 80B75E54  80 05 00 04 */	lwz r0, 4(r5)
/* 80B75E58  90 81 00 08 */	stw r4, 8(r1)
/* 80B75E5C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B75E60  80 05 00 08 */	lwz r0, 8(r5)
/* 80B75E64  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B75E68  38 81 00 08 */	addi r4, r1, 8
/* 80B75E6C  48 00 09 59 */	bl chkAction__13daNpc_Zelda_cFM13daNpc_Zelda_cFPCvPvPv_i
/* 80B75E70  2C 03 00 00 */	cmpwi r3, 0
/* 80B75E74  40 82 00 5C */	bne lbl_80B75ED0
/* 80B75E78  38 00 00 00 */	li r0, 0
/* 80B75E7C  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 80B75E80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B75E84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B75E88  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80B75E8C  28 04 00 01 */	cmplwi r4, 1
/* 80B75E90  41 82 00 0C */	beq lbl_80B75E9C
/* 80B75E94  28 04 00 02 */	cmplwi r4, 2
/* 80B75E98  40 82 00 08 */	bne lbl_80B75EA0
lbl_80B75E9C:
/* 80B75E9C  38 00 00 01 */	li r0, 1
lbl_80B75EA0:
/* 80B75EA0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B75EA4  41 82 00 2C */	beq lbl_80B75ED0
/* 80B75EA8  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80B75EAC  4B 4D 29 45 */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 80B75EB0  2C 03 00 00 */	cmpwi r3, 0
/* 80B75EB4  41 82 00 14 */	beq lbl_80B75EC8
/* 80B75EB8  38 00 00 01 */	li r0, 1
/* 80B75EBC  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80B75EC0  7F E3 FB 78 */	mr r3, r31
/* 80B75EC4  4B 5D 43 61 */	bl evtChange__8daNpcT_cFv
lbl_80B75EC8:
/* 80B75EC8  38 60 00 01 */	li r3, 1
/* 80B75ECC  48 00 00 08 */	b lbl_80B75ED4
lbl_80B75ED0:
/* 80B75ED0  38 60 00 00 */	li r3, 0
lbl_80B75ED4:
/* 80B75ED4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B75ED8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B75EDC  7C 08 03 A6 */	mtlr r0
/* 80B75EE0  38 21 00 20 */	addi r1, r1, 0x20
/* 80B75EE4  4E 80 00 20 */	blr 

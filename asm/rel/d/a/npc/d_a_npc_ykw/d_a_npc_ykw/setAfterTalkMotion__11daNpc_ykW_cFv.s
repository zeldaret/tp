lbl_80B60520:
/* 80B60520  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B60524  7C 08 02 A6 */	mflr r0
/* 80B60528  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B6052C  39 61 00 20 */	addi r11, r1, 0x20
/* 80B60530  4B 80 1C AC */	b _savegpr_29
/* 80B60534  7C 7D 1B 78 */	mr r29, r3
/* 80B60538  3B C0 00 0D */	li r30, 0xd
/* 80B6053C  80 03 0B 58 */	lwz r0, 0xb58(r3)
/* 80B60540  2C 00 00 07 */	cmpwi r0, 7
/* 80B60544  41 82 00 20 */	beq lbl_80B60564
/* 80B60548  40 80 00 10 */	bge lbl_80B60558
/* 80B6054C  2C 00 00 02 */	cmpwi r0, 2
/* 80B60550  41 82 00 24 */	beq lbl_80B60574
/* 80B60554  48 00 00 24 */	b lbl_80B60578
lbl_80B60558:
/* 80B60558  2C 00 00 09 */	cmpwi r0, 9
/* 80B6055C  40 80 00 1C */	bge lbl_80B60578
/* 80B60560  48 00 00 0C */	b lbl_80B6056C
lbl_80B60564:
/* 80B60564  3B C0 00 09 */	li r30, 9
/* 80B60568  48 00 00 10 */	b lbl_80B60578
lbl_80B6056C:
/* 80B6056C  3B C0 00 0A */	li r30, 0xa
/* 80B60570  48 00 00 08 */	b lbl_80B60578
lbl_80B60574:
/* 80B60574  3B C0 00 0B */	li r30, 0xb
lbl_80B60578:
/* 80B60578  2C 1E 00 00 */	cmpwi r30, 0
/* 80B6057C  41 80 00 2C */	blt lbl_80B605A8
/* 80B60580  7C 1E 00 00 */	cmpw r30, r0
/* 80B60584  41 82 00 24 */	beq lbl_80B605A8
/* 80B60588  83 FD 0B 5C */	lwz r31, 0xb5c(r29)
/* 80B6058C  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80B60590  4B 5E 53 08 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B60594  93 FD 0B 5C */	stw r31, 0xb5c(r29)
/* 80B60598  93 DD 0B 58 */	stw r30, 0xb58(r29)
/* 80B6059C  3C 60 80 B6 */	lis r3, lit_5096@ha
/* 80B605A0  C0 03 7D 38 */	lfs f0, lit_5096@l(r3)
/* 80B605A4  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80B605A8:
/* 80B605A8  39 61 00 20 */	addi r11, r1, 0x20
/* 80B605AC  4B 80 1C 7C */	b _restgpr_29
/* 80B605B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B605B4  7C 08 03 A6 */	mtlr r0
/* 80B605B8  38 21 00 20 */	addi r1, r1, 0x20
/* 80B605BC  4E 80 00 20 */	blr 

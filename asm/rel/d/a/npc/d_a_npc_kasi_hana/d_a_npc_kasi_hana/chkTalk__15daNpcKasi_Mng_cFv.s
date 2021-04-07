lbl_80A1B774:
/* 80A1B774  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A1B778  7C 08 02 A6 */	mflr r0
/* 80A1B77C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A1B780  39 61 00 20 */	addi r11, r1, 0x20
/* 80A1B784  4B 94 6A 59 */	bl _savegpr_29
/* 80A1B788  7C 7D 1B 78 */	mr r29, r3
/* 80A1B78C  4B 73 4F 61 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80A1B790  7C 7E 1B 78 */	mr r30, r3
/* 80A1B794  38 7D 00 08 */	addi r3, r29, 8
/* 80A1B798  4B 73 4F 55 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80A1B79C  7C 7F 1B 78 */	mr r31, r3
/* 80A1B7A0  38 7D 00 10 */	addi r3, r29, 0x10
/* 80A1B7A4  4B 73 4F 49 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80A1B7A8  28 1E 00 00 */	cmplwi r30, 0
/* 80A1B7AC  41 82 00 14 */	beq lbl_80A1B7C0
/* 80A1B7B0  28 1F 00 00 */	cmplwi r31, 0
/* 80A1B7B4  41 82 00 0C */	beq lbl_80A1B7C0
/* 80A1B7B8  28 03 00 00 */	cmplwi r3, 0
/* 80A1B7BC  40 82 00 0C */	bne lbl_80A1B7C8
lbl_80A1B7C0:
/* 80A1B7C0  38 60 00 00 */	li r3, 0
/* 80A1B7C4  48 00 00 34 */	b lbl_80A1B7F8
lbl_80A1B7C8:
/* 80A1B7C8  38 80 00 00 */	li r4, 0
/* 80A1B7CC  88 1E 14 42 */	lbz r0, 0x1442(r30)
/* 80A1B7D0  2C 00 00 00 */	cmpwi r0, 0
/* 80A1B7D4  40 82 00 1C */	bne lbl_80A1B7F0
/* 80A1B7D8  88 1F 14 66 */	lbz r0, 0x1466(r31)
/* 80A1B7DC  2C 00 00 00 */	cmpwi r0, 0
/* 80A1B7E0  40 82 00 10 */	bne lbl_80A1B7F0
/* 80A1B7E4  88 03 14 66 */	lbz r0, 0x1466(r3)
/* 80A1B7E8  2C 00 00 00 */	cmpwi r0, 0
/* 80A1B7EC  41 82 00 08 */	beq lbl_80A1B7F4
lbl_80A1B7F0:
/* 80A1B7F0  38 80 00 01 */	li r4, 1
lbl_80A1B7F4:
/* 80A1B7F4  54 83 06 3E */	clrlwi r3, r4, 0x18
lbl_80A1B7F8:
/* 80A1B7F8  39 61 00 20 */	addi r11, r1, 0x20
/* 80A1B7FC  4B 94 6A 2D */	bl _restgpr_29
/* 80A1B800  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A1B804  7C 08 03 A6 */	mtlr r0
/* 80A1B808  38 21 00 20 */	addi r1, r1, 0x20
/* 80A1B80C  4E 80 00 20 */	blr 

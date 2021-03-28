lbl_80A1B884:
/* 80A1B884  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A1B888  7C 08 02 A6 */	mflr r0
/* 80A1B88C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A1B890  39 61 00 20 */	addi r11, r1, 0x20
/* 80A1B894  4B 94 69 48 */	b _savegpr_29
/* 80A1B898  7C 7D 1B 78 */	mr r29, r3
/* 80A1B89C  4B 73 4E 50 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A1B8A0  7C 7E 1B 78 */	mr r30, r3
/* 80A1B8A4  38 7D 00 08 */	addi r3, r29, 8
/* 80A1B8A8  4B 73 4E 44 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A1B8AC  7C 7F 1B 78 */	mr r31, r3
/* 80A1B8B0  38 7D 00 10 */	addi r3, r29, 0x10
/* 80A1B8B4  4B 73 4E 38 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A1B8B8  28 1E 00 00 */	cmplwi r30, 0
/* 80A1B8BC  41 82 00 14 */	beq lbl_80A1B8D0
/* 80A1B8C0  28 1F 00 00 */	cmplwi r31, 0
/* 80A1B8C4  41 82 00 0C */	beq lbl_80A1B8D0
/* 80A1B8C8  28 03 00 00 */	cmplwi r3, 0
/* 80A1B8CC  40 82 00 0C */	bne lbl_80A1B8D8
lbl_80A1B8D0:
/* 80A1B8D0  38 60 00 01 */	li r3, 1
/* 80A1B8D4  48 00 00 34 */	b lbl_80A1B908
lbl_80A1B8D8:
/* 80A1B8D8  38 80 00 00 */	li r4, 0
/* 80A1B8DC  88 1E 14 43 */	lbz r0, 0x1443(r30)
/* 80A1B8E0  2C 00 00 00 */	cmpwi r0, 0
/* 80A1B8E4  41 82 00 20 */	beq lbl_80A1B904
/* 80A1B8E8  88 1F 14 68 */	lbz r0, 0x1468(r31)
/* 80A1B8EC  2C 00 00 00 */	cmpwi r0, 0
/* 80A1B8F0  41 82 00 14 */	beq lbl_80A1B904
/* 80A1B8F4  88 03 14 68 */	lbz r0, 0x1468(r3)
/* 80A1B8F8  2C 00 00 00 */	cmpwi r0, 0
/* 80A1B8FC  41 82 00 08 */	beq lbl_80A1B904
/* 80A1B900  38 80 00 01 */	li r4, 1
lbl_80A1B904:
/* 80A1B904  54 83 06 3E */	clrlwi r3, r4, 0x18
lbl_80A1B908:
/* 80A1B908  39 61 00 20 */	addi r11, r1, 0x20
/* 80A1B90C  4B 94 69 1C */	b _restgpr_29
/* 80A1B910  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A1B914  7C 08 03 A6 */	mtlr r0
/* 80A1B918  38 21 00 20 */	addi r1, r1, 0x20
/* 80A1B91C  4E 80 00 20 */	blr 

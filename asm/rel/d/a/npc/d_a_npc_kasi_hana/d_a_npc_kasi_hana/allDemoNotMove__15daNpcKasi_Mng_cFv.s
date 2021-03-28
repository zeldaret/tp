lbl_80A1BB24:
/* 80A1BB24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A1BB28  7C 08 02 A6 */	mflr r0
/* 80A1BB2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A1BB30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A1BB34  7C 7F 1B 78 */	mr r31, r3
/* 80A1BB38  4B 73 4B B4 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A1BB3C  28 03 00 00 */	cmplwi r3, 0
/* 80A1BB40  41 82 00 10 */	beq lbl_80A1BB50
/* 80A1BB44  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80A1BB48  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 80A1BB4C  90 03 04 9C */	stw r0, 0x49c(r3)
lbl_80A1BB50:
/* 80A1BB50  38 7F 00 08 */	addi r3, r31, 8
/* 80A1BB54  4B 73 4B 98 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A1BB58  28 03 00 00 */	cmplwi r3, 0
/* 80A1BB5C  41 82 00 10 */	beq lbl_80A1BB6C
/* 80A1BB60  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80A1BB64  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 80A1BB68  90 03 04 9C */	stw r0, 0x49c(r3)
lbl_80A1BB6C:
/* 80A1BB6C  38 7F 00 10 */	addi r3, r31, 0x10
/* 80A1BB70  4B 73 4B 7C */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A1BB74  28 03 00 00 */	cmplwi r3, 0
/* 80A1BB78  41 82 00 10 */	beq lbl_80A1BB88
/* 80A1BB7C  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80A1BB80  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 80A1BB84  90 03 04 9C */	stw r0, 0x49c(r3)
lbl_80A1BB88:
/* 80A1BB88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A1BB8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A1BB90  7C 08 03 A6 */	mtlr r0
/* 80A1BB94  38 21 00 10 */	addi r1, r1, 0x10
/* 80A1BB98  4E 80 00 20 */	blr 

lbl_80D01074:
/* 80D01074  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D01078  7C 08 02 A6 */	mflr r0
/* 80D0107C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D01080  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D01084  93 C1 00 08 */	stw r30, 8(r1)
/* 80D01088  7C 7E 1B 78 */	mr r30, r3
/* 80D0108C  7C 9F 23 78 */	mr r31, r4
/* 80D01090  80 83 05 C8 */	lwz r4, 0x5c8(r3)
/* 80D01094  38 04 00 01 */	addi r0, r4, 1
/* 80D01098  90 03 05 C8 */	stw r0, 0x5c8(r3)
/* 80D0109C  48 00 00 39 */	bl mode_proc_call__13daObjSwTurn_cFv
/* 80D010A0  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80D010A4  90 1F 00 00 */	stw r0, 0(r31)
/* 80D010A8  7F C3 F3 78 */	mr r3, r30
/* 80D010AC  4B FF FC 69 */	bl setBaseMtx__13daObjSwTurn_cFv
/* 80D010B0  38 00 00 00 */	li r0, 0
/* 80D010B4  98 1E 05 AF */	stb r0, 0x5af(r30)
/* 80D010B8  38 60 00 01 */	li r3, 1
/* 80D010BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D010C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D010C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D010C8  7C 08 03 A6 */	mtlr r0
/* 80D010CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D010D0  4E 80 00 20 */	blr 

lbl_80D364E0:
/* 80D364E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D364E4  7C 08 02 A6 */	mflr r0
/* 80D364E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D364EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D364F0  93 C1 00 08 */	stw r30, 8(r1)
/* 80D364F4  7C 7E 1B 78 */	mr r30, r3
/* 80D364F8  7C 9F 23 78 */	mr r31, r4
/* 80D364FC  48 00 00 31 */	bl action__13daObjWCover_cFv
/* 80D36500  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80D36504  90 1F 00 00 */	stw r0, 0(r31)
/* 80D36508  7F C3 F3 78 */	mr r3, r30
/* 80D3650C  4B FF FD C9 */	bl setBaseMtx__13daObjWCover_cFv
/* 80D36510  38 60 00 01 */	li r3, 1
/* 80D36514  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D36518  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D3651C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D36520  7C 08 03 A6 */	mtlr r0
/* 80D36524  38 21 00 10 */	addi r1, r1, 0x10
/* 80D36528  4E 80 00 20 */	blr 

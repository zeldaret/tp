lbl_80C162F4:
/* 80C162F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C162F8  7C 08 02 A6 */	mflr r0
/* 80C162FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C16300  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C16304  93 C1 00 08 */	stw r30, 8(r1)
/* 80C16308  7C 7E 1B 78 */	mr r30, r3
/* 80C1630C  7C 9F 23 78 */	mr r31, r4
/* 80C16310  4B FF F7 3D */	bl Action__13daObjH_Saku_cFv
/* 80C16314  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80C16318  90 1F 00 00 */	stw r0, 0(r31)
/* 80C1631C  7F C3 F3 78 */	mr r3, r30
/* 80C16320  4B FF FB 25 */	bl setBaseMtx__13daObjH_Saku_cFv
/* 80C16324  38 60 00 01 */	li r3, 1
/* 80C16328  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1632C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C16330  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C16334  7C 08 03 A6 */	mtlr r0
/* 80C16338  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1633C  4E 80 00 20 */	blr 

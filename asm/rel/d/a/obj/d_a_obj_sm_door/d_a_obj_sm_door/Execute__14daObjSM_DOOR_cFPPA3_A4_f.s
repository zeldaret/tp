lbl_80CD929C:
/* 80CD929C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD92A0  7C 08 02 A6 */	mflr r0
/* 80CD92A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD92A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD92AC  93 C1 00 08 */	stw r30, 8(r1)
/* 80CD92B0  7C 7E 1B 78 */	mr r30, r3
/* 80CD92B4  7C 9F 23 78 */	mr r31, r4
/* 80CD92B8  88 03 05 BA */	lbz r0, 0x5ba(r3)
/* 80CD92BC  28 00 00 0F */	cmplwi r0, 0xf
/* 80CD92C0  40 82 00 0C */	bne lbl_80CD92CC
/* 80CD92C4  4B FF F8 35 */	bl DrawChk1__14daObjSM_DOOR_cFv
/* 80CD92C8  48 00 00 10 */	b lbl_80CD92D8
lbl_80CD92CC:
/* 80CD92CC  28 00 00 00 */	cmplwi r0, 0
/* 80CD92D0  40 82 00 08 */	bne lbl_80CD92D8
/* 80CD92D4  4B FF F8 E9 */	bl DrawChk2__14daObjSM_DOOR_cFv
lbl_80CD92D8:
/* 80CD92D8  7F C3 F3 78 */	mr r3, r30
/* 80CD92DC  4B FF F4 B5 */	bl Action__14daObjSM_DOOR_cFv
/* 80CD92E0  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80CD92E4  90 1F 00 00 */	stw r0, 0(r31)
/* 80CD92E8  7F C3 F3 78 */	mr r3, r30
/* 80CD92EC  4B FF F9 95 */	bl setBaseMtx__14daObjSM_DOOR_cFv
/* 80CD92F0  38 60 00 01 */	li r3, 1
/* 80CD92F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD92F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CD92FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD9300  7C 08 03 A6 */	mtlr r0
/* 80CD9304  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD9308  4E 80 00 20 */	blr 

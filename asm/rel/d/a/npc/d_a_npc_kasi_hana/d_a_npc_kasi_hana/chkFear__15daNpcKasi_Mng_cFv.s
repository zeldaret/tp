lbl_80A1B810:
/* 80A1B810  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A1B814  7C 08 02 A6 */	mflr r0
/* 80A1B818  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A1B81C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A1B820  7C 7F 1B 78 */	mr r31, r3
/* 80A1B824  38 7F 00 08 */	addi r3, r31, 8
/* 80A1B828  4B 73 4E C4 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A1B82C  28 03 00 00 */	cmplwi r3, 0
/* 80A1B830  41 82 00 18 */	beq lbl_80A1B848
/* 80A1B834  88 03 14 67 */	lbz r0, 0x1467(r3)
/* 80A1B838  2C 00 00 00 */	cmpwi r0, 0
/* 80A1B83C  41 82 00 0C */	beq lbl_80A1B848
/* 80A1B840  38 60 00 01 */	li r3, 1
/* 80A1B844  48 00 00 2C */	b lbl_80A1B870
lbl_80A1B848:
/* 80A1B848  38 7F 00 10 */	addi r3, r31, 0x10
/* 80A1B84C  4B 73 4E A0 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A1B850  28 03 00 00 */	cmplwi r3, 0
/* 80A1B854  41 82 00 18 */	beq lbl_80A1B86C
/* 80A1B858  88 03 14 67 */	lbz r0, 0x1467(r3)
/* 80A1B85C  2C 00 00 00 */	cmpwi r0, 0
/* 80A1B860  41 82 00 0C */	beq lbl_80A1B86C
/* 80A1B864  38 60 00 01 */	li r3, 1
/* 80A1B868  48 00 00 08 */	b lbl_80A1B870
lbl_80A1B86C:
/* 80A1B86C  38 60 00 00 */	li r3, 0
lbl_80A1B870:
/* 80A1B870  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A1B874  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A1B878  7C 08 03 A6 */	mtlr r0
/* 80A1B87C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A1B880  4E 80 00 20 */	blr 

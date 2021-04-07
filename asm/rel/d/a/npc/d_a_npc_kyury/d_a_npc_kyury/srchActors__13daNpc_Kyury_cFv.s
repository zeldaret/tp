lbl_80A61060:
/* 80A61060  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A61064  7C 08 02 A6 */	mflr r0
/* 80A61068  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6106C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A61070  7C 7F 1B 78 */	mr r31, r3
/* 80A61074  88 03 0F 88 */	lbz r0, 0xf88(r3)
/* 80A61078  2C 00 00 00 */	cmpwi r0, 0
/* 80A6107C  41 82 00 0C */	beq lbl_80A61088
/* 80A61080  41 80 00 30 */	blt lbl_80A610B0
/* 80A61084  48 00 00 2C */	b lbl_80A610B0
lbl_80A61088:
/* 80A61088  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 80A6108C  4B 6E 46 7D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A61090  28 03 00 00 */	cmplwi r3, 0
/* 80A61094  40 82 00 1C */	bne lbl_80A610B0
/* 80A61098  7F E3 FB 78 */	mr r3, r31
/* 80A6109C  38 80 02 1C */	li r4, 0x21c
/* 80A610A0  4B 6E AD 8D */	bl getNearestActorP__8daNpcT_cFs
/* 80A610A4  7C 64 1B 78 */	mr r4, r3
/* 80A610A8  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 80A610AC  4B 6E 46 35 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80A610B0:
/* 80A610B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A610B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A610B8  7C 08 03 A6 */	mtlr r0
/* 80A610BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A610C0  4E 80 00 20 */	blr 

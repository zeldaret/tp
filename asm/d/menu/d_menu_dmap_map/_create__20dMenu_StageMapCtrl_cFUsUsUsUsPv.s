lbl_801C231C:
/* 801C231C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C2320  7C 08 02 A6 */	mflr r0
/* 801C2324  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C2328  7D 09 43 78 */	mr r9, r8
/* 801C232C  88 0D 88 E0 */	lbz r0, data_80450E60(r13)
/* 801C2330  28 00 00 00 */	cmplwi r0, 0
/* 801C2334  41 82 00 14 */	beq lbl_801C2348
/* 801C2338  38 00 00 00 */	li r0, 0
/* 801C233C  41 82 00 08 */	beq lbl_801C2344
/* 801C2340  88 0D 88 D8 */	lbz r0, data_80450E58(r13)
lbl_801C2344:
/* 801C2344  7C 08 03 78 */	mr r8, r0
lbl_801C2348:
/* 801C2348  48 00 00 15 */	bl _create__20dMenu_StageMapCtrl_cFUsUsUsUsScPv
/* 801C234C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C2350  7C 08 03 A6 */	mtlr r0
/* 801C2354  38 21 00 10 */	addi r1, r1, 0x10
/* 801C2358  4E 80 00 20 */	blr 

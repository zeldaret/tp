lbl_8058A550:
/* 8058A550  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058A554  7C 08 02 A6 */	mflr r0
/* 8058A558  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058A55C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058A560  93 C1 00 08 */	stw r30, 8(r1)
/* 8058A564  7C 7E 1B 78 */	mr r30, r3
/* 8058A568  7C 9F 23 78 */	mr r31, r4
/* 8058A56C  4B FF FD 95 */	bl event_proc_call__12daObjKGate_cFv
/* 8058A570  7F C3 F3 78 */	mr r3, r30
/* 8058A574  4B FF F2 7D */	bl action__12daObjKGate_cFv
/* 8058A578  80 7E 0B 9C */	lwz r3, 0xb9c(r30)
/* 8058A57C  38 03 00 01 */	addi r0, r3, 1
/* 8058A580  90 1E 0B 9C */	stw r0, 0xb9c(r30)
/* 8058A584  38 1E 05 6C */	addi r0, r30, 0x56c
/* 8058A588  90 1F 00 00 */	stw r0, 0(r31)
/* 8058A58C  7F C3 F3 78 */	mr r3, r30
/* 8058A590  4B FF DC ED */	bl setBaseMtx__12daObjKGate_cFv
/* 8058A594  80 7E 0A E4 */	lwz r3, 0xae4(r30)
/* 8058A598  4B AF 14 29 */	bl Move__4dBgWFv
/* 8058A59C  38 60 00 01 */	li r3, 1
/* 8058A5A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058A5A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8058A5A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058A5AC  7C 08 03 A6 */	mtlr r0
/* 8058A5B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8058A5B4  4E 80 00 20 */	blr 

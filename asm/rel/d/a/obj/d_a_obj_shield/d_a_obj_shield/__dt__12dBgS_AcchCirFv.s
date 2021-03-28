lbl_80CD750C:
/* 80CD750C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD7510  7C 08 02 A6 */	mflr r0
/* 80CD7514  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD7518  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD751C  93 C1 00 08 */	stw r30, 8(r1)
/* 80CD7520  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CD7524  7C 9F 23 78 */	mr r31, r4
/* 80CD7528  41 82 00 38 */	beq lbl_80CD7560
/* 80CD752C  3C 60 80 CE */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80CD7530  38 03 84 6C */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80CD7534  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80CD7538  38 7E 00 14 */	addi r3, r30, 0x14
/* 80CD753C  38 80 FF FF */	li r4, -1
/* 80CD7540  4B 59 79 D8 */	b __dt__8cM3dGCirFv
/* 80CD7544  7F C3 F3 78 */	mr r3, r30
/* 80CD7548  38 80 00 00 */	li r4, 0
/* 80CD754C  4B 59 0B 64 */	b __dt__13cBgS_PolyInfoFv
/* 80CD7550  7F E0 07 35 */	extsh. r0, r31
/* 80CD7554  40 81 00 0C */	ble lbl_80CD7560
/* 80CD7558  7F C3 F3 78 */	mr r3, r30
/* 80CD755C  4B 5F 77 E0 */	b __dl__FPv
lbl_80CD7560:
/* 80CD7560  7F C3 F3 78 */	mr r3, r30
/* 80CD7564  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD7568  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CD756C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD7570  7C 08 03 A6 */	mtlr r0
/* 80CD7574  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD7578  4E 80 00 20 */	blr 

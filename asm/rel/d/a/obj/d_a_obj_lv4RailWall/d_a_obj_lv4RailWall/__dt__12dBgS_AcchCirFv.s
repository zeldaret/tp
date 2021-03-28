lbl_80C6174C:
/* 80C6174C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C61750  7C 08 02 A6 */	mflr r0
/* 80C61754  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C61758  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6175C  93 C1 00 08 */	stw r30, 8(r1)
/* 80C61760  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C61764  7C 9F 23 78 */	mr r31, r4
/* 80C61768  41 82 00 38 */	beq lbl_80C617A0
/* 80C6176C  3C 60 80 C6 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80C61770  38 03 1C 78 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80C61774  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80C61778  38 7E 00 14 */	addi r3, r30, 0x14
/* 80C6177C  38 80 FF FF */	li r4, -1
/* 80C61780  4B 60 D7 98 */	b __dt__8cM3dGCirFv
/* 80C61784  7F C3 F3 78 */	mr r3, r30
/* 80C61788  38 80 00 00 */	li r4, 0
/* 80C6178C  4B 60 69 24 */	b __dt__13cBgS_PolyInfoFv
/* 80C61790  7F E0 07 35 */	extsh. r0, r31
/* 80C61794  40 81 00 0C */	ble lbl_80C617A0
/* 80C61798  7F C3 F3 78 */	mr r3, r30
/* 80C6179C  4B 66 D5 A0 */	b __dl__FPv
lbl_80C617A0:
/* 80C617A0  7F C3 F3 78 */	mr r3, r30
/* 80C617A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C617A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C617AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C617B0  7C 08 03 A6 */	mtlr r0
/* 80C617B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C617B8  4E 80 00 20 */	blr 

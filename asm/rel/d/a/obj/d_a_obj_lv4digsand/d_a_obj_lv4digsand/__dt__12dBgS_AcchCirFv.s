lbl_80C673F4:
/* 80C673F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C673F8  7C 08 02 A6 */	mflr r0
/* 80C673FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C67400  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C67404  93 C1 00 08 */	stw r30, 8(r1)
/* 80C67408  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C6740C  7C 9F 23 78 */	mr r31, r4
/* 80C67410  41 82 00 38 */	beq lbl_80C67448
/* 80C67414  3C 60 80 C6 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80C676A8@ha */
/* 80C67418  38 03 76 A8 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80C676A8@l */
/* 80C6741C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80C67420  38 7E 00 14 */	addi r3, r30, 0x14
/* 80C67424  38 80 FF FF */	li r4, -1
/* 80C67428  4B 60 7A F1 */	bl __dt__8cM3dGCirFv
/* 80C6742C  7F C3 F3 78 */	mr r3, r30
/* 80C67430  38 80 00 00 */	li r4, 0
/* 80C67434  4B 60 0C 7D */	bl __dt__13cBgS_PolyInfoFv
/* 80C67438  7F E0 07 35 */	extsh. r0, r31
/* 80C6743C  40 81 00 0C */	ble lbl_80C67448
/* 80C67440  7F C3 F3 78 */	mr r3, r30
/* 80C67444  4B 66 78 F9 */	bl __dl__FPv
lbl_80C67448:
/* 80C67448  7F C3 F3 78 */	mr r3, r30
/* 80C6744C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C67450  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C67454  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C67458  7C 08 03 A6 */	mtlr r0
/* 80C6745C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C67460  4E 80 00 20 */	blr 

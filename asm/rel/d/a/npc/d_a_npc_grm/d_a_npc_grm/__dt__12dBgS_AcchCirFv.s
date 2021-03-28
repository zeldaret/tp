lbl_809D6734:
/* 809D6734  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D6738  7C 08 02 A6 */	mflr r0
/* 809D673C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D6740  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D6744  93 C1 00 08 */	stw r30, 8(r1)
/* 809D6748  7C 7E 1B 79 */	or. r30, r3, r3
/* 809D674C  7C 9F 23 78 */	mr r31, r4
/* 809D6750  41 82 00 38 */	beq lbl_809D6788
/* 809D6754  3C 60 80 9D */	lis r3, __vt__12dBgS_AcchCir@ha
/* 809D6758  38 03 71 B0 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 809D675C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 809D6760  38 7E 00 14 */	addi r3, r30, 0x14
/* 809D6764  38 80 FF FF */	li r4, -1
/* 809D6768  4B 89 87 B0 */	b __dt__8cM3dGCirFv
/* 809D676C  7F C3 F3 78 */	mr r3, r30
/* 809D6770  38 80 00 00 */	li r4, 0
/* 809D6774  4B 89 19 3C */	b __dt__13cBgS_PolyInfoFv
/* 809D6778  7F E0 07 35 */	extsh. r0, r31
/* 809D677C  40 81 00 0C */	ble lbl_809D6788
/* 809D6780  7F C3 F3 78 */	mr r3, r30
/* 809D6784  4B 8F 85 B8 */	b __dl__FPv
lbl_809D6788:
/* 809D6788  7F C3 F3 78 */	mr r3, r30
/* 809D678C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D6790  83 C1 00 08 */	lwz r30, 8(r1)
/* 809D6794  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D6798  7C 08 03 A6 */	mtlr r0
/* 809D679C  38 21 00 10 */	addi r1, r1, 0x10
/* 809D67A0  4E 80 00 20 */	blr 

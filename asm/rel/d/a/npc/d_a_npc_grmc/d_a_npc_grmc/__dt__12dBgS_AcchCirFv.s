lbl_809D9770:
/* 809D9770  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D9774  7C 08 02 A6 */	mflr r0
/* 809D9778  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D977C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D9780  93 C1 00 08 */	stw r30, 8(r1)
/* 809D9784  7C 7E 1B 79 */	or. r30, r3, r3
/* 809D9788  7C 9F 23 78 */	mr r31, r4
/* 809D978C  41 82 00 38 */	beq lbl_809D97C4
/* 809D9790  3C 60 80 9E */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x809DA318@ha */
/* 809D9794  38 03 A3 18 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x809DA318@l */
/* 809D9798  90 1E 00 0C */	stw r0, 0xc(r30)
/* 809D979C  38 7E 00 14 */	addi r3, r30, 0x14
/* 809D97A0  38 80 FF FF */	li r4, -1
/* 809D97A4  4B 89 57 75 */	bl __dt__8cM3dGCirFv
/* 809D97A8  7F C3 F3 78 */	mr r3, r30
/* 809D97AC  38 80 00 00 */	li r4, 0
/* 809D97B0  4B 88 E9 01 */	bl __dt__13cBgS_PolyInfoFv
/* 809D97B4  7F E0 07 35 */	extsh. r0, r31
/* 809D97B8  40 81 00 0C */	ble lbl_809D97C4
/* 809D97BC  7F C3 F3 78 */	mr r3, r30
/* 809D97C0  4B 8F 55 7D */	bl __dl__FPv
lbl_809D97C4:
/* 809D97C4  7F C3 F3 78 */	mr r3, r30
/* 809D97C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D97CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 809D97D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D97D4  7C 08 03 A6 */	mtlr r0
/* 809D97D8  38 21 00 10 */	addi r1, r1, 0x10
/* 809D97DC  4E 80 00 20 */	blr 

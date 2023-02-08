lbl_809BDCE0:
/* 809BDCE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BDCE4  7C 08 02 A6 */	mflr r0
/* 809BDCE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BDCEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BDCF0  93 C1 00 08 */	stw r30, 8(r1)
/* 809BDCF4  7C 7E 1B 79 */	or. r30, r3, r3
/* 809BDCF8  7C 9F 23 78 */	mr r31, r4
/* 809BDCFC  41 82 00 38 */	beq lbl_809BDD34
/* 809BDD00  3C 60 80 9C */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x809BE710@ha */
/* 809BDD04  38 03 E7 10 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x809BE710@l */
/* 809BDD08  90 1E 00 0C */	stw r0, 0xc(r30)
/* 809BDD0C  38 7E 00 14 */	addi r3, r30, 0x14
/* 809BDD10  38 80 FF FF */	li r4, -1
/* 809BDD14  4B 8B 12 05 */	bl __dt__8cM3dGCirFv
/* 809BDD18  7F C3 F3 78 */	mr r3, r30
/* 809BDD1C  38 80 00 00 */	li r4, 0
/* 809BDD20  4B 8A A3 91 */	bl __dt__13cBgS_PolyInfoFv
/* 809BDD24  7F E0 07 35 */	extsh. r0, r31
/* 809BDD28  40 81 00 0C */	ble lbl_809BDD34
/* 809BDD2C  7F C3 F3 78 */	mr r3, r30
/* 809BDD30  4B 91 10 0D */	bl __dl__FPv
lbl_809BDD34:
/* 809BDD34  7F C3 F3 78 */	mr r3, r30
/* 809BDD38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BDD3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 809BDD40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BDD44  7C 08 03 A6 */	mtlr r0
/* 809BDD48  38 21 00 10 */	addi r1, r1, 0x10
/* 809BDD4C  4E 80 00 20 */	blr 

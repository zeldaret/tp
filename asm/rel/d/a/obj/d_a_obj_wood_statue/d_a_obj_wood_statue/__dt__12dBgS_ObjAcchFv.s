lbl_80D3A878:
/* 80D3A878  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3A87C  7C 08 02 A6 */	mflr r0
/* 80D3A880  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3A884  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3A888  93 C1 00 08 */	stw r30, 8(r1)
/* 80D3A88C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D3A890  7C 9F 23 78 */	mr r31, r4
/* 80D3A894  41 82 00 38 */	beq lbl_80D3A8CC
/* 80D3A898  3C 80 80 D4 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80D3B87C@ha */
/* 80D3A89C  38 84 B8 7C */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80D3B87C@l */
/* 80D3A8A0  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80D3A8A4  38 04 00 0C */	addi r0, r4, 0xc
/* 80D3A8A8  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80D3A8AC  38 04 00 18 */	addi r0, r4, 0x18
/* 80D3A8B0  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80D3A8B4  38 80 00 00 */	li r4, 0
/* 80D3A8B8  4B 33 B6 DD */	bl __dt__9dBgS_AcchFv
/* 80D3A8BC  7F E0 07 35 */	extsh. r0, r31
/* 80D3A8C0  40 81 00 0C */	ble lbl_80D3A8CC
/* 80D3A8C4  7F C3 F3 78 */	mr r3, r30
/* 80D3A8C8  4B 59 44 75 */	bl __dl__FPv
lbl_80D3A8CC:
/* 80D3A8CC  7F C3 F3 78 */	mr r3, r30
/* 80D3A8D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3A8D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D3A8D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3A8DC  7C 08 03 A6 */	mtlr r0
/* 80D3A8E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3A8E4  4E 80 00 20 */	blr 

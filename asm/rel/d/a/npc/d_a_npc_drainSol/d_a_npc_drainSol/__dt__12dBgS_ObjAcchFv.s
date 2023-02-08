lbl_809AF7D4:
/* 809AF7D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AF7D8  7C 08 02 A6 */	mflr r0
/* 809AF7DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AF7E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809AF7E4  93 C1 00 08 */	stw r30, 8(r1)
/* 809AF7E8  7C 7E 1B 79 */	or. r30, r3, r3
/* 809AF7EC  7C 9F 23 78 */	mr r31, r4
/* 809AF7F0  41 82 00 38 */	beq lbl_809AF828
/* 809AF7F4  3C 80 80 9B */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x809AFBBC@ha */
/* 809AF7F8  38 84 FB BC */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x809AFBBC@l */
/* 809AF7FC  90 9E 00 10 */	stw r4, 0x10(r30)
/* 809AF800  38 04 00 0C */	addi r0, r4, 0xc
/* 809AF804  90 1E 00 14 */	stw r0, 0x14(r30)
/* 809AF808  38 04 00 18 */	addi r0, r4, 0x18
/* 809AF80C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 809AF810  38 80 00 00 */	li r4, 0
/* 809AF814  4B 6C 67 81 */	bl __dt__9dBgS_AcchFv
/* 809AF818  7F E0 07 35 */	extsh. r0, r31
/* 809AF81C  40 81 00 0C */	ble lbl_809AF828
/* 809AF820  7F C3 F3 78 */	mr r3, r30
/* 809AF824  4B 91 F5 19 */	bl __dl__FPv
lbl_809AF828:
/* 809AF828  7F C3 F3 78 */	mr r3, r30
/* 809AF82C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809AF830  83 C1 00 08 */	lwz r30, 8(r1)
/* 809AF834  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AF838  7C 08 03 A6 */	mtlr r0
/* 809AF83C  38 21 00 10 */	addi r1, r1, 0x10
/* 809AF840  4E 80 00 20 */	blr 

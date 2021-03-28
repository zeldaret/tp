lbl_80ABF79C:
/* 80ABF79C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ABF7A0  7C 08 02 A6 */	mflr r0
/* 80ABF7A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ABF7A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ABF7AC  93 C1 00 08 */	stw r30, 8(r1)
/* 80ABF7B0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80ABF7B4  7C 9F 23 78 */	mr r31, r4
/* 80ABF7B8  41 82 00 38 */	beq lbl_80ABF7F0
/* 80ABF7BC  3C 60 80 AC */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80ABF7C0  38 03 02 C4 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80ABF7C4  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80ABF7C8  38 7E 00 14 */	addi r3, r30, 0x14
/* 80ABF7CC  38 80 FF FF */	li r4, -1
/* 80ABF7D0  4B 7A F7 48 */	b __dt__8cM3dGCirFv
/* 80ABF7D4  7F C3 F3 78 */	mr r3, r30
/* 80ABF7D8  38 80 00 00 */	li r4, 0
/* 80ABF7DC  4B 7A 88 D4 */	b __dt__13cBgS_PolyInfoFv
/* 80ABF7E0  7F E0 07 35 */	extsh. r0, r31
/* 80ABF7E4  40 81 00 0C */	ble lbl_80ABF7F0
/* 80ABF7E8  7F C3 F3 78 */	mr r3, r30
/* 80ABF7EC  4B 80 F5 50 */	b __dl__FPv
lbl_80ABF7F0:
/* 80ABF7F0  7F C3 F3 78 */	mr r3, r30
/* 80ABF7F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ABF7F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80ABF7FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ABF800  7C 08 03 A6 */	mtlr r0
/* 80ABF804  38 21 00 10 */	addi r1, r1, 0x10
/* 80ABF808  4E 80 00 20 */	blr 

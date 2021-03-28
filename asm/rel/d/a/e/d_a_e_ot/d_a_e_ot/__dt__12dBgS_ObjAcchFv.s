lbl_8073C868:
/* 8073C868  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8073C86C  7C 08 02 A6 */	mflr r0
/* 8073C870  90 01 00 14 */	stw r0, 0x14(r1)
/* 8073C874  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8073C878  93 C1 00 08 */	stw r30, 8(r1)
/* 8073C87C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8073C880  7C 9F 23 78 */	mr r31, r4
/* 8073C884  41 82 00 38 */	beq lbl_8073C8BC
/* 8073C888  3C 80 80 74 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 8073C88C  38 84 D2 28 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 8073C890  90 9E 00 10 */	stw r4, 0x10(r30)
/* 8073C894  38 04 00 0C */	addi r0, r4, 0xc
/* 8073C898  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8073C89C  38 04 00 18 */	addi r0, r4, 0x18
/* 8073C8A0  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8073C8A4  38 80 00 00 */	li r4, 0
/* 8073C8A8  4B 93 96 EC */	b __dt__9dBgS_AcchFv
/* 8073C8AC  7F E0 07 35 */	extsh. r0, r31
/* 8073C8B0  40 81 00 0C */	ble lbl_8073C8BC
/* 8073C8B4  7F C3 F3 78 */	mr r3, r30
/* 8073C8B8  4B B9 24 84 */	b __dl__FPv
lbl_8073C8BC:
/* 8073C8BC  7F C3 F3 78 */	mr r3, r30
/* 8073C8C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8073C8C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8073C8C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8073C8CC  7C 08 03 A6 */	mtlr r0
/* 8073C8D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8073C8D4  4E 80 00 20 */	blr 

lbl_80ABF868:
/* 80ABF868  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ABF86C  7C 08 02 A6 */	mflr r0
/* 80ABF870  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ABF874  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ABF878  93 C1 00 08 */	stw r30, 8(r1)
/* 80ABF87C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80ABF880  7C 9F 23 78 */	mr r31, r4
/* 80ABF884  41 82 00 38 */	beq lbl_80ABF8BC
/* 80ABF888  3C 80 80 AC */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80AC0288@ha */
/* 80ABF88C  38 84 02 88 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80AC0288@l */
/* 80ABF890  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80ABF894  38 04 00 0C */	addi r0, r4, 0xc
/* 80ABF898  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80ABF89C  38 04 00 18 */	addi r0, r4, 0x18
/* 80ABF8A0  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80ABF8A4  38 80 00 00 */	li r4, 0
/* 80ABF8A8  4B 5B 66 ED */	bl __dt__9dBgS_AcchFv
/* 80ABF8AC  7F E0 07 35 */	extsh. r0, r31
/* 80ABF8B0  40 81 00 0C */	ble lbl_80ABF8BC
/* 80ABF8B4  7F C3 F3 78 */	mr r3, r30
/* 80ABF8B8  4B 80 F4 85 */	bl __dl__FPv
lbl_80ABF8BC:
/* 80ABF8BC  7F C3 F3 78 */	mr r3, r30
/* 80ABF8C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ABF8C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80ABF8C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ABF8CC  7C 08 03 A6 */	mtlr r0
/* 80ABF8D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80ABF8D4  4E 80 00 20 */	blr 

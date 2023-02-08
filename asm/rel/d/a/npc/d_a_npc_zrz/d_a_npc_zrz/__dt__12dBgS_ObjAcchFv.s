lbl_80B9AD40:
/* 80B9AD40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9AD44  7C 08 02 A6 */	mflr r0
/* 80B9AD48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9AD4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9AD50  93 C1 00 08 */	stw r30, 8(r1)
/* 80B9AD54  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B9AD58  7C 9F 23 78 */	mr r31, r4
/* 80B9AD5C  41 82 00 38 */	beq lbl_80B9AD94
/* 80B9AD60  3C 80 80 BA */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80B9B7C4@ha */
/* 80B9AD64  38 84 B7 C4 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80B9B7C4@l */
/* 80B9AD68  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80B9AD6C  38 04 00 0C */	addi r0, r4, 0xc
/* 80B9AD70  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80B9AD74  38 04 00 18 */	addi r0, r4, 0x18
/* 80B9AD78  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80B9AD7C  38 80 00 00 */	li r4, 0
/* 80B9AD80  4B 4D B2 15 */	bl __dt__9dBgS_AcchFv
/* 80B9AD84  7F E0 07 35 */	extsh. r0, r31
/* 80B9AD88  40 81 00 0C */	ble lbl_80B9AD94
/* 80B9AD8C  7F C3 F3 78 */	mr r3, r30
/* 80B9AD90  4B 73 3F AD */	bl __dl__FPv
lbl_80B9AD94:
/* 80B9AD94  7F C3 F3 78 */	mr r3, r30
/* 80B9AD98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9AD9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B9ADA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9ADA4  7C 08 03 A6 */	mtlr r0
/* 80B9ADA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9ADAC  4E 80 00 20 */	blr 

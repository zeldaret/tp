lbl_80B4C700:
/* 80B4C700  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4C704  7C 08 02 A6 */	mflr r0
/* 80B4C708  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4C70C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B4C710  93 C1 00 08 */	stw r30, 8(r1)
/* 80B4C714  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B4C718  7C 9F 23 78 */	mr r31, r4
/* 80B4C71C  41 82 00 38 */	beq lbl_80B4C754
/* 80B4C720  3C 80 80 B5 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80B4D08C@ha */
/* 80B4C724  38 84 D0 8C */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80B4D08C@l */
/* 80B4C728  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80B4C72C  38 04 00 0C */	addi r0, r4, 0xc
/* 80B4C730  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80B4C734  38 04 00 18 */	addi r0, r4, 0x18
/* 80B4C738  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80B4C73C  38 80 00 00 */	li r4, 0
/* 80B4C740  4B 52 98 55 */	bl __dt__9dBgS_AcchFv
/* 80B4C744  7F E0 07 35 */	extsh. r0, r31
/* 80B4C748  40 81 00 0C */	ble lbl_80B4C754
/* 80B4C74C  7F C3 F3 78 */	mr r3, r30
/* 80B4C750  4B 78 25 ED */	bl __dl__FPv
lbl_80B4C754:
/* 80B4C754  7F C3 F3 78 */	mr r3, r30
/* 80B4C758  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4C75C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B4C760  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4C764  7C 08 03 A6 */	mtlr r0
/* 80B4C768  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4C76C  4E 80 00 20 */	blr 

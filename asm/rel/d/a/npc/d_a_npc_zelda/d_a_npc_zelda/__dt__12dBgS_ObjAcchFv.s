lbl_80B778C4:
/* 80B778C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B778C8  7C 08 02 A6 */	mflr r0
/* 80B778CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B778D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B778D4  93 C1 00 08 */	stw r30, 8(r1)
/* 80B778D8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B778DC  7C 9F 23 78 */	mr r31, r4
/* 80B778E0  41 82 00 38 */	beq lbl_80B77918
/* 80B778E4  3C 80 80 B8 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80B782A8@ha */
/* 80B778E8  38 84 82 A8 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80B782A8@l */
/* 80B778EC  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80B778F0  38 04 00 0C */	addi r0, r4, 0xc
/* 80B778F4  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80B778F8  38 04 00 18 */	addi r0, r4, 0x18
/* 80B778FC  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80B77900  38 80 00 00 */	li r4, 0
/* 80B77904  4B 4F E6 91 */	bl __dt__9dBgS_AcchFv
/* 80B77908  7F E0 07 35 */	extsh. r0, r31
/* 80B7790C  40 81 00 0C */	ble lbl_80B77918
/* 80B77910  7F C3 F3 78 */	mr r3, r30
/* 80B77914  4B 75 74 29 */	bl __dl__FPv
lbl_80B77918:
/* 80B77918  7F C3 F3 78 */	mr r3, r30
/* 80B7791C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B77920  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B77924  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B77928  7C 08 03 A6 */	mtlr r0
/* 80B7792C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B77930  4E 80 00 20 */	blr 

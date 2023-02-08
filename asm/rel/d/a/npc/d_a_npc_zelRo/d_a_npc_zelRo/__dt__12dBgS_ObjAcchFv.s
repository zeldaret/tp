lbl_80B745CC:
/* 80B745CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B745D0  7C 08 02 A6 */	mflr r0
/* 80B745D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B745D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B745DC  93 C1 00 08 */	stw r30, 8(r1)
/* 80B745E0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B745E4  7C 9F 23 78 */	mr r31, r4
/* 80B745E8  41 82 00 38 */	beq lbl_80B74620
/* 80B745EC  3C 80 80 B7 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80B74EC4@ha */
/* 80B745F0  38 84 4E C4 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80B74EC4@l */
/* 80B745F4  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80B745F8  38 04 00 0C */	addi r0, r4, 0xc
/* 80B745FC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80B74600  38 04 00 18 */	addi r0, r4, 0x18
/* 80B74604  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80B74608  38 80 00 00 */	li r4, 0
/* 80B7460C  4B 50 19 89 */	bl __dt__9dBgS_AcchFv
/* 80B74610  7F E0 07 35 */	extsh. r0, r31
/* 80B74614  40 81 00 0C */	ble lbl_80B74620
/* 80B74618  7F C3 F3 78 */	mr r3, r30
/* 80B7461C  4B 75 A7 21 */	bl __dl__FPv
lbl_80B74620:
/* 80B74620  7F C3 F3 78 */	mr r3, r30
/* 80B74624  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B74628  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B7462C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B74630  7C 08 03 A6 */	mtlr r0
/* 80B74634  38 21 00 10 */	addi r1, r1, 0x10
/* 80B74638  4E 80 00 20 */	blr 

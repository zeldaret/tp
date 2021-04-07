lbl_80C617BC:
/* 80C617BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C617C0  7C 08 02 A6 */	mflr r0
/* 80C617C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C617C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C617CC  93 C1 00 08 */	stw r30, 8(r1)
/* 80C617D0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C617D4  7C 9F 23 78 */	mr r31, r4
/* 80C617D8  41 82 00 38 */	beq lbl_80C61810
/* 80C617DC  3C 80 80 C6 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80C61CB4@ha */
/* 80C617E0  38 84 1C B4 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80C61CB4@l */
/* 80C617E4  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80C617E8  38 04 00 0C */	addi r0, r4, 0xc
/* 80C617EC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80C617F0  38 04 00 18 */	addi r0, r4, 0x18
/* 80C617F4  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80C617F8  38 80 00 00 */	li r4, 0
/* 80C617FC  4B 41 47 99 */	bl __dt__9dBgS_AcchFv
/* 80C61800  7F E0 07 35 */	extsh. r0, r31
/* 80C61804  40 81 00 0C */	ble lbl_80C61810
/* 80C61808  7F C3 F3 78 */	mr r3, r30
/* 80C6180C  4B 66 D5 31 */	bl __dl__FPv
lbl_80C61810:
/* 80C61810  7F C3 F3 78 */	mr r3, r30
/* 80C61814  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C61818  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C6181C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C61820  7C 08 03 A6 */	mtlr r0
/* 80C61824  38 21 00 10 */	addi r1, r1, 0x10
/* 80C61828  4E 80 00 20 */	blr 

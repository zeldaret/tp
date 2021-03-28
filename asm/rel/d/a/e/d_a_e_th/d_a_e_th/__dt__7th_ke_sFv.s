lbl_807B3B58:
/* 807B3B58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807B3B5C  7C 08 02 A6 */	mflr r0
/* 807B3B60  90 01 00 14 */	stw r0, 0x14(r1)
/* 807B3B64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807B3B68  93 C1 00 08 */	stw r30, 8(r1)
/* 807B3B6C  7C 7E 1B 79 */	or. r30, r3, r3
/* 807B3B70  7C 9F 23 78 */	mr r31, r4
/* 807B3B74  41 82 00 44 */	beq lbl_807B3BB8
/* 807B3B78  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 807B3B7C  3C 80 80 7B */	lis r4, __dt__4cXyzFv@ha
/* 807B3B80  38 84 44 4C */	addi r4, r4, __dt__4cXyzFv@l
/* 807B3B84  38 A0 00 0C */	li r5, 0xc
/* 807B3B88  38 C0 00 0F */	li r6, 0xf
/* 807B3B8C  4B BA E1 5C */	b __destroy_arr
/* 807B3B90  7F C3 F3 78 */	mr r3, r30
/* 807B3B94  3C 80 80 7B */	lis r4, __dt__4cXyzFv@ha
/* 807B3B98  38 84 44 4C */	addi r4, r4, __dt__4cXyzFv@l
/* 807B3B9C  38 A0 00 0C */	li r5, 0xc
/* 807B3BA0  38 C0 00 0F */	li r6, 0xf
/* 807B3BA4  4B BA E1 44 */	b __destroy_arr
/* 807B3BA8  7F E0 07 35 */	extsh. r0, r31
/* 807B3BAC  40 81 00 0C */	ble lbl_807B3BB8
/* 807B3BB0  7F C3 F3 78 */	mr r3, r30
/* 807B3BB4  4B B1 B1 88 */	b __dl__FPv
lbl_807B3BB8:
/* 807B3BB8  7F C3 F3 78 */	mr r3, r30
/* 807B3BBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807B3BC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 807B3BC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807B3BC8  7C 08 03 A6 */	mtlr r0
/* 807B3BCC  38 21 00 10 */	addi r1, r1, 0x10
/* 807B3BD0  4E 80 00 20 */	blr 

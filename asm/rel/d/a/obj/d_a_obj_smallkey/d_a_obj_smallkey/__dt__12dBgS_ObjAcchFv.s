lbl_80CDA610:
/* 80CDA610  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDA614  7C 08 02 A6 */	mflr r0
/* 80CDA618  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDA61C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDA620  93 C1 00 08 */	stw r30, 8(r1)
/* 80CDA624  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CDA628  7C 9F 23 78 */	mr r31, r4
/* 80CDA62C  41 82 00 38 */	beq lbl_80CDA664
/* 80CDA630  3C 80 80 CE */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80CDBA38@ha */
/* 80CDA634  38 84 BA 38 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80CDBA38@l */
/* 80CDA638  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80CDA63C  38 04 00 0C */	addi r0, r4, 0xc
/* 80CDA640  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80CDA644  38 04 00 18 */	addi r0, r4, 0x18
/* 80CDA648  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80CDA64C  38 80 00 00 */	li r4, 0
/* 80CDA650  4B 39 B9 45 */	bl __dt__9dBgS_AcchFv
/* 80CDA654  7F E0 07 35 */	extsh. r0, r31
/* 80CDA658  40 81 00 0C */	ble lbl_80CDA664
/* 80CDA65C  7F C3 F3 78 */	mr r3, r30
/* 80CDA660  4B 5F 46 DD */	bl __dl__FPv
lbl_80CDA664:
/* 80CDA664  7F C3 F3 78 */	mr r3, r30
/* 80CDA668  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDA66C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CDA670  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDA674  7C 08 03 A6 */	mtlr r0
/* 80CDA678  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDA67C  4E 80 00 20 */	blr 

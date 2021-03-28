lbl_80C250E8:
/* 80C250E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C250EC  7C 08 02 A6 */	mflr r0
/* 80C250F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C250F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C250F8  93 C1 00 08 */	stw r30, 8(r1)
/* 80C250FC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C25100  7C 9F 23 78 */	mr r31, r4
/* 80C25104  41 82 00 38 */	beq lbl_80C2513C
/* 80C25108  3C 80 80 C2 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80C2510C  38 84 5F 64 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80C25110  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80C25114  38 04 00 0C */	addi r0, r4, 0xc
/* 80C25118  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80C2511C  38 04 00 18 */	addi r0, r4, 0x18
/* 80C25120  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80C25124  38 80 00 00 */	li r4, 0
/* 80C25128  4B 45 0E 6C */	b __dt__9dBgS_AcchFv
/* 80C2512C  7F E0 07 35 */	extsh. r0, r31
/* 80C25130  40 81 00 0C */	ble lbl_80C2513C
/* 80C25134  7F C3 F3 78 */	mr r3, r30
/* 80C25138  4B 6A 9C 04 */	b __dl__FPv
lbl_80C2513C:
/* 80C2513C  7F C3 F3 78 */	mr r3, r30
/* 80C25140  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C25144  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C25148  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2514C  7C 08 03 A6 */	mtlr r0
/* 80C25150  38 21 00 10 */	addi r1, r1, 0x10
/* 80C25154  4E 80 00 20 */	blr 

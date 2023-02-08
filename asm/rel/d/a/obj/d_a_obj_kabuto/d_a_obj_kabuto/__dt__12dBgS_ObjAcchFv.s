lbl_80C2DF60:
/* 80C2DF60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2DF64  7C 08 02 A6 */	mflr r0
/* 80C2DF68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2DF6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C2DF70  93 C1 00 08 */	stw r30, 8(r1)
/* 80C2DF74  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C2DF78  7C 9F 23 78 */	mr r31, r4
/* 80C2DF7C  41 82 00 38 */	beq lbl_80C2DFB4
/* 80C2DF80  3C 80 80 C3 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80C2E278@ha */
/* 80C2DF84  38 84 E2 78 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80C2E278@l */
/* 80C2DF88  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80C2DF8C  38 04 00 0C */	addi r0, r4, 0xc
/* 80C2DF90  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80C2DF94  38 04 00 18 */	addi r0, r4, 0x18
/* 80C2DF98  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80C2DF9C  38 80 00 00 */	li r4, 0
/* 80C2DFA0  4B 44 7F F5 */	bl __dt__9dBgS_AcchFv
/* 80C2DFA4  7F E0 07 35 */	extsh. r0, r31
/* 80C2DFA8  40 81 00 0C */	ble lbl_80C2DFB4
/* 80C2DFAC  7F C3 F3 78 */	mr r3, r30
/* 80C2DFB0  4B 6A 0D 8D */	bl __dl__FPv
lbl_80C2DFB4:
/* 80C2DFB4  7F C3 F3 78 */	mr r3, r30
/* 80C2DFB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C2DFBC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C2DFC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2DFC4  7C 08 03 A6 */	mtlr r0
/* 80C2DFC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2DFCC  4E 80 00 20 */	blr 

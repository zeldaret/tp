lbl_804D9C48:
/* 804D9C48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D9C4C  7C 08 02 A6 */	mflr r0
/* 804D9C50  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D9C54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D9C58  93 C1 00 08 */	stw r30, 8(r1)
/* 804D9C5C  7C 7E 1B 79 */	or. r30, r3, r3
/* 804D9C60  7C 9F 23 78 */	mr r31, r4
/* 804D9C64  41 82 00 38 */	beq lbl_804D9C9C
/* 804D9C68  3C 80 80 4E */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 804D9C6C  38 84 A2 DC */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 804D9C70  90 9E 00 10 */	stw r4, 0x10(r30)
/* 804D9C74  38 04 00 0C */	addi r0, r4, 0xc
/* 804D9C78  90 1E 00 14 */	stw r0, 0x14(r30)
/* 804D9C7C  38 04 00 18 */	addi r0, r4, 0x18
/* 804D9C80  90 1E 00 24 */	stw r0, 0x24(r30)
/* 804D9C84  38 80 00 00 */	li r4, 0
/* 804D9C88  4B B9 C3 0C */	b __dt__9dBgS_AcchFv
/* 804D9C8C  7F E0 07 35 */	extsh. r0, r31
/* 804D9C90  40 81 00 0C */	ble lbl_804D9C9C
/* 804D9C94  7F C3 F3 78 */	mr r3, r30
/* 804D9C98  4B DF 50 A4 */	b __dl__FPv
lbl_804D9C9C:
/* 804D9C9C  7F C3 F3 78 */	mr r3, r30
/* 804D9CA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D9CA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 804D9CA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D9CAC  7C 08 03 A6 */	mtlr r0
/* 804D9CB0  38 21 00 10 */	addi r1, r1, 0x10
/* 804D9CB4  4E 80 00 20 */	blr 

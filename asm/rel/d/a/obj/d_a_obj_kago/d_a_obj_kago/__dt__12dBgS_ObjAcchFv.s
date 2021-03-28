lbl_80C32360:
/* 80C32360  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C32364  7C 08 02 A6 */	mflr r0
/* 80C32368  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3236C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C32370  93 C1 00 08 */	stw r30, 8(r1)
/* 80C32374  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C32378  7C 9F 23 78 */	mr r31, r4
/* 80C3237C  41 82 00 38 */	beq lbl_80C323B4
/* 80C32380  3C 80 80 C3 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80C32384  38 84 3E 8C */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80C32388  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80C3238C  38 04 00 0C */	addi r0, r4, 0xc
/* 80C32390  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80C32394  38 04 00 18 */	addi r0, r4, 0x18
/* 80C32398  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80C3239C  38 80 00 00 */	li r4, 0
/* 80C323A0  4B 44 3B F4 */	b __dt__9dBgS_AcchFv
/* 80C323A4  7F E0 07 35 */	extsh. r0, r31
/* 80C323A8  40 81 00 0C */	ble lbl_80C323B4
/* 80C323AC  7F C3 F3 78 */	mr r3, r30
/* 80C323B0  4B 69 C9 8C */	b __dl__FPv
lbl_80C323B4:
/* 80C323B4  7F C3 F3 78 */	mr r3, r30
/* 80C323B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C323BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C323C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C323C4  7C 08 03 A6 */	mtlr r0
/* 80C323C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C323CC  4E 80 00 20 */	blr 

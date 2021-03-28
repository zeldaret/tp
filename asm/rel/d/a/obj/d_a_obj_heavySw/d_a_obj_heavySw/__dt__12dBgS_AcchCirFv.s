lbl_80C1CF20:
/* 80C1CF20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1CF24  7C 08 02 A6 */	mflr r0
/* 80C1CF28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1CF2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1CF30  93 C1 00 08 */	stw r30, 8(r1)
/* 80C1CF34  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C1CF38  7C 9F 23 78 */	mr r31, r4
/* 80C1CF3C  41 82 00 38 */	beq lbl_80C1CF74
/* 80C1CF40  3C 60 80 C2 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80C1CF44  38 03 DB D0 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80C1CF48  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80C1CF4C  38 7E 00 14 */	addi r3, r30, 0x14
/* 80C1CF50  38 80 FF FF */	li r4, -1
/* 80C1CF54  4B 65 1F C4 */	b __dt__8cM3dGCirFv
/* 80C1CF58  7F C3 F3 78 */	mr r3, r30
/* 80C1CF5C  38 80 00 00 */	li r4, 0
/* 80C1CF60  4B 64 B1 50 */	b __dt__13cBgS_PolyInfoFv
/* 80C1CF64  7F E0 07 35 */	extsh. r0, r31
/* 80C1CF68  40 81 00 0C */	ble lbl_80C1CF74
/* 80C1CF6C  7F C3 F3 78 */	mr r3, r30
/* 80C1CF70  4B 6B 1D CC */	b __dl__FPv
lbl_80C1CF74:
/* 80C1CF74  7F C3 F3 78 */	mr r3, r30
/* 80C1CF78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1CF7C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C1CF80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1CF84  7C 08 03 A6 */	mtlr r0
/* 80C1CF88  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1CF8C  4E 80 00 20 */	blr 

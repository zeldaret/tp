lbl_8067BE68:
/* 8067BE68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8067BE6C  7C 08 02 A6 */	mflr r0
/* 8067BE70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8067BE74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8067BE78  93 C1 00 08 */	stw r30, 8(r1)
/* 8067BE7C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8067BE80  7C 9F 23 78 */	mr r31, r4
/* 8067BE84  41 82 00 38 */	beq lbl_8067BEBC
/* 8067BE88  3C 60 80 68 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 8067BE8C  38 03 C6 0C */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 8067BE90  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8067BE94  38 7E 00 14 */	addi r3, r30, 0x14
/* 8067BE98  38 80 FF FF */	li r4, -1
/* 8067BE9C  4B BF 30 7C */	b __dt__8cM3dGCirFv
/* 8067BEA0  7F C3 F3 78 */	mr r3, r30
/* 8067BEA4  38 80 00 00 */	li r4, 0
/* 8067BEA8  4B BE C2 08 */	b __dt__13cBgS_PolyInfoFv
/* 8067BEAC  7F E0 07 35 */	extsh. r0, r31
/* 8067BEB0  40 81 00 0C */	ble lbl_8067BEBC
/* 8067BEB4  7F C3 F3 78 */	mr r3, r30
/* 8067BEB8  4B C5 2E 84 */	b __dl__FPv
lbl_8067BEBC:
/* 8067BEBC  7F C3 F3 78 */	mr r3, r30
/* 8067BEC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8067BEC4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8067BEC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8067BECC  7C 08 03 A6 */	mtlr r0
/* 8067BED0  38 21 00 10 */	addi r1, r1, 0x10
/* 8067BED4  4E 80 00 20 */	blr 

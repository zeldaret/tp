lbl_80AC6C74:
/* 80AC6C74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC6C78  7C 08 02 A6 */	mflr r0
/* 80AC6C7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC6C80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC6C84  93 C1 00 08 */	stw r30, 8(r1)
/* 80AC6C88  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AC6C8C  7C 9F 23 78 */	mr r31, r4
/* 80AC6C90  41 82 00 38 */	beq lbl_80AC6CC8
/* 80AC6C94  3C 60 80 AC */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80AC6C98  38 03 73 1C */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80AC6C9C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80AC6CA0  38 7E 00 14 */	addi r3, r30, 0x14
/* 80AC6CA4  38 80 FF FF */	li r4, -1
/* 80AC6CA8  4B 7A 82 70 */	b __dt__8cM3dGCirFv
/* 80AC6CAC  7F C3 F3 78 */	mr r3, r30
/* 80AC6CB0  38 80 00 00 */	li r4, 0
/* 80AC6CB4  4B 7A 13 FC */	b __dt__13cBgS_PolyInfoFv
/* 80AC6CB8  7F E0 07 35 */	extsh. r0, r31
/* 80AC6CBC  40 81 00 0C */	ble lbl_80AC6CC8
/* 80AC6CC0  7F C3 F3 78 */	mr r3, r30
/* 80AC6CC4  4B 80 80 78 */	b __dl__FPv
lbl_80AC6CC8:
/* 80AC6CC8  7F C3 F3 78 */	mr r3, r30
/* 80AC6CCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC6CD0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AC6CD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC6CD8  7C 08 03 A6 */	mtlr r0
/* 80AC6CDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC6CE0  4E 80 00 20 */	blr 

lbl_80559C60:
/* 80559C60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80559C64  7C 08 02 A6 */	mflr r0
/* 80559C68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80559C6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80559C70  93 C1 00 08 */	stw r30, 8(r1)
/* 80559C74  7C 7E 1B 79 */	or. r30, r3, r3
/* 80559C78  7C 9F 23 78 */	mr r31, r4
/* 80559C7C  41 82 00 38 */	beq lbl_80559CB4
/* 80559C80  3C 60 80 56 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x8055B288@ha */
/* 80559C84  38 03 B2 88 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x8055B288@l */
/* 80559C88  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80559C8C  38 7E 00 14 */	addi r3, r30, 0x14
/* 80559C90  38 80 FF FF */	li r4, -1
/* 80559C94  4B D1 52 85 */	bl __dt__8cM3dGCirFv
/* 80559C98  7F C3 F3 78 */	mr r3, r30
/* 80559C9C  38 80 00 00 */	li r4, 0
/* 80559CA0  4B D0 E4 11 */	bl __dt__13cBgS_PolyInfoFv
/* 80559CA4  7F E0 07 35 */	extsh. r0, r31
/* 80559CA8  40 81 00 0C */	ble lbl_80559CB4
/* 80559CAC  7F C3 F3 78 */	mr r3, r30
/* 80559CB0  4B D7 50 8D */	bl __dl__FPv
lbl_80559CB4:
/* 80559CB4  7F C3 F3 78 */	mr r3, r30
/* 80559CB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80559CBC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80559CC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80559CC4  7C 08 03 A6 */	mtlr r0
/* 80559CC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80559CCC  4E 80 00 20 */	blr 

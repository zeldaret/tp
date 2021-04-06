lbl_806E9C60:
/* 806E9C60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E9C64  7C 08 02 A6 */	mflr r0
/* 806E9C68  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E9C6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806E9C70  93 C1 00 08 */	stw r30, 8(r1)
/* 806E9C74  7C 7E 1B 79 */	or. r30, r3, r3
/* 806E9C78  7C 9F 23 78 */	mr r31, r4
/* 806E9C7C  41 82 00 38 */	beq lbl_806E9CB4
/* 806E9C80  3C 60 80 6F */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x806EA458@ha */
/* 806E9C84  38 03 A4 58 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x806EA458@l */
/* 806E9C88  90 1E 00 0C */	stw r0, 0xc(r30)
/* 806E9C8C  38 7E 00 14 */	addi r3, r30, 0x14
/* 806E9C90  38 80 FF FF */	li r4, -1
/* 806E9C94  4B B8 52 85 */	bl __dt__8cM3dGCirFv
/* 806E9C98  7F C3 F3 78 */	mr r3, r30
/* 806E9C9C  38 80 00 00 */	li r4, 0
/* 806E9CA0  4B B7 E4 11 */	bl __dt__13cBgS_PolyInfoFv
/* 806E9CA4  7F E0 07 35 */	extsh. r0, r31
/* 806E9CA8  40 81 00 0C */	ble lbl_806E9CB4
/* 806E9CAC  7F C3 F3 78 */	mr r3, r30
/* 806E9CB0  4B BE 50 8D */	bl __dl__FPv
lbl_806E9CB4:
/* 806E9CB4  7F C3 F3 78 */	mr r3, r30
/* 806E9CB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806E9CBC  83 C1 00 08 */	lwz r30, 8(r1)
/* 806E9CC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E9CC4  7C 08 03 A6 */	mtlr r0
/* 806E9CC8  38 21 00 10 */	addi r1, r1, 0x10
/* 806E9CCC  4E 80 00 20 */	blr 

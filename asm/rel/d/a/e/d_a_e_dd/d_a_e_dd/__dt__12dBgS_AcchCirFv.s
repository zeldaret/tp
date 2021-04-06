lbl_806A6C50:
/* 806A6C50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A6C54  7C 08 02 A6 */	mflr r0
/* 806A6C58  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A6C5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806A6C60  93 C1 00 08 */	stw r30, 8(r1)
/* 806A6C64  7C 7E 1B 79 */	or. r30, r3, r3
/* 806A6C68  7C 9F 23 78 */	mr r31, r4
/* 806A6C6C  41 82 00 38 */	beq lbl_806A6CA4
/* 806A6C70  3C 60 80 6A */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x806A7434@ha */
/* 806A6C74  38 03 74 34 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x806A7434@l */
/* 806A6C78  90 1E 00 0C */	stw r0, 0xc(r30)
/* 806A6C7C  38 7E 00 14 */	addi r3, r30, 0x14
/* 806A6C80  38 80 FF FF */	li r4, -1
/* 806A6C84  4B BC 82 95 */	bl __dt__8cM3dGCirFv
/* 806A6C88  7F C3 F3 78 */	mr r3, r30
/* 806A6C8C  38 80 00 00 */	li r4, 0
/* 806A6C90  4B BC 14 21 */	bl __dt__13cBgS_PolyInfoFv
/* 806A6C94  7F E0 07 35 */	extsh. r0, r31
/* 806A6C98  40 81 00 0C */	ble lbl_806A6CA4
/* 806A6C9C  7F C3 F3 78 */	mr r3, r30
/* 806A6CA0  4B C2 80 9D */	bl __dl__FPv
lbl_806A6CA4:
/* 806A6CA4  7F C3 F3 78 */	mr r3, r30
/* 806A6CA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806A6CAC  83 C1 00 08 */	lwz r30, 8(r1)
/* 806A6CB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A6CB4  7C 08 03 A6 */	mtlr r0
/* 806A6CB8  38 21 00 10 */	addi r1, r1, 0x10
/* 806A6CBC  4E 80 00 20 */	blr 

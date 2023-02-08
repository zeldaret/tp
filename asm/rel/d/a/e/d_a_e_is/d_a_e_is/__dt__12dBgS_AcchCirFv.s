lbl_806F7A0C:
/* 806F7A0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F7A10  7C 08 02 A6 */	mflr r0
/* 806F7A14  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F7A18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F7A1C  93 C1 00 08 */	stw r30, 8(r1)
/* 806F7A20  7C 7E 1B 79 */	or. r30, r3, r3
/* 806F7A24  7C 9F 23 78 */	mr r31, r4
/* 806F7A28  41 82 00 38 */	beq lbl_806F7A60
/* 806F7A2C  3C 60 80 6F */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x806F7D50@ha */
/* 806F7A30  38 03 7D 50 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x806F7D50@l */
/* 806F7A34  90 1E 00 0C */	stw r0, 0xc(r30)
/* 806F7A38  38 7E 00 14 */	addi r3, r30, 0x14
/* 806F7A3C  38 80 FF FF */	li r4, -1
/* 806F7A40  4B B7 74 D9 */	bl __dt__8cM3dGCirFv
/* 806F7A44  7F C3 F3 78 */	mr r3, r30
/* 806F7A48  38 80 00 00 */	li r4, 0
/* 806F7A4C  4B B7 06 65 */	bl __dt__13cBgS_PolyInfoFv
/* 806F7A50  7F E0 07 35 */	extsh. r0, r31
/* 806F7A54  40 81 00 0C */	ble lbl_806F7A60
/* 806F7A58  7F C3 F3 78 */	mr r3, r30
/* 806F7A5C  4B BD 72 E1 */	bl __dl__FPv
lbl_806F7A60:
/* 806F7A60  7F C3 F3 78 */	mr r3, r30
/* 806F7A64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F7A68  83 C1 00 08 */	lwz r30, 8(r1)
/* 806F7A6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F7A70  7C 08 03 A6 */	mtlr r0
/* 806F7A74  38 21 00 10 */	addi r1, r1, 0x10
/* 806F7A78  4E 80 00 20 */	blr 

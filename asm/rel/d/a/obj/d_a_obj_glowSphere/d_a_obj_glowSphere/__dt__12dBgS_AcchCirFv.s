lbl_80BF99F4:
/* 80BF99F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF99F8  7C 08 02 A6 */	mflr r0
/* 80BF99FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF9A00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF9A04  93 C1 00 08 */	stw r30, 8(r1)
/* 80BF9A08  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BF9A0C  7C 9F 23 78 */	mr r31, r4
/* 80BF9A10  41 82 00 38 */	beq lbl_80BF9A48
/* 80BF9A14  3C 60 80 C0 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80BFAB10@ha */
/* 80BF9A18  38 03 AB 10 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80BFAB10@l */
/* 80BF9A1C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80BF9A20  38 7E 00 14 */	addi r3, r30, 0x14
/* 80BF9A24  38 80 FF FF */	li r4, -1
/* 80BF9A28  4B 67 54 F1 */	bl __dt__8cM3dGCirFv
/* 80BF9A2C  7F C3 F3 78 */	mr r3, r30
/* 80BF9A30  38 80 00 00 */	li r4, 0
/* 80BF9A34  4B 66 E6 7D */	bl __dt__13cBgS_PolyInfoFv
/* 80BF9A38  7F E0 07 35 */	extsh. r0, r31
/* 80BF9A3C  40 81 00 0C */	ble lbl_80BF9A48
/* 80BF9A40  7F C3 F3 78 */	mr r3, r30
/* 80BF9A44  4B 6D 52 F9 */	bl __dl__FPv
lbl_80BF9A48:
/* 80BF9A48  7F C3 F3 78 */	mr r3, r30
/* 80BF9A4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF9A50  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BF9A54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF9A58  7C 08 03 A6 */	mtlr r0
/* 80BF9A5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF9A60  4E 80 00 20 */	blr 

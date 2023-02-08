lbl_80AF57F8:
/* 80AF57F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF57FC  7C 08 02 A6 */	mflr r0
/* 80AF5800  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF5804  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF5808  93 C1 00 08 */	stw r30, 8(r1)
/* 80AF580C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AF5810  7C 9F 23 78 */	mr r31, r4
/* 80AF5814  41 82 00 38 */	beq lbl_80AF584C
/* 80AF5818  3C 60 80 AF */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80AF5DDC@ha */
/* 80AF581C  38 03 5D DC */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80AF5DDC@l */
/* 80AF5820  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80AF5824  38 7E 00 14 */	addi r3, r30, 0x14
/* 80AF5828  38 80 FF FF */	li r4, -1
/* 80AF582C  4B 77 96 ED */	bl __dt__8cM3dGCirFv
/* 80AF5830  7F C3 F3 78 */	mr r3, r30
/* 80AF5834  38 80 00 00 */	li r4, 0
/* 80AF5838  4B 77 28 79 */	bl __dt__13cBgS_PolyInfoFv
/* 80AF583C  7F E0 07 35 */	extsh. r0, r31
/* 80AF5840  40 81 00 0C */	ble lbl_80AF584C
/* 80AF5844  7F C3 F3 78 */	mr r3, r30
/* 80AF5848  4B 7D 94 F5 */	bl __dl__FPv
lbl_80AF584C:
/* 80AF584C  7F C3 F3 78 */	mr r3, r30
/* 80AF5850  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF5854  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AF5858  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF585C  7C 08 03 A6 */	mtlr r0
/* 80AF5860  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF5864  4E 80 00 20 */	blr 

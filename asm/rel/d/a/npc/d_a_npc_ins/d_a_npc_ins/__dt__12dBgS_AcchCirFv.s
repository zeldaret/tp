lbl_80A13B68:
/* 80A13B68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A13B6C  7C 08 02 A6 */	mflr r0
/* 80A13B70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A13B74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A13B78  93 C1 00 08 */	stw r30, 8(r1)
/* 80A13B7C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A13B80  7C 9F 23 78 */	mr r31, r4
/* 80A13B84  41 82 00 38 */	beq lbl_80A13BBC
/* 80A13B88  3C 60 80 A1 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80A145A8@ha */
/* 80A13B8C  38 03 45 A8 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80A145A8@l */
/* 80A13B90  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80A13B94  38 7E 00 14 */	addi r3, r30, 0x14
/* 80A13B98  38 80 FF FF */	li r4, -1
/* 80A13B9C  4B 85 B3 7D */	bl __dt__8cM3dGCirFv
/* 80A13BA0  7F C3 F3 78 */	mr r3, r30
/* 80A13BA4  38 80 00 00 */	li r4, 0
/* 80A13BA8  4B 85 45 09 */	bl __dt__13cBgS_PolyInfoFv
/* 80A13BAC  7F E0 07 35 */	extsh. r0, r31
/* 80A13BB0  40 81 00 0C */	ble lbl_80A13BBC
/* 80A13BB4  7F C3 F3 78 */	mr r3, r30
/* 80A13BB8  4B 8B B1 85 */	bl __dl__FPv
lbl_80A13BBC:
/* 80A13BBC  7F C3 F3 78 */	mr r3, r30
/* 80A13BC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A13BC4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A13BC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A13BCC  7C 08 03 A6 */	mtlr r0
/* 80A13BD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A13BD4  4E 80 00 20 */	blr 

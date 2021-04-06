lbl_8086FE28:
/* 8086FE28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8086FE2C  7C 08 02 A6 */	mflr r0
/* 8086FE30  90 01 00 14 */	stw r0, 0x14(r1)
/* 8086FE34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8086FE38  93 C1 00 08 */	stw r30, 8(r1)
/* 8086FE3C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8086FE40  7C 9F 23 78 */	mr r31, r4
/* 8086FE44  41 82 00 38 */	beq lbl_8086FE7C
/* 8086FE48  3C 60 80 87 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x8087090C@ha */
/* 8086FE4C  38 03 09 0C */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x8087090C@l */
/* 8086FE50  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8086FE54  38 7E 00 14 */	addi r3, r30, 0x14
/* 8086FE58  38 80 FF FF */	li r4, -1
/* 8086FE5C  4B 9F F0 BD */	bl __dt__8cM3dGCirFv
/* 8086FE60  7F C3 F3 78 */	mr r3, r30
/* 8086FE64  38 80 00 00 */	li r4, 0
/* 8086FE68  4B 9F 82 49 */	bl __dt__13cBgS_PolyInfoFv
/* 8086FE6C  7F E0 07 35 */	extsh. r0, r31
/* 8086FE70  40 81 00 0C */	ble lbl_8086FE7C
/* 8086FE74  7F C3 F3 78 */	mr r3, r30
/* 8086FE78  4B A5 EE C5 */	bl __dl__FPv
lbl_8086FE7C:
/* 8086FE7C  7F C3 F3 78 */	mr r3, r30
/* 8086FE80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8086FE84  83 C1 00 08 */	lwz r30, 8(r1)
/* 8086FE88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8086FE8C  7C 08 03 A6 */	mtlr r0
/* 8086FE90  38 21 00 10 */	addi r1, r1, 0x10
/* 8086FE94  4E 80 00 20 */	blr 

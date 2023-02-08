lbl_80834D04:
/* 80834D04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80834D08  7C 08 02 A6 */	mflr r0
/* 80834D0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80834D10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80834D14  93 C1 00 08 */	stw r30, 8(r1)
/* 80834D18  7C 7E 1B 79 */	or. r30, r3, r3
/* 80834D1C  7C 9F 23 78 */	mr r31, r4
/* 80834D20  41 82 00 38 */	beq lbl_80834D58
/* 80834D24  3C 60 80 83 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x8083542C@ha */
/* 80834D28  38 03 54 2C */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x8083542C@l */
/* 80834D2C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80834D30  38 7E 00 14 */	addi r3, r30, 0x14
/* 80834D34  38 80 FF FF */	li r4, -1
/* 80834D38  4B A3 A1 E1 */	bl __dt__8cM3dGCirFv
/* 80834D3C  7F C3 F3 78 */	mr r3, r30
/* 80834D40  38 80 00 00 */	li r4, 0
/* 80834D44  4B A3 33 6D */	bl __dt__13cBgS_PolyInfoFv
/* 80834D48  7F E0 07 35 */	extsh. r0, r31
/* 80834D4C  40 81 00 0C */	ble lbl_80834D58
/* 80834D50  7F C3 F3 78 */	mr r3, r30
/* 80834D54  4B A9 9F E9 */	bl __dl__FPv
lbl_80834D58:
/* 80834D58  7F C3 F3 78 */	mr r3, r30
/* 80834D5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80834D60  83 C1 00 08 */	lwz r30, 8(r1)
/* 80834D64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80834D68  7C 08 03 A6 */	mtlr r0
/* 80834D6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80834D70  4E 80 00 20 */	blr 

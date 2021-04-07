lbl_80A20D14:
/* 80A20D14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A20D18  7C 08 02 A6 */	mflr r0
/* 80A20D1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A20D20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A20D24  93 C1 00 08 */	stw r30, 8(r1)
/* 80A20D28  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A20D2C  7C 9F 23 78 */	mr r31, r4
/* 80A20D30  41 82 00 38 */	beq lbl_80A20D68
/* 80A20D34  3C 60 80 A2 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80A217A0@ha */
/* 80A20D38  38 03 17 A0 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80A217A0@l */
/* 80A20D3C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80A20D40  38 7E 00 14 */	addi r3, r30, 0x14
/* 80A20D44  38 80 FF FF */	li r4, -1
/* 80A20D48  4B 84 E1 D1 */	bl __dt__8cM3dGCirFv
/* 80A20D4C  7F C3 F3 78 */	mr r3, r30
/* 80A20D50  38 80 00 00 */	li r4, 0
/* 80A20D54  4B 84 73 5D */	bl __dt__13cBgS_PolyInfoFv
/* 80A20D58  7F E0 07 35 */	extsh. r0, r31
/* 80A20D5C  40 81 00 0C */	ble lbl_80A20D68
/* 80A20D60  7F C3 F3 78 */	mr r3, r30
/* 80A20D64  4B 8A DF D9 */	bl __dl__FPv
lbl_80A20D68:
/* 80A20D68  7F C3 F3 78 */	mr r3, r30
/* 80A20D6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A20D70  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A20D74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A20D78  7C 08 03 A6 */	mtlr r0
/* 80A20D7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A20D80  4E 80 00 20 */	blr 

lbl_80325D24:
/* 80325D24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80325D28  7C 08 02 A6 */	mflr r0
/* 80325D2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80325D30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80325D34  93 C1 00 08 */	stw r30, 8(r1)
/* 80325D38  7C 7E 1B 79 */	or. r30, r3, r3
/* 80325D3C  7C 9F 23 78 */	mr r31, r4
/* 80325D40  41 82 00 2C */	beq lbl_80325D6C
/* 80325D44  3C 60 80 3D */	lis r3, __vt__12J3DJointTree@ha /* 0x803CECF4@ha */
/* 80325D48  38 03 EC F4 */	addi r0, r3, __vt__12J3DJointTree@l /* 0x803CECF4@l */
/* 80325D4C  90 1E 00 00 */	stw r0, 0(r30)
/* 80325D50  38 7E 00 34 */	addi r3, r30, 0x34
/* 80325D54  38 80 FF FF */	li r4, -1
/* 80325D58  4B FE B8 9D */	bl __dt__14J3DDrawMtxDataFv
/* 80325D5C  7F E0 07 35 */	extsh. r0, r31
/* 80325D60  40 81 00 0C */	ble lbl_80325D6C
/* 80325D64  7F C3 F3 78 */	mr r3, r30
/* 80325D68  4B FA 8F D5 */	bl __dl__FPv
lbl_80325D6C:
/* 80325D6C  7F C3 F3 78 */	mr r3, r30
/* 80325D70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80325D74  83 C1 00 08 */	lwz r30, 8(r1)
/* 80325D78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80325D7C  7C 08 03 A6 */	mtlr r0
/* 80325D80  38 21 00 10 */	addi r1, r1, 0x10
/* 80325D84  4E 80 00 20 */	blr 

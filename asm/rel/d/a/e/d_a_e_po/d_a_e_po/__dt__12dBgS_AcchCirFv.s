lbl_80756D1C:
/* 80756D1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80756D20  7C 08 02 A6 */	mflr r0
/* 80756D24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80756D28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80756D2C  93 C1 00 08 */	stw r30, 8(r1)
/* 80756D30  7C 7E 1B 79 */	or. r30, r3, r3
/* 80756D34  7C 9F 23 78 */	mr r31, r4
/* 80756D38  41 82 00 38 */	beq lbl_80756D70
/* 80756D3C  3C 60 80 75 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80756D40  38 03 7D 50 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80756D44  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80756D48  38 7E 00 14 */	addi r3, r30, 0x14
/* 80756D4C  38 80 FF FF */	li r4, -1
/* 80756D50  4B B1 81 C8 */	b __dt__8cM3dGCirFv
/* 80756D54  7F C3 F3 78 */	mr r3, r30
/* 80756D58  38 80 00 00 */	li r4, 0
/* 80756D5C  4B B1 13 54 */	b __dt__13cBgS_PolyInfoFv
/* 80756D60  7F E0 07 35 */	extsh. r0, r31
/* 80756D64  40 81 00 0C */	ble lbl_80756D70
/* 80756D68  7F C3 F3 78 */	mr r3, r30
/* 80756D6C  4B B7 7F D0 */	b __dl__FPv
lbl_80756D70:
/* 80756D70  7F C3 F3 78 */	mr r3, r30
/* 80756D74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80756D78  83 C1 00 08 */	lwz r30, 8(r1)
/* 80756D7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80756D80  7C 08 03 A6 */	mtlr r0
/* 80756D84  38 21 00 10 */	addi r1, r1, 0x10
/* 80756D88  4E 80 00 20 */	blr 

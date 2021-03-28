lbl_80D41D24:
/* 80D41D24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D41D28  7C 08 02 A6 */	mflr r0
/* 80D41D2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D41D30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D41D34  93 C1 00 08 */	stw r30, 8(r1)
/* 80D41D38  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D41D3C  7C 9F 23 78 */	mr r31, r4
/* 80D41D40  41 82 00 38 */	beq lbl_80D41D78
/* 80D41D44  3C 80 80 D4 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80D41D48  38 84 25 44 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80D41D4C  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80D41D50  38 04 00 0C */	addi r0, r4, 0xc
/* 80D41D54  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80D41D58  38 04 00 18 */	addi r0, r4, 0x18
/* 80D41D5C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80D41D60  38 80 00 00 */	li r4, 0
/* 80D41D64  4B 33 42 30 */	b __dt__9dBgS_AcchFv
/* 80D41D68  7F E0 07 35 */	extsh. r0, r31
/* 80D41D6C  40 81 00 0C */	ble lbl_80D41D78
/* 80D41D70  7F C3 F3 78 */	mr r3, r30
/* 80D41D74  4B 58 CF C8 */	b __dl__FPv
lbl_80D41D78:
/* 80D41D78  7F C3 F3 78 */	mr r3, r30
/* 80D41D7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D41D80  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D41D84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D41D88  7C 08 03 A6 */	mtlr r0
/* 80D41D8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D41D90  4E 80 00 20 */	blr 

lbl_804D1E88:
/* 804D1E88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D1E8C  7C 08 02 A6 */	mflr r0
/* 804D1E90  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D1E94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D1E98  93 C1 00 08 */	stw r30, 8(r1)
/* 804D1E9C  7C 7E 1B 79 */	or. r30, r3, r3
/* 804D1EA0  7C 9F 23 78 */	mr r31, r4
/* 804D1EA4  41 82 00 38 */	beq lbl_804D1EDC
/* 804D1EA8  3C 80 80 4D */	lis r4, __vt__13dBgS_LinkAcch@ha
/* 804D1EAC  38 84 4F 90 */	addi r4, r4, __vt__13dBgS_LinkAcch@l
/* 804D1EB0  90 9E 00 10 */	stw r4, 0x10(r30)
/* 804D1EB4  38 04 00 0C */	addi r0, r4, 0xc
/* 804D1EB8  90 1E 00 14 */	stw r0, 0x14(r30)
/* 804D1EBC  38 04 00 18 */	addi r0, r4, 0x18
/* 804D1EC0  90 1E 00 24 */	stw r0, 0x24(r30)
/* 804D1EC4  38 80 00 00 */	li r4, 0
/* 804D1EC8  4B BA 40 CC */	b __dt__9dBgS_AcchFv
/* 804D1ECC  7F E0 07 35 */	extsh. r0, r31
/* 804D1ED0  40 81 00 0C */	ble lbl_804D1EDC
/* 804D1ED4  7F C3 F3 78 */	mr r3, r30
/* 804D1ED8  4B DF CE 64 */	b __dl__FPv
lbl_804D1EDC:
/* 804D1EDC  7F C3 F3 78 */	mr r3, r30
/* 804D1EE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D1EE4  83 C1 00 08 */	lwz r30, 8(r1)
/* 804D1EE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D1EEC  7C 08 03 A6 */	mtlr r0
/* 804D1EF0  38 21 00 10 */	addi r1, r1, 0x10
/* 804D1EF4  4E 80 00 20 */	blr 

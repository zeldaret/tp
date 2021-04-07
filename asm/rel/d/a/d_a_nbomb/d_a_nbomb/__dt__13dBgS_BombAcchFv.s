lbl_804C7E24:
/* 804C7E24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C7E28  7C 08 02 A6 */	mflr r0
/* 804C7E2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C7E30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804C7E34  93 C1 00 08 */	stw r30, 8(r1)
/* 804C7E38  7C 7E 1B 79 */	or. r30, r3, r3
/* 804C7E3C  7C 9F 23 78 */	mr r31, r4
/* 804C7E40  41 82 00 38 */	beq lbl_804C7E78
/* 804C7E44  3C 80 80 4D */	lis r4, __vt__13dBgS_BombAcch@ha /* 0x804CC628@ha */
/* 804C7E48  38 84 C6 28 */	addi r4, r4, __vt__13dBgS_BombAcch@l /* 0x804CC628@l */
/* 804C7E4C  90 9E 00 10 */	stw r4, 0x10(r30)
/* 804C7E50  38 04 00 0C */	addi r0, r4, 0xc
/* 804C7E54  90 1E 00 14 */	stw r0, 0x14(r30)
/* 804C7E58  38 04 00 18 */	addi r0, r4, 0x18
/* 804C7E5C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 804C7E60  38 80 00 00 */	li r4, 0
/* 804C7E64  4B BA E1 31 */	bl __dt__9dBgS_AcchFv
/* 804C7E68  7F E0 07 35 */	extsh. r0, r31
/* 804C7E6C  40 81 00 0C */	ble lbl_804C7E78
/* 804C7E70  7F C3 F3 78 */	mr r3, r30
/* 804C7E74  4B E0 6E C9 */	bl __dl__FPv
lbl_804C7E78:
/* 804C7E78  7F C3 F3 78 */	mr r3, r30
/* 804C7E7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804C7E80  83 C1 00 08 */	lwz r30, 8(r1)
/* 804C7E84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C7E88  7C 08 03 A6 */	mtlr r0
/* 804C7E8C  38 21 00 10 */	addi r1, r1, 0x10
/* 804C7E90  4E 80 00 20 */	blr 

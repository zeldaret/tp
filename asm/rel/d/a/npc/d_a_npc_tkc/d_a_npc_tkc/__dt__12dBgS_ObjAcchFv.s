lbl_80B105AC:
/* 80B105AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B105B0  7C 08 02 A6 */	mflr r0
/* 80B105B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B105B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B105BC  93 C1 00 08 */	stw r30, 8(r1)
/* 80B105C0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B105C4  7C 9F 23 78 */	mr r31, r4
/* 80B105C8  41 82 00 38 */	beq lbl_80B10600
/* 80B105CC  3C 80 80 B1 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80B105D0  38 84 0C 6C */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80B105D4  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80B105D8  38 04 00 0C */	addi r0, r4, 0xc
/* 80B105DC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80B105E0  38 04 00 18 */	addi r0, r4, 0x18
/* 80B105E4  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80B105E8  38 80 00 00 */	li r4, 0
/* 80B105EC  4B 56 59 A8 */	b __dt__9dBgS_AcchFv
/* 80B105F0  7F E0 07 35 */	extsh. r0, r31
/* 80B105F4  40 81 00 0C */	ble lbl_80B10600
/* 80B105F8  7F C3 F3 78 */	mr r3, r30
/* 80B105FC  4B 7B E7 40 */	b __dl__FPv
lbl_80B10600:
/* 80B10600  7F C3 F3 78 */	mr r3, r30
/* 80B10604  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B10608  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B1060C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B10610  7C 08 03 A6 */	mtlr r0
/* 80B10614  38 21 00 10 */	addi r1, r1, 0x10
/* 80B10618  4E 80 00 20 */	blr 

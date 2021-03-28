lbl_80AF24BC:
/* 80AF24BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF24C0  7C 08 02 A6 */	mflr r0
/* 80AF24C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF24C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF24CC  93 C1 00 08 */	stw r30, 8(r1)
/* 80AF24D0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AF24D4  7C 9F 23 78 */	mr r31, r4
/* 80AF24D8  41 82 00 38 */	beq lbl_80AF2510
/* 80AF24DC  3C 80 80 AF */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80AF24E0  38 84 2A 60 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80AF24E4  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80AF24E8  38 04 00 0C */	addi r0, r4, 0xc
/* 80AF24EC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80AF24F0  38 04 00 18 */	addi r0, r4, 0x18
/* 80AF24F4  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80AF24F8  38 80 00 00 */	li r4, 0
/* 80AF24FC  4B 58 3A 98 */	b __dt__9dBgS_AcchFv
/* 80AF2500  7F E0 07 35 */	extsh. r0, r31
/* 80AF2504  40 81 00 0C */	ble lbl_80AF2510
/* 80AF2508  7F C3 F3 78 */	mr r3, r30
/* 80AF250C  4B 7D C8 30 */	b __dl__FPv
lbl_80AF2510:
/* 80AF2510  7F C3 F3 78 */	mr r3, r30
/* 80AF2514  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF2518  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AF251C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF2520  7C 08 03 A6 */	mtlr r0
/* 80AF2524  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF2528  4E 80 00 20 */	blr 

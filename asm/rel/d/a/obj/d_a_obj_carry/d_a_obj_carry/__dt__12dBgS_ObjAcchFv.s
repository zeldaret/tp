lbl_8046FF34:
/* 8046FF34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046FF38  7C 08 02 A6 */	mflr r0
/* 8046FF3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046FF40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046FF44  93 C1 00 08 */	stw r30, 8(r1)
/* 8046FF48  7C 7E 1B 79 */	or. r30, r3, r3
/* 8046FF4C  7C 9F 23 78 */	mr r31, r4
/* 8046FF50  41 82 00 38 */	beq lbl_8046FF88
/* 8046FF54  3C 80 80 48 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x8047B1A8@ha */
/* 8046FF58  38 84 B1 A8 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x8047B1A8@l */
/* 8046FF5C  90 9E 00 10 */	stw r4, 0x10(r30)
/* 8046FF60  38 04 00 0C */	addi r0, r4, 0xc
/* 8046FF64  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8046FF68  38 04 00 18 */	addi r0, r4, 0x18
/* 8046FF6C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8046FF70  38 80 00 00 */	li r4, 0
/* 8046FF74  4B C0 60 21 */	bl __dt__9dBgS_AcchFv
/* 8046FF78  7F E0 07 35 */	extsh. r0, r31
/* 8046FF7C  40 81 00 0C */	ble lbl_8046FF88
/* 8046FF80  7F C3 F3 78 */	mr r3, r30
/* 8046FF84  4B E5 ED B9 */	bl __dl__FPv
lbl_8046FF88:
/* 8046FF88  7F C3 F3 78 */	mr r3, r30
/* 8046FF8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046FF90  83 C1 00 08 */	lwz r30, 8(r1)
/* 8046FF94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046FF98  7C 08 03 A6 */	mtlr r0
/* 8046FF9C  38 21 00 10 */	addi r1, r1, 0x10
/* 8046FFA0  4E 80 00 20 */	blr 

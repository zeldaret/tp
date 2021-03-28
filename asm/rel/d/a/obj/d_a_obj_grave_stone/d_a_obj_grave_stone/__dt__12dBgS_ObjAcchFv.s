lbl_80C12FC0:
/* 80C12FC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C12FC4  7C 08 02 A6 */	mflr r0
/* 80C12FC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C12FCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C12FD0  93 C1 00 08 */	stw r30, 8(r1)
/* 80C12FD4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C12FD8  7C 9F 23 78 */	mr r31, r4
/* 80C12FDC  41 82 00 38 */	beq lbl_80C13014
/* 80C12FE0  3C 80 80 C1 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80C12FE4  38 84 33 70 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80C12FE8  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80C12FEC  38 04 00 0C */	addi r0, r4, 0xc
/* 80C12FF0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80C12FF4  38 04 00 18 */	addi r0, r4, 0x18
/* 80C12FF8  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80C12FFC  38 80 00 00 */	li r4, 0
/* 80C13000  4B 46 2F 94 */	b __dt__9dBgS_AcchFv
/* 80C13004  7F E0 07 35 */	extsh. r0, r31
/* 80C13008  40 81 00 0C */	ble lbl_80C13014
/* 80C1300C  7F C3 F3 78 */	mr r3, r30
/* 80C13010  4B 6B BD 2C */	b __dl__FPv
lbl_80C13014:
/* 80C13014  7F C3 F3 78 */	mr r3, r30
/* 80C13018  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1301C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C13020  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C13024  7C 08 03 A6 */	mtlr r0
/* 80C13028  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1302C  4E 80 00 20 */	blr 

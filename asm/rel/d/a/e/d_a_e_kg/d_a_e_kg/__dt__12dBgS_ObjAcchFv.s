lbl_806F9DC0:
/* 806F9DC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F9DC4  7C 08 02 A6 */	mflr r0
/* 806F9DC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F9DCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F9DD0  93 C1 00 08 */	stw r30, 8(r1)
/* 806F9DD4  7C 7E 1B 79 */	or. r30, r3, r3
/* 806F9DD8  7C 9F 23 78 */	mr r31, r4
/* 806F9DDC  41 82 00 38 */	beq lbl_806F9E14
/* 806F9DE0  3C 80 80 70 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 806F9DE4  38 84 A5 A4 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 806F9DE8  90 9E 00 10 */	stw r4, 0x10(r30)
/* 806F9DEC  38 04 00 0C */	addi r0, r4, 0xc
/* 806F9DF0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 806F9DF4  38 04 00 18 */	addi r0, r4, 0x18
/* 806F9DF8  90 1E 00 24 */	stw r0, 0x24(r30)
/* 806F9DFC  38 80 00 00 */	li r4, 0
/* 806F9E00  4B 97 C1 94 */	b __dt__9dBgS_AcchFv
/* 806F9E04  7F E0 07 35 */	extsh. r0, r31
/* 806F9E08  40 81 00 0C */	ble lbl_806F9E14
/* 806F9E0C  7F C3 F3 78 */	mr r3, r30
/* 806F9E10  4B BD 4F 2C */	b __dl__FPv
lbl_806F9E14:
/* 806F9E14  7F C3 F3 78 */	mr r3, r30
/* 806F9E18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F9E1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 806F9E20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F9E24  7C 08 03 A6 */	mtlr r0
/* 806F9E28  38 21 00 10 */	addi r1, r1, 0x10
/* 806F9E2C  4E 80 00 20 */	blr 

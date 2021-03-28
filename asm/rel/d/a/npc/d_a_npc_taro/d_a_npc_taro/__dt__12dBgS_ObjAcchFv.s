lbl_80570DA0:
/* 80570DA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80570DA4  7C 08 02 A6 */	mflr r0
/* 80570DA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80570DAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80570DB0  93 C1 00 08 */	stw r30, 8(r1)
/* 80570DB4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80570DB8  7C 9F 23 78 */	mr r31, r4
/* 80570DBC  41 82 00 38 */	beq lbl_80570DF4
/* 80570DC0  3C 80 80 57 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80570DC4  38 84 34 04 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80570DC8  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80570DCC  38 04 00 0C */	addi r0, r4, 0xc
/* 80570DD0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80570DD4  38 04 00 18 */	addi r0, r4, 0x18
/* 80570DD8  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80570DDC  38 80 00 00 */	li r4, 0
/* 80570DE0  4B B0 51 B4 */	b __dt__9dBgS_AcchFv
/* 80570DE4  7F E0 07 35 */	extsh. r0, r31
/* 80570DE8  40 81 00 0C */	ble lbl_80570DF4
/* 80570DEC  7F C3 F3 78 */	mr r3, r30
/* 80570DF0  4B D5 DF 4C */	b __dl__FPv
lbl_80570DF4:
/* 80570DF4  7F C3 F3 78 */	mr r3, r30
/* 80570DF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80570DFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80570E00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80570E04  7C 08 03 A6 */	mtlr r0
/* 80570E08  38 21 00 10 */	addi r1, r1, 0x10
/* 80570E0C  4E 80 00 20 */	blr 

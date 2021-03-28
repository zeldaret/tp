lbl_80535E38:
/* 80535E38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80535E3C  7C 08 02 A6 */	mflr r0
/* 80535E40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80535E44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80535E48  7C 7F 1B 79 */	or. r31, r3, r3
/* 80535E4C  41 82 00 30 */	beq lbl_80535E7C
/* 80535E50  3C 60 80 53 */	lis r3, __vt__10dCcD_GStts@ha
/* 80535E54  38 03 6A D4 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80535E58  90 1F 00 00 */	stw r0, 0(r31)
/* 80535E5C  41 82 00 10 */	beq lbl_80535E6C
/* 80535E60  3C 60 80 53 */	lis r3, __vt__10cCcD_GStts@ha
/* 80535E64  38 03 6A C8 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80535E68  90 1F 00 00 */	stw r0, 0(r31)
lbl_80535E6C:
/* 80535E6C  7C 80 07 35 */	extsh. r0, r4
/* 80535E70  40 81 00 0C */	ble lbl_80535E7C
/* 80535E74  7F E3 FB 78 */	mr r3, r31
/* 80535E78  4B D9 8E C4 */	b __dl__FPv
lbl_80535E7C:
/* 80535E7C  7F E3 FB 78 */	mr r3, r31
/* 80535E80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80535E84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80535E88  7C 08 03 A6 */	mtlr r0
/* 80535E8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80535E90  4E 80 00 20 */	blr 

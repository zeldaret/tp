lbl_80681DD8:
/* 80681DD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80681DDC  7C 08 02 A6 */	mflr r0
/* 80681DE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80681DE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80681DE8  93 C1 00 08 */	stw r30, 8(r1)
/* 80681DEC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80681DF0  7C 9F 23 78 */	mr r31, r4
/* 80681DF4  41 82 00 38 */	beq lbl_80681E2C
/* 80681DF8  3C 80 80 68 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80681DFC  38 84 25 FC */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80681E00  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80681E04  38 04 00 0C */	addi r0, r4, 0xc
/* 80681E08  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80681E0C  38 04 00 18 */	addi r0, r4, 0x18
/* 80681E10  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80681E14  38 80 00 00 */	li r4, 0
/* 80681E18  4B 9F 41 7C */	b __dt__9dBgS_AcchFv
/* 80681E1C  7F E0 07 35 */	extsh. r0, r31
/* 80681E20  40 81 00 0C */	ble lbl_80681E2C
/* 80681E24  7F C3 F3 78 */	mr r3, r30
/* 80681E28  4B C4 CF 14 */	b __dl__FPv
lbl_80681E2C:
/* 80681E2C  7F C3 F3 78 */	mr r3, r30
/* 80681E30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80681E34  83 C1 00 08 */	lwz r30, 8(r1)
/* 80681E38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80681E3C  7C 08 03 A6 */	mtlr r0
/* 80681E40  38 21 00 10 */	addi r1, r1, 0x10
/* 80681E44  4E 80 00 20 */	blr 

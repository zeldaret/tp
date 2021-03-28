lbl_80575E0C:
/* 80575E0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80575E10  7C 08 02 A6 */	mflr r0
/* 80575E14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80575E18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80575E1C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80575E20  41 82 00 30 */	beq lbl_80575E50
/* 80575E24  3C 60 80 57 */	lis r3, __vt__10dCcD_GStts@ha
/* 80575E28  38 03 68 A4 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80575E2C  90 1F 00 00 */	stw r0, 0(r31)
/* 80575E30  41 82 00 10 */	beq lbl_80575E40
/* 80575E34  3C 60 80 57 */	lis r3, __vt__10cCcD_GStts@ha
/* 80575E38  38 03 68 98 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80575E3C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80575E40:
/* 80575E40  7C 80 07 35 */	extsh. r0, r4
/* 80575E44  40 81 00 0C */	ble lbl_80575E50
/* 80575E48  7F E3 FB 78 */	mr r3, r31
/* 80575E4C  4B D5 8E F0 */	b __dl__FPv
lbl_80575E50:
/* 80575E50  7F E3 FB 78 */	mr r3, r31
/* 80575E54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80575E58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80575E5C  7C 08 03 A6 */	mtlr r0
/* 80575E60  38 21 00 10 */	addi r1, r1, 0x10
/* 80575E64  4E 80 00 20 */	blr 

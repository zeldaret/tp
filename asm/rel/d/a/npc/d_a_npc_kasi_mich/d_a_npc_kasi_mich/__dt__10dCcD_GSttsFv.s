lbl_80A29DF4:
/* 80A29DF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A29DF8  7C 08 02 A6 */	mflr r0
/* 80A29DFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A29E00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A29E04  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A29E08  41 82 00 30 */	beq lbl_80A29E38
/* 80A29E0C  3C 60 80 A3 */	lis r3, __vt__10dCcD_GStts@ha
/* 80A29E10  38 03 A7 28 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80A29E14  90 1F 00 00 */	stw r0, 0(r31)
/* 80A29E18  41 82 00 10 */	beq lbl_80A29E28
/* 80A29E1C  3C 60 80 A3 */	lis r3, __vt__10cCcD_GStts@ha
/* 80A29E20  38 03 A7 1C */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80A29E24  90 1F 00 00 */	stw r0, 0(r31)
lbl_80A29E28:
/* 80A29E28  7C 80 07 35 */	extsh. r0, r4
/* 80A29E2C  40 81 00 0C */	ble lbl_80A29E38
/* 80A29E30  7F E3 FB 78 */	mr r3, r31
/* 80A29E34  4B 8A 4F 08 */	b __dl__FPv
lbl_80A29E38:
/* 80A29E38  7F E3 FB 78 */	mr r3, r31
/* 80A29E3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A29E40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A29E44  7C 08 03 A6 */	mtlr r0
/* 80A29E48  38 21 00 10 */	addi r1, r1, 0x10
/* 80A29E4C  4E 80 00 20 */	blr 

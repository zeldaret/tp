lbl_804D1DF0:
/* 804D1DF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D1DF4  7C 08 02 A6 */	mflr r0
/* 804D1DF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D1DFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D1E00  7C 7F 1B 79 */	or. r31, r3, r3
/* 804D1E04  41 82 00 30 */	beq lbl_804D1E34
/* 804D1E08  3C 60 80 4D */	lis r3, __vt__10dCcD_GStts@ha /* 0x804D4F6C@ha */
/* 804D1E0C  38 03 4F 6C */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x804D4F6C@l */
/* 804D1E10  90 1F 00 00 */	stw r0, 0(r31)
/* 804D1E14  41 82 00 10 */	beq lbl_804D1E24
/* 804D1E18  3C 60 80 4D */	lis r3, __vt__10cCcD_GStts@ha /* 0x804D4F60@ha */
/* 804D1E1C  38 03 4F 60 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x804D4F60@l */
/* 804D1E20  90 1F 00 00 */	stw r0, 0(r31)
lbl_804D1E24:
/* 804D1E24  7C 80 07 35 */	extsh. r0, r4
/* 804D1E28  40 81 00 0C */	ble lbl_804D1E34
/* 804D1E2C  7F E3 FB 78 */	mr r3, r31
/* 804D1E30  4B DF CF 0D */	bl __dl__FPv
lbl_804D1E34:
/* 804D1E34  7F E3 FB 78 */	mr r3, r31
/* 804D1E38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D1E3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D1E40  7C 08 03 A6 */	mtlr r0
/* 804D1E44  38 21 00 10 */	addi r1, r1, 0x10
/* 804D1E48  4E 80 00 20 */	blr 

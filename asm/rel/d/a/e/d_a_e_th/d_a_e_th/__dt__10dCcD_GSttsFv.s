lbl_807B3E20:
/* 807B3E20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807B3E24  7C 08 02 A6 */	mflr r0
/* 807B3E28  90 01 00 14 */	stw r0, 0x14(r1)
/* 807B3E2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807B3E30  7C 7F 1B 79 */	or. r31, r3, r3
/* 807B3E34  41 82 00 30 */	beq lbl_807B3E64
/* 807B3E38  3C 60 80 7B */	lis r3, __vt__10dCcD_GStts@ha /* 0x807B47FC@ha */
/* 807B3E3C  38 03 47 FC */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x807B47FC@l */
/* 807B3E40  90 1F 00 00 */	stw r0, 0(r31)
/* 807B3E44  41 82 00 10 */	beq lbl_807B3E54
/* 807B3E48  3C 60 80 7B */	lis r3, __vt__10cCcD_GStts@ha /* 0x807B47F0@ha */
/* 807B3E4C  38 03 47 F0 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x807B47F0@l */
/* 807B3E50  90 1F 00 00 */	stw r0, 0(r31)
lbl_807B3E54:
/* 807B3E54  7C 80 07 35 */	extsh. r0, r4
/* 807B3E58  40 81 00 0C */	ble lbl_807B3E64
/* 807B3E5C  7F E3 FB 78 */	mr r3, r31
/* 807B3E60  4B B1 AE DD */	bl __dl__FPv
lbl_807B3E64:
/* 807B3E64  7F E3 FB 78 */	mr r3, r31
/* 807B3E68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807B3E6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807B3E70  7C 08 03 A6 */	mtlr r0
/* 807B3E74  38 21 00 10 */	addi r1, r1, 0x10
/* 807B3E78  4E 80 00 20 */	blr 

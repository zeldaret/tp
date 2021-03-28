lbl_80480B64:
/* 80480B64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80480B68  7C 08 02 A6 */	mflr r0
/* 80480B6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80480B70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80480B74  7C 7F 1B 79 */	or. r31, r3, r3
/* 80480B78  41 82 00 30 */	beq lbl_80480BA8
/* 80480B7C  3C 60 80 48 */	lis r3, __vt__10dCcD_GStts@ha
/* 80480B80  38 03 17 C8 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80480B84  90 1F 00 00 */	stw r0, 0(r31)
/* 80480B88  41 82 00 10 */	beq lbl_80480B98
/* 80480B8C  3C 60 80 48 */	lis r3, __vt__10cCcD_GStts@ha
/* 80480B90  38 03 17 BC */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80480B94  90 1F 00 00 */	stw r0, 0(r31)
lbl_80480B98:
/* 80480B98  7C 80 07 35 */	extsh. r0, r4
/* 80480B9C  40 81 00 0C */	ble lbl_80480BA8
/* 80480BA0  7F E3 FB 78 */	mr r3, r31
/* 80480BA4  4B E4 E1 98 */	b __dl__FPv
lbl_80480BA8:
/* 80480BA8  7F E3 FB 78 */	mr r3, r31
/* 80480BAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80480BB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80480BB4  7C 08 03 A6 */	mtlr r0
/* 80480BB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80480BBC  4E 80 00 20 */	blr 

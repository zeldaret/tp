lbl_80AACA20:
/* 80AACA20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AACA24  7C 08 02 A6 */	mflr r0
/* 80AACA28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AACA2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AACA30  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AACA34  41 82 00 30 */	beq lbl_80AACA64
/* 80AACA38  3C 60 80 AB */	lis r3, __vt__10dCcD_GStts@ha
/* 80AACA3C  38 03 DA C0 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80AACA40  90 1F 00 00 */	stw r0, 0(r31)
/* 80AACA44  41 82 00 10 */	beq lbl_80AACA54
/* 80AACA48  3C 60 80 AB */	lis r3, __vt__10cCcD_GStts@ha
/* 80AACA4C  38 03 DA B4 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80AACA50  90 1F 00 00 */	stw r0, 0(r31)
lbl_80AACA54:
/* 80AACA54  7C 80 07 35 */	extsh. r0, r4
/* 80AACA58  40 81 00 0C */	ble lbl_80AACA64
/* 80AACA5C  7F E3 FB 78 */	mr r3, r31
/* 80AACA60  4B 82 22 DC */	b __dl__FPv
lbl_80AACA64:
/* 80AACA64  7F E3 FB 78 */	mr r3, r31
/* 80AACA68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AACA6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AACA70  7C 08 03 A6 */	mtlr r0
/* 80AACA74  38 21 00 10 */	addi r1, r1, 0x10
/* 80AACA78  4E 80 00 20 */	blr 

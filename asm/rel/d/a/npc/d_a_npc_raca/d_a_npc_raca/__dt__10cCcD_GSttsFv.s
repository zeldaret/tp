lbl_80AB7BF8:
/* 80AB7BF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB7BFC  7C 08 02 A6 */	mflr r0
/* 80AB7C00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB7C04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB7C08  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AB7C0C  41 82 00 1C */	beq lbl_80AB7C28
/* 80AB7C10  3C A0 80 AC */	lis r5, __vt__10cCcD_GStts@ha
/* 80AB7C14  38 05 93 F4 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80AB7C18  90 1F 00 00 */	stw r0, 0(r31)
/* 80AB7C1C  7C 80 07 35 */	extsh. r0, r4
/* 80AB7C20  40 81 00 08 */	ble lbl_80AB7C28
/* 80AB7C24  4B 81 71 18 */	b __dl__FPv
lbl_80AB7C28:
/* 80AB7C28  7F E3 FB 78 */	mr r3, r31
/* 80AB7C2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB7C30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB7C34  7C 08 03 A6 */	mtlr r0
/* 80AB7C38  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB7C3C  4E 80 00 20 */	blr 

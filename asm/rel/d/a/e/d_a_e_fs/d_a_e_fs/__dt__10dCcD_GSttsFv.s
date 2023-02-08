lbl_806BDE10:
/* 806BDE10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806BDE14  7C 08 02 A6 */	mflr r0
/* 806BDE18  90 01 00 14 */	stw r0, 0x14(r1)
/* 806BDE1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806BDE20  7C 7F 1B 79 */	or. r31, r3, r3
/* 806BDE24  41 82 00 30 */	beq lbl_806BDE54
/* 806BDE28  3C 60 80 6C */	lis r3, __vt__10dCcD_GStts@ha /* 0x806BE6F4@ha */
/* 806BDE2C  38 03 E6 F4 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x806BE6F4@l */
/* 806BDE30  90 1F 00 00 */	stw r0, 0(r31)
/* 806BDE34  41 82 00 10 */	beq lbl_806BDE44
/* 806BDE38  3C 60 80 6C */	lis r3, __vt__10cCcD_GStts@ha /* 0x806BE6E8@ha */
/* 806BDE3C  38 03 E6 E8 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x806BE6E8@l */
/* 806BDE40  90 1F 00 00 */	stw r0, 0(r31)
lbl_806BDE44:
/* 806BDE44  7C 80 07 35 */	extsh. r0, r4
/* 806BDE48  40 81 00 0C */	ble lbl_806BDE54
/* 806BDE4C  7F E3 FB 78 */	mr r3, r31
/* 806BDE50  4B C1 0E ED */	bl __dl__FPv
lbl_806BDE54:
/* 806BDE54  7F E3 FB 78 */	mr r3, r31
/* 806BDE58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806BDE5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806BDE60  7C 08 03 A6 */	mtlr r0
/* 806BDE64  38 21 00 10 */	addi r1, r1, 0x10
/* 806BDE68  4E 80 00 20 */	blr 

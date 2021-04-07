lbl_80A6F5D0:
/* 80A6F5D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6F5D4  7C 08 02 A6 */	mflr r0
/* 80A6F5D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6F5DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A6F5E0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A6F5E4  41 82 00 30 */	beq lbl_80A6F614
/* 80A6F5E8  3C 60 80 A7 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80A70A34@ha */
/* 80A6F5EC  38 03 0A 34 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80A70A34@l */
/* 80A6F5F0  90 1F 00 00 */	stw r0, 0(r31)
/* 80A6F5F4  41 82 00 10 */	beq lbl_80A6F604
/* 80A6F5F8  3C 60 80 A7 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80A70A28@ha */
/* 80A6F5FC  38 03 0A 28 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80A70A28@l */
/* 80A6F600  90 1F 00 00 */	stw r0, 0(r31)
lbl_80A6F604:
/* 80A6F604  7C 80 07 35 */	extsh. r0, r4
/* 80A6F608  40 81 00 0C */	ble lbl_80A6F614
/* 80A6F60C  7F E3 FB 78 */	mr r3, r31
/* 80A6F610  4B 85 F7 2D */	bl __dl__FPv
lbl_80A6F614:
/* 80A6F614  7F E3 FB 78 */	mr r3, r31
/* 80A6F618  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A6F61C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6F620  7C 08 03 A6 */	mtlr r0
/* 80A6F624  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6F628  4E 80 00 20 */	blr 

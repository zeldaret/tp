lbl_80C7A60C:
/* 80C7A60C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7A610  7C 08 02 A6 */	mflr r0
/* 80C7A614  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7A618  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C7A61C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C7A620  41 82 00 30 */	beq lbl_80C7A650
/* 80C7A624  3C 60 80 C8 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80C7C9D4@ha */
/* 80C7A628  38 03 C9 D4 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80C7C9D4@l */
/* 80C7A62C  90 1F 00 00 */	stw r0, 0(r31)
/* 80C7A630  41 82 00 10 */	beq lbl_80C7A640
/* 80C7A634  3C 60 80 C8 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80C7C9C8@ha */
/* 80C7A638  38 03 C9 C8 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80C7C9C8@l */
/* 80C7A63C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C7A640:
/* 80C7A640  7C 80 07 35 */	extsh. r0, r4
/* 80C7A644  40 81 00 0C */	ble lbl_80C7A650
/* 80C7A648  7F E3 FB 78 */	mr r3, r31
/* 80C7A64C  4B 65 46 F1 */	bl __dl__FPv
lbl_80C7A650:
/* 80C7A650  7F E3 FB 78 */	mr r3, r31
/* 80C7A654  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C7A658  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7A65C  7C 08 03 A6 */	mtlr r0
/* 80C7A660  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7A664  4E 80 00 20 */	blr 

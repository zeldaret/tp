lbl_8061A5F4:
/* 8061A5F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061A5F8  7C 08 02 A6 */	mflr r0
/* 8061A5FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061A600  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8061A604  7C 7F 1B 79 */	or. r31, r3, r3
/* 8061A608  41 82 00 30 */	beq lbl_8061A638
/* 8061A60C  3C 60 80 62 */	lis r3, __vt__10dCcD_GStts@ha
/* 8061A610  38 03 B4 38 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 8061A614  90 1F 00 00 */	stw r0, 0(r31)
/* 8061A618  41 82 00 10 */	beq lbl_8061A628
/* 8061A61C  3C 60 80 62 */	lis r3, __vt__10cCcD_GStts@ha
/* 8061A620  38 03 B4 2C */	addi r0, r3, __vt__10cCcD_GStts@l
/* 8061A624  90 1F 00 00 */	stw r0, 0(r31)
lbl_8061A628:
/* 8061A628  7C 80 07 35 */	extsh. r0, r4
/* 8061A62C  40 81 00 0C */	ble lbl_8061A638
/* 8061A630  7F E3 FB 78 */	mr r3, r31
/* 8061A634  4B CB 47 08 */	b __dl__FPv
lbl_8061A638:
/* 8061A638  7F E3 FB 78 */	mr r3, r31
/* 8061A63C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8061A640  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061A644  7C 08 03 A6 */	mtlr r0
/* 8061A648  38 21 00 10 */	addi r1, r1, 0x10
/* 8061A64C  4E 80 00 20 */	blr 

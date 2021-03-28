lbl_80BC6204:
/* 80BC6204  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC6208  7C 08 02 A6 */	mflr r0
/* 80BC620C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC6210  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC6214  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BC6218  41 82 00 30 */	beq lbl_80BC6248
/* 80BC621C  3C 60 80 BC */	lis r3, __vt__10dCcD_GStts@ha
/* 80BC6220  38 03 6B F8 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80BC6224  90 1F 00 00 */	stw r0, 0(r31)
/* 80BC6228  41 82 00 10 */	beq lbl_80BC6238
/* 80BC622C  3C 60 80 BC */	lis r3, __vt__10cCcD_GStts@ha
/* 80BC6230  38 03 6B EC */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80BC6234  90 1F 00 00 */	stw r0, 0(r31)
lbl_80BC6238:
/* 80BC6238  7C 80 07 35 */	extsh. r0, r4
/* 80BC623C  40 81 00 0C */	ble lbl_80BC6248
/* 80BC6240  7F E3 FB 78 */	mr r3, r31
/* 80BC6244  4B 70 8A F8 */	b __dl__FPv
lbl_80BC6248:
/* 80BC6248  7F E3 FB 78 */	mr r3, r31
/* 80BC624C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC6250  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC6254  7C 08 03 A6 */	mtlr r0
/* 80BC6258  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC625C  4E 80 00 20 */	blr 

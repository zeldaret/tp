lbl_8067BD9C:
/* 8067BD9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8067BDA0  7C 08 02 A6 */	mflr r0
/* 8067BDA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8067BDA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8067BDAC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8067BDB0  41 82 00 30 */	beq lbl_8067BDE0
/* 8067BDB4  3C 60 80 68 */	lis r3, __vt__10dCcD_GStts@ha
/* 8067BDB8  38 03 C6 24 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 8067BDBC  90 1F 00 00 */	stw r0, 0(r31)
/* 8067BDC0  41 82 00 10 */	beq lbl_8067BDD0
/* 8067BDC4  3C 60 80 68 */	lis r3, __vt__10cCcD_GStts@ha
/* 8067BDC8  38 03 C6 18 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 8067BDCC  90 1F 00 00 */	stw r0, 0(r31)
lbl_8067BDD0:
/* 8067BDD0  7C 80 07 35 */	extsh. r0, r4
/* 8067BDD4  40 81 00 0C */	ble lbl_8067BDE0
/* 8067BDD8  7F E3 FB 78 */	mr r3, r31
/* 8067BDDC  4B C5 2F 60 */	b __dl__FPv
lbl_8067BDE0:
/* 8067BDE0  7F E3 FB 78 */	mr r3, r31
/* 8067BDE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8067BDE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8067BDEC  7C 08 03 A6 */	mtlr r0
/* 8067BDF0  38 21 00 10 */	addi r1, r1, 0x10
/* 8067BDF4  4E 80 00 20 */	blr 

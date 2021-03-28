lbl_80B8DDD8:
/* 80B8DDD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B8DDDC  7C 08 02 A6 */	mflr r0
/* 80B8DDE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B8DDE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B8DDE8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B8DDEC  41 82 00 1C */	beq lbl_80B8DE08
/* 80B8DDF0  3C A0 80 B9 */	lis r5, __vt__8cM3dGAab@ha
/* 80B8DDF4  38 05 3B E4 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80B8DDF8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80B8DDFC  7C 80 07 35 */	extsh. r0, r4
/* 80B8DE00  40 81 00 08 */	ble lbl_80B8DE08
/* 80B8DE04  4B 74 0F 38 */	b __dl__FPv
lbl_80B8DE08:
/* 80B8DE08  7F E3 FB 78 */	mr r3, r31
/* 80B8DE0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B8DE10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B8DE14  7C 08 03 A6 */	mtlr r0
/* 80B8DE18  38 21 00 10 */	addi r1, r1, 0x10
/* 80B8DE1C  4E 80 00 20 */	blr 

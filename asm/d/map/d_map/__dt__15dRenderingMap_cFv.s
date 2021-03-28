lbl_8002AC74:
/* 8002AC74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002AC78  7C 08 02 A6 */	mflr r0
/* 8002AC7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002AC80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002AC84  7C 7F 1B 79 */	or. r31, r3, r3
/* 8002AC88  41 82 00 40 */	beq lbl_8002ACC8
/* 8002AC8C  3C 60 80 3A */	lis r3, __vt__15dRenderingMap_c@ha
/* 8002AC90  38 03 6F D4 */	addi r0, r3, __vt__15dRenderingMap_c@l
/* 8002AC94  90 1F 00 00 */	stw r0, 0(r31)
/* 8002AC98  41 82 00 20 */	beq lbl_8002ACB8
/* 8002AC9C  3C 60 80 3A */	lis r3, __vt__28dDrawPathWithNormalPattern_c@ha
/* 8002ACA0  38 03 6F 94 */	addi r0, r3, __vt__28dDrawPathWithNormalPattern_c@l
/* 8002ACA4  90 1F 00 00 */	stw r0, 0(r31)
/* 8002ACA8  41 82 00 10 */	beq lbl_8002ACB8
/* 8002ACAC  3C 60 80 3A */	lis r3, __vt__11dDrawPath_c@ha
/* 8002ACB0  38 03 7C F8 */	addi r0, r3, __vt__11dDrawPath_c@l
/* 8002ACB4  90 1F 00 00 */	stw r0, 0(r31)
lbl_8002ACB8:
/* 8002ACB8  7C 80 07 35 */	extsh. r0, r4
/* 8002ACBC  40 81 00 0C */	ble lbl_8002ACC8
/* 8002ACC0  7F E3 FB 78 */	mr r3, r31
/* 8002ACC4  48 2A 40 79 */	bl __dl__FPv
lbl_8002ACC8:
/* 8002ACC8  7F E3 FB 78 */	mr r3, r31
/* 8002ACCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002ACD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002ACD4  7C 08 03 A6 */	mtlr r0
/* 8002ACD8  38 21 00 10 */	addi r1, r1, 0x10
/* 8002ACDC  4E 80 00 20 */	blr 

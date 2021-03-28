lbl_8079CC78:
/* 8079CC78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8079CC7C  7C 08 02 A6 */	mflr r0
/* 8079CC80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8079CC84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8079CC88  7C 7F 1B 79 */	or. r31, r3, r3
/* 8079CC8C  41 82 00 1C */	beq lbl_8079CCA8
/* 8079CC90  3C A0 80 7A */	lis r5, __vt__8cM3dGSph@ha
/* 8079CC94  38 05 DA EC */	addi r0, r5, __vt__8cM3dGSph@l
/* 8079CC98  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8079CC9C  7C 80 07 35 */	extsh. r0, r4
/* 8079CCA0  40 81 00 08 */	ble lbl_8079CCA8
/* 8079CCA4  4B B3 20 98 */	b __dl__FPv
lbl_8079CCA8:
/* 8079CCA8  7F E3 FB 78 */	mr r3, r31
/* 8079CCAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8079CCB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8079CCB4  7C 08 03 A6 */	mtlr r0
/* 8079CCB8  38 21 00 10 */	addi r1, r1, 0x10
/* 8079CCBC  4E 80 00 20 */	blr 

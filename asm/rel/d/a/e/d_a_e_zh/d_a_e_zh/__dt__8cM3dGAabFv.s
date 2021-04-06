lbl_8082EF70:
/* 8082EF70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8082EF74  7C 08 02 A6 */	mflr r0
/* 8082EF78  90 01 00 14 */	stw r0, 0x14(r1)
/* 8082EF7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8082EF80  7C 7F 1B 79 */	or. r31, r3, r3
/* 8082EF84  41 82 00 1C */	beq lbl_8082EFA0
/* 8082EF88  3C A0 80 83 */	lis r5, __vt__8cM3dGAab@ha /* 0x8082F698@ha */
/* 8082EF8C  38 05 F6 98 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x8082F698@l */
/* 8082EF90  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8082EF94  7C 80 07 35 */	extsh. r0, r4
/* 8082EF98  40 81 00 08 */	ble lbl_8082EFA0
/* 8082EF9C  4B A9 FD A1 */	bl __dl__FPv
lbl_8082EFA0:
/* 8082EFA0  7F E3 FB 78 */	mr r3, r31
/* 8082EFA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8082EFA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8082EFAC  7C 08 03 A6 */	mtlr r0
/* 8082EFB0  38 21 00 10 */	addi r1, r1, 0x10
/* 8082EFB4  4E 80 00 20 */	blr 

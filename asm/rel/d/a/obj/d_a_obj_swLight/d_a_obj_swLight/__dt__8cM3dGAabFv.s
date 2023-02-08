lbl_80CF7F6C:
/* 80CF7F6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF7F70  7C 08 02 A6 */	mflr r0
/* 80CF7F74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF7F78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF7F7C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CF7F80  41 82 00 1C */	beq lbl_80CF7F9C
/* 80CF7F84  3C A0 80 D0 */	lis r5, __vt__8cM3dGAab@ha /* 0x80CF85C8@ha */
/* 80CF7F88  38 05 85 C8 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80CF85C8@l */
/* 80CF7F8C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80CF7F90  7C 80 07 35 */	extsh. r0, r4
/* 80CF7F94  40 81 00 08 */	ble lbl_80CF7F9C
/* 80CF7F98  4B 5D 6D A5 */	bl __dl__FPv
lbl_80CF7F9C:
/* 80CF7F9C  7F E3 FB 78 */	mr r3, r31
/* 80CF7FA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF7FA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF7FA8  7C 08 03 A6 */	mtlr r0
/* 80CF7FAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF7FB0  4E 80 00 20 */	blr 

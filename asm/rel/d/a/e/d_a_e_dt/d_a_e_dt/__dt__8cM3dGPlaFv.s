lbl_806AED4C:
/* 806AED4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806AED50  7C 08 02 A6 */	mflr r0
/* 806AED54  90 01 00 14 */	stw r0, 0x14(r1)
/* 806AED58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806AED5C  7C 7F 1B 79 */	or. r31, r3, r3
/* 806AED60  41 82 00 1C */	beq lbl_806AED7C
/* 806AED64  3C A0 80 6B */	lis r5, __vt__8cM3dGPla@ha /* 0x806B623C@ha */
/* 806AED68  38 05 62 3C */	addi r0, r5, __vt__8cM3dGPla@l /* 0x806B623C@l */
/* 806AED6C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 806AED70  7C 80 07 35 */	extsh. r0, r4
/* 806AED74  40 81 00 08 */	ble lbl_806AED7C
/* 806AED78  4B C1 FF C5 */	bl __dl__FPv
lbl_806AED7C:
/* 806AED7C  7F E3 FB 78 */	mr r3, r31
/* 806AED80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806AED84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806AED88  7C 08 03 A6 */	mtlr r0
/* 806AED8C  38 21 00 10 */	addi r1, r1, 0x10
/* 806AED90  4E 80 00 20 */	blr 

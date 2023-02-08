lbl_80BEFF7C:
/* 80BEFF7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEFF80  7C 08 02 A6 */	mflr r0
/* 80BEFF84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEFF88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BEFF8C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BEFF90  41 82 00 1C */	beq lbl_80BEFFAC
/* 80BEFF94  3C A0 80 BF */	lis r5, __vt__8cM3dGAab@ha /* 0x80BF05F4@ha */
/* 80BEFF98  38 05 05 F4 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80BF05F4@l */
/* 80BEFF9C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80BEFFA0  7C 80 07 35 */	extsh. r0, r4
/* 80BEFFA4  40 81 00 08 */	ble lbl_80BEFFAC
/* 80BEFFA8  4B 6D ED 95 */	bl __dl__FPv
lbl_80BEFFAC:
/* 80BEFFAC  7F E3 FB 78 */	mr r3, r31
/* 80BEFFB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BEFFB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEFFB8  7C 08 03 A6 */	mtlr r0
/* 80BEFFBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEFFC0  4E 80 00 20 */	blr 

lbl_806F00FC:
/* 806F00FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F0100  7C 08 02 A6 */	mflr r0
/* 806F0104  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F0108  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F010C  7C 7F 1B 79 */	or. r31, r3, r3
/* 806F0110  41 82 00 1C */	beq lbl_806F012C
/* 806F0114  3C A0 80 6F */	lis r5, __vt__8cM3dGSph@ha /* 0x806F0AE8@ha */
/* 806F0118  38 05 0A E8 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x806F0AE8@l */
/* 806F011C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 806F0120  7C 80 07 35 */	extsh. r0, r4
/* 806F0124  40 81 00 08 */	ble lbl_806F012C
/* 806F0128  4B BD EC 15 */	bl __dl__FPv
lbl_806F012C:
/* 806F012C  7F E3 FB 78 */	mr r3, r31
/* 806F0130  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F0134  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F0138  7C 08 03 A6 */	mtlr r0
/* 806F013C  38 21 00 10 */	addi r1, r1, 0x10
/* 806F0140  4E 80 00 20 */	blr 

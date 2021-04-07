lbl_8007E640:
/* 8007E640  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007E644  7C 08 02 A6 */	mflr r0
/* 8007E648  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007E64C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007E650  7C 7F 1B 79 */	or. r31, r3, r3
/* 8007E654  41 82 00 30 */	beq lbl_8007E684
/* 8007E658  3C 60 80 3B */	lis r3, __vt__9dBgW_Base@ha /* 0x803ABCC8@ha */
/* 8007E65C  38 03 BC C8 */	addi r0, r3, __vt__9dBgW_Base@l /* 0x803ABCC8@l */
/* 8007E660  90 1F 00 04 */	stw r0, 4(r31)
/* 8007E664  41 82 00 10 */	beq lbl_8007E674
/* 8007E668  3C 60 80 3B */	lis r3, __vt__9cBgW_BgId@ha /* 0x803ABDB8@ha */
/* 8007E66C  38 03 BD B8 */	addi r0, r3, __vt__9cBgW_BgId@l /* 0x803ABDB8@l */
/* 8007E670  90 1F 00 04 */	stw r0, 4(r31)
lbl_8007E674:
/* 8007E674  7C 80 07 35 */	extsh. r0, r4
/* 8007E678  40 81 00 0C */	ble lbl_8007E684
/* 8007E67C  7F E3 FB 78 */	mr r3, r31
/* 8007E680  48 25 06 BD */	bl __dl__FPv
lbl_8007E684:
/* 8007E684  7F E3 FB 78 */	mr r3, r31
/* 8007E688  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007E68C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007E690  7C 08 03 A6 */	mtlr r0
/* 8007E694  38 21 00 10 */	addi r1, r1, 0x10
/* 8007E698  4E 80 00 20 */	blr 

lbl_80B5F730:
/* 80B5F730  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B5F734  7C 08 02 A6 */	mflr r0
/* 80B5F738  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5F73C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B5F740  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B5F744  41 82 00 10 */	beq lbl_80B5F754
/* 80B5F748  7C 80 07 35 */	extsh. r0, r4
/* 80B5F74C  40 81 00 08 */	ble lbl_80B5F754
/* 80B5F750  4B 76 F5 ED */	bl __dl__FPv
lbl_80B5F754:
/* 80B5F754  7F E3 FB 78 */	mr r3, r31
/* 80B5F758  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B5F75C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5F760  7C 08 03 A6 */	mtlr r0
/* 80B5F764  38 21 00 10 */	addi r1, r1, 0x10
/* 80B5F768  4E 80 00 20 */	blr 

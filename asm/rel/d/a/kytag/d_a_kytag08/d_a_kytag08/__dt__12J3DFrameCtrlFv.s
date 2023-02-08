lbl_8085B23C:
/* 8085B23C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8085B240  7C 08 02 A6 */	mflr r0
/* 8085B244  90 01 00 14 */	stw r0, 0x14(r1)
/* 8085B248  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8085B24C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8085B250  41 82 00 1C */	beq lbl_8085B26C
/* 8085B254  3C A0 80 86 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x8085B368@ha */
/* 8085B258  38 05 B3 68 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x8085B368@l */
/* 8085B25C  90 1F 00 00 */	stw r0, 0(r31)
/* 8085B260  7C 80 07 35 */	extsh. r0, r4
/* 8085B264  40 81 00 08 */	ble lbl_8085B26C
/* 8085B268  4B A7 3A D5 */	bl __dl__FPv
lbl_8085B26C:
/* 8085B26C  7F E3 FB 78 */	mr r3, r31
/* 8085B270  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8085B274  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8085B278  7C 08 03 A6 */	mtlr r0
/* 8085B27C  38 21 00 10 */	addi r1, r1, 0x10
/* 8085B280  4E 80 00 20 */	blr 

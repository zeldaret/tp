lbl_8059DC8C:
/* 8059DC8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059DC90  7C 08 02 A6 */	mflr r0
/* 8059DC94  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059DC98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059DC9C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8059DCA0  41 82 00 1C */	beq lbl_8059DCBC
/* 8059DCA4  3C A0 80 5A */	lis r5, __vt__8cM3dGCyl@ha /* 0x8059E094@ha */
/* 8059DCA8  38 05 E0 94 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x8059E094@l */
/* 8059DCAC  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8059DCB0  7C 80 07 35 */	extsh. r0, r4
/* 8059DCB4  40 81 00 08 */	ble lbl_8059DCBC
/* 8059DCB8  4B D3 10 85 */	bl __dl__FPv
lbl_8059DCBC:
/* 8059DCBC  7F E3 FB 78 */	mr r3, r31
/* 8059DCC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059DCC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059DCC8  7C 08 03 A6 */	mtlr r0
/* 8059DCCC  38 21 00 10 */	addi r1, r1, 0x10
/* 8059DCD0  4E 80 00 20 */	blr 

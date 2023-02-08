lbl_8072D5F8:
/* 8072D5F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8072D5FC  7C 08 02 A6 */	mflr r0
/* 8072D600  90 01 00 14 */	stw r0, 0x14(r1)
/* 8072D604  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8072D608  7C 7F 1B 79 */	or. r31, r3, r3
/* 8072D60C  41 82 00 1C */	beq lbl_8072D628
/* 8072D610  3C A0 80 73 */	lis r5, __vt__8cM3dGPla@ha /* 0x80735FE0@ha */
/* 8072D614  38 05 5F E0 */	addi r0, r5, __vt__8cM3dGPla@l /* 0x80735FE0@l */
/* 8072D618  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8072D61C  7C 80 07 35 */	extsh. r0, r4
/* 8072D620  40 81 00 08 */	ble lbl_8072D628
/* 8072D624  4B BA 17 19 */	bl __dl__FPv
lbl_8072D628:
/* 8072D628  7F E3 FB 78 */	mr r3, r31
/* 8072D62C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8072D630  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8072D634  7C 08 03 A6 */	mtlr r0
/* 8072D638  38 21 00 10 */	addi r1, r1, 0x10
/* 8072D63C  4E 80 00 20 */	blr 

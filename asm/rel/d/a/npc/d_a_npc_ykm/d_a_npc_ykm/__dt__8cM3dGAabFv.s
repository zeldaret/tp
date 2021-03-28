lbl_80B5C870:
/* 80B5C870  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B5C874  7C 08 02 A6 */	mflr r0
/* 80B5C878  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5C87C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B5C880  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B5C884  41 82 00 1C */	beq lbl_80B5C8A0
/* 80B5C888  3C A0 80 B6 */	lis r5, __vt__8cM3dGAab@ha
/* 80B5C88C  38 05 EC 2C */	addi r0, r5, __vt__8cM3dGAab@l
/* 80B5C890  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80B5C894  7C 80 07 35 */	extsh. r0, r4
/* 80B5C898  40 81 00 08 */	ble lbl_80B5C8A0
/* 80B5C89C  4B 77 24 A0 */	b __dl__FPv
lbl_80B5C8A0:
/* 80B5C8A0  7F E3 FB 78 */	mr r3, r31
/* 80B5C8A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B5C8A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5C8AC  7C 08 03 A6 */	mtlr r0
/* 80B5C8B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B5C8B4  4E 80 00 20 */	blr 

lbl_80C7A5C4:
/* 80C7A5C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7A5C8  7C 08 02 A6 */	mflr r0
/* 80C7A5CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7A5D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C7A5D4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C7A5D8  41 82 00 1C */	beq lbl_80C7A5F4
/* 80C7A5DC  3C A0 80 C8 */	lis r5, __vt__8cM3dGAab@ha /* 0x80C7C9F8@ha */
/* 80C7A5E0  38 05 C9 F8 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80C7C9F8@l */
/* 80C7A5E4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C7A5E8  7C 80 07 35 */	extsh. r0, r4
/* 80C7A5EC  40 81 00 08 */	ble lbl_80C7A5F4
/* 80C7A5F0  4B 65 47 4D */	bl __dl__FPv
lbl_80C7A5F4:
/* 80C7A5F4  7F E3 FB 78 */	mr r3, r31
/* 80C7A5F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C7A5FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7A600  7C 08 03 A6 */	mtlr r0
/* 80C7A604  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7A608  4E 80 00 20 */	blr 

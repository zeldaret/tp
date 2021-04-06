lbl_80C04BF8:
/* 80C04BF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C04BFC  7C 08 02 A6 */	mflr r0
/* 80C04C00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C04C04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C04C08  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C04C0C  41 82 00 1C */	beq lbl_80C04C28
/* 80C04C10  3C A0 80 C1 */	lis r5, __vt__8cM3dGAab@ha /* 0x80C1087C@ha */
/* 80C04C14  38 05 08 7C */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80C1087C@l */
/* 80C04C18  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C04C1C  7C 80 07 35 */	extsh. r0, r4
/* 80C04C20  40 81 00 08 */	ble lbl_80C04C28
/* 80C04C24  4B 6C A1 19 */	bl __dl__FPv
lbl_80C04C28:
/* 80C04C28  7F E3 FB 78 */	mr r3, r31
/* 80C04C2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C04C30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C04C34  7C 08 03 A6 */	mtlr r0
/* 80C04C38  38 21 00 10 */	addi r1, r1, 0x10
/* 80C04C3C  4E 80 00 20 */	blr 

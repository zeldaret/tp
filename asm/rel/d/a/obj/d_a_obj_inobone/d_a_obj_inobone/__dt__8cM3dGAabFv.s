lbl_80C27C04:
/* 80C27C04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C27C08  7C 08 02 A6 */	mflr r0
/* 80C27C0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C27C10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C27C14  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C27C18  41 82 00 1C */	beq lbl_80C27C34
/* 80C27C1C  3C A0 80 C3 */	lis r5, __vt__8cM3dGAab@ha /* 0x80C2825C@ha */
/* 80C27C20  38 05 82 5C */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80C2825C@l */
/* 80C27C24  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C27C28  7C 80 07 35 */	extsh. r0, r4
/* 80C27C2C  40 81 00 08 */	ble lbl_80C27C34
/* 80C27C30  4B 6A 71 0D */	bl __dl__FPv
lbl_80C27C34:
/* 80C27C34  7F E3 FB 78 */	mr r3, r31
/* 80C27C38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C27C3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C27C40  7C 08 03 A6 */	mtlr r0
/* 80C27C44  38 21 00 10 */	addi r1, r1, 0x10
/* 80C27C48  4E 80 00 20 */	blr 

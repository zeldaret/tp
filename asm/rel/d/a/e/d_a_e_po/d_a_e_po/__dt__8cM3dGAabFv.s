lbl_80756C08:
/* 80756C08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80756C0C  7C 08 02 A6 */	mflr r0
/* 80756C10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80756C14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80756C18  7C 7F 1B 79 */	or. r31, r3, r3
/* 80756C1C  41 82 00 1C */	beq lbl_80756C38
/* 80756C20  3C A0 80 75 */	lis r5, __vt__8cM3dGAab@ha /* 0x80757DCC@ha */
/* 80756C24  38 05 7D CC */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80757DCC@l */
/* 80756C28  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80756C2C  7C 80 07 35 */	extsh. r0, r4
/* 80756C30  40 81 00 08 */	ble lbl_80756C38
/* 80756C34  4B B7 81 09 */	bl __dl__FPv
lbl_80756C38:
/* 80756C38  7F E3 FB 78 */	mr r3, r31
/* 80756C3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80756C40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80756C44  7C 08 03 A6 */	mtlr r0
/* 80756C48  38 21 00 10 */	addi r1, r1, 0x10
/* 80756C4C  4E 80 00 20 */	blr 

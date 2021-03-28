lbl_807E6C10:
/* 807E6C10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E6C14  7C 08 02 A6 */	mflr r0
/* 807E6C18  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E6C1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807E6C20  7C 7F 1B 79 */	or. r31, r3, r3
/* 807E6C24  41 82 00 1C */	beq lbl_807E6C40
/* 807E6C28  3C A0 80 7E */	lis r5, __vt__8cM3dGSph@ha
/* 807E6C2C  38 05 75 58 */	addi r0, r5, __vt__8cM3dGSph@l
/* 807E6C30  90 1F 00 10 */	stw r0, 0x10(r31)
/* 807E6C34  7C 80 07 35 */	extsh. r0, r4
/* 807E6C38  40 81 00 08 */	ble lbl_807E6C40
/* 807E6C3C  4B AE 81 00 */	b __dl__FPv
lbl_807E6C40:
/* 807E6C40  7F E3 FB 78 */	mr r3, r31
/* 807E6C44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807E6C48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E6C4C  7C 08 03 A6 */	mtlr r0
/* 807E6C50  38 21 00 10 */	addi r1, r1, 0x10
/* 807E6C54  4E 80 00 20 */	blr 

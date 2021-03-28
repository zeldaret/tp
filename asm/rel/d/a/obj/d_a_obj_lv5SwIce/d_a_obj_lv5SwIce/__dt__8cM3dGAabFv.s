lbl_80C6CD2C:
/* 80C6CD2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6CD30  7C 08 02 A6 */	mflr r0
/* 80C6CD34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6CD38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6CD3C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C6CD40  41 82 00 1C */	beq lbl_80C6CD5C
/* 80C6CD44  3C A0 80 C7 */	lis r5, __vt__8cM3dGAab@ha
/* 80C6CD48  38 05 D6 68 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80C6CD4C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C6CD50  7C 80 07 35 */	extsh. r0, r4
/* 80C6CD54  40 81 00 08 */	ble lbl_80C6CD5C
/* 80C6CD58  4B 66 1F E4 */	b __dl__FPv
lbl_80C6CD5C:
/* 80C6CD5C  7F E3 FB 78 */	mr r3, r31
/* 80C6CD60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6CD64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6CD68  7C 08 03 A6 */	mtlr r0
/* 80C6CD6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6CD70  4E 80 00 20 */	blr 

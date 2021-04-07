lbl_80AD3B2C:
/* 80AD3B2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD3B30  7C 08 02 A6 */	mflr r0
/* 80AD3B34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD3B38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD3B3C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AD3B40  41 82 00 1C */	beq lbl_80AD3B5C
/* 80AD3B44  3C A0 80 AD */	lis r5, __vt__8cM3dGAab@ha /* 0x80AD5518@ha */
/* 80AD3B48  38 05 55 18 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80AD5518@l */
/* 80AD3B4C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80AD3B50  7C 80 07 35 */	extsh. r0, r4
/* 80AD3B54  40 81 00 08 */	ble lbl_80AD3B5C
/* 80AD3B58  4B 7F B1 E5 */	bl __dl__FPv
lbl_80AD3B5C:
/* 80AD3B5C  7F E3 FB 78 */	mr r3, r31
/* 80AD3B60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD3B64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD3B68  7C 08 03 A6 */	mtlr r0
/* 80AD3B6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD3B70  4E 80 00 20 */	blr 

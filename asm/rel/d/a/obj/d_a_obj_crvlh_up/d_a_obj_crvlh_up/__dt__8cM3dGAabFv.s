lbl_80BD565C:
/* 80BD565C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD5660  7C 08 02 A6 */	mflr r0
/* 80BD5664  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD5668  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD566C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BD5670  41 82 00 1C */	beq lbl_80BD568C
/* 80BD5674  3C A0 80 BD */	lis r5, __vt__8cM3dGAab@ha /* 0x80BD5AFC@ha */
/* 80BD5678  38 05 5A FC */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80BD5AFC@l */
/* 80BD567C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80BD5680  7C 80 07 35 */	extsh. r0, r4
/* 80BD5684  40 81 00 08 */	ble lbl_80BD568C
/* 80BD5688  4B 6F 96 B5 */	bl __dl__FPv
lbl_80BD568C:
/* 80BD568C  7F E3 FB 78 */	mr r3, r31
/* 80BD5690  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD5694  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD5698  7C 08 03 A6 */	mtlr r0
/* 80BD569C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD56A0  4E 80 00 20 */	blr 

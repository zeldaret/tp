lbl_80BC5684:
/* 80BC5684  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC5688  7C 08 02 A6 */	mflr r0
/* 80BC568C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC5690  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC5694  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BC5698  41 82 00 1C */	beq lbl_80BC56B4
/* 80BC569C  3C A0 80 BC */	lis r5, __vt__8cM3dGAab@ha /* 0x80BC58B0@ha */
/* 80BC56A0  38 05 58 B0 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80BC58B0@l */
/* 80BC56A4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80BC56A8  7C 80 07 35 */	extsh. r0, r4
/* 80BC56AC  40 81 00 08 */	ble lbl_80BC56B4
/* 80BC56B0  4B 70 96 8D */	bl __dl__FPv
lbl_80BC56B4:
/* 80BC56B4  7F E3 FB 78 */	mr r3, r31
/* 80BC56B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC56BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC56C0  7C 08 03 A6 */	mtlr r0
/* 80BC56C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC56C8  4E 80 00 20 */	blr 

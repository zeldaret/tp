lbl_80AB565C:
/* 80AB565C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB5660  7C 08 02 A6 */	mflr r0
/* 80AB5664  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB5668  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB566C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AB5670  41 82 00 1C */	beq lbl_80AB568C
/* 80AB5674  3C A0 80 AB */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80AB5B10@ha */
/* 80AB5678  38 05 5B 10 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80AB5B10@l */
/* 80AB567C  90 1F 00 00 */	stw r0, 0(r31)
/* 80AB5680  7C 80 07 35 */	extsh. r0, r4
/* 80AB5684  40 81 00 08 */	ble lbl_80AB568C
/* 80AB5688  4B 81 96 B5 */	bl __dl__FPv
lbl_80AB568C:
/* 80AB568C  7F E3 FB 78 */	mr r3, r31
/* 80AB5690  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB5694  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB5698  7C 08 03 A6 */	mtlr r0
/* 80AB569C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB56A0  4E 80 00 20 */	blr 

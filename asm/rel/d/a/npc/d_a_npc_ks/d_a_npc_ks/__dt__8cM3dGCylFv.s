lbl_80A5D87C:
/* 80A5D87C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A5D880  7C 08 02 A6 */	mflr r0
/* 80A5D884  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A5D888  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A5D88C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A5D890  41 82 00 1C */	beq lbl_80A5D8AC
/* 80A5D894  3C A0 80 A6 */	lis r5, __vt__8cM3dGCyl@ha
/* 80A5D898  38 05 FD E8 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80A5D89C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80A5D8A0  7C 80 07 35 */	extsh. r0, r4
/* 80A5D8A4  40 81 00 08 */	ble lbl_80A5D8AC
/* 80A5D8A8  4B 87 14 94 */	b __dl__FPv
lbl_80A5D8AC:
/* 80A5D8AC  7F E3 FB 78 */	mr r3, r31
/* 80A5D8B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A5D8B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A5D8B8  7C 08 03 A6 */	mtlr r0
/* 80A5D8BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A5D8C0  4E 80 00 20 */	blr 

lbl_80C7467C:
/* 80C7467C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C74680  7C 08 02 A6 */	mflr r0
/* 80C74684  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C74688  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C7468C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C74690  41 82 00 1C */	beq lbl_80C746AC
/* 80C74694  3C A0 80 C7 */	lis r5, __vt__8cM3dGAab@ha
/* 80C74698  38 05 56 DC */	addi r0, r5, __vt__8cM3dGAab@l
/* 80C7469C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C746A0  7C 80 07 35 */	extsh. r0, r4
/* 80C746A4  40 81 00 08 */	ble lbl_80C746AC
/* 80C746A8  4B 65 A6 94 */	b __dl__FPv
lbl_80C746AC:
/* 80C746AC  7F E3 FB 78 */	mr r3, r31
/* 80C746B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C746B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C746B8  7C 08 03 A6 */	mtlr r0
/* 80C746BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C746C0  4E 80 00 20 */	blr 

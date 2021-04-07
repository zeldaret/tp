lbl_80C975A4:
/* 80C975A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C975A8  7C 08 02 A6 */	mflr r0
/* 80C975AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C975B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C975B4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C975B8  41 82 00 1C */	beq lbl_80C975D4
/* 80C975BC  3C A0 80 CA */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80C98104@ha */
/* 80C975C0  38 05 81 04 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80C98104@l */
/* 80C975C4  90 1F 00 00 */	stw r0, 0(r31)
/* 80C975C8  7C 80 07 35 */	extsh. r0, r4
/* 80C975CC  40 81 00 08 */	ble lbl_80C975D4
/* 80C975D0  4B 63 77 6D */	bl __dl__FPv
lbl_80C975D4:
/* 80C975D4  7F E3 FB 78 */	mr r3, r31
/* 80C975D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C975DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C975E0  7C 08 03 A6 */	mtlr r0
/* 80C975E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C975E8  4E 80 00 20 */	blr 

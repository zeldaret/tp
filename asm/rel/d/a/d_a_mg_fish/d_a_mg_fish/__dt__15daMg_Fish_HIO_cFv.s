lbl_805360A8:
/* 805360A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805360AC  7C 08 02 A6 */	mflr r0
/* 805360B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805360B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805360B8  7C 7F 1B 79 */	or. r31, r3, r3
/* 805360BC  41 82 00 1C */	beq lbl_805360D8
/* 805360C0  3C A0 80 53 */	lis r5, __vt__15daMg_Fish_HIO_c@ha /* 0x80536B6C@ha */
/* 805360C4  38 05 6B 6C */	addi r0, r5, __vt__15daMg_Fish_HIO_c@l /* 0x80536B6C@l */
/* 805360C8  90 1F 00 00 */	stw r0, 0(r31)
/* 805360CC  7C 80 07 35 */	extsh. r0, r4
/* 805360D0  40 81 00 08 */	ble lbl_805360D8
/* 805360D4  4B D9 8C 69 */	bl __dl__FPv
lbl_805360D8:
/* 805360D8  7F E3 FB 78 */	mr r3, r31
/* 805360DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805360E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805360E4  7C 08 03 A6 */	mtlr r0
/* 805360E8  38 21 00 10 */	addi r1, r1, 0x10
/* 805360EC  4E 80 00 20 */	blr 

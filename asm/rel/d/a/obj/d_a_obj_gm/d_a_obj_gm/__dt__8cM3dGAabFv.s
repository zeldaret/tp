lbl_80BFD0B4:
/* 80BFD0B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFD0B8  7C 08 02 A6 */	mflr r0
/* 80BFD0BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFD0C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFD0C4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BFD0C8  41 82 00 1C */	beq lbl_80BFD0E4
/* 80BFD0CC  3C A0 80 C0 */	lis r5, __vt__8cM3dGAab@ha /* 0x80BFD554@ha */
/* 80BFD0D0  38 05 D5 54 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80BFD554@l */
/* 80BFD0D4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80BFD0D8  7C 80 07 35 */	extsh. r0, r4
/* 80BFD0DC  40 81 00 08 */	ble lbl_80BFD0E4
/* 80BFD0E0  4B 6D 1C 5D */	bl __dl__FPv
lbl_80BFD0E4:
/* 80BFD0E4  7F E3 FB 78 */	mr r3, r31
/* 80BFD0E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BFD0EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFD0F0  7C 08 03 A6 */	mtlr r0
/* 80BFD0F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFD0F8  4E 80 00 20 */	blr 

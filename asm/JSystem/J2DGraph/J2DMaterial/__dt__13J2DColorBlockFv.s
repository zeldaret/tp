lbl_802EB0F4:
/* 802EB0F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EB0F8  7C 08 02 A6 */	mflr r0
/* 802EB0FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EB100  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EB104  7C 7F 1B 79 */	or. r31, r3, r3
/* 802EB108  41 82 00 1C */	beq lbl_802EB124
/* 802EB10C  3C A0 80 3D */	lis r5, __vt__13J2DColorBlock@ha /* 0x803CCA84@ha */
/* 802EB110  38 05 CA 84 */	addi r0, r5, __vt__13J2DColorBlock@l /* 0x803CCA84@l */
/* 802EB114  90 1F 00 14 */	stw r0, 0x14(r31)
/* 802EB118  7C 80 07 35 */	extsh. r0, r4
/* 802EB11C  40 81 00 08 */	ble lbl_802EB124
/* 802EB120  4B FE 3C 1D */	bl __dl__FPv
lbl_802EB124:
/* 802EB124  7F E3 FB 78 */	mr r3, r31
/* 802EB128  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EB12C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EB130  7C 08 03 A6 */	mtlr r0
/* 802EB134  38 21 00 10 */	addi r1, r1, 0x10
/* 802EB138  4E 80 00 20 */	blr 

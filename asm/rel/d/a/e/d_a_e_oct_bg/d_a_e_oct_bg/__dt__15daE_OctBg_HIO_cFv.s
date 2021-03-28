lbl_80739CB8:
/* 80739CB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80739CBC  7C 08 02 A6 */	mflr r0
/* 80739CC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80739CC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80739CC8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80739CCC  41 82 00 1C */	beq lbl_80739CE8
/* 80739CD0  3C A0 80 74 */	lis r5, __vt__15daE_OctBg_HIO_c@ha
/* 80739CD4  38 05 A0 E8 */	addi r0, r5, __vt__15daE_OctBg_HIO_c@l
/* 80739CD8  90 1F 00 00 */	stw r0, 0(r31)
/* 80739CDC  7C 80 07 35 */	extsh. r0, r4
/* 80739CE0  40 81 00 08 */	ble lbl_80739CE8
/* 80739CE4  4B B9 50 58 */	b __dl__FPv
lbl_80739CE8:
/* 80739CE8  7F E3 FB 78 */	mr r3, r31
/* 80739CEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80739CF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80739CF4  7C 08 03 A6 */	mtlr r0
/* 80739CF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80739CFC  4E 80 00 20 */	blr 

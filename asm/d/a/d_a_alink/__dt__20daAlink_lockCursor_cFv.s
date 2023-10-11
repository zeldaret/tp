lbl_800CFE68:
/* 800CFE68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800CFE6C  7C 08 02 A6 */	mflr r0
/* 800CFE70  90 01 00 14 */	stw r0, 0x14(r1)
/* 800CFE74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800CFE78  7C 7F 1B 79 */	or. r31, r3, r3
/* 800CFE7C  41 82 00 1C */	beq lbl_800CFE98
/* 800CFE80  3C A0 80 3B */	lis r5, __vt__20daAlink_lockCursor_c@ha /* 0x803B3590@ha */
/* 800CFE84  38 05 35 90 */	addi r0, r5, __vt__20daAlink_lockCursor_c@l /* 0x803B3590@l */
/* 800CFE88  90 1F 00 00 */	stw r0, 0(r31)
/* 800CFE8C  7C 80 07 35 */	extsh. r0, r4
/* 800CFE90  40 81 00 08 */	ble lbl_800CFE98
/* 800CFE94  48 1F EE A9 */	bl __dl__FPv
lbl_800CFE98:
/* 800CFE98  7F E3 FB 78 */	mr r3, r31
/* 800CFE9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800CFEA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800CFEA4  7C 08 03 A6 */	mtlr r0
/* 800CFEA8  38 21 00 10 */	addi r1, r1, 0x10
/* 800CFEAC  4E 80 00 20 */	blr 
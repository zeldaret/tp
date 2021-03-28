lbl_80760C60:
/* 80760C60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80760C64  7C 08 02 A6 */	mflr r0
/* 80760C68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80760C6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80760C70  7C 7F 1B 79 */	or. r31, r3, r3
/* 80760C74  41 82 00 1C */	beq lbl_80760C90
/* 80760C78  3C A0 80 76 */	lis r5, __vt__12daE_PZ_HIO_c@ha
/* 80760C7C  38 05 1D A8 */	addi r0, r5, __vt__12daE_PZ_HIO_c@l
/* 80760C80  90 1F 00 00 */	stw r0, 0(r31)
/* 80760C84  7C 80 07 35 */	extsh. r0, r4
/* 80760C88  40 81 00 08 */	ble lbl_80760C90
/* 80760C8C  4B B6 E0 B0 */	b __dl__FPv
lbl_80760C90:
/* 80760C90  7F E3 FB 78 */	mr r3, r31
/* 80760C94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80760C98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80760C9C  7C 08 03 A6 */	mtlr r0
/* 80760CA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80760CA4  4E 80 00 20 */	blr 

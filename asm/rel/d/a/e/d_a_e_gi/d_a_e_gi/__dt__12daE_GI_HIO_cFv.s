lbl_806D098C:
/* 806D098C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806D0990  7C 08 02 A6 */	mflr r0
/* 806D0994  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D0998  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806D099C  7C 7F 1B 79 */	or. r31, r3, r3
/* 806D09A0  41 82 00 1C */	beq lbl_806D09BC
/* 806D09A4  3C A0 80 6D */	lis r5, __vt__12daE_GI_HIO_c@ha
/* 806D09A8  38 05 11 14 */	addi r0, r5, __vt__12daE_GI_HIO_c@l
/* 806D09AC  90 1F 00 00 */	stw r0, 0(r31)
/* 806D09B0  7C 80 07 35 */	extsh. r0, r4
/* 806D09B4  40 81 00 08 */	ble lbl_806D09BC
/* 806D09B8  4B BF E3 84 */	b __dl__FPv
lbl_806D09BC:
/* 806D09BC  7F E3 FB 78 */	mr r3, r31
/* 806D09C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806D09C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806D09C8  7C 08 03 A6 */	mtlr r0
/* 806D09CC  38 21 00 10 */	addi r1, r1, 0x10
/* 806D09D0  4E 80 00 20 */	blr 

lbl_80834DDC:
/* 80834DDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80834DE0  7C 08 02 A6 */	mflr r0
/* 80834DE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80834DE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80834DEC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80834DF0  41 82 00 1C */	beq lbl_80834E0C
/* 80834DF4  3C A0 80 83 */	lis r5, __vt__12daE_ZS_HIO_c@ha /* 0x8083548C@ha */
/* 80834DF8  38 05 54 8C */	addi r0, r5, __vt__12daE_ZS_HIO_c@l /* 0x8083548C@l */
/* 80834DFC  90 1F 00 00 */	stw r0, 0(r31)
/* 80834E00  7C 80 07 35 */	extsh. r0, r4
/* 80834E04  40 81 00 08 */	ble lbl_80834E0C
/* 80834E08  4B A9 9F 35 */	bl __dl__FPv
lbl_80834E0C:
/* 80834E0C  7F E3 FB 78 */	mr r3, r31
/* 80834E10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80834E14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80834E18  7C 08 03 A6 */	mtlr r0
/* 80834E1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80834E20  4E 80 00 20 */	blr 

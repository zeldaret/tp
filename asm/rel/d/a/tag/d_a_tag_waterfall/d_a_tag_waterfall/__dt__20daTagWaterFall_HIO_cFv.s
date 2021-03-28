lbl_80D64CDC:
/* 80D64CDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D64CE0  7C 08 02 A6 */	mflr r0
/* 80D64CE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D64CE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D64CEC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D64CF0  41 82 00 1C */	beq lbl_80D64D0C
/* 80D64CF4  3C A0 80 D6 */	lis r5, __vt__20daTagWaterFall_HIO_c@ha
/* 80D64CF8  38 05 4D E8 */	addi r0, r5, __vt__20daTagWaterFall_HIO_c@l
/* 80D64CFC  90 1F 00 00 */	stw r0, 0(r31)
/* 80D64D00  7C 80 07 35 */	extsh. r0, r4
/* 80D64D04  40 81 00 08 */	ble lbl_80D64D0C
/* 80D64D08  4B 56 A0 34 */	b __dl__FPv
lbl_80D64D0C:
/* 80D64D0C  7F E3 FB 78 */	mr r3, r31
/* 80D64D10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D64D14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D64D18  7C 08 03 A6 */	mtlr r0
/* 80D64D1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D64D20  4E 80 00 20 */	blr 

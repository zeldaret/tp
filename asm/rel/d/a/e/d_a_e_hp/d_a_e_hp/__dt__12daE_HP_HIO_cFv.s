lbl_806E9D38:
/* 806E9D38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E9D3C  7C 08 02 A6 */	mflr r0
/* 806E9D40  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E9D44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806E9D48  7C 7F 1B 79 */	or. r31, r3, r3
/* 806E9D4C  41 82 00 1C */	beq lbl_806E9D68
/* 806E9D50  3C A0 80 6F */	lis r5, __vt__12daE_HP_HIO_c@ha /* 0x806EA4D0@ha */
/* 806E9D54  38 05 A4 D0 */	addi r0, r5, __vt__12daE_HP_HIO_c@l /* 0x806EA4D0@l */
/* 806E9D58  90 1F 00 00 */	stw r0, 0(r31)
/* 806E9D5C  7C 80 07 35 */	extsh. r0, r4
/* 806E9D60  40 81 00 08 */	ble lbl_806E9D68
/* 806E9D64  4B BE 4F D9 */	bl __dl__FPv
lbl_806E9D68:
/* 806E9D68  7F E3 FB 78 */	mr r3, r31
/* 806E9D6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806E9D70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E9D74  7C 08 03 A6 */	mtlr r0
/* 806E9D78  38 21 00 10 */	addi r1, r1, 0x10
/* 806E9D7C  4E 80 00 20 */	blr 

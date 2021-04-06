lbl_80D36028:
/* 80D36028  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3602C  7C 08 02 A6 */	mflr r0
/* 80D36030  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D36034  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D36038  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D3603C  41 82 00 1C */	beq lbl_80D36058
/* 80D36040  3C A0 80 D3 */	lis r5, __vt__16daObj_Web1_HIO_c@ha /* 0x80D361E4@ha */
/* 80D36044  38 05 61 E4 */	addi r0, r5, __vt__16daObj_Web1_HIO_c@l /* 0x80D361E4@l */
/* 80D36048  90 1F 00 00 */	stw r0, 0(r31)
/* 80D3604C  7C 80 07 35 */	extsh. r0, r4
/* 80D36050  40 81 00 08 */	ble lbl_80D36058
/* 80D36054  4B 59 8C E9 */	bl __dl__FPv
lbl_80D36058:
/* 80D36058  7F E3 FB 78 */	mr r3, r31
/* 80D3605C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D36060  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D36064  7C 08 03 A6 */	mtlr r0
/* 80D36068  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3606C  4E 80 00 20 */	blr 

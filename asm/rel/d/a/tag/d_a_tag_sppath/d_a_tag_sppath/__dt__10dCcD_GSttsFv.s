lbl_80D61DB8:
/* 80D61DB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D61DBC  7C 08 02 A6 */	mflr r0
/* 80D61DC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D61DC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D61DC8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D61DCC  41 82 00 30 */	beq lbl_80D61DFC
/* 80D61DD0  3C 60 80 D6 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80D62D00@ha */
/* 80D61DD4  38 03 2D 00 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80D62D00@l */
/* 80D61DD8  90 1F 00 00 */	stw r0, 0(r31)
/* 80D61DDC  41 82 00 10 */	beq lbl_80D61DEC
/* 80D61DE0  3C 60 80 D6 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80D62CF4@ha */
/* 80D61DE4  38 03 2C F4 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80D62CF4@l */
/* 80D61DE8  90 1F 00 00 */	stw r0, 0(r31)
lbl_80D61DEC:
/* 80D61DEC  7C 80 07 35 */	extsh. r0, r4
/* 80D61DF0  40 81 00 0C */	ble lbl_80D61DFC
/* 80D61DF4  7F E3 FB 78 */	mr r3, r31
/* 80D61DF8  4B 56 CF 45 */	bl __dl__FPv
lbl_80D61DFC:
/* 80D61DFC  7F E3 FB 78 */	mr r3, r31
/* 80D61E00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D61E04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D61E08  7C 08 03 A6 */	mtlr r0
/* 80D61E0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D61E10  4E 80 00 20 */	blr 

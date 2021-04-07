lbl_80BF3370:
/* 80BF3370  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF3374  7C 08 02 A6 */	mflr r0
/* 80BF3378  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF337C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF3380  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BF3384  41 82 00 30 */	beq lbl_80BF33B4
/* 80BF3388  3C 60 80 BF */	lis r3, __vt__10dCcD_GStts@ha /* 0x80BF4B3C@ha */
/* 80BF338C  38 03 4B 3C */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80BF4B3C@l */
/* 80BF3390  90 1F 00 00 */	stw r0, 0(r31)
/* 80BF3394  41 82 00 10 */	beq lbl_80BF33A4
/* 80BF3398  3C 60 80 BF */	lis r3, __vt__10cCcD_GStts@ha /* 0x80BF4B30@ha */
/* 80BF339C  38 03 4B 30 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80BF4B30@l */
/* 80BF33A0  90 1F 00 00 */	stw r0, 0(r31)
lbl_80BF33A4:
/* 80BF33A4  7C 80 07 35 */	extsh. r0, r4
/* 80BF33A8  40 81 00 0C */	ble lbl_80BF33B4
/* 80BF33AC  7F E3 FB 78 */	mr r3, r31
/* 80BF33B0  4B 6D B9 8D */	bl __dl__FPv
lbl_80BF33B4:
/* 80BF33B4  7F E3 FB 78 */	mr r3, r31
/* 80BF33B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF33BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF33C0  7C 08 03 A6 */	mtlr r0
/* 80BF33C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF33C8  4E 80 00 20 */	blr 

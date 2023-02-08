lbl_80CBC2FC:
/* 80CBC2FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBC300  7C 08 02 A6 */	mflr r0
/* 80CBC304  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBC308  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBC30C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CBC310  41 82 00 1C */	beq lbl_80CBC32C
/* 80CBC314  3C A0 80 CC */	lis r5, __vt__10cCcD_GStts@ha /* 0x80CBC56C@ha */
/* 80CBC318  38 05 C5 6C */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80CBC56C@l */
/* 80CBC31C  90 1F 00 00 */	stw r0, 0(r31)
/* 80CBC320  7C 80 07 35 */	extsh. r0, r4
/* 80CBC324  40 81 00 08 */	ble lbl_80CBC32C
/* 80CBC328  4B 61 2A 15 */	bl __dl__FPv
lbl_80CBC32C:
/* 80CBC32C  7F E3 FB 78 */	mr r3, r31
/* 80CBC330  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBC334  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBC338  7C 08 03 A6 */	mtlr r0
/* 80CBC33C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBC340  4E 80 00 20 */	blr 

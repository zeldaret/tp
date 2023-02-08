lbl_806D71F4:
/* 806D71F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806D71F8  7C 08 02 A6 */	mflr r0
/* 806D71FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D7200  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806D7204  7C 7F 1B 79 */	or. r31, r3, r3
/* 806D7208  41 82 00 1C */	beq lbl_806D7224
/* 806D720C  3C A0 80 6D */	lis r5, __vt__8cM3dGSph@ha /* 0x806D7E28@ha */
/* 806D7210  38 05 7E 28 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x806D7E28@l */
/* 806D7214  90 1F 00 10 */	stw r0, 0x10(r31)
/* 806D7218  7C 80 07 35 */	extsh. r0, r4
/* 806D721C  40 81 00 08 */	ble lbl_806D7224
/* 806D7220  4B BF 7B 1D */	bl __dl__FPv
lbl_806D7224:
/* 806D7224  7F E3 FB 78 */	mr r3, r31
/* 806D7228  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806D722C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806D7230  7C 08 03 A6 */	mtlr r0
/* 806D7234  38 21 00 10 */	addi r1, r1, 0x10
/* 806D7238  4E 80 00 20 */	blr 

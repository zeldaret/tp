lbl_80BA0DEC:
/* 80BA0DEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA0DF0  7C 08 02 A6 */	mflr r0
/* 80BA0DF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA0DF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA0DFC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BA0E00  41 82 00 1C */	beq lbl_80BA0E1C
/* 80BA0E04  3C A0 80 BA */	lis r5, __vt__8cM3dGAab@ha /* 0x80BA12A4@ha */
/* 80BA0E08  38 05 12 A4 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80BA12A4@l */
/* 80BA0E0C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80BA0E10  7C 80 07 35 */	extsh. r0, r4
/* 80BA0E14  40 81 00 08 */	ble lbl_80BA0E1C
/* 80BA0E18  4B 72 DF 25 */	bl __dl__FPv
lbl_80BA0E1C:
/* 80BA0E1C  7F E3 FB 78 */	mr r3, r31
/* 80BA0E20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA0E24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA0E28  7C 08 03 A6 */	mtlr r0
/* 80BA0E2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA0E30  4E 80 00 20 */	blr 

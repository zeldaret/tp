lbl_80030DE0:
/* 80030DE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80030DE4  7C 08 02 A6 */	mflr r0
/* 80030DE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80030DEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80030DF0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80030DF4  41 82 00 30 */	beq lbl_80030E24
/* 80030DF8  3C 60 80 3A */	lis r3, __vt__15cCcD_DivideArea@ha /* 0x803A7200@ha */
/* 80030DFC  38 03 72 00 */	addi r0, r3, __vt__15cCcD_DivideArea@l /* 0x803A7200@l */
/* 80030E00  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80030E04  41 82 00 10 */	beq lbl_80030E14
/* 80030E08  3C 60 80 3A */	lis r3, __vt__8cM3dGAab@ha /* 0x803A7218@ha */
/* 80030E0C  38 03 72 18 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x803A7218@l */
/* 80030E10  90 1F 00 18 */	stw r0, 0x18(r31)
lbl_80030E14:
/* 80030E14  7C 80 07 35 */	extsh. r0, r4
/* 80030E18  40 81 00 0C */	ble lbl_80030E24
/* 80030E1C  7F E3 FB 78 */	mr r3, r31
/* 80030E20  48 29 DF 1D */	bl __dl__FPv
lbl_80030E24:
/* 80030E24  7F E3 FB 78 */	mr r3, r31
/* 80030E28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80030E2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80030E30  7C 08 03 A6 */	mtlr r0
/* 80030E34  38 21 00 10 */	addi r1, r1, 0x10
/* 80030E38  4E 80 00 20 */	blr 

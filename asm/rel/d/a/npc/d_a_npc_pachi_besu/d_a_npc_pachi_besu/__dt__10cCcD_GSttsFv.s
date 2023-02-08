lbl_80A95770:
/* 80A95770  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A95774  7C 08 02 A6 */	mflr r0
/* 80A95778  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9577C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A95780  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A95784  41 82 00 1C */	beq lbl_80A957A0
/* 80A95788  3C A0 80 A9 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80A97998@ha */
/* 80A9578C  38 05 79 98 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80A97998@l */
/* 80A95790  90 1F 00 00 */	stw r0, 0(r31)
/* 80A95794  7C 80 07 35 */	extsh. r0, r4
/* 80A95798  40 81 00 08 */	ble lbl_80A957A0
/* 80A9579C  4B 83 95 A1 */	bl __dl__FPv
lbl_80A957A0:
/* 80A957A0  7F E3 FB 78 */	mr r3, r31
/* 80A957A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A957A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A957AC  7C 08 03 A6 */	mtlr r0
/* 80A957B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A957B4  4E 80 00 20 */	blr 

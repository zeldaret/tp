lbl_804D149C:
/* 804D149C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D14A0  7C 08 02 A6 */	mflr r0
/* 804D14A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D14A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D14AC  7C 7F 1B 79 */	or. r31, r3, r3
/* 804D14B0  41 82 00 1C */	beq lbl_804D14CC
/* 804D14B4  3C A0 80 4D */	lis r5, __vt__8cM3dGSph@ha /* 0x804D1778@ha */
/* 804D14B8  38 05 17 78 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x804D1778@l */
/* 804D14BC  90 1F 00 10 */	stw r0, 0x10(r31)
/* 804D14C0  7C 80 07 35 */	extsh. r0, r4
/* 804D14C4  40 81 00 08 */	ble lbl_804D14CC
/* 804D14C8  4B DF D8 75 */	bl __dl__FPv
lbl_804D14CC:
/* 804D14CC  7F E3 FB 78 */	mr r3, r31
/* 804D14D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D14D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D14D8  7C 08 03 A6 */	mtlr r0
/* 804D14DC  38 21 00 10 */	addi r1, r1, 0x10
/* 804D14E0  4E 80 00 20 */	blr 

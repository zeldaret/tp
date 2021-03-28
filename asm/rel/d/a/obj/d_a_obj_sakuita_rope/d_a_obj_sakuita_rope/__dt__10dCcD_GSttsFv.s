lbl_80CC6844:
/* 80CC6844  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC6848  7C 08 02 A6 */	mflr r0
/* 80CC684C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC6850  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC6854  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CC6858  41 82 00 30 */	beq lbl_80CC6888
/* 80CC685C  3C 60 80 CC */	lis r3, __vt__10dCcD_GStts@ha
/* 80CC6860  38 03 6A 10 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80CC6864  90 1F 00 00 */	stw r0, 0(r31)
/* 80CC6868  41 82 00 10 */	beq lbl_80CC6878
/* 80CC686C  3C 60 80 CC */	lis r3, __vt__10cCcD_GStts@ha
/* 80CC6870  38 03 6A 04 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80CC6874  90 1F 00 00 */	stw r0, 0(r31)
lbl_80CC6878:
/* 80CC6878  7C 80 07 35 */	extsh. r0, r4
/* 80CC687C  40 81 00 0C */	ble lbl_80CC6888
/* 80CC6880  7F E3 FB 78 */	mr r3, r31
/* 80CC6884  4B 60 84 B8 */	b __dl__FPv
lbl_80CC6888:
/* 80CC6888  7F E3 FB 78 */	mr r3, r31
/* 80CC688C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC6890  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC6894  7C 08 03 A6 */	mtlr r0
/* 80CC6898  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC689C  4E 80 00 20 */	blr 

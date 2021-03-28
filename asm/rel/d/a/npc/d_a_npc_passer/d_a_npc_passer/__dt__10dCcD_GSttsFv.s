lbl_80AA6844:
/* 80AA6844  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA6848  7C 08 02 A6 */	mflr r0
/* 80AA684C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA6850  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA6854  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AA6858  41 82 00 30 */	beq lbl_80AA6888
/* 80AA685C  3C 60 80 AA */	lis r3, __vt__10dCcD_GStts@ha
/* 80AA6860  38 03 74 08 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80AA6864  90 1F 00 00 */	stw r0, 0(r31)
/* 80AA6868  41 82 00 10 */	beq lbl_80AA6878
/* 80AA686C  3C 60 80 AA */	lis r3, __vt__10cCcD_GStts@ha
/* 80AA6870  38 03 73 FC */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80AA6874  90 1F 00 00 */	stw r0, 0(r31)
lbl_80AA6878:
/* 80AA6878  7C 80 07 35 */	extsh. r0, r4
/* 80AA687C  40 81 00 0C */	ble lbl_80AA6888
/* 80AA6880  7F E3 FB 78 */	mr r3, r31
/* 80AA6884  4B 82 84 B8 */	b __dl__FPv
lbl_80AA6888:
/* 80AA6888  7F E3 FB 78 */	mr r3, r31
/* 80AA688C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA6890  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA6894  7C 08 03 A6 */	mtlr r0
/* 80AA6898  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA689C  4E 80 00 20 */	blr 

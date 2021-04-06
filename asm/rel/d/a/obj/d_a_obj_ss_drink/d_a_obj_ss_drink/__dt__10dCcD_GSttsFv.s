lbl_80CE6858:
/* 80CE6858  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE685C  7C 08 02 A6 */	mflr r0
/* 80CE6860  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE6864  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE6868  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CE686C  41 82 00 30 */	beq lbl_80CE689C
/* 80CE6870  3C 60 80 CE */	lis r3, __vt__10dCcD_GStts@ha /* 0x80CE6B40@ha */
/* 80CE6874  38 03 6B 40 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80CE6B40@l */
/* 80CE6878  90 1F 00 00 */	stw r0, 0(r31)
/* 80CE687C  41 82 00 10 */	beq lbl_80CE688C
/* 80CE6880  3C 60 80 CE */	lis r3, __vt__10cCcD_GStts@ha /* 0x80CE6B34@ha */
/* 80CE6884  38 03 6B 34 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80CE6B34@l */
/* 80CE6888  90 1F 00 00 */	stw r0, 0(r31)
lbl_80CE688C:
/* 80CE688C  7C 80 07 35 */	extsh. r0, r4
/* 80CE6890  40 81 00 0C */	ble lbl_80CE689C
/* 80CE6894  7F E3 FB 78 */	mr r3, r31
/* 80CE6898  4B 5E 84 A5 */	bl __dl__FPv
lbl_80CE689C:
/* 80CE689C  7F E3 FB 78 */	mr r3, r31
/* 80CE68A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE68A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE68A8  7C 08 03 A6 */	mtlr r0
/* 80CE68AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE68B0  4E 80 00 20 */	blr 

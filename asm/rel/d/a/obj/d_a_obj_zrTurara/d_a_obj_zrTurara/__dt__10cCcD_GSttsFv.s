lbl_80D41474:
/* 80D41474  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D41478  7C 08 02 A6 */	mflr r0
/* 80D4147C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D41480  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D41484  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D41488  41 82 00 1C */	beq lbl_80D414A4
/* 80D4148C  3C A0 80 D4 */	lis r5, __vt__10cCcD_GStts@ha
/* 80D41490  38 05 17 04 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80D41494  90 1F 00 00 */	stw r0, 0(r31)
/* 80D41498  7C 80 07 35 */	extsh. r0, r4
/* 80D4149C  40 81 00 08 */	ble lbl_80D414A4
/* 80D414A0  4B 58 D8 9C */	b __dl__FPv
lbl_80D414A4:
/* 80D414A4  7F E3 FB 78 */	mr r3, r31
/* 80D414A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D414AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D414B0  7C 08 03 A6 */	mtlr r0
/* 80D414B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D414B8  4E 80 00 20 */	blr 

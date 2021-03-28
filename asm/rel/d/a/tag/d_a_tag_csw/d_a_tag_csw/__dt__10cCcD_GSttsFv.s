lbl_80D58568:
/* 80D58568  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5856C  7C 08 02 A6 */	mflr r0
/* 80D58570  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D58574  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D58578  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D5857C  41 82 00 1C */	beq lbl_80D58598
/* 80D58580  3C A0 80 D6 */	lis r5, __vt__10cCcD_GStts@ha
/* 80D58584  38 05 87 30 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80D58588  90 1F 00 00 */	stw r0, 0(r31)
/* 80D5858C  7C 80 07 35 */	extsh. r0, r4
/* 80D58590  40 81 00 08 */	ble lbl_80D58598
/* 80D58594  4B 57 67 A8 */	b __dl__FPv
lbl_80D58598:
/* 80D58598  7F E3 FB 78 */	mr r3, r31
/* 80D5859C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D585A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D585A4  7C 08 03 A6 */	mtlr r0
/* 80D585A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D585AC  4E 80 00 20 */	blr 

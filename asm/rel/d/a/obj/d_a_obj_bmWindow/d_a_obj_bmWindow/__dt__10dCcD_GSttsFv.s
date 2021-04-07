lbl_80BB887C:
/* 80BB887C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB8880  7C 08 02 A6 */	mflr r0
/* 80BB8884  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB8888  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB888C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BB8890  41 82 00 30 */	beq lbl_80BB88C0
/* 80BB8894  3C 60 80 BC */	lis r3, __vt__10dCcD_GStts@ha /* 0x80BB9914@ha */
/* 80BB8898  38 03 99 14 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80BB9914@l */
/* 80BB889C  90 1F 00 00 */	stw r0, 0(r31)
/* 80BB88A0  41 82 00 10 */	beq lbl_80BB88B0
/* 80BB88A4  3C 60 80 BC */	lis r3, __vt__10cCcD_GStts@ha /* 0x80BB9908@ha */
/* 80BB88A8  38 03 99 08 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80BB9908@l */
/* 80BB88AC  90 1F 00 00 */	stw r0, 0(r31)
lbl_80BB88B0:
/* 80BB88B0  7C 80 07 35 */	extsh. r0, r4
/* 80BB88B4  40 81 00 0C */	ble lbl_80BB88C0
/* 80BB88B8  7F E3 FB 78 */	mr r3, r31
/* 80BB88BC  4B 71 64 81 */	bl __dl__FPv
lbl_80BB88C0:
/* 80BB88C0  7F E3 FB 78 */	mr r3, r31
/* 80BB88C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB88C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB88CC  7C 08 03 A6 */	mtlr r0
/* 80BB88D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB88D4  4E 80 00 20 */	blr 

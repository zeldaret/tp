lbl_80C944E0:
/* 80C944E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C944E4  7C 08 02 A6 */	mflr r0
/* 80C944E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C944EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C944F0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C944F4  41 82 00 30 */	beq lbl_80C94524
/* 80C944F8  3C 60 80 C9 */	lis r3, __vt__10dCcD_GStts@ha
/* 80C944FC  38 03 5C 70 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80C94500  90 1F 00 00 */	stw r0, 0(r31)
/* 80C94504  41 82 00 10 */	beq lbl_80C94514
/* 80C94508  3C 60 80 C9 */	lis r3, __vt__10cCcD_GStts@ha
/* 80C9450C  38 03 5C 64 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80C94510  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C94514:
/* 80C94514  7C 80 07 35 */	extsh. r0, r4
/* 80C94518  40 81 00 0C */	ble lbl_80C94524
/* 80C9451C  7F E3 FB 78 */	mr r3, r31
/* 80C94520  4B 63 A8 1C */	b __dl__FPv
lbl_80C94524:
/* 80C94524  7F E3 FB 78 */	mr r3, r31
/* 80C94528  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C9452C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C94530  7C 08 03 A6 */	mtlr r0
/* 80C94534  38 21 00 10 */	addi r1, r1, 0x10
/* 80C94538  4E 80 00 20 */	blr 

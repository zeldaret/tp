lbl_80C2501C:
/* 80C2501C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C25020  7C 08 02 A6 */	mflr r0
/* 80C25024  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C25028  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C2502C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C25030  41 82 00 30 */	beq lbl_80C25060
/* 80C25034  3C 60 80 C2 */	lis r3, __vt__10dCcD_GStts@ha
/* 80C25038  38 03 5F 40 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80C2503C  90 1F 00 00 */	stw r0, 0(r31)
/* 80C25040  41 82 00 10 */	beq lbl_80C25050
/* 80C25044  3C 60 80 C2 */	lis r3, __vt__10cCcD_GStts@ha
/* 80C25048  38 03 5F 34 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80C2504C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C25050:
/* 80C25050  7C 80 07 35 */	extsh. r0, r4
/* 80C25054  40 81 00 0C */	ble lbl_80C25060
/* 80C25058  7F E3 FB 78 */	mr r3, r31
/* 80C2505C  4B 6A 9C E0 */	b __dl__FPv
lbl_80C25060:
/* 80C25060  7F E3 FB 78 */	mr r3, r31
/* 80C25064  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C25068  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2506C  7C 08 03 A6 */	mtlr r0
/* 80C25070  38 21 00 10 */	addi r1, r1, 0x10
/* 80C25074  4E 80 00 20 */	blr 

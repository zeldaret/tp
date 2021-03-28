lbl_80C240D4:
/* 80C240D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C240D8  7C 08 02 A6 */	mflr r0
/* 80C240DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C240E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C240E4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C240E8  41 82 00 30 */	beq lbl_80C24118
/* 80C240EC  3C 60 80 C2 */	lis r3, __vt__10dCcD_GStts@ha
/* 80C240F0  38 03 45 EC */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80C240F4  90 1F 00 00 */	stw r0, 0(r31)
/* 80C240F8  41 82 00 10 */	beq lbl_80C24108
/* 80C240FC  3C 60 80 C2 */	lis r3, __vt__10cCcD_GStts@ha
/* 80C24100  38 03 45 E0 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80C24104  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C24108:
/* 80C24108  7C 80 07 35 */	extsh. r0, r4
/* 80C2410C  40 81 00 0C */	ble lbl_80C24118
/* 80C24110  7F E3 FB 78 */	mr r3, r31
/* 80C24114  4B 6A AC 28 */	b __dl__FPv
lbl_80C24118:
/* 80C24118  7F E3 FB 78 */	mr r3, r31
/* 80C2411C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C24120  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C24124  7C 08 03 A6 */	mtlr r0
/* 80C24128  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2412C  4E 80 00 20 */	blr 

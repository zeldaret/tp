lbl_8098CC3C:
/* 8098CC3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8098CC40  7C 08 02 A6 */	mflr r0
/* 8098CC44  90 01 00 14 */	stw r0, 0x14(r1)
/* 8098CC48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8098CC4C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8098CC50  41 82 00 10 */	beq lbl_8098CC60
/* 8098CC54  7C 80 07 35 */	extsh. r0, r4
/* 8098CC58  40 81 00 08 */	ble lbl_8098CC60
/* 8098CC5C  4B 94 20 E0 */	b __dl__FPv
lbl_8098CC60:
/* 8098CC60  7F E3 FB 78 */	mr r3, r31
/* 8098CC64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8098CC68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8098CC6C  7C 08 03 A6 */	mtlr r0
/* 8098CC70  38 21 00 10 */	addi r1, r1, 0x10
/* 8098CC74  4E 80 00 20 */	blr 

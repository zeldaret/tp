lbl_80C7DD80:
/* 80C7DD80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7DD84  7C 08 02 A6 */	mflr r0
/* 80C7DD88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7DD8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C7DD90  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C7DD94  41 82 00 30 */	beq lbl_80C7DDC4
/* 80C7DD98  3C 60 80 C8 */	lis r3, __vt__10dCcD_GStts@ha
/* 80C7DD9C  38 03 E0 A4 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80C7DDA0  90 1F 00 00 */	stw r0, 0(r31)
/* 80C7DDA4  41 82 00 10 */	beq lbl_80C7DDB4
/* 80C7DDA8  3C 60 80 C8 */	lis r3, __vt__10cCcD_GStts@ha
/* 80C7DDAC  38 03 E0 98 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80C7DDB0  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C7DDB4:
/* 80C7DDB4  7C 80 07 35 */	extsh. r0, r4
/* 80C7DDB8  40 81 00 0C */	ble lbl_80C7DDC4
/* 80C7DDBC  7F E3 FB 78 */	mr r3, r31
/* 80C7DDC0  4B 65 0F 7C */	b __dl__FPv
lbl_80C7DDC4:
/* 80C7DDC4  7F E3 FB 78 */	mr r3, r31
/* 80C7DDC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C7DDCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7DDD0  7C 08 03 A6 */	mtlr r0
/* 80C7DDD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7DDD8  4E 80 00 20 */	blr 

lbl_80D5E110:
/* 80D5E110  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5E114  7C 08 02 A6 */	mflr r0
/* 80D5E118  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5E11C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5E120  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D5E124  41 82 00 30 */	beq lbl_80D5E154
/* 80D5E128  3C 60 80 D6 */	lis r3, __vt__10dCcD_GStts@ha
/* 80D5E12C  38 03 ED FC */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80D5E130  90 1F 00 00 */	stw r0, 0(r31)
/* 80D5E134  41 82 00 10 */	beq lbl_80D5E144
/* 80D5E138  3C 60 80 D6 */	lis r3, __vt__10cCcD_GStts@ha
/* 80D5E13C  38 03 ED F0 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80D5E140  90 1F 00 00 */	stw r0, 0(r31)
lbl_80D5E144:
/* 80D5E144  7C 80 07 35 */	extsh. r0, r4
/* 80D5E148  40 81 00 0C */	ble lbl_80D5E154
/* 80D5E14C  7F E3 FB 78 */	mr r3, r31
/* 80D5E150  4B 57 0B EC */	b __dl__FPv
lbl_80D5E154:
/* 80D5E154  7F E3 FB 78 */	mr r3, r31
/* 80D5E158  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5E15C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5E160  7C 08 03 A6 */	mtlr r0
/* 80D5E164  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5E168  4E 80 00 20 */	blr 

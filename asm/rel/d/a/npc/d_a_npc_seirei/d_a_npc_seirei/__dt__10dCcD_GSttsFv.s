lbl_80AD7934:
/* 80AD7934  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD7938  7C 08 02 A6 */	mflr r0
/* 80AD793C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD7940  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD7944  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AD7948  41 82 00 30 */	beq lbl_80AD7978
/* 80AD794C  3C 60 80 AD */	lis r3, __vt__10dCcD_GStts@ha
/* 80AD7950  38 03 7F EC */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80AD7954  90 1F 00 00 */	stw r0, 0(r31)
/* 80AD7958  41 82 00 10 */	beq lbl_80AD7968
/* 80AD795C  3C 60 80 AD */	lis r3, __vt__10cCcD_GStts@ha
/* 80AD7960  38 03 7F E0 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80AD7964  90 1F 00 00 */	stw r0, 0(r31)
lbl_80AD7968:
/* 80AD7968  7C 80 07 35 */	extsh. r0, r4
/* 80AD796C  40 81 00 0C */	ble lbl_80AD7978
/* 80AD7970  7F E3 FB 78 */	mr r3, r31
/* 80AD7974  4B 7F 73 C8 */	b __dl__FPv
lbl_80AD7978:
/* 80AD7978  7F E3 FB 78 */	mr r3, r31
/* 80AD797C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD7980  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD7984  7C 08 03 A6 */	mtlr r0
/* 80AD7988  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD798C  4E 80 00 20 */	blr 

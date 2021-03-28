lbl_80A5B544:
/* 80A5B544  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A5B548  7C 08 02 A6 */	mflr r0
/* 80A5B54C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A5B550  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A5B554  7C 7F 1B 78 */	mr r31, r3
/* 80A5B558  4B 5B D7 88 */	b fopAc_IsActor__FPv
/* 80A5B55C  2C 03 00 00 */	cmpwi r3, 0
/* 80A5B560  41 82 00 9C */	beq lbl_80A5B5FC
/* 80A5B564  A8 1F 00 08 */	lha r0, 8(r31)
/* 80A5B568  2C 00 02 FB */	cmpwi r0, 0x2fb
/* 80A5B56C  40 82 00 90 */	bne lbl_80A5B5FC
/* 80A5B570  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80A5B574  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80A5B578  88 1F 04 99 */	lbz r0, 0x499(r31)
/* 80A5B57C  54 00 06 7E */	clrlwi r0, r0, 0x19
/* 80A5B580  2C 00 00 01 */	cmpwi r0, 1
/* 80A5B584  41 82 00 28 */	beq lbl_80A5B5AC
/* 80A5B588  40 80 00 60 */	bge lbl_80A5B5E8
/* 80A5B58C  2C 00 00 00 */	cmpwi r0, 0
/* 80A5B590  40 80 00 08 */	bge lbl_80A5B598
/* 80A5B594  48 00 00 54 */	b lbl_80A5B5E8
lbl_80A5B598:
/* 80A5B598  2C 03 00 00 */	cmpwi r3, 0
/* 80A5B59C  41 82 00 08 */	beq lbl_80A5B5A4
/* 80A5B5A0  48 00 00 48 */	b lbl_80A5B5E8
lbl_80A5B5A4:
/* 80A5B5A4  38 00 00 00 */	li r0, 0
/* 80A5B5A8  48 00 00 44 */	b lbl_80A5B5EC
lbl_80A5B5AC:
/* 80A5B5AC  2C 03 00 01 */	cmpwi r3, 1
/* 80A5B5B0  41 82 00 28 */	beq lbl_80A5B5D8
/* 80A5B5B4  40 80 00 10 */	bge lbl_80A5B5C4
/* 80A5B5B8  2C 03 00 00 */	cmpwi r3, 0
/* 80A5B5BC  40 80 00 14 */	bge lbl_80A5B5D0
/* 80A5B5C0  48 00 00 28 */	b lbl_80A5B5E8
lbl_80A5B5C4:
/* 80A5B5C4  2C 03 00 03 */	cmpwi r3, 3
/* 80A5B5C8  40 80 00 20 */	bge lbl_80A5B5E8
/* 80A5B5CC  48 00 00 14 */	b lbl_80A5B5E0
lbl_80A5B5D0:
/* 80A5B5D0  38 00 00 01 */	li r0, 1
/* 80A5B5D4  48 00 00 18 */	b lbl_80A5B5EC
lbl_80A5B5D8:
/* 80A5B5D8  38 00 00 02 */	li r0, 2
/* 80A5B5DC  48 00 00 10 */	b lbl_80A5B5EC
lbl_80A5B5E0:
/* 80A5B5E0  38 00 00 03 */	li r0, 3
/* 80A5B5E4  48 00 00 08 */	b lbl_80A5B5EC
lbl_80A5B5E8:
/* 80A5B5E8  38 00 00 04 */	li r0, 4
lbl_80A5B5EC:
/* 80A5B5EC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A5B5F0  40 82 00 0C */	bne lbl_80A5B5FC
/* 80A5B5F4  7F E3 FB 78 */	mr r3, r31
/* 80A5B5F8  48 00 00 08 */	b lbl_80A5B600
lbl_80A5B5FC:
/* 80A5B5FC  38 60 00 00 */	li r3, 0
lbl_80A5B600:
/* 80A5B600  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A5B604  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A5B608  7C 08 03 A6 */	mtlr r0
/* 80A5B60C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A5B610  4E 80 00 20 */	blr 

lbl_80290C7C:
/* 80290C7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80290C80  7C 08 02 A6 */	mflr r0
/* 80290C84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80290C88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80290C8C  93 C1 00 08 */	stw r30, 8(r1)
/* 80290C90  7C 7E 1B 78 */	mr r30, r3
/* 80290C94  80 63 00 00 */	lwz r3, 0(r3)
/* 80290C98  80 9E 00 08 */	lwz r4, 8(r30)
/* 80290C9C  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 80290CA0  A0 DE 00 04 */	lhz r6, 4(r30)
/* 80290CA4  48 04 52 9D */	bl readResource__10JKRArchiveFPvUlUs
/* 80290CA8  7C 7F 1B 78 */	mr r31, r3
/* 80290CAC  81 9E 00 10 */	lwz r12, 0x10(r30)
/* 80290CB0  28 0C 00 00 */	cmplwi r12, 0
/* 80290CB4  41 82 00 10 */	beq lbl_80290CC4
/* 80290CB8  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 80290CBC  7D 89 03 A6 */	mtctr r12
/* 80290CC0  4E 80 04 21 */	bctrl 
lbl_80290CC4:
/* 80290CC4  28 1F 00 00 */	cmplwi r31, 0
/* 80290CC8  40 82 00 20 */	bne lbl_80290CE8
/* 80290CCC  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 80290CD0  28 03 00 00 */	cmplwi r3, 0
/* 80290CD4  41 82 00 2C */	beq lbl_80290D00
/* 80290CD8  38 80 FF FF */	li r4, -1
/* 80290CDC  38 A0 00 01 */	li r5, 1
/* 80290CE0  48 0A DD 15 */	bl OSSendMessage
/* 80290CE4  48 00 00 1C */	b lbl_80290D00
lbl_80290CE8:
/* 80290CE8  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 80290CEC  28 03 00 00 */	cmplwi r3, 0
/* 80290CF0  41 82 00 10 */	beq lbl_80290D00
/* 80290CF4  38 80 00 00 */	li r4, 0
/* 80290CF8  38 A0 00 01 */	li r5, 1
/* 80290CFC  48 0A DC F9 */	bl OSSendMessage
lbl_80290D00:
/* 80290D00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80290D04  83 C1 00 08 */	lwz r30, 8(r1)
/* 80290D08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80290D0C  7C 08 03 A6 */	mtlr r0
/* 80290D10  38 21 00 10 */	addi r1, r1, 0x10
/* 80290D14  4E 80 00 20 */	blr 

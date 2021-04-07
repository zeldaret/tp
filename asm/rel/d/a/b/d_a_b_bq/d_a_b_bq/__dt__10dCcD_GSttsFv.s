lbl_805B9F58:
/* 805B9F58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B9F5C  7C 08 02 A6 */	mflr r0
/* 805B9F60  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B9F64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B9F68  7C 7F 1B 79 */	or. r31, r3, r3
/* 805B9F6C  41 82 00 30 */	beq lbl_805B9F9C
/* 805B9F70  3C 60 80 5C */	lis r3, __vt__10dCcD_GStts@ha /* 0x805BAD08@ha */
/* 805B9F74  38 03 AD 08 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x805BAD08@l */
/* 805B9F78  90 1F 00 00 */	stw r0, 0(r31)
/* 805B9F7C  41 82 00 10 */	beq lbl_805B9F8C
/* 805B9F80  3C 60 80 5C */	lis r3, __vt__10cCcD_GStts@ha /* 0x805BACFC@ha */
/* 805B9F84  38 03 AC FC */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x805BACFC@l */
/* 805B9F88  90 1F 00 00 */	stw r0, 0(r31)
lbl_805B9F8C:
/* 805B9F8C  7C 80 07 35 */	extsh. r0, r4
/* 805B9F90  40 81 00 0C */	ble lbl_805B9F9C
/* 805B9F94  7F E3 FB 78 */	mr r3, r31
/* 805B9F98  4B D1 4D A5 */	bl __dl__FPv
lbl_805B9F9C:
/* 805B9F9C  7F E3 FB 78 */	mr r3, r31
/* 805B9FA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B9FA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B9FA8  7C 08 03 A6 */	mtlr r0
/* 805B9FAC  38 21 00 10 */	addi r1, r1, 0x10
/* 805B9FB0  4E 80 00 20 */	blr 

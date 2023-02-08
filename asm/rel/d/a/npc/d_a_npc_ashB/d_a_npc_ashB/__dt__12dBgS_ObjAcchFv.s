lbl_80961F70:
/* 80961F70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80961F74  7C 08 02 A6 */	mflr r0
/* 80961F78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80961F7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80961F80  93 C1 00 08 */	stw r30, 8(r1)
/* 80961F84  7C 7E 1B 79 */	or. r30, r3, r3
/* 80961F88  7C 9F 23 78 */	mr r31, r4
/* 80961F8C  41 82 00 38 */	beq lbl_80961FC4
/* 80961F90  3C 80 80 96 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80962730@ha */
/* 80961F94  38 84 27 30 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80962730@l */
/* 80961F98  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80961F9C  38 04 00 0C */	addi r0, r4, 0xc
/* 80961FA0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80961FA4  38 04 00 18 */	addi r0, r4, 0x18
/* 80961FA8  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80961FAC  38 80 00 00 */	li r4, 0
/* 80961FB0  4B 71 3F E5 */	bl __dt__9dBgS_AcchFv
/* 80961FB4  7F E0 07 35 */	extsh. r0, r31
/* 80961FB8  40 81 00 0C */	ble lbl_80961FC4
/* 80961FBC  7F C3 F3 78 */	mr r3, r30
/* 80961FC0  4B 96 CD 7D */	bl __dl__FPv
lbl_80961FC4:
/* 80961FC4  7F C3 F3 78 */	mr r3, r30
/* 80961FC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80961FCC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80961FD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80961FD4  7C 08 03 A6 */	mtlr r0
/* 80961FD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80961FDC  4E 80 00 20 */	blr 

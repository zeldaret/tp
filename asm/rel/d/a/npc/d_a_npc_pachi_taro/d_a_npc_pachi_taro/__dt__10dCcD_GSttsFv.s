lbl_80AA0E2C:
/* 80AA0E2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA0E30  7C 08 02 A6 */	mflr r0
/* 80AA0E34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA0E38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA0E3C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AA0E40  41 82 00 30 */	beq lbl_80AA0E70
/* 80AA0E44  3C 60 80 AA */	lis r3, __vt__10dCcD_GStts@ha
/* 80AA0E48  38 03 2A 68 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80AA0E4C  90 1F 00 00 */	stw r0, 0(r31)
/* 80AA0E50  41 82 00 10 */	beq lbl_80AA0E60
/* 80AA0E54  3C 60 80 AA */	lis r3, __vt__10cCcD_GStts@ha
/* 80AA0E58  38 03 2A 5C */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80AA0E5C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80AA0E60:
/* 80AA0E60  7C 80 07 35 */	extsh. r0, r4
/* 80AA0E64  40 81 00 0C */	ble lbl_80AA0E70
/* 80AA0E68  7F E3 FB 78 */	mr r3, r31
/* 80AA0E6C  4B 82 DE D0 */	b __dl__FPv
lbl_80AA0E70:
/* 80AA0E70  7F E3 FB 78 */	mr r3, r31
/* 80AA0E74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA0E78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA0E7C  7C 08 03 A6 */	mtlr r0
/* 80AA0E80  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA0E84  4E 80 00 20 */	blr 

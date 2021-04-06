lbl_80047F5C:
/* 80047F5C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80047F60  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80047F64  88 05 4F AC */	lbz r0, 0x4fac(r5)
/* 80047F68  28 00 00 00 */	cmplwi r0, 0
/* 80047F6C  40 82 00 0C */	bne lbl_80047F78
/* 80047F70  38 60 00 00 */	li r3, 0
/* 80047F74  4E 80 00 20 */	blr 
lbl_80047F78:
/* 80047F78  2C 04 FF FF */	cmpwi r4, -1
/* 80047F7C  40 82 00 0C */	bne lbl_80047F88
/* 80047F80  38 60 00 00 */	li r3, 0
/* 80047F84  4E 80 00 20 */	blr 
lbl_80047F88:
/* 80047F88  A8 03 01 AA */	lha r0, 0x1aa(r3)
/* 80047F8C  2C 00 FF FF */	cmpwi r0, -1
/* 80047F90  40 82 00 0C */	bne lbl_80047F9C
/* 80047F94  38 60 00 00 */	li r3, 0
/* 80047F98  4E 80 00 20 */	blr 
lbl_80047F9C:
/* 80047F9C  80 03 01 B4 */	lwz r0, 0x1b4(r3)
/* 80047FA0  1C 00 00 24 */	mulli r0, r0, 0x24
/* 80047FA4  7C C3 02 14 */	add r6, r3, r0
/* 80047FA8  80 A6 00 08 */	lwz r5, 8(r6)
/* 80047FAC  1C 64 00 50 */	mulli r3, r4, 0x50
/* 80047FB0  38 03 00 38 */	addi r0, r3, 0x38
/* 80047FB4  7C 05 00 2E */	lwzx r0, r5, r0
/* 80047FB8  80 66 00 0C */	lwz r3, 0xc(r6)
/* 80047FBC  1C 00 00 50 */	mulli r0, r0, 0x50
/* 80047FC0  7C 63 02 14 */	add r3, r3, r0
/* 80047FC4  4E 80 00 20 */	blr 

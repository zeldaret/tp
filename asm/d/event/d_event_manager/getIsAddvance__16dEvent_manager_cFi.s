lbl_80047D4C:
/* 80047D4C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80047D50  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80047D54  88 05 4F AC */	lbz r0, 0x4fac(r5)
/* 80047D58  28 00 00 00 */	cmplwi r0, 0
/* 80047D5C  40 82 00 0C */	bne lbl_80047D68
/* 80047D60  38 60 00 00 */	li r3, 0
/* 80047D64  4E 80 00 20 */	blr 
lbl_80047D68:
/* 80047D68  2C 04 FF FF */	cmpwi r4, -1
/* 80047D6C  40 82 00 0C */	bne lbl_80047D78
/* 80047D70  38 60 00 00 */	li r3, 0
/* 80047D74  4E 80 00 20 */	blr 
lbl_80047D78:
/* 80047D78  A8 03 01 AA */	lha r0, 0x1aa(r3)
/* 80047D7C  2C 00 FF FF */	cmpwi r0, -1
/* 80047D80  40 82 00 0C */	bne lbl_80047D8C
/* 80047D84  38 60 00 00 */	li r3, 0
/* 80047D88  4E 80 00 20 */	blr 
lbl_80047D8C:
/* 80047D8C  80 03 01 B4 */	lwz r0, 0x1b4(r3)
/* 80047D90  1C 00 00 24 */	mulli r0, r0, 0x24
/* 80047D94  7C 63 02 14 */	add r3, r3, r0
/* 80047D98  80 63 00 08 */	lwz r3, 8(r3)
/* 80047D9C  1C 04 00 50 */	mulli r0, r4, 0x50
/* 80047DA0  7C 63 02 14 */	add r3, r3, r0
/* 80047DA4  88 63 00 40 */	lbz r3, 0x40(r3)
/* 80047DA8  4E 80 00 20 */	blr 

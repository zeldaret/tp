lbl_8063DB0C:
/* 8063DB0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063DB10  7C 08 02 A6 */	mflr r0
/* 8063DB14  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063DB18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063DB1C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8063DB20  41 82 00 30 */	beq lbl_8063DB50
/* 8063DB24  3C 60 80 64 */	lis r3, __vt__10dCcD_GStts@ha
/* 8063DB28  38 03 DF AC */	addi r0, r3, __vt__10dCcD_GStts@l
/* 8063DB2C  90 1F 00 00 */	stw r0, 0(r31)
/* 8063DB30  41 82 00 10 */	beq lbl_8063DB40
/* 8063DB34  3C 60 80 64 */	lis r3, __vt__10cCcD_GStts@ha
/* 8063DB38  38 03 DF A0 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 8063DB3C  90 1F 00 00 */	stw r0, 0(r31)
lbl_8063DB40:
/* 8063DB40  7C 80 07 35 */	extsh. r0, r4
/* 8063DB44  40 81 00 0C */	ble lbl_8063DB50
/* 8063DB48  7F E3 FB 78 */	mr r3, r31
/* 8063DB4C  4B C9 11 F0 */	b __dl__FPv
lbl_8063DB50:
/* 8063DB50  7F E3 FB 78 */	mr r3, r31
/* 8063DB54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063DB58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063DB5C  7C 08 03 A6 */	mtlr r0
/* 8063DB60  38 21 00 10 */	addi r1, r1, 0x10
/* 8063DB64  4E 80 00 20 */	blr 

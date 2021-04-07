lbl_804E432C:
/* 804E432C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E4330  7C 08 02 A6 */	mflr r0
/* 804E4334  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E4338  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804E433C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804E4340  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 804E4344  3C 80 80 4E */	lis r4, d_a_door_bossL1__stringBase0@ha /* 0x804E4ADC@ha */
/* 804E4348  38 84 4A DC */	addi r4, r4, d_a_door_bossL1__stringBase0@l /* 0x804E4ADC@l */
/* 804E434C  38 84 00 70 */	addi r4, r4, 0x70
/* 804E4350  4B E8 46 45 */	bl strcmp
/* 804E4354  2C 03 00 00 */	cmpwi r3, 0
/* 804E4358  40 82 00 1C */	bne lbl_804E4374
/* 804E435C  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 804E4360  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)  /* 0x80450D64@l */
/* 804E4364  2C 00 00 0A */	cmpwi r0, 0xa
/* 804E4368  40 82 00 24 */	bne lbl_804E438C
/* 804E436C  38 60 00 00 */	li r3, 0
/* 804E4370  48 00 00 20 */	b lbl_804E4390
lbl_804E4374:
/* 804E4374  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 804E4378  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)  /* 0x80450D64@l */
/* 804E437C  2C 00 00 32 */	cmpwi r0, 0x32
/* 804E4380  40 82 00 0C */	bne lbl_804E438C
/* 804E4384  38 60 00 00 */	li r3, 0
/* 804E4388  48 00 00 08 */	b lbl_804E4390
lbl_804E438C:
/* 804E438C  38 60 00 01 */	li r3, 1
lbl_804E4390:
/* 804E4390  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E4394  7C 08 03 A6 */	mtlr r0
/* 804E4398  38 21 00 10 */	addi r1, r1, 0x10
/* 804E439C  4E 80 00 20 */	blr 

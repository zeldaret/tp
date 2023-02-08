lbl_800182A8:
/* 800182A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800182AC  7C 08 02 A6 */	mflr r0
/* 800182B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800182B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800182B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800182BC  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 800182C0  28 00 00 00 */	cmplwi r0, 0
/* 800182C4  41 82 00 50 */	beq lbl_80018314
/* 800182C8  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 800182CC  48 00 38 49 */	bl fopAcM_getTalkEventPartner__FPC10fopAc_ac_c
/* 800182D0  28 03 00 00 */	cmplwi r3, 0
/* 800182D4  41 82 00 40 */	beq lbl_80018314
/* 800182D8  A8 03 00 08 */	lha r0, 8(r3)
/* 800182DC  2C 00 00 FF */	cmpwi r0, 0xff
/* 800182E0  41 82 00 2C */	beq lbl_8001830C
/* 800182E4  2C 00 02 C1 */	cmpwi r0, 0x2c1
/* 800182E8  41 82 00 24 */	beq lbl_8001830C
/* 800182EC  2C 00 02 C4 */	cmpwi r0, 0x2c4
/* 800182F0  41 82 00 1C */	beq lbl_8001830C
/* 800182F4  2C 00 00 EC */	cmpwi r0, 0xec
/* 800182F8  41 82 00 14 */	beq lbl_8001830C
/* 800182FC  2C 00 02 C3 */	cmpwi r0, 0x2c3
/* 80018300  41 82 00 0C */	beq lbl_8001830C
/* 80018304  2C 00 02 C7 */	cmpwi r0, 0x2c7
/* 80018308  40 82 00 0C */	bne lbl_80018314
lbl_8001830C:
/* 8001830C  38 60 00 01 */	li r3, 1
/* 80018310  48 00 00 08 */	b lbl_80018318
lbl_80018314:
/* 80018314  38 60 00 00 */	li r3, 0
lbl_80018318:
/* 80018318  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001831C  7C 08 03 A6 */	mtlr r0
/* 80018320  38 21 00 10 */	addi r1, r1, 0x10
/* 80018324  4E 80 00 20 */	blr 

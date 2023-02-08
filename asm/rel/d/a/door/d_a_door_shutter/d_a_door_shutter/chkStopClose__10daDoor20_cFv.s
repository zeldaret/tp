lbl_80465DA8:
/* 80465DA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80465DAC  7C 08 02 A6 */	mflr r0
/* 80465DB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80465DB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80465DB8  93 C1 00 08 */	stw r30, 8(r1)
/* 80465DBC  7C 7E 1B 78 */	mr r30, r3
/* 80465DC0  80 03 06 D0 */	lwz r0, 0x6d0(r3)
/* 80465DC4  28 00 00 00 */	cmplwi r0, 0
/* 80465DC8  40 82 00 0C */	bne lbl_80465DD4
/* 80465DCC  38 60 00 00 */	li r3, 0
/* 80465DD0  48 00 00 A4 */	b lbl_80465E74
lbl_80465DD4:
/* 80465DD4  4B BD 43 CD */	bl getFrontOption__13door_param2_cFP10fopAc_ac_c
/* 80465DD8  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 80465DDC  7F C3 F3 78 */	mr r3, r30
/* 80465DE0  4B BD 43 CD */	bl getBackOption__13door_param2_cFP10fopAc_ac_c
/* 80465DE4  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80465DE8  88 1E 06 8C */	lbz r0, 0x68c(r30)
/* 80465DEC  28 00 00 00 */	cmplwi r0, 0
/* 80465DF0  40 82 00 30 */	bne lbl_80465E20
/* 80465DF4  2C 1F 00 01 */	cmpwi r31, 1
/* 80465DF8  41 82 00 0C */	beq lbl_80465E04
/* 80465DFC  38 60 00 00 */	li r3, 0
/* 80465E00  48 00 00 74 */	b lbl_80465E74
lbl_80465E04:
/* 80465E04  7F C3 F3 78 */	mr r3, r30
/* 80465E08  4B BD 43 C9 */	bl getSwbit__13door_param2_cFP10fopAc_ac_c
/* 80465E0C  7C 7F 1B 78 */	mr r31, r3
/* 80465E10  7F C3 F3 78 */	mr r3, r30
/* 80465E14  4B BD 43 A5 */	bl getFRoomNo__13door_param2_cFP10fopAc_ac_c
/* 80465E18  7C 60 1B 78 */	mr r0, r3
/* 80465E1C  48 00 00 2C */	b lbl_80465E48
lbl_80465E20:
/* 80465E20  2C 03 00 01 */	cmpwi r3, 1
/* 80465E24  41 82 00 0C */	beq lbl_80465E30
/* 80465E28  38 60 00 00 */	li r3, 0
/* 80465E2C  48 00 00 48 */	b lbl_80465E74
lbl_80465E30:
/* 80465E30  7F C3 F3 78 */	mr r3, r30
/* 80465E34  4B BD 43 A9 */	bl getSwbit2__13door_param2_cFP10fopAc_ac_c
/* 80465E38  7C 7F 1B 78 */	mr r31, r3
/* 80465E3C  7F C3 F3 78 */	mr r3, r30
/* 80465E40  4B BD 43 85 */	bl getBRoomNo__13door_param2_cFP10fopAc_ac_c
/* 80465E44  7C 60 1B 78 */	mr r0, r3
lbl_80465E48:
/* 80465E48  57 E4 06 3E */	clrlwi r4, r31, 0x18
/* 80465E4C  28 04 00 FF */	cmplwi r4, 0xff
/* 80465E50  40 82 00 0C */	bne lbl_80465E5C
/* 80465E54  38 60 00 00 */	li r3, 0
/* 80465E58  48 00 00 1C */	b lbl_80465E74
lbl_80465E5C:
/* 80465E5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80465E60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80465E64  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 80465E68  4B BC F4 F9 */	bl isSwitch__10dSv_info_cCFii
/* 80465E6C  7C 60 00 34 */	cntlzw r0, r3
/* 80465E70  54 03 D9 7E */	srwi r3, r0, 5
lbl_80465E74:
/* 80465E74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80465E78  83 C1 00 08 */	lwz r30, 8(r1)
/* 80465E7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80465E80  7C 08 03 A6 */	mtlr r0
/* 80465E84  38 21 00 10 */	addi r1, r1, 0x10
/* 80465E88  4E 80 00 20 */	blr 

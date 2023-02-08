lbl_80581C48:
/* 80581C48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80581C4C  7C 08 02 A6 */	mflr r0
/* 80581C50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80581C54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80581C58  93 C1 00 08 */	stw r30, 8(r1)
/* 80581C5C  7C 7E 1B 78 */	mr r30, r3
/* 80581C60  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80581C64  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80581C68  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80581C6C  4B A9 8A A5 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80581C70  7C 64 1B 78 */	mr r4, r3
/* 80581C74  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80581C78  4B CE F1 AD */	bl cLib_distanceAngleS__Fss
/* 80581C7C  7C 64 07 34 */	extsh r4, r3
/* 80581C80  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80581C84  88 03 05 68 */	lbz r0, 0x568(r3)
/* 80581C88  2C 00 00 2F */	cmpwi r0, 0x2f
/* 80581C8C  41 82 00 38 */	beq lbl_80581CC4
/* 80581C90  40 80 00 10 */	bge lbl_80581CA0
/* 80581C94  2C 00 00 2C */	cmpwi r0, 0x2c
/* 80581C98  40 80 00 24 */	bge lbl_80581CBC
/* 80581C9C  48 00 00 4C */	b lbl_80581CE8
lbl_80581CA0:
/* 80581CA0  2C 00 00 35 */	cmpwi r0, 0x35
/* 80581CA4  40 80 00 44 */	bge lbl_80581CE8
/* 80581CA8  2C 00 00 33 */	cmpwi r0, 0x33
/* 80581CAC  40 80 00 08 */	bge lbl_80581CB4
/* 80581CB0  48 00 00 38 */	b lbl_80581CE8
lbl_80581CB4:
/* 80581CB4  38 60 00 02 */	li r3, 2
/* 80581CB8  48 00 00 34 */	b lbl_80581CEC
lbl_80581CBC:
/* 80581CBC  38 60 00 08 */	li r3, 8
/* 80581CC0  48 00 00 2C */	b lbl_80581CEC
lbl_80581CC4:
/* 80581CC4  2C 04 38 00 */	cmpwi r4, 0x3800
/* 80581CC8  40 80 00 0C */	bge lbl_80581CD4
/* 80581CCC  38 60 00 07 */	li r3, 7
/* 80581CD0  48 00 00 1C */	b lbl_80581CEC
lbl_80581CD4:
/* 80581CD4  2C 04 48 00 */	cmpwi r4, 0x4800
/* 80581CD8  38 60 00 01 */	li r3, 1
/* 80581CDC  40 81 00 10 */	ble lbl_80581CEC
/* 80581CE0  38 60 00 06 */	li r3, 6
/* 80581CE4  48 00 00 08 */	b lbl_80581CEC
lbl_80581CE8:
/* 80581CE8  38 60 00 09 */	li r3, 9
lbl_80581CEC:
/* 80581CEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80581CF0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80581CF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80581CF8  7C 08 03 A6 */	mtlr r0
/* 80581CFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80581D00  4E 80 00 20 */	blr 

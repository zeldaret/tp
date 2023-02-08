lbl_80837C6C:
/* 80837C6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80837C70  7C 08 02 A6 */	mflr r0
/* 80837C74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80837C78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80837C7C  7C 7F 1B 78 */	mr r31, r3
/* 80837C80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80837C84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80837C88  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80837C8C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80837C90  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80837C94  41 82 00 14 */	beq lbl_80837CA8
/* 80837C98  88 7F 05 73 */	lbz r3, 0x573(r31)
/* 80837C9C  88 1F 05 72 */	lbz r0, 0x572(r31)
/* 80837CA0  7C 03 00 40 */	cmplw r3, r0
/* 80837CA4  41 80 00 0C */	blt lbl_80837CB0
lbl_80837CA8:
/* 80837CA8  38 60 00 01 */	li r3, 1
/* 80837CAC  48 00 00 84 */	b lbl_80837D30
lbl_80837CB0:
/* 80837CB0  88 1F 05 71 */	lbz r0, 0x571(r31)
/* 80837CB4  88 7F 05 70 */	lbz r3, 0x570(r31)
/* 80837CB8  7C 00 18 40 */	cmplw r0, r3
/* 80837CBC  40 80 00 08 */	bge lbl_80837CC4
/* 80837CC0  98 7F 05 71 */	stb r3, 0x571(r31)
lbl_80837CC4:
/* 80837CC4  7F E3 FB 78 */	mr r3, r31
/* 80837CC8  4B FF FE D5 */	bl checkMerchantNum__12daGuardMng_cFv
/* 80837CCC  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80837CD0  28 03 00 00 */	cmplwi r3, 0
/* 80837CD4  41 82 00 58 */	beq lbl_80837D2C
/* 80837CD8  88 9F 05 71 */	lbz r4, 0x571(r31)
/* 80837CDC  88 1F 05 70 */	lbz r0, 0x570(r31)
/* 80837CE0  7C 04 00 40 */	cmplw r4, r0
/* 80837CE4  40 81 00 48 */	ble lbl_80837D2C
/* 80837CE8  7C 00 20 50 */	subf r0, r0, r4
/* 80837CEC  2C 00 00 03 */	cmpwi r0, 3
/* 80837CF0  40 81 00 3C */	ble lbl_80837D2C
/* 80837CF4  3C 80 80 83 */	lis r4, data_80837DE4@ha /* 0x80837DE4@ha */
/* 80837CF8  38 84 7D E4 */	addi r4, r4, data_80837DE4@l /* 0x80837DE4@l */
/* 80837CFC  80 84 00 00 */	lwz r4, 0(r4)
/* 80837D00  48 52 1B 5D */	bl createGuard__12daTagGuard_cFUl
/* 80837D04  88 7F 05 73 */	lbz r3, 0x573(r31)
/* 80837D08  38 03 00 01 */	addi r0, r3, 1
/* 80837D0C  98 1F 05 73 */	stb r0, 0x573(r31)
/* 80837D10  88 1F 05 70 */	lbz r0, 0x570(r31)
/* 80837D14  98 1F 05 71 */	stb r0, 0x571(r31)
/* 80837D18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80837D1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80837D20  38 63 09 78 */	addi r3, r3, 0x978
/* 80837D24  38 80 00 3C */	li r4, 0x3c
/* 80837D28  4B 7F CE 71 */	bl onSwitch__12dSv_danBit_cFi
lbl_80837D2C:
/* 80837D2C  38 60 00 01 */	li r3, 1
lbl_80837D30:
/* 80837D30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80837D34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80837D38  7C 08 03 A6 */	mtlr r0
/* 80837D3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80837D40  4E 80 00 20 */	blr 

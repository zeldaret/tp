lbl_80D1661C:
/* 80D1661C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D16620  7C 08 02 A6 */	mflr r0
/* 80D16624  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D16628  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1662C  7C 7F 1B 78 */	mr r31, r3
/* 80D16630  38 60 00 05 */	li r3, 5
/* 80D16634  38 80 FF FF */	li r4, -1
/* 80D16638  4B 31 75 2C */	b dComIfGs_isOneZoneSwitch__Fii
/* 80D1663C  2C 03 00 00 */	cmpwi r3, 0
/* 80D16640  41 82 00 10 */	beq lbl_80D16650
/* 80D16644  38 00 00 01 */	li r0, 1
/* 80D16648  98 1F 05 E2 */	stb r0, 0x5e2(r31)
/* 80D1664C  48 00 00 2C */	b lbl_80D16678
lbl_80D16650:
/* 80D16650  38 60 00 06 */	li r3, 6
/* 80D16654  38 80 FF FF */	li r4, -1
/* 80D16658  4B 31 75 0C */	b dComIfGs_isOneZoneSwitch__Fii
/* 80D1665C  2C 03 00 00 */	cmpwi r3, 0
/* 80D16660  41 82 00 10 */	beq lbl_80D16670
/* 80D16664  38 00 00 02 */	li r0, 2
/* 80D16668  98 1F 05 E2 */	stb r0, 0x5e2(r31)
/* 80D1666C  48 00 00 0C */	b lbl_80D16678
lbl_80D16670:
/* 80D16670  38 00 00 00 */	li r0, 0
/* 80D16674  98 1F 05 E2 */	stb r0, 0x5e2(r31)
lbl_80D16678:
/* 80D16678  88 7F 05 E2 */	lbz r3, 0x5e2(r31)
/* 80D1667C  28 03 00 00 */	cmplwi r3, 0
/* 80D16680  41 82 00 4C */	beq lbl_80D166CC
/* 80D16684  38 03 FF FF */	addi r0, r3, -1
/* 80D16688  90 1F 05 D0 */	stw r0, 0x5d0(r31)
/* 80D1668C  7F E3 FB 78 */	mr r3, r31
/* 80D16690  80 1F 05 D0 */	lwz r0, 0x5d0(r31)
/* 80D16694  54 00 08 3C */	slwi r0, r0, 1
/* 80D16698  7C 9F 02 14 */	add r4, r31, r0
/* 80D1669C  A8 84 05 D4 */	lha r4, 0x5d4(r4)
/* 80D166A0  38 A0 00 FF */	li r5, 0xff
/* 80D166A4  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80D166A8  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80D166AC  38 E0 00 00 */	li r7, 0
/* 80D166B0  39 00 00 01 */	li r8, 1
/* 80D166B4  4B 30 4F C8 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80D166B8  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80D166BC  60 00 00 02 */	ori r0, r0, 2
/* 80D166C0  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80D166C4  38 00 00 01 */	li r0, 1
/* 80D166C8  98 1F 05 DD */	stb r0, 0x5dd(r31)
lbl_80D166CC:
/* 80D166CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D166D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D166D4  7C 08 03 A6 */	mtlr r0
/* 80D166D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D166DC  4E 80 00 20 */	blr 

lbl_80A1F42C:
/* 80A1F42C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A1F430  7C 08 02 A6 */	mflr r0
/* 80A1F434  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A1F438  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A1F43C  7C 7F 1B 78 */	mr r31, r3
/* 80A1F440  80 04 00 00 */	lwz r0, 0(r4)
/* 80A1F444  2C 00 00 14 */	cmpwi r0, 0x14
/* 80A1F448  41 82 00 58 */	beq lbl_80A1F4A0
/* 80A1F44C  40 80 00 10 */	bge lbl_80A1F45C
/* 80A1F450  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A1F454  41 82 00 14 */	beq lbl_80A1F468
/* 80A1F458  48 00 00 9C */	b lbl_80A1F4F4
lbl_80A1F45C:
/* 80A1F45C  2C 00 00 16 */	cmpwi r0, 0x16
/* 80A1F460  40 80 00 94 */	bge lbl_80A1F4F4
/* 80A1F464  48 00 00 7C */	b lbl_80A1F4E0
lbl_80A1F468:
/* 80A1F468  80 1F 14 68 */	lwz r0, 0x1468(r31)
/* 80A1F46C  60 00 00 04 */	ori r0, r0, 4
/* 80A1F470  90 1F 14 68 */	stw r0, 0x1468(r31)
/* 80A1F474  38 80 00 04 */	li r4, 4
/* 80A1F478  3C A0 80 A2 */	lis r5, lit_3998@ha /* 0x80A21090@ha */
/* 80A1F47C  C0 25 10 90 */	lfs f1, lit_3998@l(r5)  /* 0x80A21090@l */
/* 80A1F480  38 A0 00 00 */	li r5, 0
/* 80A1F484  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A1F488  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A1F48C  7D 89 03 A6 */	mtctr r12
/* 80A1F490  4E 80 04 21 */	bctrl 
/* 80A1F494  38 00 00 14 */	li r0, 0x14
/* 80A1F498  90 1F 14 30 */	stw r0, 0x1430(r31)
/* 80A1F49C  48 00 00 58 */	b lbl_80A1F4F4
lbl_80A1F4A0:
/* 80A1F4A0  80 1F 14 68 */	lwz r0, 0x1468(r31)
/* 80A1F4A4  60 00 04 00 */	ori r0, r0, 0x400
/* 80A1F4A8  90 1F 14 68 */	stw r0, 0x1468(r31)
/* 80A1F4AC  38 80 00 00 */	li r4, 0
/* 80A1F4B0  3C A0 80 A2 */	lis r5, lit_3998@ha /* 0x80A21090@ha */
/* 80A1F4B4  C0 25 10 90 */	lfs f1, lit_3998@l(r5)  /* 0x80A21090@l */
/* 80A1F4B8  38 A0 00 00 */	li r5, 0
/* 80A1F4BC  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A1F4C0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A1F4C4  7D 89 03 A6 */	mtctr r12
/* 80A1F4C8  4E 80 04 21 */	bctrl 
/* 80A1F4CC  7F E3 FB 78 */	mr r3, r31
/* 80A1F4D0  80 9F 14 38 */	lwz r4, 0x1438(r31)
/* 80A1F4D4  38 A0 00 00 */	li r5, 0
/* 80A1F4D8  4B 73 48 45 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80A1F4DC  48 00 00 18 */	b lbl_80A1F4F4
lbl_80A1F4E0:
/* 80A1F4E0  80 1F 14 68 */	lwz r0, 0x1468(r31)
/* 80A1F4E4  60 00 10 00 */	ori r0, r0, 0x1000
/* 80A1F4E8  90 1F 14 68 */	stw r0, 0x1468(r31)
/* 80A1F4EC  38 00 00 18 */	li r0, 0x18
/* 80A1F4F0  90 1F 14 30 */	stw r0, 0x1430(r31)
lbl_80A1F4F4:
/* 80A1F4F4  38 60 00 01 */	li r3, 1
/* 80A1F4F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A1F4FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A1F500  7C 08 03 A6 */	mtlr r0
/* 80A1F504  38 21 00 10 */	addi r1, r1, 0x10
/* 80A1F508  4E 80 00 20 */	blr 

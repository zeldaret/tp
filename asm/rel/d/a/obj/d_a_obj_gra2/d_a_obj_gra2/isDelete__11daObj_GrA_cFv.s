lbl_80C00E1C:
/* 80C00E1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C00E20  7C 08 02 A6 */	mflr r0
/* 80C00E24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C00E28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C00E2C  7C 7F 1B 78 */	mr r31, r3
/* 80C00E30  88 03 0A 7E */	lbz r0, 0xa7e(r3)
/* 80C00E34  28 00 00 03 */	cmplwi r0, 3
/* 80C00E38  40 82 00 2C */	bne lbl_80C00E64
/* 80C00E3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C00E40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C00E44  88 9F 0A 7F */	lbz r4, 0xa7f(r31)
/* 80C00E48  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C00E4C  7C 05 07 74 */	extsb r5, r0
/* 80C00E50  4B 43 45 10 */	b isSwitch__10dSv_info_cCFii
/* 80C00E54  2C 03 00 00 */	cmpwi r3, 0
/* 80C00E58  40 82 00 8C */	bne lbl_80C00EE4
/* 80C00E5C  38 60 00 00 */	li r3, 0
/* 80C00E60  48 00 00 88 */	b lbl_80C00EE8
lbl_80C00E64:
/* 80C00E64  28 00 00 02 */	cmplwi r0, 2
/* 80C00E68  40 82 00 54 */	bne lbl_80C00EBC
/* 80C00E6C  88 1F 1F E8 */	lbz r0, 0x1fe8(r31)
/* 80C00E70  7C 00 07 75 */	extsb. r0, r0
/* 80C00E74  40 82 00 14 */	bne lbl_80C00E88
/* 80C00E78  38 60 00 52 */	li r3, 0x52
/* 80C00E7C  4B 55 47 B8 */	b daNpcF_chkEvtBit__FUl
/* 80C00E80  2C 03 00 00 */	cmpwi r3, 0
/* 80C00E84  40 82 00 60 */	bne lbl_80C00EE4
lbl_80C00E88:
/* 80C00E88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C00E8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C00E90  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80C00E94  28 03 00 00 */	cmplwi r3, 0
/* 80C00E98  41 82 00 1C */	beq lbl_80C00EB4
/* 80C00E9C  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 80C00EA0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80C00EA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C00EA8  40 80 00 3C */	bge lbl_80C00EE4
/* 80C00EAC  38 60 00 00 */	li r3, 0
/* 80C00EB0  48 00 00 38 */	b lbl_80C00EE8
lbl_80C00EB4:
/* 80C00EB4  38 60 00 00 */	li r3, 0
/* 80C00EB8  48 00 00 30 */	b lbl_80C00EE8
lbl_80C00EBC:
/* 80C00EBC  28 00 00 01 */	cmplwi r0, 1
/* 80C00EC0  40 82 00 1C */	bne lbl_80C00EDC
/* 80C00EC4  38 60 00 40 */	li r3, 0x40
/* 80C00EC8  4B 55 47 6C */	b daNpcF_chkEvtBit__FUl
/* 80C00ECC  2C 03 00 00 */	cmpwi r3, 0
/* 80C00ED0  41 82 00 14 */	beq lbl_80C00EE4
/* 80C00ED4  38 60 00 00 */	li r3, 0
/* 80C00ED8  48 00 00 10 */	b lbl_80C00EE8
lbl_80C00EDC:
/* 80C00EDC  38 60 00 00 */	li r3, 0
/* 80C00EE0  48 00 00 08 */	b lbl_80C00EE8
lbl_80C00EE4:
/* 80C00EE4  38 60 00 01 */	li r3, 1
lbl_80C00EE8:
/* 80C00EE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C00EEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C00EF0  7C 08 03 A6 */	mtlr r0
/* 80C00EF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C00EF8  4E 80 00 20 */	blr 

lbl_80C49918:
/* 80C49918  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4991C  7C 08 02 A6 */	mflr r0
/* 80C49920  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C49924  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C49928  7C 7F 1B 78 */	mr r31, r3
/* 80C4992C  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80C49930  28 00 00 02 */	cmplwi r0, 2
/* 80C49934  40 82 00 18 */	bne lbl_80C4994C
/* 80C49938  38 00 00 01 */	li r0, 1
/* 80C4993C  98 1F 05 E8 */	stb r0, 0x5e8(r31)
/* 80C49940  38 00 00 00 */	li r0, 0
/* 80C49944  98 1F 05 E9 */	stb r0, 0x5e9(r31)
/* 80C49948  48 00 00 70 */	b lbl_80C499B8
lbl_80C4994C:
/* 80C4994C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C49950  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C49954  88 9F 05 EB */	lbz r4, 0x5eb(r31)
/* 80C49958  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C4995C  7C 05 07 74 */	extsb r5, r0
/* 80C49960  4B 3E BA 01 */	bl isSwitch__10dSv_info_cCFii
/* 80C49964  2C 03 00 00 */	cmpwi r3, 0
/* 80C49968  41 82 00 50 */	beq lbl_80C499B8
/* 80C4996C  88 1F 05 EA */	lbz r0, 0x5ea(r31)
/* 80C49970  28 00 00 04 */	cmplwi r0, 4
/* 80C49974  40 82 00 18 */	bne lbl_80C4998C
/* 80C49978  7F E3 FB 78 */	mr r3, r31
/* 80C4997C  4B FF F2 5D */	bl openInit__12daObjKshtr_cFv
/* 80C49980  38 00 00 03 */	li r0, 3
/* 80C49984  98 1F 05 E8 */	stb r0, 0x5e8(r31)
/* 80C49988  48 00 00 30 */	b lbl_80C499B8
lbl_80C4998C:
/* 80C4998C  7F E3 FB 78 */	mr r3, r31
/* 80C49990  A8 9F 05 F0 */	lha r4, 0x5f0(r31)
/* 80C49994  88 BF 05 EE */	lbz r5, 0x5ee(r31)
/* 80C49998  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80C4999C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80C499A0  38 E0 00 00 */	li r7, 0
/* 80C499A4  39 00 00 01 */	li r8, 1
/* 80C499A8  4B 3D 1C D5 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80C499AC  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80C499B0  60 00 00 02 */	ori r0, r0, 2
/* 80C499B4  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80C499B8:
/* 80C499B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C499BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C499C0  7C 08 03 A6 */	mtlr r0
/* 80C499C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C499C8  4E 80 00 20 */	blr 

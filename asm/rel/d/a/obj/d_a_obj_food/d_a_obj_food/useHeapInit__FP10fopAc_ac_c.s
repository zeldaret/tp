lbl_80BF1804:
/* 80BF1804  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF1808  7C 08 02 A6 */	mflr r0
/* 80BF180C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF1810  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF1814  7C 7F 1B 78 */	mr r31, r3
/* 80BF1818  88 03 05 70 */	lbz r0, 0x570(r3)
/* 80BF181C  28 00 00 01 */	cmplwi r0, 1
/* 80BF1820  40 82 00 2C */	bne lbl_80BF184C
/* 80BF1824  3C 60 80 BF */	lis r3, d_a_obj_food__stringBase0@ha /* 0x80BF1E10@ha */
/* 80BF1828  38 63 1E 10 */	addi r3, r3, d_a_obj_food__stringBase0@l /* 0x80BF1E10@l */
/* 80BF182C  38 80 00 03 */	li r4, 3
/* 80BF1830  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BF1834  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BF1838  3C A5 00 02 */	addis r5, r5, 2
/* 80BF183C  38 C0 00 80 */	li r6, 0x80
/* 80BF1840  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BF1844  4B 44 AA A9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BF1848  48 00 00 28 */	b lbl_80BF1870
lbl_80BF184C:
/* 80BF184C  3C 60 80 BF */	lis r3, d_a_obj_food__stringBase0@ha /* 0x80BF1E10@ha */
/* 80BF1850  38 63 1E 10 */	addi r3, r3, d_a_obj_food__stringBase0@l /* 0x80BF1E10@l */
/* 80BF1854  38 80 00 04 */	li r4, 4
/* 80BF1858  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BF185C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BF1860  3C A5 00 02 */	addis r5, r5, 2
/* 80BF1864  38 C0 00 80 */	li r6, 0x80
/* 80BF1868  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BF186C  4B 44 AA 81 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
lbl_80BF1870:
/* 80BF1870  3C 80 00 08 */	lis r4, 8
/* 80BF1874  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BF1878  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BF187C  4B 42 33 D9 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BF1880  90 7F 05 74 */	stw r3, 0x574(r31)
/* 80BF1884  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 80BF1888  28 00 00 00 */	cmplwi r0, 0
/* 80BF188C  40 82 00 0C */	bne lbl_80BF1898
/* 80BF1890  38 60 00 00 */	li r3, 0
/* 80BF1894  48 00 00 24 */	b lbl_80BF18B8
lbl_80BF1898:
/* 80BF1898  38 7F 05 98 */	addi r3, r31, 0x598
/* 80BF189C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80BF18A0  38 A0 00 01 */	li r5, 1
/* 80BF18A4  81 9F 05 A8 */	lwz r12, 0x5a8(r31)
/* 80BF18A8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80BF18AC  7D 89 03 A6 */	mtctr r12
/* 80BF18B0  4E 80 04 21 */	bctrl 
/* 80BF18B4  38 60 00 01 */	li r3, 1
lbl_80BF18B8:
/* 80BF18B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF18BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF18C0  7C 08 03 A6 */	mtlr r0
/* 80BF18C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF18C8  4E 80 00 20 */	blr 

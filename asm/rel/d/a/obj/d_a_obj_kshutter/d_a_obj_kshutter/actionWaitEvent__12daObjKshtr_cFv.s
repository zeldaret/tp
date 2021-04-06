lbl_80C497A0:
/* 80C497A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C497A4  7C 08 02 A6 */	mflr r0
/* 80C497A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C497AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C497B0  7C 7F 1B 78 */	mr r31, r3
/* 80C497B4  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80C497B8  28 00 00 03 */	cmplwi r0, 3
/* 80C497BC  40 82 00 50 */	bne lbl_80C4980C
/* 80C497C0  38 00 00 01 */	li r0, 1
/* 80C497C4  98 1F 05 E8 */	stb r0, 0x5e8(r31)
/* 80C497C8  38 00 00 00 */	li r0, 0
/* 80C497CC  98 1F 05 E9 */	stb r0, 0x5e9(r31)
/* 80C497D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C497D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C497D8  88 9F 05 EB */	lbz r4, 0x5eb(r31)
/* 80C497DC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C497E0  7C 05 07 74 */	extsb r5, r0
/* 80C497E4  4B 3E BA 1D */	bl onSwitch__10dSv_info_cFii
/* 80C497E8  88 1F 05 EA */	lbz r0, 0x5ea(r31)
/* 80C497EC  28 00 00 03 */	cmplwi r0, 3
/* 80C497F0  40 82 00 7C */	bne lbl_80C4986C
/* 80C497F4  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 80C497F8  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 80C497FC  A0 03 00 B0 */	lhz r0, 0xb0(r3)
/* 80C49800  60 00 00 02 */	ori r0, r0, 2
/* 80C49804  B0 03 00 B0 */	sth r0, 0xb0(r3)
/* 80C49808  48 00 00 64 */	b lbl_80C4986C
lbl_80C4980C:
/* 80C4980C  4B FF EE FD */	bl checkOpen__12daObjKshtr_cFv
/* 80C49810  2C 03 00 00 */	cmpwi r3, 0
/* 80C49814  41 82 00 58 */	beq lbl_80C4986C
/* 80C49818  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C4981C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C49820  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80C49824  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80C49828  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80C4982C  41 82 00 10 */	beq lbl_80C4983C
/* 80C49830  38 00 00 01 */	li r0, 1
/* 80C49834  98 1F 05 EF */	stb r0, 0x5ef(r31)
/* 80C49838  48 00 00 0C */	b lbl_80C49844
lbl_80C4983C:
/* 80C4983C  38 00 00 00 */	li r0, 0
/* 80C49840  98 1F 05 EF */	stb r0, 0x5ef(r31)
lbl_80C49844:
/* 80C49844  88 1F 05 EF */	lbz r0, 0x5ef(r31)
/* 80C49848  54 00 08 3C */	slwi r0, r0, 1
/* 80C4984C  7C 7F 02 14 */	add r3, r31, r0
/* 80C49850  A8 03 05 F0 */	lha r0, 0x5f0(r3)
/* 80C49854  B0 1F 00 FC */	sth r0, 0xfc(r31)
/* 80C49858  88 1F 05 EE */	lbz r0, 0x5ee(r31)
/* 80C4985C  98 1F 00 FE */	stb r0, 0xfe(r31)
/* 80C49860  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80C49864  60 00 00 04 */	ori r0, r0, 4
/* 80C49868  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80C4986C:
/* 80C4986C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C49870  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C49874  7C 08 03 A6 */	mtlr r0
/* 80C49878  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4987C  4E 80 00 20 */	blr 

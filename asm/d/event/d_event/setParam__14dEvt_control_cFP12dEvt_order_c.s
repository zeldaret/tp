lbl_80041804:
/* 80041804  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80041808  7C 08 02 A6 */	mflr r0
/* 8004180C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80041810  39 61 00 20 */	addi r11, r1, 0x20
/* 80041814  48 32 09 C5 */	bl _savegpr_28
/* 80041818  7C 7E 1B 78 */	mr r30, r3
/* 8004181C  7C 9F 23 78 */	mr r31, r4
/* 80041820  80 84 00 08 */	lwz r4, 8(r4)
/* 80041824  48 00 1E 09 */	bl setPt1__14dEvt_control_cFPv
/* 80041828  7F C3 F3 78 */	mr r3, r30
/* 8004182C  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 80041830  48 00 1E 2D */	bl setPt2__14dEvt_control_cFPv
/* 80041834  A8 1F 00 10 */	lha r0, 0x10(r31)
/* 80041838  B0 1E 00 DE */	sth r0, 0xde(r30)
/* 8004183C  A0 1F 00 04 */	lhz r0, 4(r31)
/* 80041840  B0 1E 00 DC */	sth r0, 0xdc(r30)
/* 80041844  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80041848  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8004184C  80 03 5D AC */	lwz r0, 0x5dac(r3)
/* 80041850  80 9F 00 08 */	lwz r4, 8(r31)
/* 80041854  7C 00 20 40 */	cmplw r0, r4
/* 80041858  41 82 00 1C */	beq lbl_80041874
/* 8004185C  7F C3 F3 78 */	mr r3, r30
/* 80041860  48 00 1E 2D */	bl setPtT__14dEvt_control_cFPv
/* 80041864  7F C3 F3 78 */	mr r3, r30
/* 80041868  80 9F 00 08 */	lwz r4, 8(r31)
/* 8004186C  48 00 1E 51 */	bl setPtI__14dEvt_control_cFPv
/* 80041870  48 00 00 1C */	b lbl_8004188C
lbl_80041874:
/* 80041874  7F C3 F3 78 */	mr r3, r30
/* 80041878  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8004187C  48 00 1E 11 */	bl setPtT__14dEvt_control_cFPv
/* 80041880  7F C3 F3 78 */	mr r3, r30
/* 80041884  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 80041888  48 00 1E 35 */	bl setPtI__14dEvt_control_cFPv
lbl_8004188C:
/* 8004188C  88 1F 00 15 */	lbz r0, 0x15(r31)
/* 80041890  98 1E 00 EB */	stb r0, 0xeb(r30)
/* 80041894  38 00 00 FF */	li r0, 0xff
/* 80041898  98 1E 00 EA */	stb r0, 0xea(r30)
/* 8004189C  98 1E 00 EC */	stb r0, 0xec(r30)
/* 800418A0  8B 8D 87 E4 */	lbz r28, struct_80450D64+0x0(r13)
/* 800418A4  7F 9C 07 74 */	extsb r28, r28
/* 800418A8  88 7E 00 EB */	lbz r3, 0xeb(r30)
/* 800418AC  7F 84 E3 78 */	mr r4, r28
/* 800418B0  48 00 1C 51 */	bl searchMapEventData__14dEvt_control_cFUcl
/* 800418B4  7C 7D 1B 79 */	or. r29, r3, r3
/* 800418B8  93 BE 00 F4 */	stw r29, 0xf4(r30)
/* 800418BC  41 82 00 3C */	beq lbl_800418F8
/* 800418C0  88 1D 00 16 */	lbz r0, 0x16(r29)
/* 800418C4  98 1E 00 EA */	stb r0, 0xea(r30)
/* 800418C8  88 9D 00 1B */	lbz r4, 0x1b(r29)
/* 800418CC  28 04 00 FF */	cmplwi r4, 0xff
/* 800418D0  41 82 00 14 */	beq lbl_800418E4
/* 800418D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800418D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800418DC  7F 85 E3 78 */	mr r5, r28
/* 800418E0  4B FF 39 21 */	bl onSwitch__10dSv_info_cFii
lbl_800418E4:
/* 800418E4  A0 1F 00 02 */	lhz r0, 2(r31)
/* 800418E8  54 00 05 AF */	rlwinm. r0, r0, 0, 0x16, 0x17
/* 800418EC  41 82 00 0C */	beq lbl_800418F8
/* 800418F0  88 1D 00 05 */	lbz r0, 5(r29)
/* 800418F4  98 1E 00 EC */	stb r0, 0xec(r30)
lbl_800418F8:
/* 800418F8  A0 1F 00 02 */	lhz r0, 2(r31)
/* 800418FC  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 80041900  40 82 00 0C */	bne lbl_8004190C
/* 80041904  A8 1F 00 10 */	lha r0, 0x10(r31)
/* 80041908  B0 1E 00 E0 */	sth r0, 0xe0(r30)
lbl_8004190C:
/* 8004190C  C0 02 84 C0 */	lfs f0, lit_4361(r2)
/* 80041910  D0 1E 00 F0 */	stfs f0, 0xf0(r30)
/* 80041914  38 00 00 00 */	li r0, 0
/* 80041918  B0 1E 00 D8 */	sth r0, 0xd8(r30)
/* 8004191C  39 61 00 20 */	addi r11, r1, 0x20
/* 80041920  48 32 09 05 */	bl _restgpr_28
/* 80041924  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80041928  7C 08 03 A6 */	mtlr r0
/* 8004192C  38 21 00 20 */	addi r1, r1, 0x20
/* 80041930  4E 80 00 20 */	blr 

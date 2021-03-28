lbl_8046C7BC:
/* 8046C7BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8046C7C0  7C 08 02 A6 */	mflr r0
/* 8046C7C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8046C7C8  39 61 00 20 */	addi r11, r1, 0x20
/* 8046C7CC  4B EF 5A 10 */	b _savegpr_29
/* 8046C7D0  7C 7E 1B 78 */	mr r30, r3
/* 8046C7D4  3C 80 80 47 */	lis r4, lit_3798@ha
/* 8046C7D8  3B E4 C9 80 */	addi r31, r4, lit_3798@l
/* 8046C7DC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8046C7E0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8046C7E4  40 82 00 1C */	bne lbl_8046C800
/* 8046C7E8  28 1E 00 00 */	cmplwi r30, 0
/* 8046C7EC  41 82 00 08 */	beq lbl_8046C7F4
/* 8046C7F0  4B BA C3 74 */	b __ct__10fopAc_ac_cFv
lbl_8046C7F4:
/* 8046C7F4  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 8046C7F8  60 00 00 08 */	ori r0, r0, 8
/* 8046C7FC  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_8046C800:
/* 8046C800  38 00 00 00 */	li r0, 0
/* 8046C804  98 1E 05 6E */	stb r0, 0x56e(r30)
/* 8046C808  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8046C80C  98 1E 05 6F */	stb r0, 0x56f(r30)
/* 8046C810  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8046C814  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 8046C818  98 1E 05 70 */	stb r0, 0x570(r30)
/* 8046C81C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8046C820  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 8046C824  90 1E 05 78 */	stw r0, 0x578(r30)
/* 8046C828  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8046C82C  54 00 46 3E */	srwi r0, r0, 0x18
/* 8046C830  90 1E 05 7C */	stw r0, 0x57c(r30)
/* 8046C834  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 8046C838  98 1E 05 71 */	stb r0, 0x571(r30)
/* 8046C83C  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 8046C840  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 8046C844  98 1E 05 72 */	stb r0, 0x572(r30)
/* 8046C848  3B A0 00 01 */	li r29, 1
/* 8046C84C  88 9E 05 71 */	lbz r4, 0x571(r30)
/* 8046C850  28 04 00 FF */	cmplwi r4, 0xff
/* 8046C854  41 82 00 2C */	beq lbl_8046C880
/* 8046C858  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha
/* 8046C85C  88 A3 0D 64 */	lbz r5, struct_80450D64+0x0@l(r3)
/* 8046C860  7C A5 07 74 */	extsb r5, r5
/* 8046C864  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8046C868  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8046C86C  4B BC 8A F4 */	b isSwitch__10dSv_info_cCFii
/* 8046C870  2C 03 00 00 */	cmpwi r3, 0
/* 8046C874  41 82 00 0C */	beq lbl_8046C880
/* 8046C878  3B A0 00 00 */	li r29, 0
/* 8046C87C  48 00 00 34 */	b lbl_8046C8B0
lbl_8046C880:
/* 8046C880  88 9E 05 72 */	lbz r4, 0x572(r30)
/* 8046C884  28 04 00 FF */	cmplwi r4, 0xff
/* 8046C888  41 82 00 28 */	beq lbl_8046C8B0
/* 8046C88C  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha
/* 8046C890  88 A3 0D 64 */	lbz r5, struct_80450D64+0x0@l(r3)
/* 8046C894  7C A5 07 74 */	extsb r5, r5
/* 8046C898  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8046C89C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8046C8A0  4B BC 8A C0 */	b isSwitch__10dSv_info_cCFii
/* 8046C8A4  2C 03 00 00 */	cmpwi r3, 0
/* 8046C8A8  40 82 00 08 */	bne lbl_8046C8B0
/* 8046C8AC  3B A0 00 00 */	li r29, 0
lbl_8046C8B0:
/* 8046C8B0  2C 1D 00 01 */	cmpwi r29, 1
/* 8046C8B4  40 82 00 10 */	bne lbl_8046C8C4
/* 8046C8B8  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8046C8BC  D0 1E 05 88 */	stfs f0, 0x588(r30)
/* 8046C8C0  48 00 00 0C */	b lbl_8046C8CC
lbl_8046C8C4:
/* 8046C8C4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8046C8C8  D0 1E 05 88 */	stfs f0, 0x588(r30)
lbl_8046C8CC:
/* 8046C8CC  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 8046C8D0  2C 00 00 FF */	cmpwi r0, 0xff
/* 8046C8D4  40 82 00 0C */	bne lbl_8046C8E0
/* 8046C8D8  38 00 00 0A */	li r0, 0xa
/* 8046C8DC  90 1E 05 78 */	stw r0, 0x578(r30)
lbl_8046C8E0:
/* 8046C8E0  80 1E 05 7C */	lwz r0, 0x57c(r30)
/* 8046C8E4  2C 00 00 FF */	cmpwi r0, 0xff
/* 8046C8E8  40 82 00 0C */	bne lbl_8046C8F4
/* 8046C8EC  38 00 00 0A */	li r0, 0xa
/* 8046C8F0  90 1E 05 7C */	stw r0, 0x57c(r30)
lbl_8046C8F4:
/* 8046C8F4  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 8046C8F8  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 8046C8FC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8046C900  D0 1E 05 80 */	stfs f0, 0x580(r30)
/* 8046C904  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 8046C908  EC 61 00 32 */	fmuls f3, f1, f0
/* 8046C90C  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 8046C910  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 8046C914  C8 3F 00 30 */	lfd f1, 0x30(r31)
/* 8046C918  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8046C91C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8046C920  3C 00 43 30 */	lis r0, 0x4330
/* 8046C924  90 01 00 08 */	stw r0, 8(r1)
/* 8046C928  C8 01 00 08 */	lfd f0, 8(r1)
/* 8046C92C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8046C930  EC 02 00 32 */	fmuls f0, f2, f0
/* 8046C934  EC 03 00 2A */	fadds f0, f3, f0
/* 8046C938  D0 1E 05 84 */	stfs f0, 0x584(r30)
/* 8046C93C  38 00 00 00 */	li r0, 0
/* 8046C940  98 1E 05 6C */	stb r0, 0x56c(r30)
/* 8046C944  98 1E 05 6D */	stb r0, 0x56d(r30)
/* 8046C948  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8046C94C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8046C950  90 03 0E B8 */	stw r0, 0xeb8(r3)
/* 8046C954  7F C3 F3 78 */	mr r3, r30
/* 8046C958  4B FF F5 61 */	bl wether_tag_efect_move__FP13kytag00_class
/* 8046C95C  38 60 00 04 */	li r3, 4
/* 8046C960  39 61 00 20 */	addi r11, r1, 0x20
/* 8046C964  4B EF 58 C4 */	b _restgpr_29
/* 8046C968  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046C96C  7C 08 03 A6 */	mtlr r0
/* 8046C970  38 21 00 20 */	addi r1, r1, 0x20
/* 8046C974  4E 80 00 20 */	blr 

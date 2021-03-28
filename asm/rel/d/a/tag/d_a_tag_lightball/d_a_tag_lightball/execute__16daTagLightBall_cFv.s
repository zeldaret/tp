lbl_80D5AA20:
/* 80D5AA20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5AA24  7C 08 02 A6 */	mflr r0
/* 80D5AA28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5AA2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5AA30  93 C1 00 08 */	stw r30, 8(r1)
/* 80D5AA34  7C 7E 1B 78 */	mr r30, r3
/* 80D5AA38  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80D5AA3C  54 1F 06 3E */	clrlwi r31, r0, 0x18
/* 80D5AA40  28 1F 00 FF */	cmplwi r31, 0xff
/* 80D5AA44  41 82 01 0C */	beq lbl_80D5AB50
/* 80D5AA48  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 80D5AA4C  28 00 00 0F */	cmplwi r0, 0xf
/* 80D5AA50  40 82 00 84 */	bne lbl_80D5AAD4
/* 80D5AA54  88 1E 05 7C */	lbz r0, 0x57c(r30)
/* 80D5AA58  28 00 00 00 */	cmplwi r0, 0
/* 80D5AA5C  41 82 00 38 */	beq lbl_80D5AA94
/* 80D5AA60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D5AA64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D5AA68  7F E4 FB 78 */	mr r4, r31
/* 80D5AA6C  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80D5AA70  7C 05 07 74 */	extsb r5, r0
/* 80D5AA74  4B 2D A8 EC */	b isSwitch__10dSv_info_cCFii
/* 80D5AA78  2C 03 00 00 */	cmpwi r3, 0
/* 80D5AA7C  40 82 00 18 */	bne lbl_80D5AA94
/* 80D5AA80  38 7E 05 68 */	addi r3, r30, 0x568
/* 80D5AA84  4B 44 CD E4 */	b dKy_dalkmist_inf_cut__FP18DALKMIST_INFLUENCE
/* 80D5AA88  38 00 00 00 */	li r0, 0
/* 80D5AA8C  98 1E 05 7D */	stb r0, 0x57d(r30)
/* 80D5AA90  48 00 00 C0 */	b lbl_80D5AB50
lbl_80D5AA94:
/* 80D5AA94  88 1E 05 7C */	lbz r0, 0x57c(r30)
/* 80D5AA98  28 00 00 00 */	cmplwi r0, 0
/* 80D5AA9C  40 82 00 B4 */	bne lbl_80D5AB50
/* 80D5AAA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D5AAA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D5AAA8  7F E4 FB 78 */	mr r4, r31
/* 80D5AAAC  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80D5AAB0  7C 05 07 74 */	extsb r5, r0
/* 80D5AAB4  4B 2D A8 AC */	b isSwitch__10dSv_info_cCFii
/* 80D5AAB8  2C 03 00 00 */	cmpwi r3, 0
/* 80D5AABC  41 82 00 94 */	beq lbl_80D5AB50
/* 80D5AAC0  38 7E 05 68 */	addi r3, r30, 0x568
/* 80D5AAC4  4B 44 CD 50 */	b dKy_dalkmist_inf_set__FP18DALKMIST_INFLUENCE
/* 80D5AAC8  38 00 00 01 */	li r0, 1
/* 80D5AACC  98 1E 05 7D */	stb r0, 0x57d(r30)
/* 80D5AAD0  48 00 00 80 */	b lbl_80D5AB50
lbl_80D5AAD4:
/* 80D5AAD4  88 1E 05 7C */	lbz r0, 0x57c(r30)
/* 80D5AAD8  28 00 00 00 */	cmplwi r0, 0
/* 80D5AADC  40 82 00 38 */	bne lbl_80D5AB14
/* 80D5AAE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D5AAE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D5AAE8  7F E4 FB 78 */	mr r4, r31
/* 80D5AAEC  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80D5AAF0  7C 05 07 74 */	extsb r5, r0
/* 80D5AAF4  4B 2D A8 6C */	b isSwitch__10dSv_info_cCFii
/* 80D5AAF8  2C 03 00 00 */	cmpwi r3, 0
/* 80D5AAFC  41 82 00 18 */	beq lbl_80D5AB14
/* 80D5AB00  38 7E 05 68 */	addi r3, r30, 0x568
/* 80D5AB04  4B 44 CD 64 */	b dKy_dalkmist_inf_cut__FP18DALKMIST_INFLUENCE
/* 80D5AB08  38 00 00 00 */	li r0, 0
/* 80D5AB0C  98 1E 05 7D */	stb r0, 0x57d(r30)
/* 80D5AB10  48 00 00 40 */	b lbl_80D5AB50
lbl_80D5AB14:
/* 80D5AB14  88 1E 05 7C */	lbz r0, 0x57c(r30)
/* 80D5AB18  28 00 00 00 */	cmplwi r0, 0
/* 80D5AB1C  41 82 00 34 */	beq lbl_80D5AB50
/* 80D5AB20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D5AB24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D5AB28  7F E4 FB 78 */	mr r4, r31
/* 80D5AB2C  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80D5AB30  7C 05 07 74 */	extsb r5, r0
/* 80D5AB34  4B 2D A8 2C */	b isSwitch__10dSv_info_cCFii
/* 80D5AB38  2C 03 00 00 */	cmpwi r3, 0
/* 80D5AB3C  40 82 00 14 */	bne lbl_80D5AB50
/* 80D5AB40  38 7E 05 68 */	addi r3, r30, 0x568
/* 80D5AB44  4B 44 CC D0 */	b dKy_dalkmist_inf_set__FP18DALKMIST_INFLUENCE
/* 80D5AB48  38 00 00 01 */	li r0, 1
/* 80D5AB4C  98 1E 05 7D */	stb r0, 0x57d(r30)
lbl_80D5AB50:
/* 80D5AB50  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80D5AB54  D0 1E 05 68 */	stfs f0, 0x568(r30)
/* 80D5AB58  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80D5AB5C  D0 1E 05 6C */	stfs f0, 0x56c(r30)
/* 80D5AB60  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80D5AB64  D0 1E 05 70 */	stfs f0, 0x570(r30)
/* 80D5AB68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D5AB6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D5AB70  7F E4 FB 78 */	mr r4, r31
/* 80D5AB74  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80D5AB78  7C 05 07 74 */	extsb r5, r0
/* 80D5AB7C  4B 2D A7 E4 */	b isSwitch__10dSv_info_cCFii
/* 80D5AB80  98 7E 05 7C */	stb r3, 0x57c(r30)
/* 80D5AB84  38 60 00 01 */	li r3, 1
/* 80D5AB88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5AB8C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D5AB90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5AB94  7C 08 03 A6 */	mtlr r0
/* 80D5AB98  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5AB9C  4E 80 00 20 */	blr 

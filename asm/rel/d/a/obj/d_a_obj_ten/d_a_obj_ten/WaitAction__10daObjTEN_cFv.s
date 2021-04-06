lbl_80D08C10:
/* 80D08C10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D08C14  7C 08 02 A6 */	mflr r0
/* 80D08C18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D08C1C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D08C20  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D08C24  7C 7E 1B 78 */	mr r30, r3
/* 80D08C28  3C 80 80 D1 */	lis r4, lit_3775@ha /* 0x80D0B8F0@ha */
/* 80D08C2C  3B E4 B8 F0 */	addi r31, r4, lit_3775@l /* 0x80D0B8F0@l */
/* 80D08C30  88 03 05 E9 */	lbz r0, 0x5e9(r3)
/* 80D08C34  2C 00 00 01 */	cmpwi r0, 1
/* 80D08C38  41 82 00 90 */	beq lbl_80D08CC8
/* 80D08C3C  40 80 01 40 */	bge lbl_80D08D7C
/* 80D08C40  2C 00 00 00 */	cmpwi r0, 0
/* 80D08C44  40 80 00 08 */	bge lbl_80D08C4C
/* 80D08C48  48 00 01 34 */	b lbl_80D08D7C
lbl_80D08C4C:
/* 80D08C4C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80D08C50  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80D08C54  3C 60 80 D1 */	lis r3, d_a_obj_ten__stringBase0@ha /* 0x80D0B9E4@ha */
/* 80D08C58  38 63 B9 E4 */	addi r3, r3, d_a_obj_ten__stringBase0@l /* 0x80D0B9E4@l */
/* 80D08C5C  38 80 00 07 */	li r4, 7
/* 80D08C60  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D08C64  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D08C68  3C A5 00 02 */	addis r5, r5, 2
/* 80D08C6C  38 C0 00 80 */	li r6, 0x80
/* 80D08C70  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D08C74  4B 33 36 79 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D08C78  7C 64 1B 78 */	mr r4, r3
/* 80D08C7C  80 7E 0A 58 */	lwz r3, 0xa58(r30)
/* 80D08C80  38 A0 00 02 */	li r5, 2
/* 80D08C84  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80D08C88  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 80D08C8C  FC 60 10 90 */	fmr f3, f2
/* 80D08C90  C0 9F 00 54 */	lfs f4, 0x54(r31)
/* 80D08C94  4B 30 81 DD */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80D08C98  88 7E 05 E9 */	lbz r3, 0x5e9(r30)
/* 80D08C9C  38 03 00 01 */	addi r0, r3, 1
/* 80D08CA0  98 1E 05 E9 */	stb r0, 0x5e9(r30)
/* 80D08CA4  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80D08CA8  4B 55 EC AD */	bl cM_rndF__Ff
/* 80D08CAC  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80D08CB0  EC 00 08 2A */	fadds f0, f0, f1
/* 80D08CB4  FC 00 00 1E */	fctiwz f0, f0
/* 80D08CB8  D8 01 00 08 */	stfd f0, 8(r1)
/* 80D08CBC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80D08CC0  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80D08CC4  48 00 00 B8 */	b lbl_80D08D7C
lbl_80D08CC8:
/* 80D08CC8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D08CCC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D08CD0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80D08CD4  4B 31 1B 0D */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80D08CD8  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80D08CDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D08CE0  40 80 00 9C */	bge lbl_80D08D7C
/* 80D08CE4  A8 7E 05 EA */	lha r3, 0x5ea(r30)
/* 80D08CE8  38 03 FF FF */	addi r0, r3, -1
/* 80D08CEC  B0 1E 05 EA */	sth r0, 0x5ea(r30)
/* 80D08CF0  A8 1E 05 EA */	lha r0, 0x5ea(r30)
/* 80D08CF4  2C 00 00 00 */	cmpwi r0, 0
/* 80D08CF8  41 81 00 0C */	bgt lbl_80D08D04
/* 80D08CFC  38 00 00 00 */	li r0, 0
/* 80D08D00  B0 1E 05 EA */	sth r0, 0x5ea(r30)
lbl_80D08D04:
/* 80D08D04  A8 1E 05 EA */	lha r0, 0x5ea(r30)
/* 80D08D08  2C 00 00 00 */	cmpwi r0, 0
/* 80D08D0C  40 82 00 70 */	bne lbl_80D08D7C
/* 80D08D10  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80D08D14  4B 55 EC 41 */	bl cM_rndF__Ff
/* 80D08D18  FC 00 08 1E */	fctiwz f0, f1
/* 80D08D1C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80D08D20  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80D08D24  2C 00 00 28 */	cmpwi r0, 0x28
/* 80D08D28  40 80 00 18 */	bge lbl_80D08D40
/* 80D08D2C  38 00 00 02 */	li r0, 2
/* 80D08D30  98 1E 05 E8 */	stb r0, 0x5e8(r30)
/* 80D08D34  38 00 00 00 */	li r0, 0
/* 80D08D38  98 1E 05 E9 */	stb r0, 0x5e9(r30)
/* 80D08D3C  48 00 00 40 */	b lbl_80D08D7C
lbl_80D08D40:
/* 80D08D40  2C 00 00 46 */	cmpwi r0, 0x46
/* 80D08D44  40 80 00 18 */	bge lbl_80D08D5C
/* 80D08D48  38 00 00 01 */	li r0, 1
/* 80D08D4C  98 1E 05 E8 */	stb r0, 0x5e8(r30)
/* 80D08D50  38 00 00 00 */	li r0, 0
/* 80D08D54  98 1E 05 E9 */	stb r0, 0x5e9(r30)
/* 80D08D58  48 00 00 24 */	b lbl_80D08D7C
lbl_80D08D5C:
/* 80D08D5C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80D08D60  4B 55 EB F5 */	bl cM_rndF__Ff
/* 80D08D64  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80D08D68  EC 00 08 2A */	fadds f0, f0, f1
/* 80D08D6C  FC 00 00 1E */	fctiwz f0, f0
/* 80D08D70  D8 01 00 08 */	stfd f0, 8(r1)
/* 80D08D74  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80D08D78  B0 1E 05 EA */	sth r0, 0x5ea(r30)
lbl_80D08D7C:
/* 80D08D7C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D08D80  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D08D84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D08D88  7C 08 03 A6 */	mtlr r0
/* 80D08D8C  38 21 00 20 */	addi r1, r1, 0x20
/* 80D08D90  4E 80 00 20 */	blr 

lbl_80859528:
/* 80859528  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8085952C  7C 08 02 A6 */	mflr r0
/* 80859530  90 01 00 54 */	stw r0, 0x54(r1)
/* 80859534  39 61 00 50 */	addi r11, r1, 0x50
/* 80859538  4B B0 8C 9D */	bl _savegpr_27
/* 8085953C  7C 7D 1B 78 */	mr r29, r3
/* 80859540  3C 80 80 86 */	lis r4, lit_3740@ha /* 0x80859E78@ha */
/* 80859544  3B C4 9E 78 */	addi r30, r4, lit_3740@l /* 0x80859E78@l */
/* 80859548  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8085954C  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80859550  88 03 05 93 */	lbz r0, 0x593(r3)
/* 80859554  28 00 00 0B */	cmplwi r0, 0xb
/* 80859558  41 81 02 40 */	bgt lbl_80859798
/* 8085955C  3C 80 80 86 */	lis r4, lit_4611@ha /* 0x8085A074@ha */
/* 80859560  38 84 A0 74 */	addi r4, r4, lit_4611@l /* 0x8085A074@l */
/* 80859564  54 00 10 3A */	slwi r0, r0, 2
/* 80859568  7C 04 00 2E */	lwzx r0, r4, r0
/* 8085956C  7C 09 03 A6 */	mtctr r0
/* 80859570  4E 80 04 20 */	bctr 
lbl_80859574:
/* 80859574  80 9F 5D 74 */	lwz r4, 0x5d74(r31)
/* 80859578  80 1D 05 68 */	lwz r0, 0x568(r29)
/* 8085957C  28 00 00 00 */	cmplwi r0, 0
/* 80859580  41 82 04 EC */	beq lbl_80859A6C
/* 80859584  3B 60 00 00 */	li r27, 0
/* 80859588  3B E0 00 00 */	li r31, 0
/* 8085958C  38 84 00 D8 */	addi r4, r4, 0xd8
/* 80859590  4B FF E9 FD */	bl near_rail_get__FP13kytag06_classP4cXyz
/* 80859594  7C 7C 1B 79 */	or. r28, r3, r3
/* 80859598  41 82 04 D4 */	beq lbl_80859A6C
/* 8085959C  88 7C 00 03 */	lbz r3, 3(r28)
/* 808595A0  28 03 00 FF */	cmplwi r3, 0xff
/* 808595A4  41 82 04 C8 */	beq lbl_80859A6C
/* 808595A8  4B 94 F2 3D */	bl dKy_change_colpat__FUc
/* 808595AC  88 1C 00 03 */	lbz r0, 3(r28)
/* 808595B0  28 00 00 00 */	cmplwi r0, 0
/* 808595B4  40 82 00 10 */	bne lbl_808595C4
/* 808595B8  3B 60 00 FA */	li r27, 0xfa
/* 808595BC  3B E0 00 19 */	li r31, 0x19
/* 808595C0  48 00 00 28 */	b lbl_808595E8
lbl_808595C4:
/* 808595C4  28 00 00 01 */	cmplwi r0, 1
/* 808595C8  40 82 00 10 */	bne lbl_808595D8
/* 808595CC  3B 60 01 F4 */	li r27, 0x1f4
/* 808595D0  3B E0 00 32 */	li r31, 0x32
/* 808595D4  48 00 00 14 */	b lbl_808595E8
lbl_808595D8:
/* 808595D8  28 00 00 02 */	cmplwi r0, 2
/* 808595DC  40 82 00 0C */	bne lbl_808595E8
/* 808595E0  3B 60 00 7D */	li r27, 0x7d
/* 808595E4  3B E0 00 0C */	li r31, 0xc
lbl_808595E8:
/* 808595E8  C0 1D 05 6C */	lfs f0, 0x56c(r29)
/* 808595EC  FC 00 00 1E */	fctiwz f0, f0
/* 808595F0  D8 01 00 08 */	stfd f0, 8(r1)
/* 808595F4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 808595F8  2C 00 00 FA */	cmpwi r0, 0xfa
/* 808595FC  40 81 00 18 */	ble lbl_80859614
/* 80859600  38 00 00 01 */	li r0, 1
/* 80859604  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80859608  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8085960C  98 03 0E 92 */	stb r0, 0xe92(r3)
/* 80859610  48 00 00 14 */	b lbl_80859624
lbl_80859614:
/* 80859614  38 00 00 00 */	li r0, 0
/* 80859618  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8085961C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80859620  98 03 0E 92 */	stb r0, 0xe92(r3)
lbl_80859624:
/* 80859624  38 7D 05 6C */	addi r3, r29, 0x56c
/* 80859628  7F 60 07 34 */	extsh r0, r27
/* 8085962C  C8 3E 01 08 */	lfd f1, 0x108(r30)
/* 80859630  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80859634  90 01 00 0C */	stw r0, 0xc(r1)
/* 80859638  3C 00 43 30 */	lis r0, 0x4330
/* 8085963C  90 01 00 08 */	stw r0, 8(r1)
/* 80859640  C8 01 00 08 */	lfd f0, 8(r1)
/* 80859644  EC 20 08 28 */	fsubs f1, f0, f1
/* 80859648  C0 5E 00 4C */	lfs f2, 0x4c(r30)
/* 8085964C  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 80859650  C0 9E 00 40 */	lfs f4, 0x40(r30)
/* 80859654  4B A1 63 29 */	bl cLib_addCalc__FPfffff
/* 80859658  38 7D 05 70 */	addi r3, r29, 0x570
/* 8085965C  7F E0 07 34 */	extsh r0, r31
/* 80859660  C8 3E 01 08 */	lfd f1, 0x108(r30)
/* 80859664  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80859668  90 01 00 14 */	stw r0, 0x14(r1)
/* 8085966C  3C 00 43 30 */	lis r0, 0x4330
/* 80859670  90 01 00 10 */	stw r0, 0x10(r1)
/* 80859674  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80859678  EC 20 08 28 */	fsubs f1, f0, f1
/* 8085967C  C0 5E 00 4C */	lfs f2, 0x4c(r30)
/* 80859680  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 80859684  C0 9E 00 40 */	lfs f4, 0x40(r30)
/* 80859688  4B A1 62 F5 */	bl cLib_addCalc__FPfffff
/* 8085968C  C0 5D 05 6C */	lfs f2, 0x56c(r29)
/* 80859690  FC 00 10 1E */	fctiwz f0, f2
/* 80859694  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80859698  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8085969C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 808596A0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 808596A4  90 03 0E 8C */	stw r0, 0xe8c(r3)
/* 808596A8  C0 1D 05 70 */	lfs f0, 0x570(r29)
/* 808596AC  FC 00 00 1E */	fctiwz f0, f0
/* 808596B0  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 808596B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 808596B8  90 03 0E B8 */	stw r0, 0xeb8(r3)
/* 808596BC  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha /* 0x8042DD70@ha */
/* 808596C0  38 63 DD 70 */	addi r3, r3, g_mEnvSeMgr@l /* 0x8042DD70@l */
/* 808596C4  C0 3E 00 F4 */	lfs f1, 0xf4(r30)
/* 808596C8  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 808596CC  EC 02 00 24 */	fdivs f0, f2, f0
/* 808596D0  EC 01 00 32 */	fmuls f0, f1, f0
/* 808596D4  FC 00 00 1E */	fctiwz f0, f0
/* 808596D8  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 808596DC  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 808596E0  4B A6 E8 D5 */	bl setSnowPower__10Z2EnvSeMgrFSc
/* 808596E4  48 00 03 88 */	b lbl_80859A6C
lbl_808596E8:
/* 808596E8  88 9D 05 95 */	lbz r4, 0x595(r29)
/* 808596EC  28 04 00 FF */	cmplwi r4, 0xff
/* 808596F0  41 82 03 7C */	beq lbl_80859A6C
/* 808596F4  3C 60 80 45 */	lis r3, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 808596F8  88 A3 0D 64 */	lbz r5, mStayNo__20dStage_roomControl_c+0x0@l(r3)  /* 0x80450D64@l */
/* 808596FC  7C A5 07 74 */	extsb r5, r5
/* 80859700  7F E3 FB 78 */	mr r3, r31
/* 80859704  4B 7D BC 5D */	bl isSwitch__10dSv_info_cCFii
/* 80859708  2C 03 00 00 */	cmpwi r3, 0
/* 8085970C  41 82 03 60 */	beq lbl_80859A6C
/* 80859710  88 1D 05 90 */	lbz r0, 0x590(r29)
/* 80859714  28 00 00 00 */	cmplwi r0, 0
/* 80859718  40 82 03 54 */	bne lbl_80859A6C
/* 8085971C  38 00 00 01 */	li r0, 1
/* 80859720  98 1D 05 90 */	stb r0, 0x590(r29)
/* 80859724  88 7D 05 91 */	lbz r3, 0x591(r29)
/* 80859728  4B 94 F0 BD */	bl dKy_change_colpat__FUc
/* 8085972C  48 00 03 40 */	b lbl_80859A6C
lbl_80859730:
/* 80859730  4B FF FB ED */	bl daKytag06_type_03_Execute__FP13kytag06_class
/* 80859734  48 00 03 38 */	b lbl_80859A6C
lbl_80859738:
/* 80859738  4B FF FA 6D */	bl daKytag06_type_05_Execute__FP13kytag06_class
/* 8085973C  48 00 03 30 */	b lbl_80859A6C
lbl_80859740:
/* 80859740  4B FF F2 A1 */	bl daKytag06_type_06_Execute__FP13kytag06_class
/* 80859744  48 00 03 28 */	b lbl_80859A6C
lbl_80859748:
/* 80859748  4B FF EF A9 */	bl daKytag06_type_07_Execute__FP13kytag06_class
/* 8085974C  48 00 03 20 */	b lbl_80859A6C
lbl_80859750:
/* 80859750  4B FF F5 85 */	bl daKytag06_type_08_Execute__FP13kytag06_class
/* 80859754  48 00 03 18 */	b lbl_80859A6C
lbl_80859758:
/* 80859758  4B FF F5 A9 */	bl daKytag06_type_09_Execute__FP13kytag06_class
/* 8085975C  48 00 03 10 */	b lbl_80859A6C
lbl_80859760:
/* 80859760  38 7F 4E 00 */	addi r3, r31, 0x4e00
/* 80859764  3C 80 80 86 */	lis r4, d_a_kytag06__stringBase0@ha /* 0x80859F90@ha */
/* 80859768  38 84 9F 90 */	addi r4, r4, d_a_kytag06__stringBase0@l /* 0x80859F90@l */
/* 8085976C  4B B0 F2 29 */	bl strcmp
/* 80859770  2C 03 00 00 */	cmpwi r3, 0
/* 80859774  41 82 00 10 */	beq lbl_80859784
/* 80859778  7F A3 EB 78 */	mr r3, r29
/* 8085977C  4B FF F5 B1 */	bl daKytag06_type_10_Execute__FP13kytag06_class
/* 80859780  48 00 02 EC */	b lbl_80859A6C
lbl_80859784:
/* 80859784  7F A3 EB 78 */	mr r3, r29
/* 80859788  4B FF FB 95 */	bl daKytag06_type_03_Execute__FP13kytag06_class
/* 8085978C  48 00 02 E0 */	b lbl_80859A6C
lbl_80859790:
/* 80859790  4B FF F9 9D */	bl daKytag06_type_11_Execute__FP13kytag06_class
/* 80859794  48 00 02 D8 */	b lbl_80859A6C
lbl_80859798:
/* 80859798  88 1D 05 90 */	lbz r0, 0x590(r29)
/* 8085979C  28 00 00 00 */	cmplwi r0, 0
/* 808597A0  40 82 01 3C */	bne lbl_808598DC
/* 808597A4  88 BD 05 91 */	lbz r5, 0x591(r29)
/* 808597A8  2C 05 00 02 */	cmpwi r5, 2
/* 808597AC  41 82 00 9C */	beq lbl_80859848
/* 808597B0  40 80 00 14 */	bge lbl_808597C4
/* 808597B4  2C 05 00 00 */	cmpwi r5, 0
/* 808597B8  41 82 00 18 */	beq lbl_808597D0
/* 808597BC  40 80 00 4C */	bge lbl_80859808
/* 808597C0  48 00 00 E4 */	b lbl_808598A4
lbl_808597C4:
/* 808597C4  2C 05 00 04 */	cmpwi r5, 4
/* 808597C8  40 80 00 DC */	bge lbl_808598A4
/* 808597CC  48 00 00 B4 */	b lbl_80859880
lbl_808597D0:
/* 808597D0  4B 7D 41 41 */	bl dComIfGs_BossLife_public_Get__Fv
/* 808597D4  7C 60 07 74 */	extsb r0, r3
/* 808597D8  2C 00 FF FF */	cmpwi r0, -1
/* 808597DC  41 82 00 C8 */	beq lbl_808598A4
/* 808597E0  4B 7D 41 31 */	bl dComIfGs_BossLife_public_Get__Fv
/* 808597E4  7C 60 07 74 */	extsb r0, r3
/* 808597E8  2C 00 00 06 */	cmpwi r0, 6
/* 808597EC  41 81 00 B8 */	bgt lbl_808598A4
/* 808597F0  38 60 00 01 */	li r3, 1
/* 808597F4  4B 94 EF F1 */	bl dKy_change_colpat__FUc
/* 808597F8  88 7D 05 91 */	lbz r3, 0x591(r29)
/* 808597FC  38 03 00 01 */	addi r0, r3, 1
/* 80859800  98 1D 05 91 */	stb r0, 0x591(r29)
/* 80859804  48 00 00 A0 */	b lbl_808598A4
lbl_80859808:
/* 80859808  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 8085980C  2C 00 02 58 */	cmpwi r0, 0x258
/* 80859810  40 81 00 94 */	ble lbl_808598A4
/* 80859814  38 00 00 00 */	li r0, 0
/* 80859818  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8085981C  38 83 CA 54 */	addi r4, r3, g_env_light@l /* 0x8042CA54@l */
/* 80859820  98 04 0E B5 */	stb r0, 0xeb5(r4)
/* 80859824  80 64 0E B8 */	lwz r3, 0xeb8(r4)
/* 80859828  2C 03 00 32 */	cmpwi r3, 0x32
/* 8085982C  40 80 00 10 */	bge lbl_8085983C
/* 80859830  38 03 00 01 */	addi r0, r3, 1
/* 80859834  90 04 0E B8 */	stw r0, 0xeb8(r4)
/* 80859838  48 00 00 6C */	b lbl_808598A4
lbl_8085983C:
/* 8085983C  38 05 00 01 */	addi r0, r5, 1
/* 80859840  98 1D 05 91 */	stb r0, 0x591(r29)
/* 80859844  48 00 00 60 */	b lbl_808598A4
lbl_80859848:
/* 80859848  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 8085984C  2C 00 03 84 */	cmpwi r0, 0x384
/* 80859850  40 81 00 54 */	ble lbl_808598A4
/* 80859854  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80859858  38 83 CA 54 */	addi r4, r3, g_env_light@l /* 0x8042CA54@l */
/* 8085985C  80 64 0E 80 */	lwz r3, 0xe80(r4)
/* 80859860  2C 03 00 FA */	cmpwi r3, 0xfa
/* 80859864  40 80 00 10 */	bge lbl_80859874
/* 80859868  38 03 00 01 */	addi r0, r3, 1
/* 8085986C  90 04 0E 80 */	stw r0, 0xe80(r4)
/* 80859870  48 00 00 34 */	b lbl_808598A4
lbl_80859874:
/* 80859874  38 05 00 01 */	addi r0, r5, 1
/* 80859878  98 1D 05 91 */	stb r0, 0x591(r29)
/* 8085987C  48 00 00 28 */	b lbl_808598A4
lbl_80859880:
/* 80859880  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 80859884  2C 00 04 4C */	cmpwi r0, 0x44c
/* 80859888  40 81 00 1C */	ble lbl_808598A4
/* 8085988C  38 00 00 02 */	li r0, 2
/* 80859890  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80859894  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80859898  90 03 0E D8 */	stw r0, 0xed8(r3)
/* 8085989C  38 05 00 01 */	addi r0, r5, 1
/* 808598A0  98 1D 05 91 */	stb r0, 0x591(r29)
lbl_808598A4:
/* 808598A4  4B 7D 40 6D */	bl dComIfGs_BossLife_public_Get__Fv
/* 808598A8  7C 60 07 74 */	extsb r0, r3
/* 808598AC  2C 00 FF FF */	cmpwi r0, -1
/* 808598B0  41 82 01 68 */	beq lbl_80859A18
/* 808598B4  4B 7D 40 5D */	bl dComIfGs_BossLife_public_Get__Fv
/* 808598B8  7C 60 07 74 */	extsb r0, r3
/* 808598BC  2C 00 00 03 */	cmpwi r0, 3
/* 808598C0  41 81 01 58 */	bgt lbl_80859A18
/* 808598C4  38 00 00 00 */	li r0, 0
/* 808598C8  98 1D 05 91 */	stb r0, 0x591(r29)
/* 808598CC  90 1D 05 78 */	stw r0, 0x578(r29)
/* 808598D0  38 00 00 01 */	li r0, 1
/* 808598D4  98 1D 05 90 */	stb r0, 0x590(r29)
/* 808598D8  48 00 01 40 */	b lbl_80859A18
lbl_808598DC:
/* 808598DC  88 BD 05 91 */	lbz r5, 0x591(r29)
/* 808598E0  2C 05 00 02 */	cmpwi r5, 2
/* 808598E4  41 82 00 A8 */	beq lbl_8085998C
/* 808598E8  40 80 00 14 */	bge lbl_808598FC
/* 808598EC  2C 05 00 00 */	cmpwi r5, 0
/* 808598F0  41 82 00 1C */	beq lbl_8085990C
/* 808598F4  40 80 00 58 */	bge lbl_8085994C
/* 808598F8  48 00 01 20 */	b lbl_80859A18
lbl_808598FC:
/* 808598FC  2C 05 00 04 */	cmpwi r5, 4
/* 80859900  41 82 00 D4 */	beq lbl_808599D4
/* 80859904  40 80 01 14 */	bge lbl_80859A18
/* 80859908  48 00 00 A8 */	b lbl_808599B0
lbl_8085990C:
/* 8085990C  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 80859910  2C 00 00 00 */	cmpwi r0, 0
/* 80859914  40 81 01 04 */	ble lbl_80859A18
/* 80859918  38 00 00 00 */	li r0, 0
/* 8085991C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80859920  38 83 CA 54 */	addi r4, r3, g_env_light@l /* 0x8042CA54@l */
/* 80859924  90 04 0E D8 */	stw r0, 0xed8(r4)
/* 80859928  80 64 0E 80 */	lwz r3, 0xe80(r4)
/* 8085992C  2C 03 00 00 */	cmpwi r3, 0
/* 80859930  40 81 00 10 */	ble lbl_80859940
/* 80859934  38 03 FF FF */	addi r0, r3, -1
/* 80859938  90 04 0E 80 */	stw r0, 0xe80(r4)
/* 8085993C  48 00 00 DC */	b lbl_80859A18
lbl_80859940:
/* 80859940  38 05 00 01 */	addi r0, r5, 1
/* 80859944  98 1D 05 91 */	stb r0, 0x591(r29)
/* 80859948  48 00 00 D0 */	b lbl_80859A18
lbl_8085994C:
/* 8085994C  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 80859950  2C 00 00 96 */	cmpwi r0, 0x96
/* 80859954  40 81 00 C4 */	ble lbl_80859A18
/* 80859958  38 00 00 00 */	li r0, 0
/* 8085995C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80859960  38 83 CA 54 */	addi r4, r3, g_env_light@l /* 0x8042CA54@l */
/* 80859964  98 04 0E B5 */	stb r0, 0xeb5(r4)
/* 80859968  80 64 0E B8 */	lwz r3, 0xeb8(r4)
/* 8085996C  2C 03 00 00 */	cmpwi r3, 0
/* 80859970  41 80 00 10 */	blt lbl_80859980
/* 80859974  38 03 FF FF */	addi r0, r3, -1
/* 80859978  90 04 0E B8 */	stw r0, 0xeb8(r4)
/* 8085997C  48 00 00 9C */	b lbl_80859A18
lbl_80859980:
/* 80859980  38 05 00 01 */	addi r0, r5, 1
/* 80859984  98 1D 05 91 */	stb r0, 0x591(r29)
/* 80859988  48 00 00 90 */	b lbl_80859A18
lbl_8085998C:
/* 8085998C  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 80859990  2C 00 01 2C */	cmpwi r0, 0x12c
/* 80859994  40 81 00 84 */	ble lbl_80859A18
/* 80859998  38 60 00 06 */	li r3, 6
/* 8085999C  4B 94 EE 49 */	bl dKy_change_colpat__FUc
/* 808599A0  88 7D 05 91 */	lbz r3, 0x591(r29)
/* 808599A4  38 03 00 01 */	addi r0, r3, 1
/* 808599A8  98 1D 05 91 */	stb r0, 0x591(r29)
/* 808599AC  48 00 00 6C */	b lbl_80859A18
lbl_808599B0:
/* 808599B0  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 808599B4  2C 00 01 A4 */	cmpwi r0, 0x1a4
/* 808599B8  40 81 00 60 */	ble lbl_80859A18
/* 808599BC  38 60 00 00 */	li r3, 0
/* 808599C0  4B 94 EE 25 */	bl dKy_change_colpat__FUc
/* 808599C4  88 7D 05 91 */	lbz r3, 0x591(r29)
/* 808599C8  38 03 00 01 */	addi r0, r3, 1
/* 808599CC  98 1D 05 91 */	stb r0, 0x591(r29)
/* 808599D0  48 00 00 48 */	b lbl_80859A18
lbl_808599D4:
/* 808599D4  4B 7D 3F 3D */	bl dComIfGs_BossLife_public_Get__Fv
/* 808599D8  7C 60 07 75 */	extsb. r0, r3
/* 808599DC  40 82 00 3C */	bne lbl_80859A18
/* 808599E0  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 808599E4  C0 1E 00 FC */	lfs f0, 0xfc(r30)
/* 808599E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808599EC  40 80 00 2C */	bge lbl_80859A18
/* 808599F0  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 808599F4  EC 21 00 2A */	fadds f1, f1, f0
/* 808599F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 808599FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80859A00  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80859A04  28 00 00 00 */	cmplwi r0, 0
/* 80859A08  41 82 00 0C */	beq lbl_80859A14
/* 80859A0C  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 80859A10  EC 21 00 2A */	fadds f1, f1, f0
lbl_80859A14:
/* 80859A14  D0 3F 00 34 */	stfs f1, 0x34(r31)
lbl_80859A18:
/* 80859A18  88 1D 05 90 */	lbz r0, 0x590(r29)
/* 80859A1C  28 00 00 00 */	cmplwi r0, 0
/* 80859A20  40 82 00 10 */	bne lbl_80859A30
/* 80859A24  88 1D 05 91 */	lbz r0, 0x591(r29)
/* 80859A28  28 00 00 00 */	cmplwi r0, 0
/* 80859A2C  41 82 00 20 */	beq lbl_80859A4C
lbl_80859A30:
/* 80859A30  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80859A34  3C 60 00 02 */	lis r3, 0x0002 /* 0x00018DD9@ha */
/* 80859A38  38 03 8D D9 */	addi r0, r3, 0x8DD9 /* 0x00018DD9@l */
/* 80859A3C  7C 04 00 00 */	cmpw r4, r0
/* 80859A40  40 80 00 0C */	bge lbl_80859A4C
/* 80859A44  38 04 00 01 */	addi r0, r4, 1
/* 80859A48  90 1D 05 78 */	stw r0, 0x578(r29)
lbl_80859A4C:
/* 80859A4C  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80859A50  3C 60 00 02 */	lis r3, 0x0002 /* 0x0001869F@ha */
/* 80859A54  38 03 86 9F */	addi r0, r3, 0x869F /* 0x0001869F@l */
/* 80859A58  7C 04 00 00 */	cmpw r4, r0
/* 80859A5C  40 80 00 10 */	bge lbl_80859A6C
/* 80859A60  80 7D 05 7C */	lwz r3, 0x57c(r29)
/* 80859A64  38 03 00 01 */	addi r0, r3, 1
/* 80859A68  90 1D 05 7C */	stw r0, 0x57c(r29)
lbl_80859A6C:
/* 80859A6C  38 60 00 01 */	li r3, 1
/* 80859A70  39 61 00 50 */	addi r11, r1, 0x50
/* 80859A74  4B B0 87 AD */	bl _restgpr_27
/* 80859A78  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80859A7C  7C 08 03 A6 */	mtlr r0
/* 80859A80  38 21 00 50 */	addi r1, r1, 0x50
/* 80859A84  4E 80 00 20 */	blr 

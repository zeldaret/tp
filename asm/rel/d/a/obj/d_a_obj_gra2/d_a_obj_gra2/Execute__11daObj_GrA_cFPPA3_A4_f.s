lbl_80C00804:
/* 80C00804  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C00808  7C 08 02 A6 */	mflr r0
/* 80C0080C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C00810  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C00814  93 C1 00 08 */	stw r30, 8(r1)
/* 80C00818  7C 7E 1B 78 */	mr r30, r3
/* 80C0081C  3B E0 00 01 */	li r31, 1
/* 80C00820  38 1E 0A 18 */	addi r0, r30, 0xa18
/* 80C00824  90 04 00 00 */	stw r0, 0(r4)
/* 80C00828  81 83 05 68 */	lwz r12, 0x568(r3)
/* 80C0082C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80C00830  7D 89 03 A6 */	mtctr r12
/* 80C00834  4E 80 04 21 */	bctrl 
/* 80C00838  7F C3 F3 78 */	mr r3, r30
/* 80C0083C  81 9E 05 68 */	lwz r12, 0x568(r30)
/* 80C00840  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80C00844  7D 89 03 A6 */	mtctr r12
/* 80C00848  4E 80 04 21 */	bctrl 
/* 80C0084C  80 1E 10 9C */	lwz r0, 0x109c(r30)
/* 80C00850  2C 00 00 00 */	cmpwi r0, 0
/* 80C00854  40 82 00 CC */	bne lbl_80C00920
/* 80C00858  7F C3 F3 78 */	mr r3, r30
/* 80C0085C  38 9E 08 9C */	addi r4, r30, 0x89c
/* 80C00860  4B 41 9E 6D */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80C00864  38 7E 05 6C */	addi r3, r30, 0x56c
/* 80C00868  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C0086C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C00870  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80C00874  4B 47 62 39 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80C00878  80 1E 06 48 */	lwz r0, 0x648(r30)
/* 80C0087C  90 1E 09 D4 */	stw r0, 0x9d4(r30)
/* 80C00880  80 1E 06 4C */	lwz r0, 0x64c(r30)
/* 80C00884  90 1E 09 D8 */	stw r0, 0x9d8(r30)
/* 80C00888  80 1E 06 50 */	lwz r0, 0x650(r30)
/* 80C0088C  90 1E 09 DC */	stw r0, 0x9dc(r30)
/* 80C00890  88 1E 06 54 */	lbz r0, 0x654(r30)
/* 80C00894  98 1E 09 E0 */	stb r0, 0x9e0(r30)
/* 80C00898  A0 1E 06 5C */	lhz r0, 0x65c(r30)
/* 80C0089C  B0 1E 09 E8 */	sth r0, 0x9e8(r30)
/* 80C008A0  A0 1E 06 5E */	lhz r0, 0x65e(r30)
/* 80C008A4  B0 1E 09 EA */	sth r0, 0x9ea(r30)
/* 80C008A8  80 1E 06 60 */	lwz r0, 0x660(r30)
/* 80C008AC  90 1E 09 EC */	stw r0, 0x9ec(r30)
/* 80C008B0  80 1E 06 64 */	lwz r0, 0x664(r30)
/* 80C008B4  90 1E 09 F0 */	stw r0, 0x9f0(r30)
/* 80C008B8  C0 1E 06 6C */	lfs f0, 0x66c(r30)
/* 80C008BC  D0 1E 09 F8 */	stfs f0, 0x9f8(r30)
/* 80C008C0  C0 1E 06 70 */	lfs f0, 0x670(r30)
/* 80C008C4  D0 1E 09 FC */	stfs f0, 0x9fc(r30)
/* 80C008C8  C0 1E 06 74 */	lfs f0, 0x674(r30)
/* 80C008CC  D0 1E 0A 00 */	stfs f0, 0xa00(r30)
/* 80C008D0  80 1E 06 78 */	lwz r0, 0x678(r30)
/* 80C008D4  90 1E 0A 04 */	stw r0, 0xa04(r30)
/* 80C008D8  C0 1E 06 7C */	lfs f0, 0x67c(r30)
/* 80C008DC  D0 1E 0A 08 */	stfs f0, 0xa08(r30)
/* 80C008E0  80 1E 06 80 */	lwz r0, 0x680(r30)
/* 80C008E4  90 1E 0A 0C */	stw r0, 0xa0c(r30)
/* 80C008E8  C0 1E 06 04 */	lfs f0, 0x604(r30)
/* 80C008EC  D0 1E 0A 10 */	stfs f0, 0xa10(r30)
/* 80C008F0  88 1E 0A 7E */	lbz r0, 0xa7e(r30)
/* 80C008F4  28 00 00 00 */	cmplwi r0, 0
/* 80C008F8  40 82 00 28 */	bne lbl_80C00920
/* 80C008FC  80 1E 05 98 */	lwz r0, 0x598(r30)
/* 80C00900  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80C00904  40 82 00 1C */	bne lbl_80C00920
/* 80C00908  C0 1E 04 BC */	lfs f0, 0x4bc(r30)
/* 80C0090C  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80C00910  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 80C00914  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80C00918  C0 1E 04 C4 */	lfs f0, 0x4c4(r30)
/* 80C0091C  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
lbl_80C00920:
/* 80C00920  3C 60 80 C1 */	lis r3, lit_4399@ha /* 0x80C0FB9C@ha */
/* 80C00924  C0 23 FB 9C */	lfs f1, lit_4399@l(r3)  /* 0x80C0FB9C@l */
/* 80C00928  C0 1E 0A 10 */	lfs f0, 0xa10(r30)
/* 80C0092C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80C00930  41 82 00 14 */	beq lbl_80C00944
/* 80C00934  7F C3 F3 78 */	mr r3, r30
/* 80C00938  4B 54 E7 69 */	bl setEnvTevColor__11daBaseNpc_cFv
/* 80C0093C  7F C3 F3 78 */	mr r3, r30
/* 80C00940  4B 54 E7 BD */	bl setRoomNo__11daBaseNpc_cFv
lbl_80C00944:
/* 80C00944  7F C3 F3 78 */	mr r3, r30
/* 80C00948  81 9E 05 68 */	lwz r12, 0x568(r30)
/* 80C0094C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80C00950  7D 89 03 A6 */	mtctr r12
/* 80C00954  4E 80 04 21 */	bctrl 
/* 80C00958  7F C3 F3 78 */	mr r3, r30
/* 80C0095C  81 9E 05 68 */	lwz r12, 0x568(r30)
/* 80C00960  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80C00964  7D 89 03 A6 */	mtctr r12
/* 80C00968  4E 80 04 21 */	bctrl 
/* 80C0096C  7F C3 F3 78 */	mr r3, r30
/* 80C00970  38 80 00 00 */	li r4, 0
/* 80C00974  81 9E 05 68 */	lwz r12, 0x568(r30)
/* 80C00978  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80C0097C  7D 89 03 A6 */	mtctr r12
/* 80C00980  4E 80 04 21 */	bctrl 
/* 80C00984  7F C3 F3 78 */	mr r3, r30
/* 80C00988  81 9E 05 68 */	lwz r12, 0x568(r30)
/* 80C0098C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80C00990  7D 89 03 A6 */	mtctr r12
/* 80C00994  4E 80 04 21 */	bctrl 
/* 80C00998  7F C3 F3 78 */	mr r3, r30
/* 80C0099C  81 9E 05 68 */	lwz r12, 0x568(r30)
/* 80C009A0  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80C009A4  7D 89 03 A6 */	mtctr r12
/* 80C009A8  4E 80 04 21 */	bctrl 
/* 80C009AC  7F C3 F3 78 */	mr r3, r30
/* 80C009B0  48 00 2E 81 */	bl setPrtcl__11daObj_GrA_cFv
/* 80C009B4  80 1E 0A 14 */	lwz r0, 0xa14(r30)
/* 80C009B8  28 00 00 00 */	cmplwi r0, 0
/* 80C009BC  41 82 00 6C */	beq lbl_80C00A28
/* 80C009C0  80 1E 1F BC */	lwz r0, 0x1fbc(r30)
/* 80C009C4  80 7E 10 9C */	lwz r3, 0x109c(r30)
/* 80C009C8  7C 00 18 00 */	cmpw r0, r3
/* 80C009CC  41 82 00 5C */	beq lbl_80C00A28
/* 80C009D0  90 7E 1F BC */	stw r3, 0x1fbc(r30)
/* 80C009D4  80 1E 1F BC */	lwz r0, 0x1fbc(r30)
/* 80C009D8  2C 00 00 00 */	cmpwi r0, 0
/* 80C009DC  41 82 00 2C */	beq lbl_80C00A08
/* 80C009E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C009E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C009E8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C009EC  80 9E 0A 14 */	lwz r4, 0xa14(r30)
/* 80C009F0  7F C5 F3 78 */	mr r5, r30
/* 80C009F4  4B 47 40 15 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80C009F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C009FC  41 82 00 2C */	beq lbl_80C00A28
/* 80C00A00  3B E0 00 00 */	li r31, 0
/* 80C00A04  48 00 00 24 */	b lbl_80C00A28
lbl_80C00A08:
/* 80C00A08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C00A0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C00A10  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C00A14  80 9E 0A 14 */	lwz r4, 0xa14(r30)
/* 80C00A18  4B 47 38 39 */	bl Release__4cBgSFP9dBgW_Base
/* 80C00A1C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C00A20  41 82 00 08 */	beq lbl_80C00A28
/* 80C00A24  3B E0 00 00 */	li r31, 0
lbl_80C00A28:
/* 80C00A28  7F E3 FB 78 */	mr r3, r31
/* 80C00A2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C00A30  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C00A34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C00A38  7C 08 03 A6 */	mtlr r0
/* 80C00A3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C00A40  4E 80 00 20 */	blr 

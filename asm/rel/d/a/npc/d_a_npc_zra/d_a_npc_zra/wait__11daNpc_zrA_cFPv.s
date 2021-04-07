lbl_80B7F8C4:
/* 80B7F8C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7F8C8  7C 08 02 A6 */	mflr r0
/* 80B7F8CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7F8D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B7F8D4  93 C1 00 08 */	stw r30, 8(r1)
/* 80B7F8D8  7C 7F 1B 78 */	mr r31, r3
/* 80B7F8DC  A0 03 14 E6 */	lhz r0, 0x14e6(r3)
/* 80B7F8E0  2C 00 00 02 */	cmpwi r0, 2
/* 80B7F8E4  41 82 02 BC */	beq lbl_80B7FBA0
/* 80B7F8E8  40 80 00 10 */	bge lbl_80B7F8F8
/* 80B7F8EC  2C 00 00 00 */	cmpwi r0, 0
/* 80B7F8F0  41 82 00 14 */	beq lbl_80B7F904
/* 80B7F8F4  48 00 04 00 */	b lbl_80B7FCF4
lbl_80B7F8F8:
/* 80B7F8F8  2C 00 00 04 */	cmpwi r0, 4
/* 80B7F8FC  40 80 03 F8 */	bge lbl_80B7FCF4
/* 80B7F900  48 00 03 E8 */	b lbl_80B7FCE8
lbl_80B7F904:
/* 80B7F904  80 1F 15 10 */	lwz r0, 0x1510(r31)
/* 80B7F908  2C 00 00 00 */	cmpwi r0, 0
/* 80B7F90C  40 82 02 54 */	bne lbl_80B7FB60
/* 80B7F910  80 1F 0C 1C */	lwz r0, 0xc1c(r31)
/* 80B7F914  28 00 00 00 */	cmplwi r0, 0
/* 80B7F918  40 82 01 FC */	bne lbl_80B7FB14
/* 80B7F91C  80 1F 05 FC */	lwz r0, 0x5fc(r31)
/* 80B7F920  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80B7F924  41 82 00 24 */	beq lbl_80B7F948
/* 80B7F928  3C 60 80 B9 */	lis r3, lit_3939@ha /* 0x80B8C508@ha */
/* 80B7F92C  C0 03 C5 08 */	lfs f0, lit_3939@l(r3)  /* 0x80B8C508@l */
/* 80B7F930  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80B7F934  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80B7F938  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80B7F93C  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80B7F940  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80B7F944  48 00 02 3C */	b lbl_80B7FB80
lbl_80B7F948:
/* 80B7F948  88 1F 15 76 */	lbz r0, 0x1576(r31)
/* 80B7F94C  2C 00 00 03 */	cmpwi r0, 3
/* 80B7F950  41 82 00 B0 */	beq lbl_80B7FA00
/* 80B7F954  40 80 00 14 */	bge lbl_80B7F968
/* 80B7F958  2C 00 00 01 */	cmpwi r0, 1
/* 80B7F95C  41 82 00 1C */	beq lbl_80B7F978
/* 80B7F960  40 80 00 5C */	bge lbl_80B7F9BC
/* 80B7F964  48 00 01 68 */	b lbl_80B7FACC
lbl_80B7F968:
/* 80B7F968  2C 00 00 05 */	cmpwi r0, 5
/* 80B7F96C  41 82 01 1C */	beq lbl_80B7FA88
/* 80B7F970  40 80 01 5C */	bge lbl_80B7FACC
/* 80B7F974  48 00 00 D0 */	b lbl_80B7FA44
lbl_80B7F978:
/* 80B7F978  38 80 00 01 */	li r4, 1
/* 80B7F97C  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B7F980  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B7F984  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B7F988  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B7F98C  7D 89 03 A6 */	mtctr r12
/* 80B7F990  4E 80 04 21 */	bctrl 
/* 80B7F994  7F E3 FB 78 */	mr r3, r31
/* 80B7F998  38 80 00 06 */	li r4, 6
/* 80B7F99C  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B7F9A0  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B7F9A4  38 A0 00 00 */	li r5, 0
/* 80B7F9A8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B7F9AC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B7F9B0  7D 89 03 A6 */	mtctr r12
/* 80B7F9B4  4E 80 04 21 */	bctrl 
/* 80B7F9B8  48 00 01 C8 */	b lbl_80B7FB80
lbl_80B7F9BC:
/* 80B7F9BC  38 80 00 02 */	li r4, 2
/* 80B7F9C0  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B7F9C4  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B7F9C8  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B7F9CC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B7F9D0  7D 89 03 A6 */	mtctr r12
/* 80B7F9D4  4E 80 04 21 */	bctrl 
/* 80B7F9D8  7F E3 FB 78 */	mr r3, r31
/* 80B7F9DC  38 80 00 07 */	li r4, 7
/* 80B7F9E0  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B7F9E4  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B7F9E8  38 A0 00 00 */	li r5, 0
/* 80B7F9EC  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B7F9F0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B7F9F4  7D 89 03 A6 */	mtctr r12
/* 80B7F9F8  4E 80 04 21 */	bctrl 
/* 80B7F9FC  48 00 01 84 */	b lbl_80B7FB80
lbl_80B7FA00:
/* 80B7FA00  38 80 00 03 */	li r4, 3
/* 80B7FA04  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B7FA08  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B7FA0C  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B7FA10  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B7FA14  7D 89 03 A6 */	mtctr r12
/* 80B7FA18  4E 80 04 21 */	bctrl 
/* 80B7FA1C  7F E3 FB 78 */	mr r3, r31
/* 80B7FA20  38 80 00 08 */	li r4, 8
/* 80B7FA24  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B7FA28  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B7FA2C  38 A0 00 00 */	li r5, 0
/* 80B7FA30  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B7FA34  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B7FA38  7D 89 03 A6 */	mtctr r12
/* 80B7FA3C  4E 80 04 21 */	bctrl 
/* 80B7FA40  48 00 01 40 */	b lbl_80B7FB80
lbl_80B7FA44:
/* 80B7FA44  38 80 00 04 */	li r4, 4
/* 80B7FA48  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B7FA4C  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B7FA50  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B7FA54  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B7FA58  7D 89 03 A6 */	mtctr r12
/* 80B7FA5C  4E 80 04 21 */	bctrl 
/* 80B7FA60  7F E3 FB 78 */	mr r3, r31
/* 80B7FA64  38 80 00 09 */	li r4, 9
/* 80B7FA68  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B7FA6C  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B7FA70  38 A0 00 00 */	li r5, 0
/* 80B7FA74  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B7FA78  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B7FA7C  7D 89 03 A6 */	mtctr r12
/* 80B7FA80  4E 80 04 21 */	bctrl 
/* 80B7FA84  48 00 00 FC */	b lbl_80B7FB80
lbl_80B7FA88:
/* 80B7FA88  38 80 00 05 */	li r4, 5
/* 80B7FA8C  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B7FA90  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B7FA94  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B7FA98  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B7FA9C  7D 89 03 A6 */	mtctr r12
/* 80B7FAA0  4E 80 04 21 */	bctrl 
/* 80B7FAA4  7F E3 FB 78 */	mr r3, r31
/* 80B7FAA8  38 80 00 0A */	li r4, 0xa
/* 80B7FAAC  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B7FAB0  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B7FAB4  38 A0 00 00 */	li r5, 0
/* 80B7FAB8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B7FABC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B7FAC0  7D 89 03 A6 */	mtctr r12
/* 80B7FAC4  4E 80 04 21 */	bctrl 
/* 80B7FAC8  48 00 00 B8 */	b lbl_80B7FB80
lbl_80B7FACC:
/* 80B7FACC  7F E3 FB 78 */	mr r3, r31
/* 80B7FAD0  38 80 00 14 */	li r4, 0x14
/* 80B7FAD4  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B7FAD8  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B7FADC  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B7FAE0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B7FAE4  7D 89 03 A6 */	mtctr r12
/* 80B7FAE8  4E 80 04 21 */	bctrl 
/* 80B7FAEC  7F E3 FB 78 */	mr r3, r31
/* 80B7FAF0  38 80 00 00 */	li r4, 0
/* 80B7FAF4  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B7FAF8  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B7FAFC  38 A0 00 00 */	li r5, 0
/* 80B7FB00  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B7FB04  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B7FB08  7D 89 03 A6 */	mtctr r12
/* 80B7FB0C  4E 80 04 21 */	bctrl 
/* 80B7FB10  48 00 00 70 */	b lbl_80B7FB80
lbl_80B7FB14:
/* 80B7FB14  38 80 00 14 */	li r4, 0x14
/* 80B7FB18  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B7FB1C  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B7FB20  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B7FB24  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B7FB28  7D 89 03 A6 */	mtctr r12
/* 80B7FB2C  4E 80 04 21 */	bctrl 
/* 80B7FB30  7F E3 FB 78 */	mr r3, r31
/* 80B7FB34  38 80 00 14 */	li r4, 0x14
/* 80B7FB38  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B7FB3C  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B7FB40  38 A0 00 00 */	li r5, 0
/* 80B7FB44  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B7FB48  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B7FB4C  7D 89 03 A6 */	mtctr r12
/* 80B7FB50  4E 80 04 21 */	bctrl 
/* 80B7FB54  38 00 00 01 */	li r0, 1
/* 80B7FB58  90 1F 15 10 */	stw r0, 0x1510(r31)
/* 80B7FB5C  48 00 00 24 */	b lbl_80B7FB80
lbl_80B7FB60:
/* 80B7FB60  38 80 00 14 */	li r4, 0x14
/* 80B7FB64  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B7FB68  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B7FB6C  38 A0 00 00 */	li r5, 0
/* 80B7FB70  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B7FB74  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B7FB78  7D 89 03 A6 */	mtctr r12
/* 80B7FB7C  4E 80 04 21 */	bctrl 
lbl_80B7FB80:
/* 80B7FB80  7F E3 FB 78 */	mr r3, r31
/* 80B7FB84  38 80 00 00 */	li r4, 0
/* 80B7FB88  4B FF EB 6D */	bl setLookMode__11daNpc_zrA_cFi
/* 80B7FB8C  38 00 00 00 */	li r0, 0
/* 80B7FB90  90 1F 09 38 */	stw r0, 0x938(r31)
/* 80B7FB94  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80B7FB98  38 00 00 02 */	li r0, 2
/* 80B7FB9C  B0 1F 14 E6 */	sth r0, 0x14e6(r31)
lbl_80B7FBA0:
/* 80B7FBA0  80 1F 15 10 */	lwz r0, 0x1510(r31)
/* 80B7FBA4  2C 00 00 00 */	cmpwi r0, 0
/* 80B7FBA8  41 82 00 10 */	beq lbl_80B7FBB8
/* 80B7FBAC  7F E3 FB 78 */	mr r3, r31
/* 80B7FBB0  48 00 01 61 */	bl walkCalc__11daNpc_zrA_cFv
/* 80B7FBB4  48 00 00 0C */	b lbl_80B7FBC0
lbl_80B7FBB8:
/* 80B7FBB8  7F E3 FB 78 */	mr r3, r31
/* 80B7FBBC  48 00 02 5D */	bl waitCalc__11daNpc_zrA_cFv
lbl_80B7FBC0:
/* 80B7FBC0  80 1F 09 54 */	lwz r0, 0x954(r31)
/* 80B7FBC4  2C 00 00 00 */	cmpwi r0, 0
/* 80B7FBC8  40 82 01 2C */	bne lbl_80B7FCF4
/* 80B7FBCC  88 1F 09 F4 */	lbz r0, 0x9f4(r31)
/* 80B7FBD0  28 00 00 00 */	cmplwi r0, 0
/* 80B7FBD4  40 82 01 20 */	bne lbl_80B7FCF4
/* 80B7FBD8  38 7F 13 1C */	addi r3, r31, 0x131c
/* 80B7FBDC  4B 5D 0B 11 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80B7FBE0  30 03 FF FF */	addic r0, r3, -1
/* 80B7FBE4  7C 00 19 10 */	subfe r0, r0, r3
/* 80B7FBE8  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 80B7FBEC  7F E3 FB 78 */	mr r3, r31
/* 80B7FBF0  7F C4 F3 78 */	mr r4, r30
/* 80B7FBF4  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80B7FBF8  4B 5D 4D E9 */	bl chkFindPlayer2__8daNpcF_cFis
/* 80B7FBFC  2C 03 00 00 */	cmpwi r3, 0
/* 80B7FC00  41 82 00 2C */	beq lbl_80B7FC2C
/* 80B7FC04  2C 1E 00 00 */	cmpwi r30, 0
/* 80B7FC08  40 82 00 3C */	bne lbl_80B7FC44
/* 80B7FC0C  38 7F 13 1C */	addi r3, r31, 0x131c
/* 80B7FC10  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B7FC14  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B7FC18  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B7FC1C  4B 5D 0A A1 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B7FC20  38 00 00 00 */	li r0, 0
/* 80B7FC24  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80B7FC28  48 00 00 1C */	b lbl_80B7FC44
lbl_80B7FC2C:
/* 80B7FC2C  2C 1E 00 00 */	cmpwi r30, 0
/* 80B7FC30  41 82 00 14 */	beq lbl_80B7FC44
/* 80B7FC34  38 7F 13 1C */	addi r3, r31, 0x131c
/* 80B7FC38  4B 5D 0A A9 */	bl remove__18daNpcF_ActorMngr_cFv
/* 80B7FC3C  38 00 00 00 */	li r0, 0
/* 80B7FC40  90 1F 09 6C */	stw r0, 0x96c(r31)
lbl_80B7FC44:
/* 80B7FC44  38 7F 13 1C */	addi r3, r31, 0x131c
/* 80B7FC48  4B 5D 0A A5 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80B7FC4C  28 03 00 00 */	cmplwi r3, 0
/* 80B7FC50  41 82 00 14 */	beq lbl_80B7FC64
/* 80B7FC54  7F E3 FB 78 */	mr r3, r31
/* 80B7FC58  38 80 00 02 */	li r4, 2
/* 80B7FC5C  4B FF EA 99 */	bl setLookMode__11daNpc_zrA_cFi
/* 80B7FC60  48 00 00 94 */	b lbl_80B7FCF4
lbl_80B7FC64:
/* 80B7FC64  7F E3 FB 78 */	mr r3, r31
/* 80B7FC68  38 80 00 00 */	li r4, 0
/* 80B7FC6C  4B FF EA 89 */	bl setLookMode__11daNpc_zrA_cFi
/* 80B7FC70  80 1F 15 10 */	lwz r0, 0x1510(r31)
/* 80B7FC74  2C 00 00 00 */	cmpwi r0, 0
/* 80B7FC78  40 82 00 7C */	bne lbl_80B7FCF4
/* 80B7FC7C  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80B7FC80  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80B7FC84  7C 04 00 00 */	cmpw r4, r0
/* 80B7FC88  41 82 00 6C */	beq lbl_80B7FCF4
/* 80B7FC8C  80 1F 05 FC */	lwz r0, 0x5fc(r31)
/* 80B7FC90  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80B7FC94  41 82 00 2C */	beq lbl_80B7FCC0
/* 80B7FC98  7F E3 FB 78 */	mr r3, r31
/* 80B7FC9C  38 A0 FF FF */	li r5, -1
/* 80B7FCA0  38 C0 FF FF */	li r6, -1
/* 80B7FCA4  38 E0 00 0F */	li r7, 0xf
/* 80B7FCA8  4B 5D 43 FD */	bl step__8daNpcF_cFsiii
/* 80B7FCAC  2C 03 00 00 */	cmpwi r3, 0
/* 80B7FCB0  41 82 00 44 */	beq lbl_80B7FCF4
/* 80B7FCB4  38 00 00 00 */	li r0, 0
/* 80B7FCB8  B0 1F 14 E6 */	sth r0, 0x14e6(r31)
/* 80B7FCBC  48 00 00 38 */	b lbl_80B7FCF4
lbl_80B7FCC0:
/* 80B7FCC0  7F E3 FB 78 */	mr r3, r31
/* 80B7FCC4  38 A0 00 14 */	li r5, 0x14
/* 80B7FCC8  38 C0 00 1C */	li r6, 0x1c
/* 80B7FCCC  38 E0 00 0F */	li r7, 0xf
/* 80B7FCD0  4B 5D 43 D5 */	bl step__8daNpcF_cFsiii
/* 80B7FCD4  2C 03 00 00 */	cmpwi r3, 0
/* 80B7FCD8  41 82 00 1C */	beq lbl_80B7FCF4
/* 80B7FCDC  38 00 00 00 */	li r0, 0
/* 80B7FCE0  B0 1F 14 E6 */	sth r0, 0x14e6(r31)
/* 80B7FCE4  48 00 00 10 */	b lbl_80B7FCF4
lbl_80B7FCE8:
/* 80B7FCE8  3C 60 80 B9 */	lis r3, lit_3939@ha /* 0x80B8C508@ha */
/* 80B7FCEC  C0 03 C5 08 */	lfs f0, lit_3939@l(r3)  /* 0x80B8C508@l */
/* 80B7FCF0  D0 1F 05 2C */	stfs f0, 0x52c(r31)
lbl_80B7FCF4:
/* 80B7FCF4  38 60 00 01 */	li r3, 1
/* 80B7FCF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B7FCFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B7FD00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B7FD04  7C 08 03 A6 */	mtlr r0
/* 80B7FD08  38 21 00 10 */	addi r1, r1, 0x10
/* 80B7FD0C  4E 80 00 20 */	blr 

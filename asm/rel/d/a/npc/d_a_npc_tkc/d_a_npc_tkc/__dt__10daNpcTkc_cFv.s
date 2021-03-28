lbl_80B0C964:
/* 80B0C964  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B0C968  7C 08 02 A6 */	mflr r0
/* 80B0C96C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B0C970  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B0C974  93 C1 00 08 */	stw r30, 8(r1)
/* 80B0C978  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B0C97C  7C 9F 23 78 */	mr r31, r4
/* 80B0C980  41 82 01 00 */	beq lbl_80B0CA80
/* 80B0C984  3C 60 80 B1 */	lis r3, __vt__10daNpcTkc_c@ha
/* 80B0C988  38 03 0C 18 */	addi r0, r3, __vt__10daNpcTkc_c@l
/* 80B0C98C  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80B0C990  38 7E 0D 2C */	addi r3, r30, 0xd2c
/* 80B0C994  3C 80 80 B1 */	lis r4, l_arcName@ha
/* 80B0C998  38 84 0A B8 */	addi r4, r4, l_arcName@l
/* 80B0C99C  80 84 00 00 */	lwz r4, 0(r4)
/* 80B0C9A0  4B 52 06 68 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80B0C9A4  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80B0C9A8  28 00 00 00 */	cmplwi r0, 0
/* 80B0C9AC  41 82 00 0C */	beq lbl_80B0C9B8
/* 80B0C9B0  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80B0C9B4  4B 50 49 5C */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80B0C9B8:
/* 80B0C9B8  34 1E 0B E8 */	addic. r0, r30, 0xbe8
/* 80B0C9BC  41 82 00 84 */	beq lbl_80B0CA40
/* 80B0C9C0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80B0C9C4  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80B0C9C8  90 7E 0C 24 */	stw r3, 0xc24(r30)
/* 80B0C9CC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80B0C9D0  90 1E 0D 08 */	stw r0, 0xd08(r30)
/* 80B0C9D4  38 03 00 84 */	addi r0, r3, 0x84
/* 80B0C9D8  90 1E 0D 1C */	stw r0, 0xd1c(r30)
/* 80B0C9DC  34 1E 0C EC */	addic. r0, r30, 0xcec
/* 80B0C9E0  41 82 00 54 */	beq lbl_80B0CA34
/* 80B0C9E4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80B0C9E8  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80B0C9EC  90 7E 0D 08 */	stw r3, 0xd08(r30)
/* 80B0C9F0  38 03 00 58 */	addi r0, r3, 0x58
/* 80B0C9F4  90 1E 0D 1C */	stw r0, 0xd1c(r30)
/* 80B0C9F8  34 1E 0D 0C */	addic. r0, r30, 0xd0c
/* 80B0C9FC  41 82 00 10 */	beq lbl_80B0CA0C
/* 80B0CA00  3C 60 80 B1 */	lis r3, __vt__8cM3dGSph@ha
/* 80B0CA04  38 03 0C C0 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80B0CA08  90 1E 0D 1C */	stw r0, 0xd1c(r30)
lbl_80B0CA0C:
/* 80B0CA0C  34 1E 0C EC */	addic. r0, r30, 0xcec
/* 80B0CA10  41 82 00 24 */	beq lbl_80B0CA34
/* 80B0CA14  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80B0CA18  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80B0CA1C  90 1E 0D 08 */	stw r0, 0xd08(r30)
/* 80B0CA20  34 1E 0C EC */	addic. r0, r30, 0xcec
/* 80B0CA24  41 82 00 10 */	beq lbl_80B0CA34
/* 80B0CA28  3C 60 80 B1 */	lis r3, __vt__8cM3dGAab@ha
/* 80B0CA2C  38 03 0C CC */	addi r0, r3, __vt__8cM3dGAab@l
/* 80B0CA30  90 1E 0D 04 */	stw r0, 0xd04(r30)
lbl_80B0CA34:
/* 80B0CA34  38 7E 0B E8 */	addi r3, r30, 0xbe8
/* 80B0CA38  38 80 00 00 */	li r4, 0
/* 80B0CA3C  4B 57 76 A8 */	b __dt__12dCcD_GObjInfFv
lbl_80B0CA40:
/* 80B0CA40  38 7E 0B DC */	addi r3, r30, 0xbdc
/* 80B0CA44  3C 80 80 B1 */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha
/* 80B0CA48  38 84 FF DC */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l
/* 80B0CA4C  38 A0 00 08 */	li r5, 8
/* 80B0CA50  38 C0 00 01 */	li r6, 1
/* 80B0CA54  4B 85 52 94 */	b __destroy_arr
/* 80B0CA58  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 80B0CA5C  38 80 FF FF */	li r4, -1
/* 80B0CA60  4B 7B 39 C0 */	b __dt__10Z2CreatureFv
/* 80B0CA64  7F C3 F3 78 */	mr r3, r30
/* 80B0CA68  38 80 00 00 */	li r4, 0
/* 80B0CA6C  48 00 35 F5 */	bl __dt__8daNpcF_cFv
/* 80B0CA70  7F E0 07 35 */	extsh. r0, r31
/* 80B0CA74  40 81 00 0C */	ble lbl_80B0CA80
/* 80B0CA78  7F C3 F3 78 */	mr r3, r30
/* 80B0CA7C  4B 7C 22 C0 */	b __dl__FPv
lbl_80B0CA80:
/* 80B0CA80  7F C3 F3 78 */	mr r3, r30
/* 80B0CA84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B0CA88  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B0CA8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B0CA90  7C 08 03 A6 */	mtlr r0
/* 80B0CA94  38 21 00 10 */	addi r1, r1, 0x10
/* 80B0CA98  4E 80 00 20 */	blr 

lbl_800E0BE4:
/* 800E0BE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E0BE8  7C 08 02 A6 */	mflr r0
/* 800E0BEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E0BF0  39 61 00 20 */	addi r11, r1, 0x20
/* 800E0BF4  48 28 15 E9 */	bl _savegpr_29
/* 800E0BF8  7C 7F 1B 78 */	mr r31, r3
/* 800E0BFC  A0 03 1F BC */	lhz r0, 0x1fbc(r3)
/* 800E0C00  28 00 00 52 */	cmplwi r0, 0x52
/* 800E0C04  40 82 00 20 */	bne lbl_800E0C24
/* 800E0C08  C0 3F 20 58 */	lfs f1, 0x2058(r31)
/* 800E0C0C  3C 60 80 39 */	lis r3, m__18daAlinkHIO_boom_c0@ha
/* 800E0C10  38 63 E6 C8 */	addi r3, r3, m__18daAlinkHIO_boom_c0@l
/* 800E0C14  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 800E0C18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E0C1C  4C 40 13 82 */	cror 2, 0, 2
/* 800E0C20  41 82 00 10 */	beq lbl_800E0C30
lbl_800E0C24:
/* 800E0C24  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800E0C28  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800E0C2C  41 82 00 0C */	beq lbl_800E0C38
lbl_800E0C30:
/* 800E0C30  38 60 00 00 */	li r3, 0
/* 800E0C34  48 00 01 40 */	b lbl_800E0D74
lbl_800E0C38:
/* 800E0C38  A8 7F 30 8E */	lha r3, 0x308e(r31)
/* 800E0C3C  2C 03 00 00 */	cmpwi r3, 0
/* 800E0C40  41 82 00 0C */	beq lbl_800E0C4C
/* 800E0C44  38 03 FF FF */	addi r0, r3, -1
/* 800E0C48  B0 1F 30 8E */	sth r0, 0x308e(r31)
lbl_800E0C4C:
/* 800E0C4C  7F E3 FB 78 */	mr r3, r31
/* 800E0C50  4B FF F7 F1 */	bl checkBoomerangAnime__9daAlink_cCFv
/* 800E0C54  2C 03 00 00 */	cmpwi r3, 0
/* 800E0C58  40 82 00 4C */	bne lbl_800E0CA4
/* 800E0C5C  7F E3 FB 78 */	mr r3, r31
/* 800E0C60  4B FF F8 FD */	bl setBoomerangReadyAnime__9daAlink_cFv
/* 800E0C64  7F E3 FB 78 */	mr r3, r31
/* 800E0C68  4B FD 65 01 */	bl setFastShotTimer__9daAlink_cFv
/* 800E0C6C  83 DF 27 E0 */	lwz r30, 0x27e0(r31)
/* 800E0C70  3B A0 00 01 */	li r29, 1
/* 800E0C74  7F C3 F3 78 */	mr r3, r30
/* 800E0C78  4B F9 2B 6D */	bl LockonTruth__12dAttention_cFv
/* 800E0C7C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E0C80  40 82 00 14 */	bne lbl_800E0C94
/* 800E0C84  80 1E 03 34 */	lwz r0, 0x334(r30)
/* 800E0C88  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800E0C8C  40 82 00 08 */	bne lbl_800E0C94
/* 800E0C90  3B A0 00 00 */	li r29, 0
lbl_800E0C94:
/* 800E0C94  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 800E0C98  40 82 00 0C */	bne lbl_800E0CA4
/* 800E0C9C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800E0CA0  B0 1F 2F E4 */	sth r0, 0x2fe4(r31)
lbl_800E0CA4:
/* 800E0CA4  83 DF 27 E0 */	lwz r30, 0x27e0(r31)
/* 800E0CA8  3B A0 00 01 */	li r29, 1
/* 800E0CAC  7F C3 F3 78 */	mr r3, r30
/* 800E0CB0  4B F9 2B 35 */	bl LockonTruth__12dAttention_cFv
/* 800E0CB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E0CB8  40 82 00 14 */	bne lbl_800E0CCC
/* 800E0CBC  80 1E 03 34 */	lwz r0, 0x334(r30)
/* 800E0CC0  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800E0CC4  40 82 00 08 */	bne lbl_800E0CCC
/* 800E0CC8  3B A0 00 00 */	li r29, 0
lbl_800E0CCC:
/* 800E0CCC  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 800E0CD0  40 82 00 5C */	bne lbl_800E0D2C
/* 800E0CD4  A8 1F 30 8E */	lha r0, 0x308e(r31)
/* 800E0CD8  2C 00 00 00 */	cmpwi r0, 0
/* 800E0CDC  40 82 00 50 */	bne lbl_800E0D2C
/* 800E0CE0  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800E0CE4  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 800E0CE8  41 82 00 38 */	beq lbl_800E0D20
/* 800E0CEC  7F E3 FB 78 */	mr r3, r31
/* 800E0CF0  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800E0CF4  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 800E0CF8  7D 89 03 A6 */	mtctr r12
/* 800E0CFC  4E 80 04 21 */	bctrl 
/* 800E0D00  28 03 00 00 */	cmplwi r3, 0
/* 800E0D04  41 82 00 10 */	beq lbl_800E0D14
/* 800E0D08  7F E3 FB 78 */	mr r3, r31
/* 800E0D0C  48 01 62 99 */	bl procCanoeBoomerangSubjectInit__9daAlink_cFv
/* 800E0D10  48 00 00 64 */	b lbl_800E0D74
lbl_800E0D14:
/* 800E0D14  7F E3 FB 78 */	mr r3, r31
/* 800E0D18  48 01 17 3D */	bl procHorseBoomerangSubjectInit__9daAlink_cFv
/* 800E0D1C  48 00 00 58 */	b lbl_800E0D74
lbl_800E0D20:
/* 800E0D20  7F E3 FB 78 */	mr r3, r31
/* 800E0D24  48 00 01 ED */	bl procBoomerangSubjectInit__9daAlink_cFv
/* 800E0D28  48 00 00 4C */	b lbl_800E0D74
lbl_800E0D2C:
/* 800E0D2C  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800E0D30  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 800E0D34  41 82 00 38 */	beq lbl_800E0D6C
/* 800E0D38  7F E3 FB 78 */	mr r3, r31
/* 800E0D3C  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800E0D40  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 800E0D44  7D 89 03 A6 */	mtctr r12
/* 800E0D48  4E 80 04 21 */	bctrl 
/* 800E0D4C  28 03 00 00 */	cmplwi r3, 0
/* 800E0D50  41 82 00 10 */	beq lbl_800E0D60
/* 800E0D54  7F E3 FB 78 */	mr r3, r31
/* 800E0D58  48 01 63 99 */	bl procCanoeBoomerangMoveInit__9daAlink_cFv
/* 800E0D5C  48 00 00 18 */	b lbl_800E0D74
lbl_800E0D60:
/* 800E0D60  7F E3 FB 78 */	mr r3, r31
/* 800E0D64  48 01 18 51 */	bl procHorseBoomerangMoveInit__9daAlink_cFv
/* 800E0D68  48 00 00 0C */	b lbl_800E0D74
lbl_800E0D6C:
/* 800E0D6C  7F E3 FB 78 */	mr r3, r31
/* 800E0D70  48 00 02 F1 */	bl procBoomerangMoveInit__9daAlink_cFv
lbl_800E0D74:
/* 800E0D74  39 61 00 20 */	addi r11, r1, 0x20
/* 800E0D78  48 28 14 B1 */	bl _restgpr_29
/* 800E0D7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E0D80  7C 08 03 A6 */	mtlr r0
/* 800E0D84  38 21 00 20 */	addi r1, r1, 0x20
/* 800E0D88  4E 80 00 20 */	blr 

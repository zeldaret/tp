lbl_8013384C:
/* 8013384C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80133850  7C 08 02 A6 */	mflr r0
/* 80133854  90 01 00 14 */	stw r0, 0x14(r1)
/* 80133858  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013385C  7C 7F 1B 78 */	mr r31, r3
/* 80133860  38 80 01 17 */	li r4, 0x117
/* 80133864  4B F8 E7 09 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 80133868  7F E3 FB 78 */	mr r3, r31
/* 8013386C  38 80 00 21 */	li r4, 0x21
/* 80133870  4B FF 4F 9D */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 80133874  2C 03 00 00 */	cmpwi r3, 0
/* 80133878  40 82 00 20 */	bne lbl_80133898
/* 8013387C  7F E3 FB 78 */	mr r3, r31
/* 80133880  38 80 00 21 */	li r4, 0x21
/* 80133884  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80133888  3C A0 80 39 */	lis r5, m__20daAlinkHIO_wlRope_c0@ha /* 0x8038F46C@ha */
/* 8013388C  38 A5 F4 6C */	addi r5, r5, m__20daAlinkHIO_wlRope_c0@l /* 0x8038F46C@l */
/* 80133890  C0 45 00 20 */	lfs f2, 0x20(r5)
/* 80133894  4B FF 5E 45 */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
lbl_80133898:
/* 80133898  7F E3 FB 78 */	mr r3, r31
/* 8013389C  4B FF E1 55 */	bl initWolfRopeShapeAngle__9daAlink_cFv
/* 801338A0  B0 7F 30 0C */	sth r3, 0x300c(r31)
/* 801338A4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 801338A8  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 801338AC  7F E3 FB 78 */	mr r3, r31
/* 801338B0  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 801338B4  C0 5F 05 34 */	lfs f2, 0x534(r31)
/* 801338B8  38 80 00 00 */	li r4, 0
/* 801338BC  4B F8 7E B5 */	bl setSpecialGravity__9daAlink_cFffi
/* 801338C0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 801338C4  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 801338C8  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 801338CC  7F E3 FB 78 */	mr r3, r31
/* 801338D0  4B FF DE 49 */	bl setWolfRopePosY__9daAlink_cFv
/* 801338D4  7C 64 1B 78 */	mr r4, r3
/* 801338D8  7F E3 FB 78 */	mr r3, r31
/* 801338DC  4B FF E2 21 */	bl setWolfRopeOffsetY__9daAlink_cFi
/* 801338E0  38 60 00 00 */	li r3, 0
/* 801338E4  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 801338E8  28 00 02 DA */	cmplwi r0, 0x2da
/* 801338EC  41 82 00 10 */	beq lbl_801338FC
/* 801338F0  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 801338F4  28 00 02 DB */	cmplwi r0, 0x2db
/* 801338F8  40 82 00 08 */	bne lbl_80133900
lbl_801338FC:
/* 801338FC  38 60 00 01 */	li r3, 1
lbl_80133900:
/* 80133900  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80133904  41 82 00 0C */	beq lbl_80133910
/* 80133908  38 00 E8 00 */	li r0, -6144
/* 8013390C  B0 1F 30 A0 */	sth r0, 0x30a0(r31)
lbl_80133910:
/* 80133910  7F E3 FB 78 */	mr r3, r31
/* 80133914  4B F9 B1 E1 */	bl setSubjectMode__9daAlink_cFv
/* 80133918  38 60 00 01 */	li r3, 1
/* 8013391C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80133920  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80133924  7C 08 03 A6 */	mtlr r0
/* 80133928  38 21 00 10 */	addi r1, r1, 0x10
/* 8013392C  4E 80 00 20 */	blr 

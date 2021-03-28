lbl_80978CD8:
/* 80978CD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80978CDC  7C 08 02 A6 */	mflr r0
/* 80978CE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80978CE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80978CE8  93 C1 00 08 */	stw r30, 8(r1)
/* 80978CEC  7C 7F 1B 78 */	mr r31, r3
/* 80978CF0  80 83 0A 98 */	lwz r4, 0xa98(r3)
/* 80978CF4  4B 7D F0 0C */	b NpcCreate__10daNpcCd2_cFi
/* 80978CF8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80978CFC  41 82 00 BC */	beq lbl_80978DB8
/* 80978D00  80 9F 0B 58 */	lwz r4, 0xb58(r31)
/* 80978D04  2C 04 00 00 */	cmpwi r4, 0
/* 80978D08  41 82 00 2C */	beq lbl_80978D34
/* 80978D0C  7F E3 FB 78 */	mr r3, r31
/* 80978D10  4B 7D F2 18 */	b ObjCreate__10daNpcCd2_cFi
/* 80978D14  90 7F 0A C8 */	stw r3, 0xac8(r31)
/* 80978D18  30 03 FF FF */	addic r0, r3, -1
/* 80978D1C  7C 00 19 10 */	subfe r0, r0, r3
/* 80978D20  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80978D24  40 82 00 18 */	bne lbl_80978D3C
/* 80978D28  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 80978D2C  4B 69 85 E4 */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 80978D30  48 00 00 0C */	b lbl_80978D3C
lbl_80978D34:
/* 80978D34  38 00 00 00 */	li r0, 0
/* 80978D38  90 1F 0A C8 */	stw r0, 0xac8(r31)
lbl_80978D3C:
/* 80978D3C  7F E3 FB 78 */	mr r3, r31
/* 80978D40  48 00 28 CD */	bl isChairStyle__11daNpcCdn3_cFv
/* 80978D44  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80978D48  41 82 00 64 */	beq lbl_80978DAC
/* 80978D4C  80 1F 0A 98 */	lwz r0, 0xa98(r31)
/* 80978D50  2C 00 00 10 */	cmpwi r0, 0x10
/* 80978D54  40 80 00 1C */	bge lbl_80978D70
/* 80978D58  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 80978D5C  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 80978D60  1C 00 02 0C */	mulli r0, r0, 0x20c
/* 80978D64  7C 63 02 14 */	add r3, r3, r0
/* 80978D68  C0 23 01 E8 */	lfs f1, 0x1e8(r3)
/* 80978D6C  48 00 00 18 */	b lbl_80978D84
lbl_80978D70:
/* 80978D70  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha
/* 80978D74  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l
/* 80978D78  1C 00 02 3C */	mulli r0, r0, 0x23c
/* 80978D7C  7C 63 02 14 */	add r3, r3, r0
/* 80978D80  C0 23 FF 18 */	lfs f1, -0xe8(r3)
lbl_80978D84:
/* 80978D84  7F E3 FB 78 */	mr r3, r31
/* 80978D88  4B 7D F1 E0 */	b ChairCreate__10daNpcCd2_cFf
/* 80978D8C  90 7F 0A CC */	stw r3, 0xacc(r31)
/* 80978D90  30 03 FF FF */	addic r0, r3, -1
/* 80978D94  7C 00 19 10 */	subfe r0, r0, r3
/* 80978D98  54 1E 06 3F */	clrlwi. r30, r0, 0x18
/* 80978D9C  40 82 00 1C */	bne lbl_80978DB8
/* 80978DA0  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 80978DA4  4B 69 85 6C */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 80978DA8  48 00 00 10 */	b lbl_80978DB8
lbl_80978DAC:
/* 80978DAC  38 00 00 00 */	li r0, 0
/* 80978DB0  90 1F 0A CC */	stw r0, 0xacc(r31)
/* 80978DB4  3B C0 00 01 */	li r30, 1
lbl_80978DB8:
/* 80978DB8  7F C3 F3 78 */	mr r3, r30
/* 80978DBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80978DC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80978DC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80978DC8  7C 08 03 A6 */	mtlr r0
/* 80978DCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80978DD0  4E 80 00 20 */	blr 

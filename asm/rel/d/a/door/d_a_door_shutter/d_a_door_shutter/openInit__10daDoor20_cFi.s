lbl_80461EC4:
/* 80461EC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80461EC8  7C 08 02 A6 */	mflr r0
/* 80461ECC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80461ED0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80461ED4  7C 7F 1B 78 */	mr r31, r3
/* 80461ED8  38 80 00 01 */	li r4, 1
/* 80461EDC  48 00 37 45 */	bl openInitCom__10daDoor20_cFi
/* 80461EE0  88 1F 06 7F */	lbz r0, 0x67f(r31)
/* 80461EE4  3C 60 80 45 */	lis r3, mNextRoomNo__10dMapInfo_c@ha
/* 80461EE8  90 03 06 30 */	stw r0, mNextRoomNo__10dMapInfo_c@l(r3)
/* 80461EEC  A0 1F 06 8E */	lhz r0, 0x68e(r31)
/* 80461EF0  60 00 00 01 */	ori r0, r0, 1
/* 80461EF4  B0 1F 06 8E */	sth r0, 0x68e(r31)
/* 80461EF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80461EFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80461F00  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80461F04  80 9F 05 C4 */	lwz r4, 0x5c4(r31)
/* 80461F08  4B C1 23 48 */	b Release__4cBgSFP9dBgW_Base
/* 80461F0C  7F E3 FB 78 */	mr r3, r31
/* 80461F10  4B BD 82 78 */	b getKind__13door_param2_cFP10fopAc_ac_c
/* 80461F14  28 03 00 0C */	cmplwi r3, 0xc
/* 80461F18  41 81 00 1C */	bgt lbl_80461F34
/* 80461F1C  3C 80 80 46 */	lis r4, lit_4496@ha
/* 80461F20  38 84 6F 04 */	addi r4, r4, lit_4496@l
/* 80461F24  54 60 10 3A */	slwi r0, r3, 2
/* 80461F28  7C 04 00 2E */	lwzx r0, r4, r0
/* 80461F2C  7C 09 03 A6 */	mtctr r0
/* 80461F30  4E 80 04 20 */	bctr 
lbl_80461F34:
/* 80461F34  7F E3 FB 78 */	mr r3, r31
/* 80461F38  4B FF FB 29 */	bl openInit_0__10daDoor20_cFv
/* 80461F3C  48 00 00 0C */	b lbl_80461F48
lbl_80461F40:
/* 80461F40  7F E3 FB 78 */	mr r3, r31
/* 80461F44  4B FF FD E1 */	bl openInit_1__10daDoor20_cFv
lbl_80461F48:
/* 80461F48  38 60 00 01 */	li r3, 1
/* 80461F4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80461F50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80461F54  7C 08 03 A6 */	mtlr r0
/* 80461F58  38 21 00 10 */	addi r1, r1, 0x10
/* 80461F5C  4E 80 00 20 */	blr 

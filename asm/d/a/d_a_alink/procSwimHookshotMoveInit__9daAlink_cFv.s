lbl_80104EB8:
/* 80104EB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80104EBC  7C 08 02 A6 */	mflr r0
/* 80104EC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80104EC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80104EC8  7C 7F 1B 78 */	mr r31, r3
/* 80104ECC  38 80 00 7E */	li r4, 0x7e
/* 80104ED0  4B FB DE D5 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 80104ED4  2C 03 00 00 */	cmpwi r3, 0
/* 80104ED8  40 82 00 0C */	bne lbl_80104EE4
/* 80104EDC  38 60 00 00 */	li r3, 0
/* 80104EE0  48 00 00 D0 */	b lbl_80104FB0
lbl_80104EE4:
/* 80104EE4  7F E3 FB 78 */	mr r3, r31
/* 80104EE8  4B FA EA 1D */	bl checkZeroSpeedF__9daAlink_cCFv
/* 80104EEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80104EF0  41 82 00 10 */	beq lbl_80104F00
/* 80104EF4  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 80104EF8  60 00 00 01 */	ori r0, r0, 1
/* 80104EFC  90 1F 31 A0 */	stw r0, 0x31a0(r31)
lbl_80104F00:
/* 80104F00  7F E3 FB 78 */	mr r3, r31
/* 80104F04  38 80 00 00 */	li r4, 0
/* 80104F08  48 00 41 E5 */	bl initHookshotUpperAnimeSpeed__9daAlink_cFi
/* 80104F0C  38 00 FF FF */	li r0, -1
/* 80104F10  90 1F 31 98 */	stw r0, 0x3198(r31)
/* 80104F14  38 00 00 05 */	li r0, 5
/* 80104F18  98 1F 2F 98 */	stb r0, 0x2f98(r31)
/* 80104F1C  A8 1F 30 18 */	lha r0, 0x3018(r31)
/* 80104F20  2C 00 00 00 */	cmpwi r0, 0
/* 80104F24  40 82 00 0C */	bne lbl_80104F30
/* 80104F28  7F E3 FB 78 */	mr r3, r31
/* 80104F2C  4B FF E7 6D */	bl setSwimMoveAnime__9daAlink_cFv
lbl_80104F30:
/* 80104F30  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 80104F34  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80104F38  41 82 00 14 */	beq lbl_80104F4C
/* 80104F3C  C0 1F 33 B4 */	lfs f0, 0x33b4(r31)
/* 80104F40  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80104F44  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80104F48  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_80104F4C:
/* 80104F4C  38 00 00 00 */	li r0, 0
/* 80104F50  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 80104F54  A8 9F 30 80 */	lha r4, 0x3080(r31)
/* 80104F58  7C 80 07 35 */	extsh. r0, r4
/* 80104F5C  41 82 00 1C */	beq lbl_80104F78
/* 80104F60  7F E3 FB 78 */	mr r3, r31
/* 80104F64  38 A0 00 00 */	li r5, 0
/* 80104F68  38 C0 00 00 */	li r6, 0
/* 80104F6C  4B FA 8C 0D */	bl setOldRootQuaternion__9daAlink_cFsss
/* 80104F70  38 00 00 00 */	li r0, 0
/* 80104F74  B0 1F 30 80 */	sth r0, 0x3080(r31)
lbl_80104F78:
/* 80104F78  3C 60 80 39 */	lis r3, m__18daAlinkHIO_swim_c0@ha
/* 80104F7C  38 63 ED 2C */	addi r3, r3, m__18daAlinkHIO_swim_c0@l
/* 80104F80  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 80104F84  D0 1F 34 80 */	stfs f0, 0x3480(r31)
/* 80104F88  38 00 00 00 */	li r0, 0
/* 80104F8C  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 80104F90  B0 1F 30 D0 */	sth r0, 0x30d0(r31)
/* 80104F94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80104F98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80104F9C  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80104FA0  64 00 00 10 */	oris r0, r0, 0x10
/* 80104FA4  60 00 40 00 */	ori r0, r0, 0x4000
/* 80104FA8  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 80104FAC  38 60 00 01 */	li r3, 1
lbl_80104FB0:
/* 80104FB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80104FB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80104FB8  7C 08 03 A6 */	mtlr r0
/* 80104FBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80104FC0  4E 80 00 20 */	blr 

lbl_800F5EA8:
/* 800F5EA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F5EAC  7C 08 02 A6 */	mflr r0
/* 800F5EB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F5EB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F5EB8  93 C1 00 08 */	stw r30, 8(r1)
/* 800F5EBC  7C 7F 1B 78 */	mr r31, r3
/* 800F5EC0  7C 9E 23 78 */	mr r30, r4
/* 800F5EC4  88 03 05 6A */	lbz r0, 0x56a(r3)
/* 800F5EC8  28 00 00 2D */	cmplwi r0, 0x2d
/* 800F5ECC  40 82 00 50 */	bne lbl_800F5F1C
/* 800F5ED0  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800F5ED4  28 00 01 0B */	cmplwi r0, 0x10b
/* 800F5ED8  40 82 00 44 */	bne lbl_800F5F1C
/* 800F5EDC  4B FC 34 65 */	bl checkEquipAnime__9daAlink_cCFv
/* 800F5EE0  2C 03 00 00 */	cmpwi r3, 0
/* 800F5EE4  41 82 00 38 */	beq lbl_800F5F1C
/* 800F5EE8  A0 7F 2F DE */	lhz r3, 0x2fde(r31)
/* 800F5EEC  48 06 8C A5 */	bl checkBowItem__9daPy_py_cFi
/* 800F5EF0  2C 03 00 00 */	cmpwi r3, 0
/* 800F5EF4  41 82 00 28 */	beq lbl_800F5F1C
/* 800F5EF8  38 00 00 FF */	li r0, 0xff
/* 800F5EFC  B0 1F 2F DC */	sth r0, 0x2fdc(r31)
/* 800F5F00  38 00 00 FE */	li r0, 0xfe
/* 800F5F04  98 1F 2F 93 */	stb r0, 0x2f93(r31)
/* 800F5F08  98 1F 2F 92 */	stb r0, 0x2f92(r31)
/* 800F5F0C  7F E3 FB 78 */	mr r3, r31
/* 800F5F10  38 80 00 00 */	li r4, 0
/* 800F5F14  4B FF F2 D1 */	bl procCanoeWaitInit__9daAlink_cFi
/* 800F5F18  48 00 00 BC */	b lbl_800F5FD4
lbl_800F5F1C:
/* 800F5F1C  7F E3 FB 78 */	mr r3, r31
/* 800F5F20  38 80 00 92 */	li r4, 0x92
/* 800F5F24  4B FC C0 49 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F5F28  7F E3 FB 78 */	mr r3, r31
/* 800F5F2C  38 80 00 DF */	li r4, 0xdf
/* 800F5F30  A8 1F 30 12 */	lha r0, 0x3012(r31)
/* 800F5F34  2C 00 00 00 */	cmpwi r0, 0
/* 800F5F38  40 82 00 14 */	bne lbl_800F5F4C
/* 800F5F3C  3C A0 80 39 */	lis r5, m__19daAlinkHIO_canoe_c0@ha /* 0x8038E610@ha */
/* 800F5F40  38 A5 E6 10 */	addi r5, r5, m__19daAlinkHIO_canoe_c0@l /* 0x8038E610@l */
/* 800F5F44  C0 25 00 04 */	lfs f1, 4(r5)
/* 800F5F48  48 00 00 14 */	b lbl_800F5F5C
lbl_800F5F4C:
/* 800F5F4C  3C A0 80 39 */	lis r5, m__19daAlinkHIO_canoe_c0@ha /* 0x8038E610@ha */
/* 800F5F50  38 A5 E6 10 */	addi r5, r5, m__19daAlinkHIO_canoe_c0@l /* 0x8038E610@l */
/* 800F5F54  C0 05 00 04 */	lfs f0, 4(r5)
/* 800F5F58  FC 20 00 50 */	fneg f1, f0
lbl_800F5F5C:
/* 800F5F5C  3C A0 80 39 */	lis r5, m__19daAlinkHIO_canoe_c0@ha /* 0x8038E610@ha */
/* 800F5F60  38 C5 E6 10 */	addi r6, r5, m__19daAlinkHIO_canoe_c0@l /* 0x8038E610@l */
/* 800F5F64  C0 46 00 08 */	lfs f2, 8(r6)
/* 800F5F68  A8 A6 00 00 */	lha r5, 0(r6)
/* 800F5F6C  C0 66 00 0C */	lfs f3, 0xc(r6)
/* 800F5F70  4B FB 70 9D */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 800F5F74  A8 1F 30 12 */	lha r0, 0x3012(r31)
/* 800F5F78  2C 00 00 01 */	cmpwi r0, 1
/* 800F5F7C  40 82 00 14 */	bne lbl_800F5F90
/* 800F5F80  38 00 00 00 */	li r0, 0
/* 800F5F84  98 1F 2F 92 */	stb r0, 0x2f92(r31)
/* 800F5F88  38 00 00 FE */	li r0, 0xfe
/* 800F5F8C  98 1F 2F 93 */	stb r0, 0x2f93(r31)
lbl_800F5F90:
/* 800F5F90  B3 DF 30 0E */	sth r30, 0x300e(r31)
/* 800F5F94  7F E3 FB 78 */	mr r3, r31
/* 800F5F98  4B FF E6 05 */	bl setSyncCanoePos__9daAlink_cFv
/* 800F5F9C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800F5FA0  80 7F 28 18 */	lwz r3, 0x2818(r31)
/* 800F5FA4  D0 03 14 68 */	stfs f0, 0x1468(r3)
/* 800F5FA8  2C 1E 00 00 */	cmpwi r30, 0
/* 800F5FAC  40 82 00 24 */	bne lbl_800F5FD0
/* 800F5FB0  A0 1F 2F DE */	lhz r0, 0x2fde(r31)
/* 800F5FB4  28 00 01 05 */	cmplwi r0, 0x105
/* 800F5FB8  40 82 00 18 */	bne lbl_800F5FD0
/* 800F5FBC  80 7F 28 18 */	lwz r3, 0x2818(r31)
/* 800F5FC0  80 03 14 64 */	lwz r0, 0x1464(r3)
/* 800F5FC4  90 1F 28 24 */	stw r0, 0x2824(r31)
/* 800F5FC8  38 7F 28 24 */	addi r3, r31, 0x2824
/* 800F5FCC  48 06 8C 7D */	bl setActor__16daPy_actorKeep_cFv
lbl_800F5FD0:
/* 800F5FD0  38 60 00 01 */	li r3, 1
lbl_800F5FD4:
/* 800F5FD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F5FD8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800F5FDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F5FE0  7C 08 03 A6 */	mtlr r0
/* 800F5FE4  38 21 00 10 */	addi r1, r1, 0x10
/* 800F5FE8  4E 80 00 20 */	blr 

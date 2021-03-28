lbl_800F5D04:
/* 800F5D04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F5D08  7C 08 02 A6 */	mflr r0
/* 800F5D0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F5D10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F5D14  93 C1 00 08 */	stw r30, 8(r1)
/* 800F5D18  7C 7E 1B 78 */	mr r30, r3
/* 800F5D1C  7C 9F 23 78 */	mr r31, r4
/* 800F5D20  38 80 00 91 */	li r4, 0x91
/* 800F5D24  4B FC C2 49 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F5D28  7F C3 F3 78 */	mr r3, r30
/* 800F5D2C  38 80 00 DF */	li r4, 0xdf
/* 800F5D30  A8 1E 30 12 */	lha r0, 0x3012(r30)
/* 800F5D34  2C 00 00 00 */	cmpwi r0, 0
/* 800F5D38  40 82 00 14 */	bne lbl_800F5D4C
/* 800F5D3C  3C A0 80 39 */	lis r5, m__19daAlinkHIO_canoe_c0@ha
/* 800F5D40  38 A5 E6 10 */	addi r5, r5, m__19daAlinkHIO_canoe_c0@l
/* 800F5D44  C0 25 00 04 */	lfs f1, 4(r5)
/* 800F5D48  48 00 00 14 */	b lbl_800F5D5C
lbl_800F5D4C:
/* 800F5D4C  3C A0 80 39 */	lis r5, m__19daAlinkHIO_canoe_c0@ha
/* 800F5D50  38 A5 E6 10 */	addi r5, r5, m__19daAlinkHIO_canoe_c0@l
/* 800F5D54  C0 05 00 04 */	lfs f0, 4(r5)
/* 800F5D58  FC 20 00 50 */	fneg f1, f0
lbl_800F5D5C:
/* 800F5D5C  3C A0 80 39 */	lis r5, m__19daAlinkHIO_canoe_c0@ha
/* 800F5D60  38 C5 E6 10 */	addi r6, r5, m__19daAlinkHIO_canoe_c0@l
/* 800F5D64  C0 46 00 08 */	lfs f2, 8(r6)
/* 800F5D68  A8 A6 00 00 */	lha r5, 0(r6)
/* 800F5D6C  C0 66 00 0C */	lfs f3, 0xc(r6)
/* 800F5D70  4B FB 72 9D */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 800F5D74  A8 1E 30 12 */	lha r0, 0x3012(r30)
/* 800F5D78  2C 00 00 01 */	cmpwi r0, 1
/* 800F5D7C  40 82 00 14 */	bne lbl_800F5D90
/* 800F5D80  38 00 00 00 */	li r0, 0
/* 800F5D84  98 1E 2F 92 */	stb r0, 0x2f92(r30)
/* 800F5D88  38 00 00 FE */	li r0, 0xfe
/* 800F5D8C  98 1E 2F 93 */	stb r0, 0x2f93(r30)
lbl_800F5D90:
/* 800F5D90  93 FE 31 98 */	stw r31, 0x3198(r30)
/* 800F5D94  7F C3 F3 78 */	mr r3, r30
/* 800F5D98  4B FF E8 05 */	bl setSyncCanoePos__9daAlink_cFv
/* 800F5D9C  38 60 00 01 */	li r3, 1
/* 800F5DA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F5DA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 800F5DA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F5DAC  7C 08 03 A6 */	mtlr r0
/* 800F5DB0  38 21 00 10 */	addi r1, r1, 0x10
/* 800F5DB4  4E 80 00 20 */	blr 

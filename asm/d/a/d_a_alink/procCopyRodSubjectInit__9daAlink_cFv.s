lbl_800E1E20:
/* 800E1E20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E1E24  7C 08 02 A6 */	mflr r0
/* 800E1E28  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E1E2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E1E30  7C 7F 1B 78 */	mr r31, r3
/* 800E1E34  38 80 00 63 */	li r4, 0x63
/* 800E1E38  4B FE 0F 6D */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800E1E3C  2C 03 00 00 */	cmpwi r3, 0
/* 800E1E40  40 82 00 0C */	bne lbl_800E1E4C
/* 800E1E44  38 60 00 00 */	li r3, 0
/* 800E1E48  48 00 00 54 */	b lbl_800E1E9C
lbl_800E1E4C:
/* 800E1E4C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E1E50  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800E1E54  7F E3 FB 78 */	mr r3, r31
/* 800E1E58  38 80 00 01 */	li r4, 1
/* 800E1E5C  4B FF F5 51 */	bl initCopyRodUpperAnimeSpeed__9daAlink_cFi
/* 800E1E60  7F E3 FB 78 */	mr r3, r31
/* 800E1E64  38 80 00 11 */	li r4, 0x11
/* 800E1E68  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800E1E6C  3C A0 80 39 */	lis r5, m__18daAlinkHIO_boom_c0@ha /* 0x8038E6C8@ha */
/* 800E1E70  38 A5 E6 C8 */	addi r5, r5, m__18daAlinkHIO_boom_c0@l /* 0x8038E6C8@l */
/* 800E1E74  C0 45 00 30 */	lfs f2, 0x30(r5)
/* 800E1E78  4B FC B1 69 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 800E1E7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800E1E80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800E1E84  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800E1E88  60 00 00 80 */	ori r0, r0, 0x80
/* 800E1E8C  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800E1E90  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800E1E94  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800E1E98  38 60 00 01 */	li r3, 1
lbl_800E1E9C:
/* 800E1E9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E1EA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E1EA4  7C 08 03 A6 */	mtlr r0
/* 800E1EA8  38 21 00 10 */	addi r1, r1, 0x10
/* 800E1EAC  4E 80 00 20 */	blr 

lbl_800E7DD8:
/* 800E7DD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E7DDC  7C 08 02 A6 */	mflr r0
/* 800E7DE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E7DE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E7DE8  7C 7F 1B 78 */	mr r31, r3
/* 800E7DEC  38 80 00 AF */	li r4, 0xaf
/* 800E7DF0  4B FD AF B5 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800E7DF4  2C 03 00 00 */	cmpwi r3, 0
/* 800E7DF8  40 82 00 0C */	bne lbl_800E7E04
/* 800E7DFC  38 60 00 00 */	li r3, 0
/* 800E7E00  48 00 00 3C */	b lbl_800E7E3C
lbl_800E7E04:
/* 800E7E04  7F E3 FB 78 */	mr r3, r31
/* 800E7E08  38 80 01 83 */	li r4, 0x183
/* 800E7E0C  4B FC 51 75 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800E7E10  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E7E14  D0 1F 1F 50 */	stfs f0, 0x1f50(r31)
/* 800E7E18  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800E7E1C  7F E3 FB 78 */	mr r3, r31
/* 800E7E20  3C 80 00 01 */	lis r4, 0x0001 /* 0x0001005C@ha */
/* 800E7E24  38 84 00 5C */	addi r4, r4, 0x005C /* 0x0001005C@l */
/* 800E7E28  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800E7E2C  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800E7E30  7D 89 03 A6 */	mtctr r12
/* 800E7E34  4E 80 04 21 */	bctrl 
/* 800E7E38  38 60 00 01 */	li r3, 1
lbl_800E7E3C:
/* 800E7E3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E7E40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E7E44  7C 08 03 A6 */	mtlr r0
/* 800E7E48  38 21 00 10 */	addi r1, r1, 0x10
/* 800E7E4C  4E 80 00 20 */	blr 

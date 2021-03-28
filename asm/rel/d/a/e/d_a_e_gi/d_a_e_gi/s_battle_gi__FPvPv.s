lbl_806CE31C:
/* 806CE31C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806CE320  7C 08 02 A6 */	mflr r0
/* 806CE324  90 01 00 14 */	stw r0, 0x14(r1)
/* 806CE328  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806CE32C  93 C1 00 08 */	stw r30, 8(r1)
/* 806CE330  7C 7E 1B 78 */	mr r30, r3
/* 806CE334  7C 9F 23 78 */	mr r31, r4
/* 806CE338  7C 1E F8 40 */	cmplw r30, r31
/* 806CE33C  41 82 00 6C */	beq lbl_806CE3A8
/* 806CE340  4B 94 A9 A0 */	b fopAc_IsActor__FPv
/* 806CE344  2C 03 00 00 */	cmpwi r3, 0
/* 806CE348  41 82 00 60 */	beq lbl_806CE3A8
/* 806CE34C  28 1E 00 00 */	cmplwi r30, 0
/* 806CE350  41 82 00 0C */	beq lbl_806CE35C
/* 806CE354  80 7E 00 04 */	lwz r3, 4(r30)
/* 806CE358  48 00 00 08 */	b lbl_806CE360
lbl_806CE35C:
/* 806CE35C  38 60 FF FF */	li r3, -1
lbl_806CE360:
/* 806CE360  4B 95 3D D8 */	b fpcM_IsCreating__FUi
/* 806CE364  2C 03 00 00 */	cmpwi r3, 0
/* 806CE368  40 82 00 40 */	bne lbl_806CE3A8
/* 806CE36C  A8 1E 00 08 */	lha r0, 8(r30)
/* 806CE370  2C 00 02 0A */	cmpwi r0, 0x20a
/* 806CE374  40 82 00 34 */	bne lbl_806CE3A8
/* 806CE378  88 1E 06 99 */	lbz r0, 0x699(r30)
/* 806CE37C  28 00 00 00 */	cmplwi r0, 0
/* 806CE380  41 82 00 28 */	beq lbl_806CE3A8
/* 806CE384  7F C3 F3 78 */	mr r3, r30
/* 806CE388  7F E4 FB 78 */	mr r4, r31
/* 806CE38C  4B 94 C4 54 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806CE390  3C 60 80 6D */	lis r3, lit_4378@ha
/* 806CE394  C0 03 0E EC */	lfs f0, lit_4378@l(r3)
/* 806CE398  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CE39C  40 80 00 0C */	bge lbl_806CE3A8
/* 806CE3A0  7F C3 F3 78 */	mr r3, r30
/* 806CE3A4  48 00 00 08 */	b lbl_806CE3AC
lbl_806CE3A8:
/* 806CE3A8  38 60 00 00 */	li r3, 0
lbl_806CE3AC:
/* 806CE3AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806CE3B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 806CE3B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806CE3B8  7C 08 03 A6 */	mtlr r0
/* 806CE3BC  38 21 00 10 */	addi r1, r1, 0x10
/* 806CE3C0  4E 80 00 20 */	blr 

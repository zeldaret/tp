lbl_806C7DB8:
/* 806C7DB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806C7DBC  7C 08 02 A6 */	mflr r0
/* 806C7DC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 806C7DC4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806C7DC8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806C7DCC  7C 7E 1B 78 */	mr r30, r3
/* 806C7DD0  7C 9F 23 78 */	mr r31, r4
/* 806C7DD4  4B 95 0F 0C */	b fopAc_IsActor__FPv
/* 806C7DD8  2C 03 00 00 */	cmpwi r3, 0
/* 806C7DDC  41 82 00 84 */	beq lbl_806C7E60
/* 806C7DE0  28 1E 00 00 */	cmplwi r30, 0
/* 806C7DE4  41 82 00 0C */	beq lbl_806C7DF0
/* 806C7DE8  80 7E 00 04 */	lwz r3, 4(r30)
/* 806C7DEC  48 00 00 08 */	b lbl_806C7DF4
lbl_806C7DF0:
/* 806C7DF0  38 60 FF FF */	li r3, -1
lbl_806C7DF4:
/* 806C7DF4  4B 95 A3 44 */	b fpcM_IsCreating__FUi
/* 806C7DF8  2C 03 00 00 */	cmpwi r3, 0
/* 806C7DFC  40 82 00 64 */	bne lbl_806C7E60
/* 806C7E00  A8 1E 00 08 */	lha r0, 8(r30)
/* 806C7E04  2C 00 03 08 */	cmpwi r0, 0x308
/* 806C7E08  40 82 00 58 */	bne lbl_806C7E60
/* 806C7E0C  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 806C7E10  3C 60 80 6D */	lis r3, lit_3905@ha
/* 806C7E14  C0 03 D0 04 */	lfs f0, lit_3905@l(r3)
/* 806C7E18  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806C7E1C  41 82 00 44 */	beq lbl_806C7E60
/* 806C7E20  7F C3 F3 78 */	mr r3, r30
/* 806C7E24  7F E4 FB 78 */	mr r4, r31
/* 806C7E28  4B 95 29 B8 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806C7E2C  3C 60 80 6D */	lis r3, l_HIO@ha
/* 806C7E30  38 63 D3 68 */	addi r3, r3, l_HIO@l
/* 806C7E34  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806C7E38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C7E3C  40 80 00 24 */	bge lbl_806C7E60
/* 806C7E40  3C 60 80 6D */	lis r3, lit_4025@ha
/* 806C7E44  C0 23 D0 54 */	lfs f1, lit_4025@l(r3)
/* 806C7E48  4B B9 FB 0C */	b cM_rndF__Ff
/* 806C7E4C  FC 00 08 1E */	fctiwz f0, f1
/* 806C7E50  D8 01 00 08 */	stfd f0, 8(r1)
/* 806C7E54  80 81 00 0C */	lwz r4, 0xc(r1)
/* 806C7E58  7F E3 FB 78 */	mr r3, r31
/* 806C7E5C  48 00 2F 71 */	bl setSurpriseTime__8daE_GE_cFs
lbl_806C7E60:
/* 806C7E60  38 60 00 00 */	li r3, 0
/* 806C7E64  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806C7E68  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806C7E6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806C7E70  7C 08 03 A6 */	mtlr r0
/* 806C7E74  38 21 00 20 */	addi r1, r1, 0x20
/* 806C7E78  4E 80 00 20 */	blr 

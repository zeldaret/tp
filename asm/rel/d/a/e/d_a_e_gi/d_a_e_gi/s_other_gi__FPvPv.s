lbl_806CE280:
/* 806CE280  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806CE284  7C 08 02 A6 */	mflr r0
/* 806CE288  90 01 00 14 */	stw r0, 0x14(r1)
/* 806CE28C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806CE290  93 C1 00 08 */	stw r30, 8(r1)
/* 806CE294  7C 7E 1B 78 */	mr r30, r3
/* 806CE298  7C 9F 23 78 */	mr r31, r4
/* 806CE29C  7C 1E F8 40 */	cmplw r30, r31
/* 806CE2A0  41 82 00 60 */	beq lbl_806CE300
/* 806CE2A4  4B 94 AA 3D */	bl fopAc_IsActor__FPv
/* 806CE2A8  2C 03 00 00 */	cmpwi r3, 0
/* 806CE2AC  41 82 00 54 */	beq lbl_806CE300
/* 806CE2B0  28 1E 00 00 */	cmplwi r30, 0
/* 806CE2B4  41 82 00 0C */	beq lbl_806CE2C0
/* 806CE2B8  80 7E 00 04 */	lwz r3, 4(r30)
/* 806CE2BC  48 00 00 08 */	b lbl_806CE2C4
lbl_806CE2C0:
/* 806CE2C0  38 60 FF FF */	li r3, -1
lbl_806CE2C4:
/* 806CE2C4  4B 95 3E 75 */	bl fpcM_IsCreating__FUi
/* 806CE2C8  2C 03 00 00 */	cmpwi r3, 0
/* 806CE2CC  40 82 00 34 */	bne lbl_806CE300
/* 806CE2D0  A8 1E 00 08 */	lha r0, 8(r30)
/* 806CE2D4  2C 00 02 0A */	cmpwi r0, 0x20a
/* 806CE2D8  40 82 00 28 */	bne lbl_806CE300
/* 806CE2DC  7F C3 F3 78 */	mr r3, r30
/* 806CE2E0  7F E4 FB 78 */	mr r4, r31
/* 806CE2E4  4B 94 C4 FD */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806CE2E8  3C 60 80 6D */	lis r3, lit_4356@ha /* 0x806D0EE8@ha */
/* 806CE2EC  C0 03 0E E8 */	lfs f0, lit_4356@l(r3)  /* 0x806D0EE8@l */
/* 806CE2F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CE2F4  40 80 00 0C */	bge lbl_806CE300
/* 806CE2F8  7F C3 F3 78 */	mr r3, r30
/* 806CE2FC  48 00 00 08 */	b lbl_806CE304
lbl_806CE300:
/* 806CE300  38 60 00 00 */	li r3, 0
lbl_806CE304:
/* 806CE304  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806CE308  83 C1 00 08 */	lwz r30, 8(r1)
/* 806CE30C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806CE310  7C 08 03 A6 */	mtlr r0
/* 806CE314  38 21 00 10 */	addi r1, r1, 0x10
/* 806CE318  4E 80 00 20 */	blr 

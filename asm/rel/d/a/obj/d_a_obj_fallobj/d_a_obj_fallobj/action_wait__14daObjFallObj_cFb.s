lbl_80BE4228:
/* 80BE4228  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BE422C  7C 08 02 A6 */	mflr r0
/* 80BE4230  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BE4234  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BE4238  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80BE423C  7C 7E 1B 78 */	mr r30, r3
/* 80BE4240  7C 9F 23 78 */	mr r31, r4
/* 80BE4244  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80BE4248  41 82 00 14 */	beq lbl_80BE425C
/* 80BE424C  38 00 00 0A */	li r0, 0xa
/* 80BE4250  98 1E 05 D9 */	stb r0, 0x5d9(r30)
/* 80BE4254  38 00 00 03 */	li r0, 3
/* 80BE4258  98 1E 05 F0 */	stb r0, 0x5f0(r30)
lbl_80BE425C:
/* 80BE425C  80 7E 04 A4 */	lwz r3, 0x4a4(r30)
/* 80BE4260  3C 03 00 01 */	addis r0, r3, 1
/* 80BE4264  28 00 FF FF */	cmplwi r0, 0xffff
/* 80BE4268  41 82 00 3C */	beq lbl_80BE42A4
/* 80BE426C  90 61 00 08 */	stw r3, 8(r1)
/* 80BE4270  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80BE4274  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80BE4278  38 81 00 08 */	addi r4, r1, 8
/* 80BE427C  4B 43 55 7C */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80BE4280  28 03 00 00 */	cmplwi r3, 0
/* 80BE4284  41 82 00 20 */	beq lbl_80BE42A4
/* 80BE4288  3C 80 80 BE */	lis r4, lit_3677@ha
/* 80BE428C  C0 24 4A B0 */	lfs f1, lit_3677@l(r4)
/* 80BE4290  C0 03 04 FC */	lfs f0, 0x4fc(r3)
/* 80BE4294  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80BE4298  41 82 00 0C */	beq lbl_80BE42A4
/* 80BE429C  38 00 00 05 */	li r0, 5
/* 80BE42A0  98 1E 05 F0 */	stb r0, 0x5f0(r30)
lbl_80BE42A4:
/* 80BE42A4  7F E3 FB 78 */	mr r3, r31
/* 80BE42A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BE42AC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80BE42B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BE42B4  7C 08 03 A6 */	mtlr r0
/* 80BE42B8  38 21 00 20 */	addi r1, r1, 0x20
/* 80BE42BC  4E 80 00 20 */	blr 

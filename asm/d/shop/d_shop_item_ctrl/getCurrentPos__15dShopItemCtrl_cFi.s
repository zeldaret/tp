lbl_801969A0:
/* 801969A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801969A4  7C 08 02 A6 */	mflr r0
/* 801969A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801969AC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801969B0  7C 7F 1B 78 */	mr r31, r3
/* 801969B4  C0 02 A0 D0 */	lfs f0, lit_3659(r2)
/* 801969B8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801969BC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801969C0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801969C4  54 A0 10 3A */	slwi r0, r5, 2
/* 801969C8  7C 64 02 14 */	add r3, r4, r0
/* 801969CC  80 63 00 04 */	lwz r3, 4(r3)
/* 801969D0  3C 03 00 01 */	addis r0, r3, 1
/* 801969D4  28 00 FF FF */	cmplwi r0, 0xffff
/* 801969D8  41 82 00 38 */	beq lbl_80196A10
/* 801969DC  90 61 00 08 */	stw r3, 8(r1)
/* 801969E0  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 801969E4  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 801969E8  38 81 00 08 */	addi r4, r1, 8
/* 801969EC  4B E8 2E 0D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 801969F0  28 03 00 00 */	cmplwi r3, 0
/* 801969F4  41 82 00 1C */	beq lbl_80196A10
/* 801969F8  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 801969FC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80196A00  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80196A04  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80196A08  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80196A0C  D0 01 00 14 */	stfs f0, 0x14(r1)
lbl_80196A10:
/* 80196A10  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80196A14  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80196A18  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80196A1C  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80196A20  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80196A24  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80196A28  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80196A2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80196A30  7C 08 03 A6 */	mtlr r0
/* 80196A34  38 21 00 20 */	addi r1, r1, 0x20
/* 80196A38  4E 80 00 20 */	blr 

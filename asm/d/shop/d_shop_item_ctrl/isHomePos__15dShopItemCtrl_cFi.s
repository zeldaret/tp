lbl_80196A3C:
/* 80196A3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80196A40  7C 08 02 A6 */	mflr r0
/* 80196A44  90 01 00 24 */	stw r0, 0x24(r1)
/* 80196A48  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80196A4C  2C 04 00 00 */	cmpwi r4, 0
/* 80196A50  41 80 00 88 */	blt lbl_80196AD8
/* 80196A54  2C 04 00 07 */	cmpwi r4, 7
/* 80196A58  40 80 00 80 */	bge lbl_80196AD8
/* 80196A5C  54 80 10 3A */	slwi r0, r4, 2
/* 80196A60  7C 63 02 14 */	add r3, r3, r0
/* 80196A64  80 63 00 04 */	lwz r3, 4(r3)
/* 80196A68  3C 03 00 01 */	addis r0, r3, 1
/* 80196A6C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80196A70  41 82 00 68 */	beq lbl_80196AD8
/* 80196A74  90 61 00 08 */	stw r3, 8(r1)
/* 80196A78  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80196A7C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80196A80  38 81 00 08 */	addi r4, r1, 8
/* 80196A84  4B E8 2D 75 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80196A88  7C 7F 1B 79 */	or. r31, r3, r3
/* 80196A8C  41 82 00 4C */	beq lbl_80196AD8
/* 80196A90  4B EA 11 8D */	bl getPosP__12daShopItem_cFv
/* 80196A94  C0 7F 04 A8 */	lfs f3, 0x4a8(r31)
/* 80196A98  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 80196A9C  C0 5F 04 AC */	lfs f2, 0x4ac(r31)
/* 80196AA0  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80196AA4  C0 3F 04 B0 */	lfs f1, 0x4b0(r31)
/* 80196AA8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80196AAC  C0 03 00 00 */	lfs f0, 0(r3)
/* 80196AB0  FC 00 18 00 */	fcmpu cr0, f0, f3
/* 80196AB4  40 82 00 24 */	bne lbl_80196AD8
/* 80196AB8  C0 03 00 04 */	lfs f0, 4(r3)
/* 80196ABC  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 80196AC0  40 82 00 18 */	bne lbl_80196AD8
/* 80196AC4  C0 03 00 08 */	lfs f0, 8(r3)
/* 80196AC8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80196ACC  40 82 00 0C */	bne lbl_80196AD8
/* 80196AD0  38 60 00 01 */	li r3, 1
/* 80196AD4  48 00 00 08 */	b lbl_80196ADC
lbl_80196AD8:
/* 80196AD8  38 60 00 00 */	li r3, 0
lbl_80196ADC:
/* 80196ADC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80196AE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80196AE4  7C 08 03 A6 */	mtlr r0
/* 80196AE8  38 21 00 20 */	addi r1, r1, 0x20
/* 80196AEC  4E 80 00 20 */	blr 

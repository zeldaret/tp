lbl_80CDAF40:
/* 80CDAF40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CDAF44  7C 08 02 A6 */	mflr r0
/* 80CDAF48  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CDAF4C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CDAF50  7C 7F 1B 78 */	mr r31, r3
/* 80CDAF54  38 00 00 FE */	li r0, 0xfe
/* 80CDAF58  B0 01 00 08 */	sth r0, 8(r1)
/* 80CDAF5C  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 80CDAF60  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 80CDAF64  38 81 00 08 */	addi r4, r1, 8
/* 80CDAF68  4B 33 E8 90 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80CDAF6C  28 03 00 00 */	cmplwi r3, 0
/* 80CDAF70  41 82 00 1C */	beq lbl_80CDAF8C
/* 80CDAF74  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80CDAF78  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80CDAF7C  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80CDAF80  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80CDAF84  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80CDAF88  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
lbl_80CDAF8C:
/* 80CDAF8C  7F E3 FB 78 */	mr r3, r31
/* 80CDAF90  3C 80 00 08 */	lis r4, 0x0008 /* 0x000800C5@ha */
/* 80CDAF94  38 84 00 C5 */	addi r4, r4, 0x00C5 /* 0x000800C5@l */
/* 80CDAF98  48 00 03 49 */	bl seStartTwinkle_private__7daKey_cFUl
/* 80CDAF9C  38 60 00 01 */	li r3, 1
/* 80CDAFA0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CDAFA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CDAFA8  7C 08 03 A6 */	mtlr r0
/* 80CDAFAC  38 21 00 20 */	addi r1, r1, 0x20
/* 80CDAFB0  4E 80 00 20 */	blr 

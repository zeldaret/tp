lbl_8096E27C:
/* 8096E27C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8096E280  7C 08 02 A6 */	mflr r0
/* 8096E284  90 01 00 34 */	stw r0, 0x34(r1)
/* 8096E288  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8096E28C  7C 7F 1B 78 */	mr r31, r3
/* 8096E290  3C 80 80 97 */	lis r4, lit_4781@ha
/* 8096E294  38 A4 32 20 */	addi r5, r4, lit_4781@l
/* 8096E298  80 85 00 00 */	lwz r4, 0(r5)
/* 8096E29C  80 05 00 04 */	lwz r0, 4(r5)
/* 8096E2A0  90 81 00 14 */	stw r4, 0x14(r1)
/* 8096E2A4  90 01 00 18 */	stw r0, 0x18(r1)
/* 8096E2A8  80 05 00 08 */	lwz r0, 8(r5)
/* 8096E2AC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8096E2B0  38 81 00 14 */	addi r4, r1, 0x14
/* 8096E2B4  48 00 0A 89 */	bl chkAction__11daNpc_Bou_cFM11daNpc_Bou_cFPCvPvPv_i
/* 8096E2B8  2C 03 00 00 */	cmpwi r3, 0
/* 8096E2BC  41 82 00 1C */	beq lbl_8096E2D8
/* 8096E2C0  7F E3 FB 78 */	mr r3, r31
/* 8096E2C4  38 80 00 00 */	li r4, 0
/* 8096E2C8  39 9F 0F D0 */	addi r12, r31, 0xfd0
/* 8096E2CC  4B 9F 3D B8 */	b __ptmf_scall
/* 8096E2D0  60 00 00 00 */	nop 
/* 8096E2D4  48 00 00 30 */	b lbl_8096E304
lbl_8096E2D8:
/* 8096E2D8  3C 60 80 97 */	lis r3, lit_4786@ha
/* 8096E2DC  38 83 32 2C */	addi r4, r3, lit_4786@l
/* 8096E2E0  80 64 00 00 */	lwz r3, 0(r4)
/* 8096E2E4  80 04 00 04 */	lwz r0, 4(r4)
/* 8096E2E8  90 61 00 08 */	stw r3, 8(r1)
/* 8096E2EC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8096E2F0  80 04 00 08 */	lwz r0, 8(r4)
/* 8096E2F4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8096E2F8  7F E3 FB 78 */	mr r3, r31
/* 8096E2FC  38 81 00 08 */	addi r4, r1, 8
/* 8096E300  48 00 0A 69 */	bl setAction__11daNpc_Bou_cFM11daNpc_Bou_cFPCvPvPv_i
lbl_8096E304:
/* 8096E304  38 60 00 01 */	li r3, 1
/* 8096E308  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8096E30C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8096E310  7C 08 03 A6 */	mtlr r0
/* 8096E314  38 21 00 30 */	addi r1, r1, 0x30
/* 8096E318  4E 80 00 20 */	blr 

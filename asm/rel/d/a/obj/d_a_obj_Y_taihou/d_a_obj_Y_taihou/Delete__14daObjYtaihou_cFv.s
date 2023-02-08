lbl_80BA0C1C:
/* 80BA0C1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BA0C20  7C 08 02 A6 */	mflr r0
/* 80BA0C24  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BA0C28  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BA0C2C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BA0C30  41 82 00 08 */	beq lbl_80BA0C38
/* 80BA0C34  38 63 05 A0 */	addi r3, r3, 0x5a0
lbl_80BA0C38:
/* 80BA0C38  3C 80 80 BA */	lis r4, l_arcName@ha /* 0x80BA11E0@ha */
/* 80BA0C3C  38 84 11 E0 */	addi r4, r4, l_arcName@l /* 0x80BA11E0@l */
/* 80BA0C40  80 84 00 00 */	lwz r4, 0(r4)
/* 80BA0C44  4B 48 C3 C5 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BA0C48  80 1F 07 64 */	lwz r0, 0x764(r31)
/* 80BA0C4C  90 01 00 08 */	stw r0, 8(r1)
/* 80BA0C50  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80BA0C54  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80BA0C58  38 81 00 08 */	addi r4, r1, 8
/* 80BA0C5C  4B 47 8B 9D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80BA0C60  7C 64 1B 79 */	or. r4, r3, r3
/* 80BA0C64  41 82 00 0C */	beq lbl_80BA0C70
/* 80BA0C68  7F E3 FB 78 */	mr r3, r31
/* 80BA0C6C  4B FF F2 45 */	bl setIronBall__14daObjYtaihou_cFP12daObjCarry_c
lbl_80BA0C70:
/* 80BA0C70  38 60 00 01 */	li r3, 1
/* 80BA0C74  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BA0C78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BA0C7C  7C 08 03 A6 */	mtlr r0
/* 80BA0C80  38 21 00 20 */	addi r1, r1, 0x20
/* 80BA0C84  4E 80 00 20 */	blr 

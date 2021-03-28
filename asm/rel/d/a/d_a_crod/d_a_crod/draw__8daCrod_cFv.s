lbl_804A3FD4:
/* 804A3FD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A3FD8  7C 08 02 A6 */	mflr r0
/* 804A3FDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A3FE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A3FE4  7C 7F 1B 78 */	mr r31, r3
/* 804A3FE8  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 804A3FEC  28 00 00 06 */	cmplwi r0, 6
/* 804A3FF0  41 82 00 34 */	beq lbl_804A4024
/* 804A3FF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804A3FF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804A3FFC  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804A4000  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804A4004  81 8C 02 A0 */	lwz r12, 0x2a0(r12)
/* 804A4008  7D 89 03 A6 */	mtctr r12
/* 804A400C  4E 80 04 21 */	bctrl 
/* 804A4010  2C 03 00 00 */	cmpwi r3, 0
/* 804A4014  40 82 00 18 */	bne lbl_804A402C
/* 804A4018  88 1F 07 32 */	lbz r0, 0x732(r31)
/* 804A401C  28 00 00 00 */	cmplwi r0, 0
/* 804A4020  40 82 00 0C */	bne lbl_804A402C
lbl_804A4024:
/* 804A4024  38 60 00 01 */	li r3, 1
/* 804A4028  48 00 00 40 */	b lbl_804A4068
lbl_804A402C:
/* 804A402C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 804A4030  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 804A4034  38 80 00 00 */	li r4, 0
/* 804A4038  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 804A403C  38 DF 01 0C */	addi r6, r31, 0x10c
/* 804A4040  4B CF F7 84 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 804A4044  3C 60 80 43 */	lis r3, g_env_light@ha
/* 804A4048  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 804A404C  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 804A4050  80 84 00 04 */	lwz r4, 4(r4)
/* 804A4054  38 BF 01 0C */	addi r5, r31, 0x10c
/* 804A4058  4B D0 0D 48 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804A405C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 804A4060  4B B6 9C 64 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 804A4064  38 60 00 01 */	li r3, 1
lbl_804A4068:
/* 804A4068  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A406C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A4070  7C 08 03 A6 */	mtlr r0
/* 804A4074  38 21 00 10 */	addi r1, r1, 0x10
/* 804A4078  4E 80 00 20 */	blr 

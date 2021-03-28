lbl_806F8F04:
/* 806F8F04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806F8F08  7C 08 02 A6 */	mflr r0
/* 806F8F0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 806F8F10  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806F8F14  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806F8F18  7C 7F 1B 78 */	mr r31, r3
/* 806F8F1C  3C 60 80 70 */	lis r3, lit_3788@ha
/* 806F8F20  3B C3 A3 A4 */	addi r30, r3, lit_3788@l
/* 806F8F24  A8 1F 06 74 */	lha r0, 0x674(r31)
/* 806F8F28  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 806F8F2C  40 82 00 40 */	bne lbl_806F8F6C
/* 806F8F30  C0 3E 00 08 */	lfs f1, 8(r30)
/* 806F8F34  4B B6 EA 20 */	b cM_rndF__Ff
/* 806F8F38  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 806F8F3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806F8F40  40 80 00 2C */	bge lbl_806F8F6C
/* 806F8F44  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700C3@ha */
/* 806F8F48  38 03 00 C3 */	addi r0, r3, 0x00C3 /* 0x000700C3@l */
/* 806F8F4C  90 01 00 0C */	stw r0, 0xc(r1)
/* 806F8F50  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 806F8F54  38 81 00 0C */	addi r4, r1, 0xc
/* 806F8F58  38 A0 FF FF */	li r5, -1
/* 806F8F5C  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 806F8F60  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806F8F64  7D 89 03 A6 */	mtctr r12
/* 806F8F68  4E 80 04 21 */	bctrl 
lbl_806F8F6C:
/* 806F8F6C  A8 1F 06 78 */	lha r0, 0x678(r31)
/* 806F8F70  2C 00 00 02 */	cmpwi r0, 2
/* 806F8F74  41 82 00 98 */	beq lbl_806F900C
/* 806F8F78  40 80 00 14 */	bge lbl_806F8F8C
/* 806F8F7C  2C 00 00 00 */	cmpwi r0, 0
/* 806F8F80  41 82 00 18 */	beq lbl_806F8F98
/* 806F8F84  40 80 00 48 */	bge lbl_806F8FCC
/* 806F8F88  48 00 01 58 */	b lbl_806F90E0
lbl_806F8F8C:
/* 806F8F8C  2C 00 00 04 */	cmpwi r0, 4
/* 806F8F90  40 80 01 50 */	bge lbl_806F90E0
/* 806F8F94  48 00 01 04 */	b lbl_806F9098
lbl_806F8F98:
/* 806F8F98  7F E3 FB 78 */	mr r3, r31
/* 806F8F9C  38 80 00 0E */	li r4, 0xe
/* 806F8FA0  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 806F8FA4  38 A0 00 02 */	li r5, 2
/* 806F8FA8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806F8FAC  4B FF EF 79 */	bl anm_init__FP10e_kg_classifUcf
/* 806F8FB0  38 00 00 01 */	li r0, 1
/* 806F8FB4  B0 1F 06 78 */	sth r0, 0x678(r31)
/* 806F8FB8  38 00 80 00 */	li r0, -32768
/* 806F8FBC  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 806F8FC0  3C 60 00 05 */	lis r3, 0x0005 /* 0x000564FF@ha */
/* 806F8FC4  38 03 64 FF */	addi r0, r3, 0x64FF /* 0x000564FF@l */
/* 806F8FC8  90 1F 06 A0 */	stw r0, 0x6a0(r31)
lbl_806F8FCC:
/* 806F8FCC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806F8FD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806F8FD4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806F8FD8  80 03 05 80 */	lwz r0, 0x580(r3)
/* 806F8FDC  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 806F8FE0  41 82 00 0C */	beq lbl_806F8FEC
/* 806F8FE4  38 00 00 02 */	li r0, 2
/* 806F8FE8  B0 1F 06 78 */	sth r0, 0x678(r31)
lbl_806F8FEC:
/* 806F8FEC  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 806F8FF0  4B B6 E9 9C */	b cM_rndFX__Ff
/* 806F8FF4  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 806F8FF8  EC 00 08 2A */	fadds f0, f0, f1
/* 806F8FFC  FC 00 00 1E */	fctiwz f0, f0
/* 806F9000  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 806F9004  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F9008  B0 1F 06 94 */	sth r0, 0x694(r31)
lbl_806F900C:
/* 806F900C  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 806F9010  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 806F9014  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 806F9018  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 806F901C  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 806F9020  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 806F9024  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806F9028  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 806F902C  38 7F 04 DE */	addi r3, r31, 0x4de
/* 806F9030  A8 9F 06 8C */	lha r4, 0x68c(r31)
/* 806F9034  3C 84 00 01 */	addis r4, r4, 1
/* 806F9038  38 04 80 00 */	addi r0, r4, -32768
/* 806F903C  7C 04 07 34 */	extsh r4, r0
/* 806F9040  38 A0 00 08 */	li r5, 8
/* 806F9044  38 C0 04 00 */	li r6, 0x400
/* 806F9048  4B B7 75 C0 */	b cLib_addCalcAngleS2__FPssss
/* 806F904C  A8 1F 06 94 */	lha r0, 0x694(r31)
/* 806F9050  2C 00 00 00 */	cmpwi r0, 0
/* 806F9054  40 82 00 8C */	bne lbl_806F90E0
/* 806F9058  38 00 00 03 */	li r0, 3
/* 806F905C  B0 1F 06 78 */	sth r0, 0x678(r31)
/* 806F9060  38 00 00 00 */	li r0, 0
/* 806F9064  90 1F 06 A0 */	stw r0, 0x6a0(r31)
/* 806F9068  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700C2@ha */
/* 806F906C  38 03 00 C2 */	addi r0, r3, 0x00C2 /* 0x000700C2@l */
/* 806F9070  90 01 00 08 */	stw r0, 8(r1)
/* 806F9074  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 806F9078  38 81 00 08 */	addi r4, r1, 8
/* 806F907C  38 A0 00 00 */	li r5, 0
/* 806F9080  38 C0 FF FF */	li r6, -1
/* 806F9084  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 806F9088  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806F908C  7D 89 03 A6 */	mtctr r12
/* 806F9090  4E 80 04 21 */	bctrl 
/* 806F9094  48 00 00 4C */	b lbl_806F90E0
lbl_806F9098:
/* 806F9098  38 7F 04 DE */	addi r3, r31, 0x4de
/* 806F909C  A8 9F 06 8C */	lha r4, 0x68c(r31)
/* 806F90A0  38 A0 00 01 */	li r5, 1
/* 806F90A4  38 C0 08 00 */	li r6, 0x800
/* 806F90A8  4B B7 75 60 */	b cLib_addCalcAngleS2__FPssss
/* 806F90AC  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 806F90B0  38 80 00 00 */	li r4, 0
/* 806F90B4  38 A0 00 01 */	li r5, 1
/* 806F90B8  38 C0 08 00 */	li r6, 0x800
/* 806F90BC  4B B7 75 4C */	b cLib_addCalcAngleS2__FPssss
/* 806F90C0  80 1F 07 10 */	lwz r0, 0x710(r31)
/* 806F90C4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806F90C8  41 82 00 18 */	beq lbl_806F90E0
/* 806F90CC  38 60 00 00 */	li r3, 0
/* 806F90D0  B0 7F 04 E4 */	sth r3, 0x4e4(r31)
/* 806F90D4  38 00 00 01 */	li r0, 1
/* 806F90D8  B0 1F 06 76 */	sth r0, 0x676(r31)
/* 806F90DC  B0 7F 06 78 */	sth r3, 0x678(r31)
lbl_806F90E0:
/* 806F90E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806F90E4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806F90E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806F90EC  7C 08 03 A6 */	mtlr r0
/* 806F90F0  38 21 00 20 */	addi r1, r1, 0x20
/* 806F90F4  4E 80 00 20 */	blr 

lbl_800B5F6C:
/* 800B5F6C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800B5F70  7C 08 02 A6 */	mflr r0
/* 800B5F74  90 01 00 34 */	stw r0, 0x34(r1)
/* 800B5F78  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800B5F7C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 800B5F80  7C 7E 1B 78 */	mr r30, r3
/* 800B5F84  3C 80 80 3A */	lis r4, __vt__8cM3dGPla@ha
/* 800B5F88  38 04 37 C0 */	addi r0, r4, __vt__8cM3dGPla@l
/* 800B5F8C  90 01 00 18 */	stw r0, 0x18(r1)
/* 800B5F90  38 81 00 08 */	addi r4, r1, 8
/* 800B5F94  4B FF C0 45 */	bl getSlidePolygon__9daAlink_cFP8cM3dGPla
/* 800B5F98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B5F9C  41 82 00 B0 */	beq lbl_800B604C
/* 800B5FA0  38 61 00 08 */	addi r3, r1, 8
/* 800B5FA4  48 1B 11 85 */	bl atan2sX_Z__4cXyzCFv
/* 800B5FA8  7C 7F 1B 78 */	mr r31, r3
/* 800B5FAC  88 1E 2F 8C */	lbz r0, 0x2f8c(r30)
/* 800B5FB0  28 00 00 00 */	cmplwi r0, 0
/* 800B5FB4  41 82 00 50 */	beq lbl_800B6004
/* 800B5FB8  38 7E 33 98 */	addi r3, r30, 0x3398
/* 800B5FBC  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800B5FC0  C0 5E 34 24 */	lfs f2, 0x3424(r30)
/* 800B5FC4  48 1B A7 7D */	bl cLib_chaseF__FPfff
/* 800B5FC8  A8 7E 30 90 */	lha r3, 0x3090(r30)
/* 800B5FCC  38 03 FF FF */	addi r0, r3, -1
/* 800B5FD0  B0 1E 30 90 */	sth r0, 0x3090(r30)
/* 800B5FD4  C0 3E 33 98 */	lfs f1, 0x3398(r30)
/* 800B5FD8  C0 02 93 3C */	lfs f0, lit_7808(r2)
/* 800B5FDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B5FE0  41 81 00 10 */	bgt lbl_800B5FF0
/* 800B5FE4  A8 1E 30 90 */	lha r0, 0x3090(r30)
/* 800B5FE8  2C 00 00 00 */	cmpwi r0, 0
/* 800B5FEC  40 81 00 18 */	ble lbl_800B6004
lbl_800B5FF0:
/* 800B5FF0  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 800B5FF4  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 800B5FF8  90 01 00 18 */	stw r0, 0x18(r1)
/* 800B5FFC  38 60 00 00 */	li r3, 0
/* 800B6000  48 00 00 64 */	b lbl_800B6064
lbl_800B6004:
/* 800B6004  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800B6008  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B600C  41 82 00 24 */	beq lbl_800B6030
/* 800B6010  7F C3 F3 78 */	mr r3, r30
/* 800B6014  7F E4 FB 78 */	mr r4, r31
/* 800B6018  38 A0 00 00 */	li r5, 0
/* 800B601C  48 07 9E 65 */	bl procWolfSlideInit__9daAlink_cFsi
/* 800B6020  3C 80 80 3A */	lis r4, __vt__8cM3dGPla@ha
/* 800B6024  38 04 37 C0 */	addi r0, r4, __vt__8cM3dGPla@l
/* 800B6028  90 01 00 18 */	stw r0, 0x18(r1)
/* 800B602C  48 00 00 38 */	b lbl_800B6064
lbl_800B6030:
/* 800B6030  7F C3 F3 78 */	mr r3, r30
/* 800B6034  7F E4 FB 78 */	mr r4, r31
/* 800B6038  48 00 E3 41 */	bl procSlideInit__9daAlink_cFs
/* 800B603C  3C 80 80 3A */	lis r4, __vt__8cM3dGPla@ha
/* 800B6040  38 04 37 C0 */	addi r0, r4, __vt__8cM3dGPla@l
/* 800B6044  90 01 00 18 */	stw r0, 0x18(r1)
/* 800B6048  48 00 00 1C */	b lbl_800B6064
lbl_800B604C:
/* 800B604C  38 00 00 08 */	li r0, 8
/* 800B6050  B0 1E 30 90 */	sth r0, 0x3090(r30)
/* 800B6054  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 800B6058  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 800B605C  90 01 00 18 */	stw r0, 0x18(r1)
/* 800B6060  38 60 00 00 */	li r3, 0
lbl_800B6064:
/* 800B6064  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800B6068  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800B606C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800B6070  7C 08 03 A6 */	mtlr r0
/* 800B6074  38 21 00 30 */	addi r1, r1, 0x30
/* 800B6078  4E 80 00 20 */	blr 

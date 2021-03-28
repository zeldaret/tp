lbl_806F2F9C:
/* 806F2F9C  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 806F2FA0  7C 08 02 A6 */	mflr r0
/* 806F2FA4  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 806F2FA8  93 E1 00 BC */	stw r31, 0xbc(r1)
/* 806F2FAC  7C 7F 1B 78 */	mr r31, r3
/* 806F2FB0  38 61 00 44 */	addi r3, r1, 0x44
/* 806F2FB4  4B 98 4C B4 */	b __ct__11dBgS_LinChkFv
/* 806F2FB8  C0 1F 06 F8 */	lfs f0, 0x6f8(r31)
/* 806F2FBC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806F2FC0  C0 1F 06 FC */	lfs f0, 0x6fc(r31)
/* 806F2FC4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806F2FC8  C0 1F 07 00 */	lfs f0, 0x700(r31)
/* 806F2FCC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806F2FD0  38 61 00 20 */	addi r3, r1, 0x20
/* 806F2FD4  38 9F 06 F8 */	addi r4, r31, 0x6f8
/* 806F2FD8  38 BF 06 EC */	addi r5, r31, 0x6ec
/* 806F2FDC  4B B7 3B 58 */	b __mi__4cXyzCFRC3Vec
/* 806F2FE0  38 61 00 14 */	addi r3, r1, 0x14
/* 806F2FE4  38 81 00 20 */	addi r4, r1, 0x20
/* 806F2FE8  3C A0 80 6F */	lis r5, lit_4073@ha
/* 806F2FEC  C0 25 55 70 */	lfs f1, lit_4073@l(r5)
/* 806F2FF0  4B B7 3B 94 */	b __ml__4cXyzCFf
/* 806F2FF4  38 61 00 08 */	addi r3, r1, 8
/* 806F2FF8  38 9F 06 F8 */	addi r4, r31, 0x6f8
/* 806F2FFC  38 A1 00 14 */	addi r5, r1, 0x14
/* 806F3000  4B B7 3A E4 */	b __pl__4cXyzCFRC3Vec
/* 806F3004  C0 01 00 08 */	lfs f0, 8(r1)
/* 806F3008  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806F300C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 806F3010  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806F3014  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 806F3018  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806F301C  38 61 00 44 */	addi r3, r1, 0x44
/* 806F3020  38 81 00 38 */	addi r4, r1, 0x38
/* 806F3024  38 A1 00 2C */	addi r5, r1, 0x2c
/* 806F3028  7F E6 FB 78 */	mr r6, r31
/* 806F302C  4B 98 4D 38 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806F3030  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806F3034  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806F3038  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806F303C  38 81 00 44 */	addi r4, r1, 0x44
/* 806F3040  4B 98 13 74 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 806F3044  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806F3048  41 82 00 18 */	beq lbl_806F3060
/* 806F304C  38 61 00 44 */	addi r3, r1, 0x44
/* 806F3050  38 80 FF FF */	li r4, -1
/* 806F3054  4B 98 4C 88 */	b __dt__11dBgS_LinChkFv
/* 806F3058  38 60 00 01 */	li r3, 1
/* 806F305C  48 00 00 14 */	b lbl_806F3070
lbl_806F3060:
/* 806F3060  38 61 00 44 */	addi r3, r1, 0x44
/* 806F3064  38 80 FF FF */	li r4, -1
/* 806F3068  4B 98 4C 74 */	b __dt__11dBgS_LinChkFv
/* 806F306C  38 60 00 00 */	li r3, 0
lbl_806F3070:
/* 806F3070  83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 806F3074  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 806F3078  7C 08 03 A6 */	mtlr r0
/* 806F307C  38 21 00 C0 */	addi r1, r1, 0xc0
/* 806F3080  4E 80 00 20 */	blr 

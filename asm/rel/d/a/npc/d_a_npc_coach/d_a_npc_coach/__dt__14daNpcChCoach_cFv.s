lbl_809A3674:
/* 809A3674  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A3678  7C 08 02 A6 */	mflr r0
/* 809A367C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A3680  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809A3684  93 C1 00 08 */	stw r30, 8(r1)
/* 809A3688  7C 7E 1B 79 */	or. r30, r3, r3
/* 809A368C  7C 9F 23 78 */	mr r31, r4
/* 809A3690  41 82 00 EC */	beq lbl_809A377C
/* 809A3694  34 1E 06 44 */	addic. r0, r30, 0x644
/* 809A3698  41 82 00 84 */	beq lbl_809A371C
/* 809A369C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 809A36A0  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 809A36A4  90 7E 06 80 */	stw r3, 0x680(r30)
/* 809A36A8  38 03 00 2C */	addi r0, r3, 0x2c
/* 809A36AC  90 1E 07 64 */	stw r0, 0x764(r30)
/* 809A36B0  38 03 00 84 */	addi r0, r3, 0x84
/* 809A36B4  90 1E 07 78 */	stw r0, 0x778(r30)
/* 809A36B8  34 1E 07 48 */	addic. r0, r30, 0x748
/* 809A36BC  41 82 00 54 */	beq lbl_809A3710
/* 809A36C0  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 809A36C4  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 809A36C8  90 7E 07 64 */	stw r3, 0x764(r30)
/* 809A36CC  38 03 00 58 */	addi r0, r3, 0x58
/* 809A36D0  90 1E 07 78 */	stw r0, 0x778(r30)
/* 809A36D4  34 1E 07 68 */	addic. r0, r30, 0x768
/* 809A36D8  41 82 00 10 */	beq lbl_809A36E8
/* 809A36DC  3C 60 80 9A */	lis r3, __vt__8cM3dGSph@ha
/* 809A36E0  38 03 52 14 */	addi r0, r3, __vt__8cM3dGSph@l
/* 809A36E4  90 1E 07 78 */	stw r0, 0x778(r30)
lbl_809A36E8:
/* 809A36E8  34 1E 07 48 */	addic. r0, r30, 0x748
/* 809A36EC  41 82 00 24 */	beq lbl_809A3710
/* 809A36F0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 809A36F4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 809A36F8  90 1E 07 64 */	stw r0, 0x764(r30)
/* 809A36FC  34 1E 07 48 */	addic. r0, r30, 0x748
/* 809A3700  41 82 00 10 */	beq lbl_809A3710
/* 809A3704  3C 60 80 9A */	lis r3, __vt__8cM3dGAab@ha
/* 809A3708  38 03 52 20 */	addi r0, r3, __vt__8cM3dGAab@l
/* 809A370C  90 1E 07 60 */	stw r0, 0x760(r30)
lbl_809A3710:
/* 809A3710  38 7E 06 44 */	addi r3, r30, 0x644
/* 809A3714  38 80 00 00 */	li r4, 0
/* 809A3718  4B 6E 09 CC */	b __dt__12dCcD_GObjInfFv
lbl_809A371C:
/* 809A371C  34 1E 06 20 */	addic. r0, r30, 0x620
/* 809A3720  41 82 00 1C */	beq lbl_809A373C
/* 809A3724  3C 60 80 3D */	lis r3, __vt__15Z2SoundObjCoach@ha
/* 809A3728  38 03 B8 F0 */	addi r0, r3, __vt__15Z2SoundObjCoach@l
/* 809A372C  90 1E 06 30 */	stw r0, 0x630(r30)
/* 809A3730  38 7E 06 20 */	addi r3, r30, 0x620
/* 809A3734  38 80 00 00 */	li r4, 0
/* 809A3738  4B 91 A8 10 */	b __dt__14Z2SoundObjBaseFv
lbl_809A373C:
/* 809A373C  34 1E 03 8C */	addic. r0, r30, 0x38c
/* 809A3740  41 82 00 2C */	beq lbl_809A376C
/* 809A3744  3C 60 80 9A */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 809A3748  38 63 52 38 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 809A374C  90 7E 03 9C */	stw r3, 0x39c(r30)
/* 809A3750  38 03 00 0C */	addi r0, r3, 0xc
/* 809A3754  90 1E 03 A0 */	stw r0, 0x3a0(r30)
/* 809A3758  38 03 00 18 */	addi r0, r3, 0x18
/* 809A375C  90 1E 03 B0 */	stw r0, 0x3b0(r30)
/* 809A3760  38 7E 03 8C */	addi r3, r30, 0x38c
/* 809A3764  38 80 00 00 */	li r4, 0
/* 809A3768  4B 6D 28 2C */	b __dt__9dBgS_AcchFv
lbl_809A376C:
/* 809A376C  7F E0 07 35 */	extsh. r0, r31
/* 809A3770  40 81 00 0C */	ble lbl_809A377C
/* 809A3774  7F C3 F3 78 */	mr r3, r30
/* 809A3778  4B 92 B5 C4 */	b __dl__FPv
lbl_809A377C:
/* 809A377C  7F C3 F3 78 */	mr r3, r30
/* 809A3780  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809A3784  83 C1 00 08 */	lwz r30, 8(r1)
/* 809A3788  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A378C  7C 08 03 A6 */	mtlr r0
/* 809A3790  38 21 00 10 */	addi r1, r1, 0x10
/* 809A3794  4E 80 00 20 */	blr 

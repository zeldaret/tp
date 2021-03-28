lbl_804D36F4:
/* 804D36F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D36F8  7C 08 02 A6 */	mflr r0
/* 804D36FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D3700  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D3704  7C 7F 1B 78 */	mr r31, r3
/* 804D3708  38 7F 08 24 */	addi r3, r31, 0x824
/* 804D370C  7F E6 FB 78 */	mr r6, r31
/* 804D3710  4B BA 46 54 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 804D3714  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D3718  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D371C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 804D3720  38 9F 08 24 */	addi r4, r31, 0x824
/* 804D3724  4B BA 0C 90 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 804D3728  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804D372C  41 82 00 30 */	beq lbl_804D375C
/* 804D3730  38 7F 08 38 */	addi r3, r31, 0x838
/* 804D3734  4B BA 25 D8 */	b dBgS_CheckBWallPoly__FRC13cBgS_PolyInfo
/* 804D3738  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804D373C  40 82 00 18 */	bne lbl_804D3754
/* 804D3740  3C 60 80 4D */	lis r3, stringBase0@ha
/* 804D3744  38 63 4E A0 */	addi r3, r3, stringBase0@l
/* 804D3748  4B BC A3 18 */	b checkStageName__9daAlink_cFPCc
/* 804D374C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804D3750  41 82 00 0C */	beq lbl_804D375C
lbl_804D3754:
/* 804D3754  38 60 00 01 */	li r3, 1
/* 804D3758  48 00 00 08 */	b lbl_804D3760
lbl_804D375C:
/* 804D375C  38 60 00 00 */	li r3, 0
lbl_804D3760:
/* 804D3760  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D3764  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D3768  7C 08 03 A6 */	mtlr r0
/* 804D376C  38 21 00 10 */	addi r1, r1, 0x10
/* 804D3770  4E 80 00 20 */	blr 

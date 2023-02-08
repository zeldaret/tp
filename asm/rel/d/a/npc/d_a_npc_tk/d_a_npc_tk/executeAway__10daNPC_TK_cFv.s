lbl_80B048BC:
/* 80B048BC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80B048C0  7C 08 02 A6 */	mflr r0
/* 80B048C4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B048C8  39 61 00 50 */	addi r11, r1, 0x50
/* 80B048CC  4B 85 D9 11 */	bl _savegpr_29
/* 80B048D0  7C 7F 1B 78 */	mr r31, r3
/* 80B048D4  3C 80 80 B1 */	lis r4, lit_3999@ha /* 0x80B0C1C4@ha */
/* 80B048D8  3B A4 C1 C4 */	addi r29, r4, lit_3999@l /* 0x80B0C1C4@l */
/* 80B048DC  38 00 00 01 */	li r0, 1
/* 80B048E0  98 03 06 BD */	stb r0, 0x6bd(r3)
/* 80B048E4  80 03 06 94 */	lwz r0, 0x694(r3)
/* 80B048E8  2C 00 00 01 */	cmpwi r0, 1
/* 80B048EC  41 82 00 CC */	beq lbl_80B049B8
/* 80B048F0  40 80 00 10 */	bge lbl_80B04900
/* 80B048F4  2C 00 00 00 */	cmpwi r0, 0
/* 80B048F8  40 80 00 14 */	bge lbl_80B0490C
/* 80B048FC  48 00 02 C4 */	b lbl_80B04BC0
lbl_80B04900:
/* 80B04900  2C 00 00 03 */	cmpwi r0, 3
/* 80B04904  40 80 02 BC */	bge lbl_80B04BC0
/* 80B04908  48 00 02 10 */	b lbl_80B04B18
lbl_80B0490C:
/* 80B0490C  80 1F 06 98 */	lwz r0, 0x698(r31)
/* 80B04910  2C 00 00 00 */	cmpwi r0, 0
/* 80B04914  41 82 00 0C */	beq lbl_80B04920
/* 80B04918  2C 00 00 02 */	cmpwi r0, 2
/* 80B0491C  40 82 00 64 */	bne lbl_80B04980
lbl_80B04920:
/* 80B04920  7F E3 FB 78 */	mr r3, r31
/* 80B04924  38 80 00 06 */	li r4, 6
/* 80B04928  4B FF CC 15 */	bl checkBck__10daNPC_TK_cFi
/* 80B0492C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B04930  41 82 00 14 */	beq lbl_80B04944
/* 80B04934  C0 1D 00 FC */	lfs f0, 0xfc(r29)
/* 80B04938  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80B0493C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B04940  48 00 00 1C */	b lbl_80B0495C
lbl_80B04944:
/* 80B04944  7F E3 FB 78 */	mr r3, r31
/* 80B04948  38 80 00 06 */	li r4, 6
/* 80B0494C  38 A0 00 02 */	li r5, 2
/* 80B04950  C0 3D 00 68 */	lfs f1, 0x68(r29)
/* 80B04954  C0 5D 00 FC */	lfs f2, 0xfc(r29)
/* 80B04958  4B FF CB 41 */	bl setBck__10daNPC_TK_cFiUcff
lbl_80B0495C:
/* 80B0495C  38 00 00 01 */	li r0, 1
/* 80B04960  90 1F 06 94 */	stw r0, 0x694(r31)
/* 80B04964  80 1F 06 98 */	lwz r0, 0x698(r31)
/* 80B04968  2C 00 00 00 */	cmpwi r0, 0
/* 80B0496C  40 82 00 40 */	bne lbl_80B049AC
/* 80B04970  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 80B04974  D0 1F 06 7C */	stfs f0, 0x67c(r31)
/* 80B04978  D0 1F 06 78 */	stfs f0, 0x678(r31)
/* 80B0497C  48 00 00 30 */	b lbl_80B049AC
lbl_80B04980:
/* 80B04980  38 80 00 06 */	li r4, 6
/* 80B04984  38 A0 00 02 */	li r5, 2
/* 80B04988  C0 3D 00 68 */	lfs f1, 0x68(r29)
/* 80B0498C  C0 5D 00 6C */	lfs f2, 0x6c(r29)
/* 80B04990  4B FF CB 09 */	bl setBck__10daNPC_TK_cFiUcff
/* 80B04994  38 00 00 02 */	li r0, 2
/* 80B04998  90 1F 06 94 */	stw r0, 0x694(r31)
/* 80B0499C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B049A0  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 80B049A4  4B 76 C2 61 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B049A8  B0 7F 06 9E */	sth r3, 0x69e(r31)
lbl_80B049AC:
/* 80B049AC  38 00 00 4B */	li r0, 0x4b
/* 80B049B0  90 1F 06 B0 */	stw r0, 0x6b0(r31)
/* 80B049B4  48 00 02 0C */	b lbl_80B04BC0
lbl_80B049B8:
/* 80B049B8  80 1F 06 B0 */	lwz r0, 0x6b0(r31)
/* 80B049BC  2C 00 00 00 */	cmpwi r0, 0
/* 80B049C0  40 82 00 C8 */	bne lbl_80B04A88
/* 80B049C4  80 1F 09 F0 */	lwz r0, 0x9f0(r31)
/* 80B049C8  60 00 00 01 */	ori r0, r0, 1
/* 80B049CC  90 1F 09 F0 */	stw r0, 0x9f0(r31)
/* 80B049D0  38 7F 06 78 */	addi r3, r31, 0x678
/* 80B049D4  C0 3D 00 18 */	lfs f1, 0x18(r29)
/* 80B049D8  C0 5D 00 00 */	lfs f2, 0(r29)
/* 80B049DC  4B 76 BD 65 */	bl cLib_chaseF__FPfff
/* 80B049E0  38 7F 06 7C */	addi r3, r31, 0x67c
/* 80B049E4  C0 3D 00 18 */	lfs f1, 0x18(r29)
/* 80B049E8  C0 5D 00 00 */	lfs f2, 0(r29)
/* 80B049EC  4B 76 BD 55 */	bl cLib_chaseF__FPfff
/* 80B049F0  80 1F 06 98 */	lwz r0, 0x698(r31)
/* 80B049F4  2C 00 00 00 */	cmpwi r0, 0
/* 80B049F8  40 82 00 3C */	bne lbl_80B04A34
/* 80B049FC  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80B04A00  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B04A04  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80B04A08  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B04A0C  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80B04A10  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B04A14  38 61 00 20 */	addi r3, r1, 0x20
/* 80B04A18  7F E4 FB 78 */	mr r4, r31
/* 80B04A1C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80B04A20  C0 3F 06 78 */	lfs f1, 0x678(r31)
/* 80B04A24  C0 5F 06 7C */	lfs f2, 0x67c(r31)
/* 80B04A28  38 C0 08 00 */	li r6, 0x800
/* 80B04A2C  4B FF D2 59 */	bl chaseTargetPos__10daNPC_TK_cF4cXyzffs
/* 80B04A30  48 00 00 38 */	b lbl_80B04A68
lbl_80B04A34:
/* 80B04A34  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80B04A38  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B04A3C  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80B04A40  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B04A44  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80B04A48  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B04A4C  38 61 00 08 */	addi r3, r1, 8
/* 80B04A50  7F E4 FB 78 */	mr r4, r31
/* 80B04A54  38 A1 00 14 */	addi r5, r1, 0x14
/* 80B04A58  C0 3F 06 78 */	lfs f1, 0x678(r31)
/* 80B04A5C  C0 5F 06 7C */	lfs f2, 0x67c(r31)
/* 80B04A60  38 C0 01 00 */	li r6, 0x100
/* 80B04A64  4B FF D2 21 */	bl chaseTargetPos__10daNPC_TK_cF4cXyzffs
lbl_80B04A68:
/* 80B04A68  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80B04A6C  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80B04A70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B04A74  40 81 01 4C */	ble lbl_80B04BC0
/* 80B04A78  7F E3 FB 78 */	mr r3, r31
/* 80B04A7C  38 80 00 00 */	li r4, 0
/* 80B04A80  4B FF CD F9 */	bl setActionMode__10daNPC_TK_cFi
/* 80B04A84  48 00 01 3C */	b lbl_80B04BC0
lbl_80B04A88:
/* 80B04A88  4B FF CC 4D */	bl checkBeforeBg__10daNPC_TK_cFv
/* 80B04A8C  7C 7E 1B 78 */	mr r30, r3
/* 80B04A90  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80B04A94  41 82 00 18 */	beq lbl_80B04AAC
/* 80B04A98  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80B04A9C  C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 80B04AA0  C0 5D 00 68 */	lfs f2, 0x68(r29)
/* 80B04AA4  4B 76 BC 9D */	bl cLib_chaseF__FPfff
/* 80B04AA8  48 00 00 14 */	b lbl_80B04ABC
lbl_80B04AAC:
/* 80B04AAC  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80B04AB0  C0 3D 00 74 */	lfs f1, 0x74(r29)
/* 80B04AB4  C0 5D 00 CC */	lfs f2, 0xcc(r29)
/* 80B04AB8  4B 76 BC 89 */	bl cLib_chaseF__FPfff
lbl_80B04ABC:
/* 80B04ABC  57 C0 07 BD */	rlwinm. r0, r30, 0, 0x1e, 0x1e
/* 80B04AC0  41 82 00 18 */	beq lbl_80B04AD8
/* 80B04AC4  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 80B04AC8  C0 3D 00 18 */	lfs f1, 0x18(r29)
/* 80B04ACC  C0 5D 00 68 */	lfs f2, 0x68(r29)
/* 80B04AD0  4B 76 BC 71 */	bl cLib_chaseF__FPfff
/* 80B04AD4  48 00 00 14 */	b lbl_80B04AE8
lbl_80B04AD8:
/* 80B04AD8  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 80B04ADC  C0 3D 00 18 */	lfs f1, 0x18(r29)
/* 80B04AE0  C0 5D 00 CC */	lfs f2, 0xcc(r29)
/* 80B04AE4  4B 76 BC 5D */	bl cLib_chaseF__FPfff
lbl_80B04AE8:
/* 80B04AE8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B04AEC  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 80B04AF0  4B 76 C1 15 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B04AF4  7C 64 1B 78 */	mr r4, r3
/* 80B04AF8  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 80B04AFC  38 A0 00 08 */	li r5, 8
/* 80B04B00  38 C0 01 00 */	li r6, 0x100
/* 80B04B04  38 E0 00 80 */	li r7, 0x80
/* 80B04B08  4B 76 BA 39 */	bl cLib_addCalcAngleS__FPsssss
/* 80B04B0C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80B04B10  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80B04B14  48 00 00 AC */	b lbl_80B04BC0
lbl_80B04B18:
/* 80B04B18  4B FF CB BD */	bl checkBeforeBg__10daNPC_TK_cFv
/* 80B04B1C  7C 7E 1B 78 */	mr r30, r3
/* 80B04B20  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80B04B24  41 82 00 18 */	beq lbl_80B04B3C
/* 80B04B28  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80B04B2C  C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 80B04B30  C0 5D 00 68 */	lfs f2, 0x68(r29)
/* 80B04B34  4B 76 BC 0D */	bl cLib_chaseF__FPfff
/* 80B04B38  48 00 00 14 */	b lbl_80B04B4C
lbl_80B04B3C:
/* 80B04B3C  38 7F 05 2C */	addi r3, r31, 0x52c
/* 80B04B40  C0 3D 00 74 */	lfs f1, 0x74(r29)
/* 80B04B44  C0 5D 00 CC */	lfs f2, 0xcc(r29)
/* 80B04B48  4B 76 BB F9 */	bl cLib_chaseF__FPfff
lbl_80B04B4C:
/* 80B04B4C  57 C0 07 BD */	rlwinm. r0, r30, 0, 0x1e, 0x1e
/* 80B04B50  41 82 00 18 */	beq lbl_80B04B68
/* 80B04B54  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 80B04B58  C0 3D 00 18 */	lfs f1, 0x18(r29)
/* 80B04B5C  C0 5D 00 68 */	lfs f2, 0x68(r29)
/* 80B04B60  4B 76 BB E1 */	bl cLib_chaseF__FPfff
/* 80B04B64  48 00 00 14 */	b lbl_80B04B78
lbl_80B04B68:
/* 80B04B68  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 80B04B6C  C0 3D 00 18 */	lfs f1, 0x18(r29)
/* 80B04B70  C0 5D 00 CC */	lfs f2, 0xcc(r29)
/* 80B04B74  4B 76 BB CD */	bl cLib_chaseF__FPfff
lbl_80B04B78:
/* 80B04B78  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 80B04B7C  A8 9F 06 9E */	lha r4, 0x69e(r31)
/* 80B04B80  38 A0 00 08 */	li r5, 8
/* 80B04B84  38 C0 01 00 */	li r6, 0x100
/* 80B04B88  38 E0 00 80 */	li r7, 0x80
/* 80B04B8C  4B 76 B9 B5 */	bl cLib_addCalcAngleS__FPsssss
/* 80B04B90  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80B04B94  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80B04B98  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80B04B9C  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80B04BA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B04BA4  40 81 00 1C */	ble lbl_80B04BC0
/* 80B04BA8  80 1F 09 F0 */	lwz r0, 0x9f0(r31)
/* 80B04BAC  60 00 00 01 */	ori r0, r0, 1
/* 80B04BB0  90 1F 09 F0 */	stw r0, 0x9f0(r31)
/* 80B04BB4  7F E3 FB 78 */	mr r3, r31
/* 80B04BB8  38 80 00 00 */	li r4, 0
/* 80B04BBC  4B FF CC BD */	bl setActionMode__10daNPC_TK_cFi
lbl_80B04BC0:
/* 80B04BC0  80 1F 06 B0 */	lwz r0, 0x6b0(r31)
/* 80B04BC4  2C 00 00 00 */	cmpwi r0, 0
/* 80B04BC8  40 82 00 18 */	bne lbl_80B04BE0
/* 80B04BCC  80 1F 06 EC */	lwz r0, 0x6ec(r31)
/* 80B04BD0  7C 00 F8 40 */	cmplw r0, r31
/* 80B04BD4  40 82 00 0C */	bne lbl_80B04BE0
/* 80B04BD8  7F E3 FB 78 */	mr r3, r31
/* 80B04BDC  48 00 59 8D */	bl endHawkCamera__10daNPC_TK_cFv
lbl_80B04BE0:
/* 80B04BE0  39 61 00 50 */	addi r11, r1, 0x50
/* 80B04BE4  4B 85 D6 45 */	bl _restgpr_29
/* 80B04BE8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80B04BEC  7C 08 03 A6 */	mtlr r0
/* 80B04BF0  38 21 00 50 */	addi r1, r1, 0x50
/* 80B04BF4  4E 80 00 20 */	blr 

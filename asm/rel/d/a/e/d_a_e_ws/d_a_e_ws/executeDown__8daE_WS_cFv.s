lbl_807E4E68:
/* 807E4E68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807E4E6C  7C 08 02 A6 */	mflr r0
/* 807E4E70  90 01 00 24 */	stw r0, 0x24(r1)
/* 807E4E74  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 807E4E78  93 C1 00 18 */	stw r30, 0x18(r1)
/* 807E4E7C  7C 7E 1B 78 */	mr r30, r3
/* 807E4E80  3C 80 80 7E */	lis r4, lit_3802@ha /* 0x807E7300@ha */
/* 807E4E84  3B E4 73 00 */	addi r31, r4, lit_3802@l /* 0x807E7300@l */
/* 807E4E88  38 00 00 0A */	li r0, 0xa
/* 807E4E8C  B0 03 06 8E */	sth r0, 0x68e(r3)
/* 807E4E90  80 03 06 80 */	lwz r0, 0x680(r3)
/* 807E4E94  2C 00 00 03 */	cmpwi r0, 3
/* 807E4E98  41 82 02 34 */	beq lbl_807E50CC
/* 807E4E9C  40 80 00 1C */	bge lbl_807E4EB8
/* 807E4EA0  2C 00 00 01 */	cmpwi r0, 1
/* 807E4EA4  41 82 00 94 */	beq lbl_807E4F38
/* 807E4EA8  40 80 01 50 */	bge lbl_807E4FF8
/* 807E4EAC  2C 00 00 00 */	cmpwi r0, 0
/* 807E4EB0  40 80 00 18 */	bge lbl_807E4EC8
/* 807E4EB4  48 00 03 C8 */	b lbl_807E527C
lbl_807E4EB8:
/* 807E4EB8  2C 00 00 05 */	cmpwi r0, 5
/* 807E4EBC  41 82 03 40 */	beq lbl_807E51FC
/* 807E4EC0  40 80 03 BC */	bge lbl_807E527C
/* 807E4EC4  48 00 02 E0 */	b lbl_807E51A4
lbl_807E4EC8:
/* 807E4EC8  80 1E 08 E8 */	lwz r0, 0x8e8(r30)
/* 807E4ECC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807E4ED0  90 1E 08 E8 */	stw r0, 0x8e8(r30)
/* 807E4ED4  80 1E 09 00 */	lwz r0, 0x900(r30)
/* 807E4ED8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807E4EDC  90 1E 09 00 */	stw r0, 0x900(r30)
/* 807E4EE0  80 1E 0A 38 */	lwz r0, 0xa38(r30)
/* 807E4EE4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807E4EE8  90 1E 0A 38 */	stw r0, 0xa38(r30)
/* 807E4EEC  38 00 00 01 */	li r0, 1
/* 807E4EF0  90 1E 06 80 */	stw r0, 0x680(r30)
/* 807E4EF4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807E4EF8  D0 3E 04 FC */	stfs f1, 0x4fc(r30)
/* 807E4EFC  D0 3E 05 2C */	stfs f1, 0x52c(r30)
/* 807E4F00  38 80 00 05 */	li r4, 5
/* 807E4F04  38 A0 00 00 */	li r5, 0
/* 807E4F08  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807E4F0C  4B FF ED 15 */	bl setBck__8daE_WS_cFiUcff
/* 807E4F10  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070149@ha */
/* 807E4F14  38 03 01 49 */	addi r0, r3, 0x0149 /* 0x00070149@l */
/* 807E4F18  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E4F1C  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 807E4F20  38 81 00 14 */	addi r4, r1, 0x14
/* 807E4F24  38 A0 FF FF */	li r5, -1
/* 807E4F28  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 807E4F2C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807E4F30  7D 89 03 A6 */	mtctr r12
/* 807E4F34  4E 80 04 21 */	bctrl 
lbl_807E4F38:
/* 807E4F38  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807E4F3C  38 80 00 01 */	li r4, 1
/* 807E4F40  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807E4F44  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807E4F48  40 82 00 18 */	bne lbl_807E4F60
/* 807E4F4C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807E4F50  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807E4F54  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807E4F58  41 82 00 08 */	beq lbl_807E4F60
/* 807E4F5C  38 80 00 00 */	li r4, 0
lbl_807E4F60:
/* 807E4F60  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807E4F64  41 82 03 18 */	beq lbl_807E527C
/* 807E4F68  38 7E 06 94 */	addi r3, r30, 0x694
/* 807E4F6C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807E4F70  C0 5F 00 C0 */	lfs f2, 0xc0(r31)
/* 807E4F74  4B 89 0F E5 */	bl SetWall__12dBgS_AcchCirFff
/* 807E4F78  A8 1E 06 6A */	lha r0, 0x66a(r30)
/* 807E4F7C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 807E4F80  7F C3 F3 78 */	mr r3, r30
/* 807E4F84  38 80 00 06 */	li r4, 6
/* 807E4F88  38 A0 00 00 */	li r5, 0
/* 807E4F8C  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 807E4F90  C0 5F 00 04 */	lfs f2, 4(r31)
/* 807E4F94  4B FF EC 8D */	bl setBck__8daE_WS_cFiUcff
/* 807E4F98  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007014A@ha */
/* 807E4F9C  38 03 01 4A */	addi r0, r3, 0x014A /* 0x0007014A@l */
/* 807E4FA0  90 01 00 10 */	stw r0, 0x10(r1)
/* 807E4FA4  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 807E4FA8  38 81 00 10 */	addi r4, r1, 0x10
/* 807E4FAC  38 A0 FF FF */	li r5, -1
/* 807E4FB0  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 807E4FB4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807E4FB8  7D 89 03 A6 */	mtctr r12
/* 807E4FBC  4E 80 04 21 */	bctrl 
/* 807E4FC0  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 807E4FC4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807E4FC8  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 807E4FCC  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 807E4FD0  38 7E 06 D4 */	addi r3, r30, 0x6d4
/* 807E4FD4  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 807E4FD8  C0 1E 06 78 */	lfs f0, 0x678(r30)
/* 807E4FDC  EC 21 00 32 */	fmuls f1, f1, f0
/* 807E4FE0  4B 89 21 35 */	bl SetGroundUpY__9dBgS_AcchFf
/* 807E4FE4  38 00 00 02 */	li r0, 2
/* 807E4FE8  90 1E 06 80 */	stw r0, 0x680(r30)
/* 807E4FEC  38 00 00 00 */	li r0, 0
/* 807E4FF0  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 807E4FF4  48 00 02 88 */	b lbl_807E527C
lbl_807E4FF8:
/* 807E4FF8  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 807E4FFC  4B B8 00 D5 */	bl abs
/* 807E5000  2C 03 40 00 */	cmpwi r3, 0x4000
/* 807E5004  40 80 00 28 */	bge lbl_807E502C
/* 807E5008  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 807E500C  38 80 00 00 */	li r4, 0
/* 807E5010  38 A0 02 00 */	li r5, 0x200
/* 807E5014  4B A8 BB 7D */	bl cLib_chaseAngleS__FPsss
/* 807E5018  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 807E501C  38 80 40 00 */	li r4, 0x4000
/* 807E5020  38 A0 04 00 */	li r5, 0x400
/* 807E5024  4B A8 BB 6D */	bl cLib_chaseAngleS__FPsss
/* 807E5028  48 00 00 24 */	b lbl_807E504C
lbl_807E502C:
/* 807E502C  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 807E5030  38 80 80 00 */	li r4, -32768
/* 807E5034  38 A0 02 00 */	li r5, 0x200
/* 807E5038  4B A8 BB 59 */	bl cLib_chaseAngleS__FPsss
/* 807E503C  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 807E5040  38 80 C0 00 */	li r4, -16384
/* 807E5044  38 A0 04 00 */	li r5, 0x400
/* 807E5048  4B A8 BB 49 */	bl cLib_chaseAngleS__FPsss
lbl_807E504C:
/* 807E504C  80 1E 07 00 */	lwz r0, 0x700(r30)
/* 807E5050  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807E5054  41 82 02 28 */	beq lbl_807E527C
/* 807E5058  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 807E505C  4B A8 28 F9 */	bl cM_rndF__Ff
/* 807E5060  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 807E5064  EC 00 08 2A */	fadds f0, f0, f1
/* 807E5068  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807E506C  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 807E5070  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807E5074  38 00 00 03 */	li r0, 3
/* 807E5078  90 1E 06 80 */	stw r0, 0x680(r30)
/* 807E507C  38 00 00 1E */	li r0, 0x1e
/* 807E5080  98 1E 06 8C */	stb r0, 0x68c(r30)
/* 807E5084  7F C3 F3 78 */	mr r3, r30
/* 807E5088  38 80 00 06 */	li r4, 6
/* 807E508C  38 A0 00 00 */	li r5, 0
/* 807E5090  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 807E5094  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807E5098  4B FF EB 89 */	bl setBck__8daE_WS_cFiUcff
/* 807E509C  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002B@ha */
/* 807E50A0  38 03 00 2B */	addi r0, r3, 0x002B /* 0x0006002B@l */
/* 807E50A4  90 01 00 0C */	stw r0, 0xc(r1)
/* 807E50A8  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 807E50AC  38 81 00 0C */	addi r4, r1, 0xc
/* 807E50B0  38 A0 00 00 */	li r5, 0
/* 807E50B4  38 C0 FF FF */	li r6, -1
/* 807E50B8  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 807E50BC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807E50C0  7D 89 03 A6 */	mtctr r12
/* 807E50C4  4E 80 04 21 */	bctrl 
/* 807E50C8  48 00 01 B4 */	b lbl_807E527C
lbl_807E50CC:
/* 807E50CC  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 807E50D0  4B B8 00 01 */	bl abs
/* 807E50D4  2C 03 40 00 */	cmpwi r3, 0x4000
/* 807E50D8  40 80 00 28 */	bge lbl_807E5100
/* 807E50DC  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 807E50E0  38 80 00 00 */	li r4, 0
/* 807E50E4  38 A0 02 00 */	li r5, 0x200
/* 807E50E8  4B A8 BA A9 */	bl cLib_chaseAngleS__FPsss
/* 807E50EC  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 807E50F0  38 80 40 00 */	li r4, 0x4000
/* 807E50F4  38 A0 04 00 */	li r5, 0x400
/* 807E50F8  4B A8 BA 99 */	bl cLib_chaseAngleS__FPsss
/* 807E50FC  48 00 00 24 */	b lbl_807E5120
lbl_807E5100:
/* 807E5100  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 807E5104  38 80 80 00 */	li r4, -32768
/* 807E5108  38 A0 02 00 */	li r5, 0x200
/* 807E510C  4B A8 BA 85 */	bl cLib_chaseAngleS__FPsss
/* 807E5110  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 807E5114  38 80 C0 00 */	li r4, -16384
/* 807E5118  38 A0 04 00 */	li r5, 0x400
/* 807E511C  4B A8 BA 75 */	bl cLib_chaseAngleS__FPsss
lbl_807E5120:
/* 807E5120  80 1E 07 00 */	lwz r0, 0x700(r30)
/* 807E5124  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807E5128  41 82 01 54 */	beq lbl_807E527C
/* 807E512C  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002B@ha */
/* 807E5130  38 03 00 2B */	addi r0, r3, 0x002B /* 0x0006002B@l */
/* 807E5134  90 01 00 08 */	stw r0, 8(r1)
/* 807E5138  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 807E513C  38 81 00 08 */	addi r4, r1, 8
/* 807E5140  38 A0 00 00 */	li r5, 0
/* 807E5144  38 C0 FF FF */	li r6, -1
/* 807E5148  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 807E514C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807E5150  7D 89 03 A6 */	mtctr r12
/* 807E5154  4E 80 04 21 */	bctrl 
/* 807E5158  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 807E515C  4B B7 FF 75 */	bl abs
/* 807E5160  2C 03 40 00 */	cmpwi r3, 0x4000
/* 807E5164  40 80 00 18 */	bge lbl_807E517C
/* 807E5168  38 00 00 00 */	li r0, 0
/* 807E516C  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 807E5170  38 00 40 00 */	li r0, 0x4000
/* 807E5174  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 807E5178  48 00 00 14 */	b lbl_807E518C
lbl_807E517C:
/* 807E517C  38 00 80 00 */	li r0, -32768
/* 807E5180  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 807E5184  38 00 C0 00 */	li r0, -16384
/* 807E5188  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
lbl_807E518C:
/* 807E518C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807E5190  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807E5194  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807E5198  38 00 00 04 */	li r0, 4
/* 807E519C  90 1E 06 80 */	stw r0, 0x680(r30)
/* 807E51A0  48 00 00 DC */	b lbl_807E527C
lbl_807E51A4:
/* 807E51A4  38 7E 06 74 */	addi r3, r30, 0x674
/* 807E51A8  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 807E51AC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807E51B0  C0 7F 00 D8 */	lfs f3, 0xd8(r31)
/* 807E51B4  4B A8 A8 89 */	bl cLib_addCalc2__FPffff
/* 807E51B8  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807E51BC  38 80 00 01 */	li r4, 1
/* 807E51C0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807E51C4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807E51C8  40 82 00 18 */	bne lbl_807E51E0
/* 807E51CC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807E51D0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807E51D4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807E51D8  41 82 00 08 */	beq lbl_807E51E0
/* 807E51DC  38 80 00 00 */	li r4, 0
lbl_807E51E0:
/* 807E51E0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807E51E4  41 82 00 98 */	beq lbl_807E527C
/* 807E51E8  38 00 00 0F */	li r0, 0xf
/* 807E51EC  98 1E 06 8C */	stb r0, 0x68c(r30)
/* 807E51F0  38 00 00 05 */	li r0, 5
/* 807E51F4  90 1E 06 80 */	stw r0, 0x680(r30)
/* 807E51F8  48 00 00 84 */	b lbl_807E527C
lbl_807E51FC:
/* 807E51FC  38 7E 06 74 */	addi r3, r30, 0x674
/* 807E5200  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 807E5204  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807E5208  C0 7F 00 D8 */	lfs f3, 0xd8(r31)
/* 807E520C  4B A8 A8 31 */	bl cLib_addCalc2__FPffff
/* 807E5210  88 1E 06 8C */	lbz r0, 0x68c(r30)
/* 807E5214  28 00 00 00 */	cmplwi r0, 0
/* 807E5218  40 82 00 64 */	bne lbl_807E527C
/* 807E521C  7F C3 F3 78 */	mr r3, r30
/* 807E5220  4B 83 4A 5D */	bl fopAcM_delete__FP10fopAc_ac_c
/* 807E5224  7F C3 F3 78 */	mr r3, r30
/* 807E5228  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807E522C  38 A0 00 07 */	li r5, 7
/* 807E5230  38 C0 00 00 */	li r6, 0
/* 807E5234  38 E0 00 07 */	li r7, 7
/* 807E5238  4B 83 78 A1 */	bl fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 807E523C  88 9E 06 92 */	lbz r4, 0x692(r30)
/* 807E5240  28 04 00 FF */	cmplwi r4, 0xff
/* 807E5244  41 82 00 38 */	beq lbl_807E527C
/* 807E5248  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807E524C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807E5250  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807E5254  7C 05 07 74 */	extsb r5, r0
/* 807E5258  4B 85 01 09 */	bl isSwitch__10dSv_info_cCFii
/* 807E525C  2C 03 00 00 */	cmpwi r3, 0
/* 807E5260  40 82 00 1C */	bne lbl_807E527C
/* 807E5264  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807E5268  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807E526C  88 9E 06 92 */	lbz r4, 0x692(r30)
/* 807E5270  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807E5274  7C 05 07 74 */	extsb r5, r0
/* 807E5278  4B 84 FF 89 */	bl onSwitch__10dSv_info_cFii
lbl_807E527C:
/* 807E527C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 807E5280  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 807E5284  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807E5288  7C 08 03 A6 */	mtlr r0
/* 807E528C  38 21 00 20 */	addi r1, r1, 0x20
/* 807E5290  4E 80 00 20 */	blr 

lbl_8073C31C:
/* 8073C31C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8073C320  7C 08 02 A6 */	mflr r0
/* 8073C324  90 01 00 44 */	stw r0, 0x44(r1)
/* 8073C328  39 61 00 40 */	addi r11, r1, 0x40
/* 8073C32C  4B C2 5E 9D */	bl _savegpr_24
/* 8073C330  7C 7A 1B 78 */	mr r26, r3
/* 8073C334  3C 80 80 74 */	lis r4, cNullVec__6Z2Calc@ha /* 0x8073CF74@ha */
/* 8073C338  3B C4 CF 74 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x8073CF74@l */
/* 8073C33C  3C 80 80 74 */	lis r4, lit_3910@ha /* 0x8073CEA8@ha */
/* 8073C340  3B E4 CE A8 */	addi r31, r4, lit_3910@l /* 0x8073CEA8@l */
/* 8073C344  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8073C348  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8073C34C  40 82 01 3C */	bne lbl_8073C488
/* 8073C350  7F 40 D3 79 */	or. r0, r26, r26
/* 8073C354  41 82 01 28 */	beq lbl_8073C47C
/* 8073C358  7C 19 03 78 */	mr r25, r0
/* 8073C35C  4B 8D C8 09 */	bl __ct__10fopAc_ac_cFv
/* 8073C360  38 79 05 C0 */	addi r3, r25, 0x5c0
/* 8073C364  4B B8 4C 01 */	bl __ct__15Z2CreatureEnemyFv
/* 8073C368  38 79 06 98 */	addi r3, r25, 0x698
/* 8073C36C  4B 93 9B 41 */	bl __ct__12dBgS_AcchCirFv
/* 8073C370  3B 19 06 D8 */	addi r24, r25, 0x6d8
/* 8073C374  7F 03 C3 78 */	mr r3, r24
/* 8073C378  4B 93 9D 29 */	bl __ct__9dBgS_AcchFv
/* 8073C37C  3C 60 80 74 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x8073D228@ha */
/* 8073C380  38 63 D2 28 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x8073D228@l */
/* 8073C384  90 78 00 10 */	stw r3, 0x10(r24)
/* 8073C388  38 03 00 0C */	addi r0, r3, 0xc
/* 8073C38C  90 18 00 14 */	stw r0, 0x14(r24)
/* 8073C390  38 03 00 18 */	addi r0, r3, 0x18
/* 8073C394  90 18 00 24 */	stw r0, 0x24(r24)
/* 8073C398  38 78 00 14 */	addi r3, r24, 0x14
/* 8073C39C  4B 93 CA CD */	bl SetObj__16dBgS_PolyPassChkFv
/* 8073C3A0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 8073C3A4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 8073C3A8  90 19 08 C8 */	stw r0, 0x8c8(r25)
/* 8073C3AC  38 79 08 CC */	addi r3, r25, 0x8cc
/* 8073C3B0  4B 94 73 B1 */	bl __ct__10dCcD_GSttsFv
/* 8073C3B4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 8073C3B8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 8073C3BC  90 79 08 C8 */	stw r3, 0x8c8(r25)
/* 8073C3C0  38 03 00 20 */	addi r0, r3, 0x20
/* 8073C3C4  90 19 08 CC */	stw r0, 0x8cc(r25)
/* 8073C3C8  3B 19 08 EC */	addi r24, r25, 0x8ec
/* 8073C3CC  7F 03 C3 78 */	mr r3, r24
/* 8073C3D0  4B 94 76 59 */	bl __ct__12dCcD_GObjInfFv
/* 8073C3D4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8073C3D8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8073C3DC  90 18 01 20 */	stw r0, 0x120(r24)
/* 8073C3E0  3C 60 80 74 */	lis r3, __vt__8cM3dGAab@ha /* 0x8073D21C@ha */
/* 8073C3E4  38 03 D2 1C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8073D21C@l */
/* 8073C3E8  90 18 01 1C */	stw r0, 0x11c(r24)
/* 8073C3EC  3C 60 80 74 */	lis r3, __vt__8cM3dGSph@ha /* 0x8073D210@ha */
/* 8073C3F0  38 03 D2 10 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x8073D210@l */
/* 8073C3F4  90 18 01 34 */	stw r0, 0x134(r24)
/* 8073C3F8  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 8073C3FC  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 8073C400  90 78 01 20 */	stw r3, 0x120(r24)
/* 8073C404  3B A3 00 58 */	addi r29, r3, 0x58
/* 8073C408  93 B8 01 34 */	stw r29, 0x134(r24)
/* 8073C40C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 8073C410  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 8073C414  90 78 00 3C */	stw r3, 0x3c(r24)
/* 8073C418  3B 83 00 2C */	addi r28, r3, 0x2c
/* 8073C41C  93 98 01 20 */	stw r28, 0x120(r24)
/* 8073C420  3B 63 00 84 */	addi r27, r3, 0x84
/* 8073C424  93 78 01 34 */	stw r27, 0x134(r24)
/* 8073C428  3B 19 0A 24 */	addi r24, r25, 0xa24
/* 8073C42C  7F 03 C3 78 */	mr r3, r24
/* 8073C430  4B 94 75 F9 */	bl __ct__12dCcD_GObjInfFv
/* 8073C434  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8073C438  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8073C43C  90 18 01 20 */	stw r0, 0x120(r24)
/* 8073C440  3C 60 80 74 */	lis r3, __vt__8cM3dGAab@ha /* 0x8073D21C@ha */
/* 8073C444  38 03 D2 1C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8073D21C@l */
/* 8073C448  90 18 01 1C */	stw r0, 0x11c(r24)
/* 8073C44C  3C 60 80 74 */	lis r3, __vt__8cM3dGSph@ha /* 0x8073D210@ha */
/* 8073C450  38 03 D2 10 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x8073D210@l */
/* 8073C454  90 18 01 34 */	stw r0, 0x134(r24)
/* 8073C458  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 8073C45C  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 8073C460  90 18 01 20 */	stw r0, 0x120(r24)
/* 8073C464  93 B8 01 34 */	stw r29, 0x134(r24)
/* 8073C468  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 8073C46C  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 8073C470  90 18 00 3C */	stw r0, 0x3c(r24)
/* 8073C474  93 98 01 20 */	stw r28, 0x120(r24)
/* 8073C478  93 78 01 34 */	stw r27, 0x134(r24)
lbl_8073C47C:
/* 8073C47C  80 1A 04 A0 */	lwz r0, 0x4a0(r26)
/* 8073C480  60 00 00 08 */	ori r0, r0, 8
/* 8073C484  90 1A 04 A0 */	stw r0, 0x4a0(r26)
lbl_8073C488:
/* 8073C488  38 7A 05 AC */	addi r3, r26, 0x5ac
/* 8073C48C  3C 80 80 74 */	lis r4, d_a_e_ot__stringBase0@ha /* 0x8073CF6C@ha */
/* 8073C490  38 84 CF 6C */	addi r4, r4, d_a_e_ot__stringBase0@l /* 0x8073CF6C@l */
/* 8073C494  4B 8F 0A 29 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8073C498  7C 7B 1B 78 */	mr r27, r3
/* 8073C49C  2C 1B 00 04 */	cmpwi r27, 4
/* 8073C4A0  40 82 02 C0 */	bne lbl_8073C760
/* 8073C4A4  7F 43 D3 78 */	mr r3, r26
/* 8073C4A8  3C 80 80 74 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x8073C2FC@ha */
/* 8073C4AC  38 84 C2 FC */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x8073C2FC@l */
/* 8073C4B0  38 A0 1F 40 */	li r5, 0x1f40
/* 8073C4B4  4B 8D DF FD */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8073C4B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8073C4BC  40 82 00 0C */	bne lbl_8073C4C8
/* 8073C4C0  38 60 00 05 */	li r3, 5
/* 8073C4C4  48 00 02 A0 */	b lbl_8073C764
lbl_8073C4C8:
/* 8073C4C8  3C 60 80 74 */	lis r3, struct_8073D2AC+0x1@ha /* 0x8073D2AD@ha */
/* 8073C4CC  8C 03 D2 AD */	lbzu r0, struct_8073D2AC+0x1@l(r3)  /* 0x8073D2AD@l */
/* 8073C4D0  28 00 00 00 */	cmplwi r0, 0
/* 8073C4D4  40 82 00 20 */	bne lbl_8073C4F4
/* 8073C4D8  38 00 00 01 */	li r0, 1
/* 8073C4DC  98 03 00 00 */	stb r0, 0(r3)
/* 8073C4E0  98 1A 0B 94 */	stb r0, 0xb94(r26)
/* 8073C4E4  38 00 FF FF */	li r0, -1
/* 8073C4E8  3C 60 80 74 */	lis r3, l_HIO@ha /* 0x8073D2BC@ha */
/* 8073C4EC  38 63 D2 BC */	addi r3, r3, l_HIO@l /* 0x8073D2BC@l */
/* 8073C4F0  98 03 00 04 */	stb r0, 4(r3)
lbl_8073C4F4:
/* 8073C4F4  38 00 00 04 */	li r0, 4
/* 8073C4F8  90 1A 05 5C */	stw r0, 0x55c(r26)
/* 8073C4FC  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 8073C500  80 63 00 04 */	lwz r3, 4(r3)
/* 8073C504  38 03 00 24 */	addi r0, r3, 0x24
/* 8073C508  90 1A 05 04 */	stw r0, 0x504(r26)
/* 8073C50C  7F 43 D3 78 */	mr r3, r26
/* 8073C510  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 8073C514  FC 40 08 90 */	fmr f2, f1
/* 8073C518  FC 60 08 90 */	fmr f3, f1
/* 8073C51C  4B 8D E0 0D */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 8073C520  7F 43 D3 78 */	mr r3, r26
/* 8073C524  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 8073C528  FC 40 08 90 */	fmr f2, f1
/* 8073C52C  FC 60 08 90 */	fmr f3, f1
/* 8073C530  4B 8D E0 09 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 8073C534  38 00 00 00 */	li r0, 0
/* 8073C538  90 01 00 08 */	stw r0, 8(r1)
/* 8073C53C  38 7A 06 D8 */	addi r3, r26, 0x6d8
/* 8073C540  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 8073C544  38 BA 04 BC */	addi r5, r26, 0x4bc
/* 8073C548  7F 46 D3 78 */	mr r6, r26
/* 8073C54C  38 E0 00 01 */	li r7, 1
/* 8073C550  39 1A 06 98 */	addi r8, r26, 0x698
/* 8073C554  39 3A 04 F8 */	addi r9, r26, 0x4f8
/* 8073C558  39 40 00 00 */	li r10, 0
/* 8073C55C  4B 93 9C ED */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 8073C560  38 7A 06 98 */	addi r3, r26, 0x698
/* 8073C564  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8073C568  C0 5F 00 C0 */	lfs f2, 0xc0(r31)
/* 8073C56C  4B 93 99 ED */	bl SetWall__12dBgS_AcchCirFff
/* 8073C570  38 00 00 0A */	li r0, 0xa
/* 8073C574  B0 1A 05 62 */	sth r0, 0x562(r26)
/* 8073C578  B0 1A 05 60 */	sth r0, 0x560(r26)
/* 8073C57C  38 7A 08 B0 */	addi r3, r26, 0x8b0
/* 8073C580  38 80 00 64 */	li r4, 0x64
/* 8073C584  38 A0 00 00 */	li r5, 0
/* 8073C588  7F 46 D3 78 */	mr r6, r26
/* 8073C58C  4B 94 72 D5 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8073C590  38 7A 08 EC */	addi r3, r26, 0x8ec
/* 8073C594  38 9E 01 48 */	addi r4, r30, 0x148
/* 8073C598  4B 94 84 9D */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8073C59C  38 1A 08 B0 */	addi r0, r26, 0x8b0
/* 8073C5A0  90 1A 09 30 */	stw r0, 0x930(r26)
/* 8073C5A4  38 7A 0A 24 */	addi r3, r26, 0xa24
/* 8073C5A8  38 9E 01 88 */	addi r4, r30, 0x188
/* 8073C5AC  4B 94 84 89 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8073C5B0  38 1A 08 B0 */	addi r0, r26, 0x8b0
/* 8073C5B4  90 1A 0A 68 */	stw r0, 0xa68(r26)
/* 8073C5B8  38 7A 05 C0 */	addi r3, r26, 0x5c0
/* 8073C5BC  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 8073C5C0  38 BA 05 38 */	addi r5, r26, 0x538
/* 8073C5C4  38 C0 00 03 */	li r6, 3
/* 8073C5C8  38 E0 00 01 */	li r7, 1
/* 8073C5CC  4B B8 4A C9 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 8073C5D0  38 1A 05 C0 */	addi r0, r26, 0x5c0
/* 8073C5D4  90 1A 0B 64 */	stw r0, 0xb64(r26)
/* 8073C5D8  38 00 00 01 */	li r0, 1
/* 8073C5DC  98 1A 0B 7A */	stb r0, 0xb7a(r26)
/* 8073C5E0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8073C5E4  D0 1A 05 30 */	stfs f0, 0x530(r26)
/* 8073C5E8  38 60 02 00 */	li r3, 0x200
/* 8073C5EC  38 9A 06 70 */	addi r4, r26, 0x670
/* 8073C5F0  4B 8D D4 3D */	bl fopAcM_SearchByName__FsPP10fopAc_ac_c
/* 8073C5F4  80 1A 00 B0 */	lwz r0, 0xb0(r26)
/* 8073C5F8  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8073C5FC  90 1A 06 8C */	stw r0, 0x68c(r26)
/* 8073C600  80 1A 00 B0 */	lwz r0, 0xb0(r26)
/* 8073C604  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 8073C608  98 1A 06 92 */	stb r0, 0x692(r26)
/* 8073C60C  88 1A 06 92 */	lbz r0, 0x692(r26)
/* 8073C610  28 00 00 FF */	cmplwi r0, 0xff
/* 8073C614  40 82 00 0C */	bne lbl_8073C620
/* 8073C618  38 00 00 00 */	li r0, 0
/* 8073C61C  98 1A 06 92 */	stb r0, 0x692(r26)
lbl_8073C620:
/* 8073C620  88 1A 06 92 */	lbz r0, 0x692(r26)
/* 8073C624  2C 00 00 02 */	cmpwi r0, 2
/* 8073C628  41 82 00 F0 */	beq lbl_8073C718
/* 8073C62C  40 80 00 14 */	bge lbl_8073C640
/* 8073C630  2C 00 00 00 */	cmpwi r0, 0
/* 8073C634  41 82 00 20 */	beq lbl_8073C654
/* 8073C638  40 80 00 5C */	bge lbl_8073C694
/* 8073C63C  48 00 01 00 */	b lbl_8073C73C
lbl_8073C640:
/* 8073C640  2C 00 00 04 */	cmpwi r0, 4
/* 8073C644  40 80 00 F8 */	bge lbl_8073C73C
/* 8073C648  80 1A 04 9C */	lwz r0, 0x49c(r26)
/* 8073C64C  60 00 80 00 */	ori r0, r0, 0x8000
/* 8073C650  90 1A 04 9C */	stw r0, 0x49c(r26)
lbl_8073C654:
/* 8073C654  80 1A 06 8C */	lwz r0, 0x68c(r26)
/* 8073C658  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8073C65C  38 9E 00 58 */	addi r4, r30, 0x58
/* 8073C660  7C 04 04 2E */	lfsx f0, r4, r0
/* 8073C664  D0 1A 06 64 */	stfs f0, 0x664(r26)
/* 8073C668  80 1A 06 8C */	lwz r0, 0x68c(r26)
/* 8073C66C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8073C670  7C 64 02 14 */	add r3, r4, r0
/* 8073C674  C0 03 00 04 */	lfs f0, 4(r3)
/* 8073C678  D0 1A 06 68 */	stfs f0, 0x668(r26)
/* 8073C67C  80 1A 06 8C */	lwz r0, 0x68c(r26)
/* 8073C680  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8073C684  7C 64 02 14 */	add r3, r4, r0
/* 8073C688  C0 03 00 08 */	lfs f0, 8(r3)
/* 8073C68C  D0 1A 06 6C */	stfs f0, 0x66c(r26)
/* 8073C690  48 00 00 AC */	b lbl_8073C73C
lbl_8073C694:
/* 8073C694  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8073C698  D0 1A 06 80 */	stfs f0, 0x680(r26)
/* 8073C69C  38 00 00 05 */	li r0, 5
/* 8073C6A0  90 1A 06 78 */	stw r0, 0x678(r26)
/* 8073C6A4  80 1A 09 18 */	lwz r0, 0x918(r26)
/* 8073C6A8  60 00 00 01 */	ori r0, r0, 1
/* 8073C6AC  90 1A 09 18 */	stw r0, 0x918(r26)
/* 8073C6B0  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 8073C6B4  D0 1A 05 30 */	stfs f0, 0x530(r26)
/* 8073C6B8  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 8073C6BC  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 8073C6C0  80 1A 06 70 */	lwz r0, 0x670(r26)
/* 8073C6C4  28 00 00 00 */	cmplwi r0, 0
/* 8073C6C8  41 82 00 74 */	beq lbl_8073C73C
/* 8073C6CC  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8073C6D0  4B B2 B2 BD */	bl cM_rndFX__Ff
/* 8073C6D4  80 7A 06 70 */	lwz r3, 0x670(r26)
/* 8073C6D8  A8 63 04 E6 */	lha r3, 0x4e6(r3)
/* 8073C6DC  38 03 80 00 */	addi r0, r3, -32768
/* 8073C6E0  C8 5F 00 80 */	lfd f2, 0x80(r31)
/* 8073C6E4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8073C6E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8073C6EC  3C 00 43 30 */	lis r0, 0x4330
/* 8073C6F0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8073C6F4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8073C6F8  EC 00 10 28 */	fsubs f0, f0, f2
/* 8073C6FC  EC 00 08 2A */	fadds f0, f0, f1
/* 8073C700  FC 00 00 1E */	fctiwz f0, f0
/* 8073C704  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8073C708  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8073C70C  B0 1A 04 DE */	sth r0, 0x4de(r26)
/* 8073C710  B0 1A 04 E6 */	sth r0, 0x4e6(r26)
/* 8073C714  48 00 00 28 */	b lbl_8073C73C
lbl_8073C718:
/* 8073C718  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8073C71C  D0 1A 06 80 */	stfs f0, 0x680(r26)
/* 8073C720  38 00 00 07 */	li r0, 7
/* 8073C724  90 1A 06 78 */	stw r0, 0x678(r26)
/* 8073C728  80 1A 09 18 */	lwz r0, 0x918(r26)
/* 8073C72C  60 00 00 01 */	ori r0, r0, 1
/* 8073C730  90 1A 09 18 */	stw r0, 0x918(r26)
/* 8073C734  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 8073C738  D0 1A 05 30 */	stfs f0, 0x530(r26)
lbl_8073C73C:
/* 8073C73C  38 00 00 00 */	li r0, 0
/* 8073C740  B0 1A 04 E8 */	sth r0, 0x4e8(r26)
/* 8073C744  B0 1A 04 E4 */	sth r0, 0x4e4(r26)
/* 8073C748  38 00 00 04 */	li r0, 4
/* 8073C74C  98 1A 05 46 */	stb r0, 0x546(r26)
/* 8073C750  7F 43 D3 78 */	mr r3, r26
/* 8073C754  4B FF E0 5D */	bl checkWaterSurface__8daE_OT_cFv
/* 8073C758  7F 43 D3 78 */	mr r3, r26
/* 8073C75C  4B FF F8 D5 */	bl daE_OT_Execute__FP8daE_OT_c
lbl_8073C760:
/* 8073C760  7F 63 DB 78 */	mr r3, r27
lbl_8073C764:
/* 8073C764  39 61 00 40 */	addi r11, r1, 0x40
/* 8073C768  4B C2 5A AD */	bl _restgpr_24
/* 8073C76C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8073C770  7C 08 03 A6 */	mtlr r0
/* 8073C774  38 21 00 40 */	addi r1, r1, 0x40
/* 8073C778  4E 80 00 20 */	blr 

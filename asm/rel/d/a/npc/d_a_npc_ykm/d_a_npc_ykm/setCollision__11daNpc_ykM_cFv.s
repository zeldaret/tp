lbl_80B560B4:
/* 80B560B4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80B560B8  7C 08 02 A6 */	mflr r0
/* 80B560BC  90 01 00 84 */	stw r0, 0x84(r1)
/* 80B560C0  39 61 00 80 */	addi r11, r1, 0x80
/* 80B560C4  4B 80 C0 E9 */	bl _savegpr_17
/* 80B560C8  7C 7A 1B 78 */	mr r26, r3
/* 80B560CC  3C 60 80 B6 */	lis r3, m__17daNpc_ykM_Param_c@ha /* 0x80B5D794@ha */
/* 80B560D0  3A 83 D7 94 */	addi r20, r3, m__17daNpc_ykM_Param_c@l /* 0x80B5D794@l */
/* 80B560D4  88 1A 0E 25 */	lbz r0, 0xe25(r26)
/* 80B560D8  28 00 00 00 */	cmplwi r0, 0
/* 80B560DC  40 82 02 5C */	bne lbl_80B56338
/* 80B560E0  88 1A 15 80 */	lbz r0, 0x1580(r26)
/* 80B560E4  28 00 00 00 */	cmplwi r0, 0
/* 80B560E8  40 82 02 50 */	bne lbl_80B56338
/* 80B560EC  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80B560F0  3B C3 FD FF */	addi r30, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80B560F4  3B A0 00 1F */	li r29, 0x1f
/* 80B560F8  3B 80 00 00 */	li r28, 0
/* 80B560FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B56100  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B56104  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80B56108  28 00 00 00 */	cmplwi r0, 0
/* 80B5610C  40 82 00 10 */	bne lbl_80B5611C
/* 80B56110  88 1A 15 81 */	lbz r0, 0x1581(r26)
/* 80B56114  28 00 00 00 */	cmplwi r0, 0
/* 80B56118  41 82 00 10 */	beq lbl_80B56128
lbl_80B5611C:
/* 80B5611C  3B C0 00 00 */	li r30, 0
/* 80B56120  3B A0 00 00 */	li r29, 0
/* 80B56124  48 00 00 40 */	b lbl_80B56164
lbl_80B56128:
/* 80B56128  88 1A 0A 89 */	lbz r0, 0xa89(r26)
/* 80B5612C  28 00 00 00 */	cmplwi r0, 0
/* 80B56130  41 82 00 10 */	beq lbl_80B56140
/* 80B56134  3B C0 00 00 */	li r30, 0
/* 80B56138  3B A0 00 00 */	li r29, 0
/* 80B5613C  48 00 00 28 */	b lbl_80B56164
lbl_80B56140:
/* 80B56140  A8 1A 0D 1C */	lha r0, 0xd1c(r26)
/* 80B56144  2C 00 00 00 */	cmpwi r0, 0
/* 80B56148  41 82 00 0C */	beq lbl_80B56154
/* 80B5614C  3B C0 00 00 */	li r30, 0
/* 80B56150  3B A0 00 00 */	li r29, 0
lbl_80B56154:
/* 80B56154  88 1A 15 7B */	lbz r0, 0x157b(r26)
/* 80B56158  28 00 00 00 */	cmplwi r0, 0
/* 80B5615C  41 82 00 08 */	beq lbl_80B56164
/* 80B56160  3B 80 00 13 */	li r28, 0x13
lbl_80B56164:
/* 80B56164  80 74 01 A0 */	lwz r3, 0x1a0(r20)
/* 80B56168  80 14 01 A4 */	lwz r0, 0x1a4(r20)
/* 80B5616C  90 61 00 18 */	stw r3, 0x18(r1)
/* 80B56170  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B56174  80 74 01 A8 */	lwz r3, 0x1a8(r20)
/* 80B56178  80 14 01 AC */	lwz r0, 0x1ac(r20)
/* 80B5617C  90 61 00 20 */	stw r3, 0x20(r1)
/* 80B56180  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B56184  80 74 01 B0 */	lwz r3, 0x1b0(r20)
/* 80B56188  80 14 01 B4 */	lwz r0, 0x1b4(r20)
/* 80B5618C  90 61 00 08 */	stw r3, 8(r1)
/* 80B56190  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B56194  80 74 01 B8 */	lwz r3, 0x1b8(r20)
/* 80B56198  80 14 01 BC */	lwz r0, 0x1bc(r20)
/* 80B5619C  90 61 00 10 */	stw r3, 0x10(r1)
/* 80B561A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B561A4  3B 60 00 00 */	li r27, 0
/* 80B561A8  3B 20 00 00 */	li r25, 0
/* 80B561AC  3B 00 00 00 */	li r24, 0
/* 80B561B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B561B4  3A A3 D4 70 */	addi r21, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B561B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B561BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B561C0  3B E3 23 3C */	addi r31, r3, 0x233c
/* 80B561C4  3E C0 00 40 */	lis r22, 0x40
/* 80B561C8  3A E1 00 18 */	addi r23, r1, 0x18
/* 80B561CC  3A 21 00 08 */	addi r17, r1, 8
lbl_80B561D0:
/* 80B561D0  38 00 00 79 */	li r0, 0x79
/* 80B561D4  7E 7A C2 14 */	add r19, r26, r24
/* 80B561D8  90 13 0F C0 */	stw r0, 0xfc0(r19)
/* 80B561DC  93 D3 0F BC */	stw r30, 0xfbc(r19)
/* 80B561E0  93 B3 0F AC */	stw r29, 0xfac(r19)
/* 80B561E4  92 D3 0F A4 */	stw r22, 0xfa4(r19)
/* 80B561E8  93 93 0F 94 */	stw r28, 0xf94(r19)
/* 80B561EC  80 13 10 30 */	lwz r0, 0x1030(r19)
/* 80B561F0  60 00 00 04 */	ori r0, r0, 4
/* 80B561F4  90 13 10 30 */	stw r0, 0x1030(r19)
/* 80B561F8  80 7A 05 78 */	lwz r3, 0x578(r26)
/* 80B561FC  80 63 00 04 */	lwz r3, 4(r3)
/* 80B56200  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B56204  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B56208  7E 57 C8 2E */	lwzx r18, r23, r25
/* 80B5620C  1C 12 00 30 */	mulli r0, r18, 0x30
/* 80B56210  7C 63 02 14 */	add r3, r3, r0
/* 80B56214  7E A4 AB 78 */	mr r4, r21
/* 80B56218  4B 7F 02 99 */	bl PSMTXCopy
/* 80B5621C  2C 12 00 1D */	cmpwi r18, 0x1d
/* 80B56220  40 82 00 30 */	bne lbl_80B56250
/* 80B56224  C0 14 01 C0 */	lfs f0, 0x1c0(r20)
/* 80B56228  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B5622C  C0 14 01 04 */	lfs f0, 0x104(r20)
/* 80B56230  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B56234  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B56238  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B5623C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B56240  38 81 00 28 */	addi r4, r1, 0x28
/* 80B56244  7C 85 23 78 */	mr r5, r4
/* 80B56248  4B 7F 0B 25 */	bl PSMTXMultVec
/* 80B5624C  48 00 00 1C */	b lbl_80B56268
lbl_80B56250:
/* 80B56250  C0 15 00 0C */	lfs f0, 0xc(r21)
/* 80B56254  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B56258  C0 15 00 1C */	lfs f0, 0x1c(r21)
/* 80B5625C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B56260  C0 15 00 2C */	lfs f0, 0x2c(r21)
/* 80B56264  D0 01 00 30 */	stfs f0, 0x30(r1)
lbl_80B56268:
/* 80B56268  3A 53 10 B8 */	addi r18, r19, 0x10b8
/* 80B5626C  7E 43 93 78 */	mr r3, r18
/* 80B56270  38 81 00 28 */	addi r4, r1, 0x28
/* 80B56274  4B 71 93 D5 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80B56278  7E 43 93 78 */	mr r3, r18
/* 80B5627C  7C 31 CC 2E */	lfsx f1, r17, r25
/* 80B56280  4B 71 94 89 */	bl SetR__8cM3dGSphFf
/* 80B56284  7F E3 FB 78 */	mr r3, r31
/* 80B56288  38 93 0F 94 */	addi r4, r19, 0xf94
/* 80B5628C  4B 70 E9 1D */	bl Set__4cCcSFP8cCcD_Obj
/* 80B56290  3B 7B 00 01 */	addi r27, r27, 1
/* 80B56294  2C 1B 00 04 */	cmpwi r27, 4
/* 80B56298  3B 39 00 04 */	addi r25, r25, 4
/* 80B5629C  3B 18 01 38 */	addi r24, r24, 0x138
/* 80B562A0  41 80 FF 30 */	blt lbl_80B561D0
/* 80B562A4  38 00 00 79 */	li r0, 0x79
/* 80B562A8  90 1A 0E 84 */	stw r0, 0xe84(r26)
/* 80B562AC  93 DA 0E 80 */	stw r30, 0xe80(r26)
/* 80B562B0  93 BA 0E 70 */	stw r29, 0xe70(r26)
/* 80B562B4  3C 00 00 40 */	lis r0, 0x40
/* 80B562B8  90 1A 0E 68 */	stw r0, 0xe68(r26)
/* 80B562BC  93 9A 0E 58 */	stw r28, 0xe58(r26)
/* 80B562C0  80 1A 0E F4 */	lwz r0, 0xef4(r26)
/* 80B562C4  60 00 00 04 */	ori r0, r0, 4
/* 80B562C8  90 1A 0E F4 */	stw r0, 0xef4(r26)
/* 80B562CC  38 7A 0F 7C */	addi r3, r26, 0xf7c
/* 80B562D0  C0 3A 0D EC */	lfs f1, 0xdec(r26)
/* 80B562D4  4B 71 8F 25 */	bl SetH__8cM3dGCylFf
/* 80B562D8  38 7A 0F 7C */	addi r3, r26, 0xf7c
/* 80B562DC  C0 3A 0D F0 */	lfs f1, 0xdf0(r26)
/* 80B562E0  4B 71 8F 21 */	bl SetR__8cM3dGCylFf
/* 80B562E4  80 7A 05 78 */	lwz r3, 0x578(r26)
/* 80B562E8  80 63 00 04 */	lwz r3, 4(r3)
/* 80B562EC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B562F0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B562F4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B562F8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B562FC  4B 7F 01 B5 */	bl PSMTXCopy
/* 80B56300  C0 15 00 0C */	lfs f0, 0xc(r21)
/* 80B56304  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B56308  C0 15 00 1C */	lfs f0, 0x1c(r21)
/* 80B5630C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B56310  C0 15 00 2C */	lfs f0, 0x2c(r21)
/* 80B56314  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B56318  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80B5631C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B56320  38 7A 0F 7C */	addi r3, r26, 0xf7c
/* 80B56324  38 81 00 28 */	addi r4, r1, 0x28
/* 80B56328  4B 71 8E B5 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80B5632C  7F E3 FB 78 */	mr r3, r31
/* 80B56330  38 9A 0E 58 */	addi r4, r26, 0xe58
/* 80B56334  4B 70 E8 75 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80B56338:
/* 80B56338  3A 40 00 00 */	li r18, 0
/* 80B5633C  3A 20 00 00 */	li r17, 0
lbl_80B56340:
/* 80B56340  38 71 0F 94 */	addi r3, r17, 0xf94
/* 80B56344  7C 7A 1A 14 */	add r3, r26, r3
/* 80B56348  81 83 00 3C */	lwz r12, 0x3c(r3)
/* 80B5634C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80B56350  7D 89 03 A6 */	mtctr r12
/* 80B56354  4E 80 04 21 */	bctrl 
/* 80B56358  3A 52 00 01 */	addi r18, r18, 1
/* 80B5635C  2C 12 00 04 */	cmpwi r18, 4
/* 80B56360  3A 31 01 38 */	addi r17, r17, 0x138
/* 80B56364  41 80 FF DC */	blt lbl_80B56340
/* 80B56368  38 7A 0E 58 */	addi r3, r26, 0xe58
/* 80B5636C  81 9A 0E 94 */	lwz r12, 0xe94(r26)
/* 80B56370  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80B56374  7D 89 03 A6 */	mtctr r12
/* 80B56378  4E 80 04 21 */	bctrl 
/* 80B5637C  3A 40 00 00 */	li r18, 0
/* 80B56380  3A 20 00 00 */	li r17, 0
lbl_80B56384:
/* 80B56384  38 71 0F 94 */	addi r3, r17, 0xf94
/* 80B56388  7C 7A 1A 14 */	add r3, r26, r3
/* 80B5638C  81 83 00 3C */	lwz r12, 0x3c(r3)
/* 80B56390  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B56394  7D 89 03 A6 */	mtctr r12
/* 80B56398  4E 80 04 21 */	bctrl 
/* 80B5639C  3A 52 00 01 */	addi r18, r18, 1
/* 80B563A0  2C 12 00 04 */	cmpwi r18, 4
/* 80B563A4  3A 31 01 38 */	addi r17, r17, 0x138
/* 80B563A8  41 80 FF DC */	blt lbl_80B56384
/* 80B563AC  38 7A 0E 58 */	addi r3, r26, 0xe58
/* 80B563B0  81 9A 0E 94 */	lwz r12, 0xe94(r26)
/* 80B563B4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B563B8  7D 89 03 A6 */	mtctr r12
/* 80B563BC  4E 80 04 21 */	bctrl 
/* 80B563C0  3A 40 00 00 */	li r18, 0
/* 80B563C4  3A 20 00 00 */	li r17, 0
lbl_80B563C8:
/* 80B563C8  38 71 0F 94 */	addi r3, r17, 0xf94
/* 80B563CC  7C 7A 1A 14 */	add r3, r26, r3
/* 80B563D0  81 83 00 3C */	lwz r12, 0x3c(r3)
/* 80B563D4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80B563D8  7D 89 03 A6 */	mtctr r12
/* 80B563DC  4E 80 04 21 */	bctrl 
/* 80B563E0  3A 52 00 01 */	addi r18, r18, 1
/* 80B563E4  2C 12 00 04 */	cmpwi r18, 4
/* 80B563E8  3A 31 01 38 */	addi r17, r17, 0x138
/* 80B563EC  41 80 FF DC */	blt lbl_80B563C8
/* 80B563F0  38 7A 0E 58 */	addi r3, r26, 0xe58
/* 80B563F4  81 9A 0E 94 */	lwz r12, 0xe94(r26)
/* 80B563F8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80B563FC  7D 89 03 A6 */	mtctr r12
/* 80B56400  4E 80 04 21 */	bctrl 
/* 80B56404  39 61 00 80 */	addi r11, r1, 0x80
/* 80B56408  4B 80 BD F1 */	bl _restgpr_17
/* 80B5640C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80B56410  7C 08 03 A6 */	mtlr r0
/* 80B56414  38 21 00 80 */	addi r1, r1, 0x80
/* 80B56418  4E 80 00 20 */	blr 

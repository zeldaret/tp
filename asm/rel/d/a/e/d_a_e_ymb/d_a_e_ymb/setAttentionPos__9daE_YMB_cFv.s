lbl_808203D8:
/* 808203D8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 808203DC  7C 08 02 A6 */	mflr r0
/* 808203E0  90 01 00 54 */	stw r0, 0x54(r1)
/* 808203E4  39 61 00 50 */	addi r11, r1, 0x50
/* 808203E8  4B B4 1D D9 */	bl _savegpr_22
/* 808203EC  7C 7C 1B 78 */	mr r28, r3
/* 808203F0  3C 60 80 82 */	lis r3, lit_3791@ha /* 0x808218AC@ha */
/* 808203F4  3B E3 18 AC */	addi r31, r3, lit_3791@l /* 0x808218AC@l */
/* 808203F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 808203FC  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80820400  80 79 5D AC */	lwz r3, 0x5dac(r25)
/* 80820404  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80820408  D0 01 00 08 */	stfs f0, 8(r1)
/* 8082040C  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80820410  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80820414  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80820418  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8082041C  80 7C 05 BC */	lwz r3, 0x5bc(r28)
/* 80820420  83 C3 00 04 */	lwz r30, 4(r3)
/* 80820424  80 1C 06 F4 */	lwz r0, 0x6f4(r28)
/* 80820428  2C 00 00 06 */	cmpwi r0, 6
/* 8082042C  41 80 00 0C */	blt lbl_80820438
/* 80820430  38 00 00 00 */	li r0, 0
/* 80820434  90 1C 05 5C */	stw r0, 0x55c(r28)
lbl_80820438:
/* 80820438  80 1C 06 F4 */	lwz r0, 0x6f4(r28)
/* 8082043C  2C 00 00 00 */	cmpwi r0, 0
/* 80820440  40 82 00 E8 */	bne lbl_80820528
/* 80820444  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80820448  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8082044C  38 63 00 30 */	addi r3, r3, 0x30
/* 80820450  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80820454  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80820458  4B B2 60 59 */	bl PSMTXCopy
/* 8082045C  80 79 5D AC */	lwz r3, 0x5dac(r25)
/* 80820460  88 03 05 68 */	lbz r0, 0x568(r3)
/* 80820464  28 00 00 39 */	cmplwi r0, 0x39
/* 80820468  41 82 00 10 */	beq lbl_80820478
/* 8082046C  80 1C 06 B4 */	lwz r0, 0x6b4(r28)
/* 80820470  2C 00 00 07 */	cmpwi r0, 7
/* 80820474  40 82 00 18 */	bne lbl_8082048C
lbl_80820478:
/* 80820478  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 8082047C  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 80820480  C0 7F 00 18 */	lfs f3, 0x18(r31)
/* 80820484  4B 7E C9 19 */	bl transM__14mDoMtx_stack_cFfff
/* 80820488  48 00 00 14 */	b lbl_8082049C
lbl_8082048C:
/* 8082048C  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80820490  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 80820494  C0 7F 00 18 */	lfs f3, 0x18(r31)
/* 80820498  4B 7E C9 05 */	bl transM__14mDoMtx_stack_cFfff
lbl_8082049C:
/* 8082049C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 808204A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 808204A4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 808204A8  D0 1C 05 50 */	stfs f0, 0x550(r28)
/* 808204AC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 808204B0  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 808204B4  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 808204B8  D0 1C 05 58 */	stfs f0, 0x558(r28)
/* 808204BC  C0 3C 05 54 */	lfs f1, 0x554(r28)
/* 808204C0  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 808204C4  EC 01 00 2A */	fadds f0, f1, f0
/* 808204C8  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 808204CC  38 00 00 10 */	li r0, 0x10
/* 808204D0  98 1C 07 20 */	stb r0, 0x720(r28)
/* 808204D4  7F 83 E3 78 */	mr r3, r28
/* 808204D8  38 81 00 14 */	addi r4, r1, 0x14
/* 808204DC  4B FF FB C5 */	bl getBellyBitePos__9daE_YMB_cFP4cXyz
/* 808204E0  38 7C 0B C0 */	addi r3, r28, 0xbc0
/* 808204E4  38 81 00 14 */	addi r4, r1, 0x14
/* 808204E8  4B A4 F1 61 */	bl SetC__8cM3dGSphFRC4cXyz
/* 808204EC  38 7C 0B C0 */	addi r3, r28, 0xbc0
/* 808204F0  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 808204F4  4B A4 F2 15 */	bl SetR__8cM3dGSphFf
/* 808204F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 808204FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80820500  38 63 23 3C */	addi r3, r3, 0x233c
/* 80820504  38 9C 0A 9C */	addi r4, r28, 0xa9c
/* 80820508  4B A4 46 A1 */	bl Set__4cCcSFP8cCcD_Obj
/* 8082050C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80820510  D0 1C 05 38 */	stfs f0, 0x538(r28)
/* 80820514  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80820518  D0 1C 05 3C */	stfs f0, 0x53c(r28)
/* 8082051C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80820520  D0 1C 05 40 */	stfs f0, 0x540(r28)
/* 80820524  48 00 01 20 */	b lbl_80820644
lbl_80820528:
/* 80820528  2C 00 00 07 */	cmpwi r0, 7
/* 8082052C  41 80 00 20 */	blt lbl_8082054C
/* 80820530  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80820534  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80820538  38 63 00 30 */	addi r3, r3, 0x30
/* 8082053C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80820540  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80820544  4B B2 5F 6D */	bl PSMTXCopy
/* 80820548  48 00 00 28 */	b lbl_80820570
lbl_8082054C:
/* 8082054C  7F 83 E3 78 */	mr r3, r28
/* 80820550  4B FF FB D9 */	bl getDownLockPoint__9daE_YMB_cFv
/* 80820554  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80820558  80 84 00 0C */	lwz r4, 0xc(r4)
/* 8082055C  1C 03 00 30 */	mulli r0, r3, 0x30
/* 80820560  7C 64 02 14 */	add r3, r4, r0
/* 80820564  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80820568  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8082056C  4B B2 5F 45 */	bl PSMTXCopy
lbl_80820570:
/* 80820570  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80820574  3B 23 D4 70 */	addi r25, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80820578  C0 19 00 0C */	lfs f0, 0xc(r25)
/* 8082057C  D0 1C 05 38 */	stfs f0, 0x538(r28)
/* 80820580  C0 19 00 1C */	lfs f0, 0x1c(r25)
/* 80820584  D0 1C 05 3C */	stfs f0, 0x53c(r28)
/* 80820588  C0 19 00 2C */	lfs f0, 0x2c(r25)
/* 8082058C  D0 1C 05 40 */	stfs f0, 0x540(r28)
/* 80820590  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 80820594  D0 1C 05 50 */	stfs f0, 0x550(r28)
/* 80820598  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 8082059C  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 808205A0  C0 1C 05 40 */	lfs f0, 0x540(r28)
/* 808205A4  D0 1C 05 58 */	stfs f0, 0x558(r28)
/* 808205A8  C0 3C 05 54 */	lfs f1, 0x554(r28)
/* 808205AC  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 808205B0  EC 01 00 2A */	fadds f0, f1, f0
/* 808205B4  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 808205B8  3B A0 00 00 */	li r29, 0
/* 808205BC  3B 60 00 00 */	li r27, 0
/* 808205C0  3B 40 00 00 */	li r26, 0
/* 808205C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 808205C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 808205CC  3B 03 23 3C */	addi r24, r3, 0x233c
lbl_808205D0:
/* 808205D0  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 808205D4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 808205D8  38 1A 00 14 */	addi r0, r26, 0x14
/* 808205DC  1C 00 00 30 */	mulli r0, r0, 0x30
/* 808205E0  7C 63 02 14 */	add r3, r3, r0
/* 808205E4  7F 24 CB 78 */	mr r4, r25
/* 808205E8  4B B2 5E C9 */	bl PSMTXCopy
/* 808205EC  C0 19 00 0C */	lfs f0, 0xc(r25)
/* 808205F0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 808205F4  C0 19 00 1C */	lfs f0, 0x1c(r25)
/* 808205F8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 808205FC  C0 19 00 2C */	lfs f0, 0x2c(r25)
/* 80820600  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80820604  7E DC DA 14 */	add r22, r28, r27
/* 80820608  3A F6 0C F8 */	addi r23, r22, 0xcf8
/* 8082060C  7E E3 BB 78 */	mr r3, r23
/* 80820610  38 81 00 14 */	addi r4, r1, 0x14
/* 80820614  4B A4 F0 35 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80820618  7E E3 BB 78 */	mr r3, r23
/* 8082061C  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80820620  4B A4 F0 E9 */	bl SetR__8cM3dGSphFf
/* 80820624  7F 03 C3 78 */	mr r3, r24
/* 80820628  38 96 0B D4 */	addi r4, r22, 0xbd4
/* 8082062C  4B A4 45 7D */	bl Set__4cCcSFP8cCcD_Obj
/* 80820630  3B BD 00 01 */	addi r29, r29, 1
/* 80820634  2C 1D 00 06 */	cmpwi r29, 6
/* 80820638  3B 7B 01 38 */	addi r27, r27, 0x138
/* 8082063C  3B 5A 00 02 */	addi r26, r26, 2
/* 80820640  41 80 FF 90 */	blt lbl_808205D0
lbl_80820644:
/* 80820644  7F 83 E3 78 */	mr r3, r28
/* 80820648  38 80 00 10 */	li r4, 0x10
/* 8082064C  4B FF 7C DD */	bl setBitePos__9daE_YMB_cFi
/* 80820650  39 61 00 50 */	addi r11, r1, 0x50
/* 80820654  4B B4 1B B9 */	bl _restgpr_22
/* 80820658  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8082065C  7C 08 03 A6 */	mtlr r0
/* 80820660  38 21 00 50 */	addi r1, r1, 0x50
/* 80820664  4E 80 00 20 */	blr 

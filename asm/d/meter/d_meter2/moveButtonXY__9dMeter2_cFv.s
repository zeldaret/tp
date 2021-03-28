lbl_80222518:
/* 80222518  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8022251C  7C 08 02 A6 */	mflr r0
/* 80222520  90 01 00 34 */	stw r0, 0x34(r1)
/* 80222524  39 61 00 30 */	addi r11, r1, 0x30
/* 80222528  48 13 FC A5 */	bl _savegpr_25
/* 8022252C  7C 7C 1B 78 */	mr r28, r3
/* 80222530  38 A0 00 00 */	li r5, 0
/* 80222534  38 81 00 0C */	addi r4, r1, 0xc
/* 80222538  38 61 00 08 */	addi r3, r1, 8
/* 8022253C  38 00 00 02 */	li r0, 2
/* 80222540  7C 09 03 A6 */	mtctr r0
lbl_80222544:
/* 80222544  98 A4 00 00 */	stb r5, 0(r4)
/* 80222548  98 A3 00 00 */	stb r5, 0(r3)
/* 8022254C  38 63 00 01 */	addi r3, r3, 1
/* 80222550  38 84 00 01 */	addi r4, r4, 1
/* 80222554  42 00 FF F0 */	bdnz lbl_80222544
/* 80222558  C0 1C 03 3C */	lfs f0, 0x33c(r28)
/* 8022255C  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80222560  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80222564  C0 23 01 44 */	lfs f1, 0x144(r3)
/* 80222568  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8022256C  41 82 00 10 */	beq lbl_8022257C
/* 80222570  D0 3C 03 3C */	stfs f1, 0x33c(r28)
/* 80222574  38 00 00 01 */	li r0, 1
/* 80222578  98 01 00 0C */	stb r0, 0xc(r1)
lbl_8022257C:
/* 8022257C  C0 1C 03 40 */	lfs f0, 0x340(r28)
/* 80222580  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80222584  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80222588  C0 23 01 4C */	lfs f1, 0x14c(r3)
/* 8022258C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80222590  41 82 00 10 */	beq lbl_802225A0
/* 80222594  D0 3C 03 40 */	stfs f1, 0x340(r28)
/* 80222598  38 00 00 01 */	li r0, 1
/* 8022259C  98 01 00 0C */	stb r0, 0xc(r1)
lbl_802225A0:
/* 802225A0  C0 1C 03 44 */	lfs f0, 0x344(r28)
/* 802225A4  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 802225A8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 802225AC  C0 23 01 50 */	lfs f1, 0x150(r3)
/* 802225B0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802225B4  41 82 00 10 */	beq lbl_802225C4
/* 802225B8  D0 3C 03 44 */	stfs f1, 0x344(r28)
/* 802225BC  38 00 00 01 */	li r0, 1
/* 802225C0  98 01 00 0C */	stb r0, 0xc(r1)
lbl_802225C4:
/* 802225C4  C0 1C 03 48 */	lfs f0, 0x348(r28)
/* 802225C8  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 802225CC  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 802225D0  C0 23 01 54 */	lfs f1, 0x154(r3)
/* 802225D4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802225D8  41 82 00 10 */	beq lbl_802225E8
/* 802225DC  D0 3C 03 48 */	stfs f1, 0x348(r28)
/* 802225E0  38 00 00 01 */	li r0, 1
/* 802225E4  98 01 00 0D */	stb r0, 0xd(r1)
lbl_802225E8:
/* 802225E8  C0 1C 03 4C */	lfs f0, 0x34c(r28)
/* 802225EC  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 802225F0  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 802225F4  C0 23 01 5C */	lfs f1, 0x15c(r3)
/* 802225F8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802225FC  41 82 00 10 */	beq lbl_8022260C
/* 80222600  D0 3C 03 4C */	stfs f1, 0x34c(r28)
/* 80222604  38 00 00 01 */	li r0, 1
/* 80222608  98 01 00 0D */	stb r0, 0xd(r1)
lbl_8022260C:
/* 8022260C  C0 1C 03 50 */	lfs f0, 0x350(r28)
/* 80222610  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80222614  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80222618  C0 23 01 60 */	lfs f1, 0x160(r3)
/* 8022261C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80222620  41 82 00 10 */	beq lbl_80222630
/* 80222624  D0 3C 03 50 */	stfs f1, 0x350(r28)
/* 80222628  38 00 00 01 */	li r0, 1
/* 8022262C  98 01 00 0D */	stb r0, 0xd(r1)
lbl_80222630:
/* 80222630  C0 1C 03 60 */	lfs f0, 0x360(r28)
/* 80222634  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80222638  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 8022263C  C0 23 01 BC */	lfs f1, 0x1bc(r3)
/* 80222640  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80222644  41 82 00 10 */	beq lbl_80222654
/* 80222648  D0 3C 03 60 */	stfs f1, 0x360(r28)
/* 8022264C  38 00 00 01 */	li r0, 1
/* 80222650  98 01 00 0C */	stb r0, 0xc(r1)
lbl_80222654:
/* 80222654  C0 1C 03 64 */	lfs f0, 0x364(r28)
/* 80222658  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8022265C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80222660  C0 23 01 B4 */	lfs f1, 0x1b4(r3)
/* 80222664  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80222668  41 82 00 10 */	beq lbl_80222678
/* 8022266C  D0 3C 03 64 */	stfs f1, 0x364(r28)
/* 80222670  38 00 00 01 */	li r0, 1
/* 80222674  98 01 00 0C */	stb r0, 0xc(r1)
lbl_80222678:
/* 80222678  C0 1C 03 68 */	lfs f0, 0x368(r28)
/* 8022267C  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80222680  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80222684  C0 23 01 B8 */	lfs f1, 0x1b8(r3)
/* 80222688  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8022268C  41 82 00 10 */	beq lbl_8022269C
/* 80222690  D0 3C 03 68 */	stfs f1, 0x368(r28)
/* 80222694  38 00 00 01 */	li r0, 1
/* 80222698  98 01 00 0C */	stb r0, 0xc(r1)
lbl_8022269C:
/* 8022269C  C0 1C 03 6C */	lfs f0, 0x36c(r28)
/* 802226A0  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 802226A4  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 802226A8  C0 23 01 C8 */	lfs f1, 0x1c8(r3)
/* 802226AC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802226B0  41 82 00 10 */	beq lbl_802226C0
/* 802226B4  D0 3C 03 6C */	stfs f1, 0x36c(r28)
/* 802226B8  38 00 00 01 */	li r0, 1
/* 802226BC  98 01 00 0D */	stb r0, 0xd(r1)
lbl_802226C0:
/* 802226C0  C0 1C 03 70 */	lfs f0, 0x370(r28)
/* 802226C4  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 802226C8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 802226CC  C0 23 01 C0 */	lfs f1, 0x1c0(r3)
/* 802226D0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802226D4  41 82 00 10 */	beq lbl_802226E4
/* 802226D8  D0 3C 03 70 */	stfs f1, 0x370(r28)
/* 802226DC  38 00 00 01 */	li r0, 1
/* 802226E0  98 01 00 0D */	stb r0, 0xd(r1)
lbl_802226E4:
/* 802226E4  C0 1C 03 74 */	lfs f0, 0x374(r28)
/* 802226E8  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 802226EC  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 802226F0  C0 23 01 C4 */	lfs f1, 0x1c4(r3)
/* 802226F4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802226F8  41 82 00 10 */	beq lbl_80222708
/* 802226FC  D0 3C 03 74 */	stfs f1, 0x374(r28)
/* 80222700  38 00 00 01 */	li r0, 1
/* 80222704  98 01 00 0D */	stb r0, 0xd(r1)
lbl_80222708:
/* 80222708  38 60 00 00 */	li r3, 0
/* 8022270C  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 80222710  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 80222714  38 00 00 02 */	li r0, 2
/* 80222718  7C 09 03 A6 */	mtctr r0
lbl_8022271C:
/* 8022271C  7C DC 1A 14 */	add r6, r28, r3
/* 80222720  C0 06 03 9C */	lfs f0, 0x39c(r6)
/* 80222724  7C A4 1A 14 */	add r5, r4, r3
/* 80222728  C0 25 02 40 */	lfs f1, 0x240(r5)
/* 8022272C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80222730  41 82 00 10 */	beq lbl_80222740
/* 80222734  D0 26 03 9C */	stfs f1, 0x39c(r6)
/* 80222738  38 00 00 01 */	li r0, 1
/* 8022273C  98 01 00 0C */	stb r0, 0xc(r1)
lbl_80222740:
/* 80222740  C0 06 03 A4 */	lfs f0, 0x3a4(r6)
/* 80222744  C0 25 02 48 */	lfs f1, 0x248(r5)
/* 80222748  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8022274C  41 82 00 10 */	beq lbl_8022275C
/* 80222750  D0 26 03 A4 */	stfs f1, 0x3a4(r6)
/* 80222754  38 00 00 01 */	li r0, 1
/* 80222758  98 01 00 0C */	stb r0, 0xc(r1)
lbl_8022275C:
/* 8022275C  C0 06 03 AC */	lfs f0, 0x3ac(r6)
/* 80222760  C0 25 02 50 */	lfs f1, 0x250(r5)
/* 80222764  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80222768  41 82 00 10 */	beq lbl_80222778
/* 8022276C  D0 26 03 AC */	stfs f1, 0x3ac(r6)
/* 80222770  38 00 00 01 */	li r0, 1
/* 80222774  98 01 00 0C */	stb r0, 0xc(r1)
lbl_80222778:
/* 80222778  C0 06 03 B4 */	lfs f0, 0x3b4(r6)
/* 8022277C  C0 25 02 60 */	lfs f1, 0x260(r5)
/* 80222780  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80222784  41 82 00 10 */	beq lbl_80222794
/* 80222788  D0 26 03 B4 */	stfs f1, 0x3b4(r6)
/* 8022278C  38 00 00 01 */	li r0, 1
/* 80222790  98 01 00 0D */	stb r0, 0xd(r1)
lbl_80222794:
/* 80222794  C0 06 03 BC */	lfs f0, 0x3bc(r6)
/* 80222798  C0 25 02 68 */	lfs f1, 0x268(r5)
/* 8022279C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802227A0  41 82 00 10 */	beq lbl_802227B0
/* 802227A4  D0 26 03 BC */	stfs f1, 0x3bc(r6)
/* 802227A8  38 00 00 01 */	li r0, 1
/* 802227AC  98 01 00 0D */	stb r0, 0xd(r1)
lbl_802227B0:
/* 802227B0  C0 06 03 C4 */	lfs f0, 0x3c4(r6)
/* 802227B4  C0 25 02 70 */	lfs f1, 0x270(r5)
/* 802227B8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802227BC  41 82 00 10 */	beq lbl_802227CC
/* 802227C0  D0 26 03 C4 */	stfs f1, 0x3c4(r6)
/* 802227C4  38 00 00 01 */	li r0, 1
/* 802227C8  98 01 00 0D */	stb r0, 0xd(r1)
lbl_802227CC:
/* 802227CC  38 63 00 04 */	addi r3, r3, 4
/* 802227D0  42 00 FF 4C */	bdnz lbl_8022271C
/* 802227D4  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 802227D8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 802227DC  88 03 05 68 */	lbz r0, 0x568(r3)
/* 802227E0  28 00 00 00 */	cmplwi r0, 0
/* 802227E4  41 82 00 34 */	beq lbl_80222818
/* 802227E8  88 1C 04 BD */	lbz r0, 0x4bd(r28)
/* 802227EC  88 63 05 69 */	lbz r3, 0x569(r3)
/* 802227F0  7C 00 18 40 */	cmplw r0, r3
/* 802227F4  41 82 00 24 */	beq lbl_80222818
/* 802227F8  98 7C 04 BD */	stb r3, 0x4bd(r28)
/* 802227FC  38 80 00 01 */	li r4, 1
/* 80222800  38 61 00 0C */	addi r3, r1, 0xc
/* 80222804  38 00 00 02 */	li r0, 2
/* 80222808  7C 09 03 A6 */	mtctr r0
lbl_8022280C:
/* 8022280C  98 83 00 00 */	stb r4, 0(r3)
/* 80222810  38 63 00 01 */	addi r3, r3, 1
/* 80222814  42 00 FF F8 */	bdnz lbl_8022280C
lbl_80222818:
/* 80222818  C0 1C 03 F0 */	lfs f0, 0x3f0(r28)
/* 8022281C  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80222820  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80222824  C0 23 02 F4 */	lfs f1, 0x2f4(r3)
/* 80222828  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8022282C  41 82 00 24 */	beq lbl_80222850
/* 80222830  D0 3C 03 F0 */	stfs f1, 0x3f0(r28)
/* 80222834  38 80 00 01 */	li r4, 1
/* 80222838  38 61 00 0C */	addi r3, r1, 0xc
/* 8022283C  38 00 00 02 */	li r0, 2
/* 80222840  7C 09 03 A6 */	mtctr r0
lbl_80222844:
/* 80222844  98 83 00 00 */	stb r4, 0(r3)
/* 80222848  38 63 00 01 */	addi r3, r3, 1
/* 8022284C  42 00 FF F8 */	bdnz lbl_80222844
lbl_80222850:
/* 80222850  C0 1C 03 F4 */	lfs f0, 0x3f4(r28)
/* 80222854  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80222858  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 8022285C  C0 23 02 F8 */	lfs f1, 0x2f8(r3)
/* 80222860  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80222864  41 82 00 24 */	beq lbl_80222888
/* 80222868  D0 3C 03 F4 */	stfs f1, 0x3f4(r28)
/* 8022286C  38 80 00 01 */	li r4, 1
/* 80222870  38 61 00 0C */	addi r3, r1, 0xc
/* 80222874  38 00 00 02 */	li r0, 2
/* 80222878  7C 09 03 A6 */	mtctr r0
lbl_8022287C:
/* 8022287C  98 83 00 00 */	stb r4, 0(r3)
/* 80222880  38 63 00 01 */	addi r3, r3, 1
/* 80222884  42 00 FF F8 */	bdnz lbl_8022287C
lbl_80222888:
/* 80222888  C0 1C 03 F8 */	lfs f0, 0x3f8(r28)
/* 8022288C  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80222890  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80222894  C0 23 02 FC */	lfs f1, 0x2fc(r3)
/* 80222898  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8022289C  41 82 00 24 */	beq lbl_802228C0
/* 802228A0  D0 3C 03 F8 */	stfs f1, 0x3f8(r28)
/* 802228A4  38 80 00 01 */	li r4, 1
/* 802228A8  38 61 00 0C */	addi r3, r1, 0xc
/* 802228AC  38 00 00 02 */	li r0, 2
/* 802228B0  7C 09 03 A6 */	mtctr r0
lbl_802228B4:
/* 802228B4  98 83 00 00 */	stb r4, 0(r3)
/* 802228B8  38 63 00 01 */	addi r3, r3, 1
/* 802228BC  42 00 FF F8 */	bdnz lbl_802228B4
lbl_802228C0:
/* 802228C0  38 C0 00 00 */	li r6, 0
/* 802228C4  38 60 00 00 */	li r3, 0
/* 802228C8  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 802228CC  38 A4 EB C8 */	addi r5, r4, g_drawHIO@l
/* 802228D0  38 00 00 03 */	li r0, 3
/* 802228D4  7C 09 03 A6 */	mtctr r0
lbl_802228D8:
/* 802228D8  38 03 03 90 */	addi r0, r3, 0x390
/* 802228DC  7C 1C 04 2E */	lfsx f0, r28, r0
/* 802228E0  7C 85 1A 14 */	add r4, r5, r3
/* 802228E4  C0 24 01 E4 */	lfs f1, 0x1e4(r4)
/* 802228E8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802228EC  41 82 00 14 */	beq lbl_80222900
/* 802228F0  7C 3C 05 2E */	stfsx f1, r28, r0
/* 802228F4  38 00 00 01 */	li r0, 1
/* 802228F8  38 81 00 0C */	addi r4, r1, 0xc
/* 802228FC  7C 04 31 AE */	stbx r0, r4, r6
lbl_80222900:
/* 80222900  7C 85 32 14 */	add r4, r5, r6
/* 80222904  88 04 04 26 */	lbz r0, 0x426(r4)
/* 80222908  28 00 00 00 */	cmplwi r0, 0
/* 8022290C  41 82 00 10 */	beq lbl_8022291C
/* 80222910  38 00 00 01 */	li r0, 1
/* 80222914  38 81 00 0C */	addi r4, r1, 0xc
/* 80222918  7C 04 31 AE */	stbx r0, r4, r6
lbl_8022291C:
/* 8022291C  C0 1C 04 30 */	lfs f0, 0x430(r28)
/* 80222920  C0 25 05 4C */	lfs f1, 0x54c(r5)
/* 80222924  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80222928  41 82 00 14 */	beq lbl_8022293C
/* 8022292C  D0 3C 04 30 */	stfs f1, 0x430(r28)
/* 80222930  38 00 00 01 */	li r0, 1
/* 80222934  38 81 00 0C */	addi r4, r1, 0xc
/* 80222938  7C 04 31 AE */	stbx r0, r4, r6
lbl_8022293C:
/* 8022293C  38 C6 00 01 */	addi r6, r6, 1
/* 80222940  38 63 00 04 */	addi r3, r3, 4
/* 80222944  42 00 FF 94 */	bdnz lbl_802228D8
/* 80222948  3B A0 00 00 */	li r29, 0
/* 8022294C  3B 40 00 00 */	li r26, 0
/* 80222950  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80222954  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80222958  3B 61 00 0C */	addi r27, r1, 0xc
lbl_8022295C:
/* 8022295C  80 7C 01 28 */	lwz r3, 0x128(r28)
/* 80222960  28 03 00 00 */	cmplwi r3, 0
/* 80222964  41 82 01 94 */	beq lbl_80222AF8
/* 80222968  80 1C 01 2C */	lwz r0, 0x12c(r28)
/* 8022296C  7C 03 00 40 */	cmplw r3, r0
/* 80222970  41 82 00 18 */	beq lbl_80222988
/* 80222974  38 00 00 01 */	li r0, 1
/* 80222978  38 61 00 08 */	addi r3, r1, 8
/* 8022297C  7C 03 E9 AE */	stbx r0, r3, r29
/* 80222980  38 61 00 0C */	addi r3, r1, 0xc
/* 80222984  7C 03 E9 AE */	stbx r0, r3, r29
lbl_80222988:
/* 80222988  2C 1D 00 00 */	cmpwi r29, 0
/* 8022298C  40 82 00 B4 */	bne lbl_80222A40
/* 80222990  88 7F 5E 5D */	lbz r3, 0x5e5d(r31)
/* 80222994  28 03 00 00 */	cmplwi r3, 0
/* 80222998  41 82 00 1C */	beq lbl_802229B4
/* 8022299C  88 1F 5E 5F */	lbz r0, 0x5e5f(r31)
/* 802229A0  98 7F 5E 5C */	stb r3, 0x5e5c(r31)
/* 802229A4  98 1F 5E 5E */	stb r0, 0x5e5e(r31)
/* 802229A8  38 00 00 00 */	li r0, 0
/* 802229AC  98 1F 5E 5D */	stb r0, 0x5e5d(r31)
/* 802229B0  98 1F 5E 5F */	stb r0, 0x5e5f(r31)
lbl_802229B4:
/* 802229B4  38 9A 01 D3 */	addi r4, r26, 0x1d3
/* 802229B8  7C 1C 20 AE */	lbzx r0, r28, r4
/* 802229BC  88 7F 5E 5C */	lbz r3, 0x5e5c(r31)
/* 802229C0  7C 00 18 40 */	cmplw r0, r3
/* 802229C4  41 82 00 3C */	beq lbl_80222A00
/* 802229C8  7C 7C 21 AE */	stbx r3, r28, r4
/* 802229CC  7C 1C 20 AE */	lbzx r0, r28, r4
/* 802229D0  28 00 00 2D */	cmplwi r0, 0x2d
/* 802229D4  41 82 00 0C */	beq lbl_802229E0
/* 802229D8  28 00 00 2E */	cmplwi r0, 0x2e
/* 802229DC  40 82 00 10 */	bne lbl_802229EC
lbl_802229E0:
/* 802229E0  98 1F 5E 5C */	stb r0, 0x5e5c(r31)
/* 802229E4  38 00 00 01 */	li r0, 1
/* 802229E8  98 1F 5E 5E */	stb r0, 0x5e5e(r31)
lbl_802229EC:
/* 802229EC  38 00 00 01 */	li r0, 1
/* 802229F0  38 61 00 08 */	addi r3, r1, 8
/* 802229F4  7C 03 E9 AE */	stbx r0, r3, r29
/* 802229F8  38 61 00 0C */	addi r3, r1, 0xc
/* 802229FC  7C 03 E9 AE */	stbx r0, r3, r29
lbl_80222A00:
/* 80222A00  88 1F 5E 5E */	lbz r0, 0x5e5e(r31)
/* 80222A04  54 04 07 BC */	rlwinm r4, r0, 0, 0x1e, 0x1e
/* 80222A08  54 03 FF FE */	rlwinm r3, r0, 0x1f, 0x1f, 0x1f
/* 80222A0C  38 BD 01 DF */	addi r5, r29, 0x1df
/* 80222A10  7C 1C 28 AE */	lbzx r0, r28, r5
/* 80222A14  7C 00 18 40 */	cmplw r0, r3
/* 80222A18  41 82 03 F4 */	beq lbl_80222E0C
/* 80222A1C  30 04 FF FF */	addic r0, r4, -1
/* 80222A20  7C 00 21 10 */	subfe r0, r0, r4
/* 80222A24  7C 1C 29 AE */	stbx r0, r28, r5
/* 80222A28  38 00 00 01 */	li r0, 1
/* 80222A2C  38 61 00 08 */	addi r3, r1, 8
/* 80222A30  7C 03 E9 AE */	stbx r0, r3, r29
/* 80222A34  38 61 00 0C */	addi r3, r1, 0xc
/* 80222A38  7C 03 E9 AE */	stbx r0, r3, r29
/* 80222A3C  48 00 03 D0 */	b lbl_80222E0C
lbl_80222A40:
/* 80222A40  2C 1D 00 01 */	cmpwi r29, 1
/* 80222A44  40 82 03 C8 */	bne lbl_80222E0C
/* 80222A48  88 7F 5E 61 */	lbz r3, 0x5e61(r31)
/* 80222A4C  28 03 00 00 */	cmplwi r3, 0
/* 80222A50  41 82 00 1C */	beq lbl_80222A6C
/* 80222A54  88 1F 5E 63 */	lbz r0, 0x5e63(r31)
/* 80222A58  98 7F 5E 60 */	stb r3, 0x5e60(r31)
/* 80222A5C  98 1F 5E 62 */	stb r0, 0x5e62(r31)
/* 80222A60  38 00 00 00 */	li r0, 0
/* 80222A64  98 1F 5E 61 */	stb r0, 0x5e61(r31)
/* 80222A68  98 1F 5E 63 */	stb r0, 0x5e63(r31)
lbl_80222A6C:
/* 80222A6C  38 9A 01 D3 */	addi r4, r26, 0x1d3
/* 80222A70  7C 1C 20 AE */	lbzx r0, r28, r4
/* 80222A74  88 7F 5E 60 */	lbz r3, 0x5e60(r31)
/* 80222A78  7C 00 18 40 */	cmplw r0, r3
/* 80222A7C  41 82 00 3C */	beq lbl_80222AB8
/* 80222A80  7C 7C 21 AE */	stbx r3, r28, r4
/* 80222A84  7C 1C 20 AE */	lbzx r0, r28, r4
/* 80222A88  28 00 00 2D */	cmplwi r0, 0x2d
/* 80222A8C  41 82 00 0C */	beq lbl_80222A98
/* 80222A90  28 00 00 2E */	cmplwi r0, 0x2e
/* 80222A94  40 82 00 10 */	bne lbl_80222AA4
lbl_80222A98:
/* 80222A98  98 1F 5E 60 */	stb r0, 0x5e60(r31)
/* 80222A9C  38 00 00 01 */	li r0, 1
/* 80222AA0  98 1F 5E 62 */	stb r0, 0x5e62(r31)
lbl_80222AA4:
/* 80222AA4  38 00 00 01 */	li r0, 1
/* 80222AA8  38 61 00 08 */	addi r3, r1, 8
/* 80222AAC  7C 03 E9 AE */	stbx r0, r3, r29
/* 80222AB0  38 61 00 0C */	addi r3, r1, 0xc
/* 80222AB4  7C 03 E9 AE */	stbx r0, r3, r29
lbl_80222AB8:
/* 80222AB8  88 1F 5E 62 */	lbz r0, 0x5e62(r31)
/* 80222ABC  54 04 07 BC */	rlwinm r4, r0, 0, 0x1e, 0x1e
/* 80222AC0  54 03 FF FE */	rlwinm r3, r0, 0x1f, 0x1f, 0x1f
/* 80222AC4  38 BD 01 DF */	addi r5, r29, 0x1df
/* 80222AC8  7C 1C 28 AE */	lbzx r0, r28, r5
/* 80222ACC  7C 00 18 40 */	cmplw r0, r3
/* 80222AD0  41 82 03 3C */	beq lbl_80222E0C
/* 80222AD4  30 04 FF FF */	addic r0, r4, -1
/* 80222AD8  7C 00 21 10 */	subfe r0, r0, r4
/* 80222ADC  7C 1C 29 AE */	stbx r0, r28, r5
/* 80222AE0  38 00 00 01 */	li r0, 1
/* 80222AE4  38 61 00 08 */	addi r3, r1, 8
/* 80222AE8  7C 03 E9 AE */	stbx r0, r3, r29
/* 80222AEC  38 61 00 0C */	addi r3, r1, 0xc
/* 80222AF0  7C 03 E9 AE */	stbx r0, r3, r29
/* 80222AF4  48 00 03 18 */	b lbl_80222E0C
lbl_80222AF8:
/* 80222AF8  7F A3 EB 78 */	mr r3, r29
/* 80222AFC  4B E0 B4 21 */	bl dComIfGp_getSelectItem__Fi
/* 80222B00  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80222B04  3B DA 01 D2 */	addi r30, r26, 0x1d2
/* 80222B08  7C 1C F0 AE */	lbzx r0, r28, r30
/* 80222B0C  7C 00 18 40 */	cmplw r0, r3
/* 80222B10  40 82 00 14 */	bne lbl_80222B24
/* 80222B14  80 7C 01 28 */	lwz r3, 0x128(r28)
/* 80222B18  80 1C 01 2C */	lwz r0, 0x12c(r28)
/* 80222B1C  7C 03 00 40 */	cmplw r3, r0
/* 80222B20  41 82 00 24 */	beq lbl_80222B44
lbl_80222B24:
/* 80222B24  7F A3 EB 78 */	mr r3, r29
/* 80222B28  4B E0 B3 F5 */	bl dComIfGp_getSelectItem__Fi
/* 80222B2C  7C 7C F1 AE */	stbx r3, r28, r30
/* 80222B30  38 00 00 01 */	li r0, 1
/* 80222B34  38 61 00 08 */	addi r3, r1, 8
/* 80222B38  7C 03 E9 AE */	stbx r0, r3, r29
/* 80222B3C  38 61 00 0C */	addi r3, r1, 0xc
/* 80222B40  7C 03 E9 AE */	stbx r0, r3, r29
lbl_80222B44:
/* 80222B44  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80222B48  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80222B4C  7F A4 EB 78 */	mr r4, r29
/* 80222B50  4B FF 9E 01 */	bl isDirectUseItem__13dMeter2Info_cFi
/* 80222B54  7F 3C EA 14 */	add r25, r28, r29
/* 80222B58  88 19 01 D6 */	lbz r0, 0x1d6(r25)
/* 80222B5C  7C 00 18 00 */	cmpw r0, r3
/* 80222B60  41 82 00 2C */	beq lbl_80222B8C
/* 80222B64  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80222B68  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80222B6C  7F A4 EB 78 */	mr r4, r29
/* 80222B70  4B FF 9D E1 */	bl isDirectUseItem__13dMeter2Info_cFi
/* 80222B74  98 79 01 D6 */	stb r3, 0x1d6(r25)
/* 80222B78  38 00 00 01 */	li r0, 1
/* 80222B7C  38 61 00 08 */	addi r3, r1, 8
/* 80222B80  7C 03 E9 AE */	stbx r0, r3, r29
/* 80222B84  38 61 00 0C */	addi r3, r1, 0xc
/* 80222B88  7C 03 E9 AE */	stbx r0, r3, r29
lbl_80222B8C:
/* 80222B8C  7C 1C F0 AE */	lbzx r0, r28, r30
/* 80222B90  28 00 00 48 */	cmplwi r0, 0x48
/* 80222B94  40 82 00 54 */	bne lbl_80222BE8
/* 80222B98  88 1C 01 EC */	lbz r0, 0x1ec(r28)
/* 80222B9C  28 00 00 00 */	cmplwi r0, 0
/* 80222BA0  40 82 00 24 */	bne lbl_80222BC4
/* 80222BA4  A0 1F 00 08 */	lhz r0, 8(r31)
/* 80222BA8  28 00 00 00 */	cmplwi r0, 0
/* 80222BAC  41 82 02 60 */	beq lbl_80222E0C
/* 80222BB0  38 00 00 01 */	li r0, 1
/* 80222BB4  98 1C 01 EC */	stb r0, 0x1ec(r28)
/* 80222BB8  38 61 00 0C */	addi r3, r1, 0xc
/* 80222BBC  7C 03 E9 AE */	stbx r0, r3, r29
/* 80222BC0  48 00 02 4C */	b lbl_80222E0C
lbl_80222BC4:
/* 80222BC4  A0 1F 00 08 */	lhz r0, 8(r31)
/* 80222BC8  28 00 00 00 */	cmplwi r0, 0
/* 80222BCC  40 82 02 40 */	bne lbl_80222E0C
/* 80222BD0  38 00 00 00 */	li r0, 0
/* 80222BD4  98 1C 01 EC */	stb r0, 0x1ec(r28)
/* 80222BD8  38 00 00 01 */	li r0, 1
/* 80222BDC  38 61 00 0C */	addi r3, r1, 0xc
/* 80222BE0  7C 03 E9 AE */	stbx r0, r3, r29
/* 80222BE4  48 00 02 28 */	b lbl_80222E0C
lbl_80222BE8:
/* 80222BE8  28 00 00 46 */	cmplwi r0, 0x46
/* 80222BEC  40 82 00 74 */	bne lbl_80222C60
/* 80222BF0  88 1C 01 ED */	lbz r0, 0x1ed(r28)
/* 80222BF4  28 00 00 00 */	cmplwi r0, 0
/* 80222BF8  40 82 00 34 */	bne lbl_80222C2C
/* 80222BFC  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80222C00  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80222C04  81 8C 02 A0 */	lwz r12, 0x2a0(r12)
/* 80222C08  7D 89 03 A6 */	mtctr r12
/* 80222C0C  4E 80 04 21 */	bctrl 
/* 80222C10  2C 03 00 00 */	cmpwi r3, 0
/* 80222C14  41 82 01 F8 */	beq lbl_80222E0C
/* 80222C18  38 00 00 01 */	li r0, 1
/* 80222C1C  98 1C 01 ED */	stb r0, 0x1ed(r28)
/* 80222C20  38 61 00 0C */	addi r3, r1, 0xc
/* 80222C24  7C 03 E9 AE */	stbx r0, r3, r29
/* 80222C28  48 00 01 E4 */	b lbl_80222E0C
lbl_80222C2C:
/* 80222C2C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80222C30  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80222C34  81 8C 02 A0 */	lwz r12, 0x2a0(r12)
/* 80222C38  7D 89 03 A6 */	mtctr r12
/* 80222C3C  4E 80 04 21 */	bctrl 
/* 80222C40  2C 03 00 00 */	cmpwi r3, 0
/* 80222C44  40 82 01 C8 */	bne lbl_80222E0C
/* 80222C48  38 00 00 00 */	li r0, 0
/* 80222C4C  98 1C 01 ED */	stb r0, 0x1ed(r28)
/* 80222C50  38 00 00 01 */	li r0, 1
/* 80222C54  38 61 00 0C */	addi r3, r1, 0xc
/* 80222C58  7C 03 E9 AE */	stbx r0, r3, r29
/* 80222C5C  48 00 01 B0 */	b lbl_80222E0C
lbl_80222C60:
/* 80222C60  28 00 00 50 */	cmplwi r0, 0x50
/* 80222C64  41 82 00 1C */	beq lbl_80222C80
/* 80222C68  28 00 00 70 */	cmplwi r0, 0x70
/* 80222C6C  41 82 00 14 */	beq lbl_80222C80
/* 80222C70  28 00 00 71 */	cmplwi r0, 0x71
/* 80222C74  41 82 00 0C */	beq lbl_80222C80
/* 80222C78  28 00 00 72 */	cmplwi r0, 0x72
/* 80222C7C  40 82 00 40 */	bne lbl_80222CBC
lbl_80222C80:
/* 80222C80  38 61 00 0C */	addi r3, r1, 0xc
/* 80222C84  7C 03 E8 AE */	lbzx r0, r3, r29
/* 80222C88  28 00 00 00 */	cmplwi r0, 0
/* 80222C8C  41 82 01 80 */	beq lbl_80222E0C
/* 80222C90  7F A3 EB 78 */	mr r3, r29
/* 80222C94  4B E0 B9 F5 */	bl dComIfGp_getSelectItemMaxNum__Fi
/* 80222C98  54 7E 06 3E */	clrlwi r30, r3, 0x18
/* 80222C9C  7F A3 EB 78 */	mr r3, r29
/* 80222CA0  4B E0 B9 21 */	bl dComIfGp_getSelectItemNum__Fi
/* 80222CA4  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 80222CA8  80 7C 01 0C */	lwz r3, 0x10c(r28)
/* 80222CAC  57 A4 06 3E */	clrlwi r4, r29, 0x18
/* 80222CB0  7F C6 F3 78 */	mr r6, r30
/* 80222CB4  4B FF 7E D1 */	bl setItemNum__13dMeter2Draw_cFUcUcUc
/* 80222CB8  48 00 01 54 */	b lbl_80222E0C
lbl_80222CBC:
/* 80222CBC  28 00 00 76 */	cmplwi r0, 0x76
/* 80222CC0  40 82 00 70 */	bne lbl_80222D30
/* 80222CC4  7F A3 EB 78 */	mr r3, r29
/* 80222CC8  4B E0 B8 F9 */	bl dComIfGp_getSelectItemNum__Fi
/* 80222CCC  7C 63 07 34 */	extsh r3, r3
/* 80222CD0  88 19 01 D8 */	lbz r0, 0x1d8(r25)
/* 80222CD4  7C 00 18 00 */	cmpw r0, r3
/* 80222CD8  41 82 00 1C */	beq lbl_80222CF4
/* 80222CDC  7F A3 EB 78 */	mr r3, r29
/* 80222CE0  4B E0 B8 E1 */	bl dComIfGp_getSelectItemNum__Fi
/* 80222CE4  98 79 01 D8 */	stb r3, 0x1d8(r25)
/* 80222CE8  38 00 00 01 */	li r0, 1
/* 80222CEC  38 61 00 0C */	addi r3, r1, 0xc
/* 80222CF0  7C 03 E9 AE */	stbx r0, r3, r29
lbl_80222CF4:
/* 80222CF4  38 61 00 0C */	addi r3, r1, 0xc
/* 80222CF8  7C 03 E8 AE */	lbzx r0, r3, r29
/* 80222CFC  28 00 00 00 */	cmplwi r0, 0
/* 80222D00  41 82 01 0C */	beq lbl_80222E0C
/* 80222D04  7F A3 EB 78 */	mr r3, r29
/* 80222D08  4B E0 B9 81 */	bl dComIfGp_getSelectItemMaxNum__Fi
/* 80222D0C  54 7E 06 3E */	clrlwi r30, r3, 0x18
/* 80222D10  7F A3 EB 78 */	mr r3, r29
/* 80222D14  4B E0 B8 AD */	bl dComIfGp_getSelectItemNum__Fi
/* 80222D18  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 80222D1C  80 7C 01 0C */	lwz r3, 0x10c(r28)
/* 80222D20  57 A4 06 3E */	clrlwi r4, r29, 0x18
/* 80222D24  7F C6 F3 78 */	mr r6, r30
/* 80222D28  4B FF 7E 5D */	bl setItemNum__13dMeter2Draw_cFUcUcUc
/* 80222D2C  48 00 00 E0 */	b lbl_80222E0C
lbl_80222D30:
/* 80222D30  28 00 00 43 */	cmplwi r0, 0x43
/* 80222D34  41 82 00 2C */	beq lbl_80222D60
/* 80222D38  28 00 00 53 */	cmplwi r0, 0x53
/* 80222D3C  41 82 00 24 */	beq lbl_80222D60
/* 80222D40  28 00 00 54 */	cmplwi r0, 0x54
/* 80222D44  41 82 00 1C */	beq lbl_80222D60
/* 80222D48  28 00 00 55 */	cmplwi r0, 0x55
/* 80222D4C  41 82 00 14 */	beq lbl_80222D60
/* 80222D50  28 00 00 56 */	cmplwi r0, 0x56
/* 80222D54  41 82 00 0C */	beq lbl_80222D60
/* 80222D58  28 00 00 5A */	cmplwi r0, 0x5a
/* 80222D5C  40 82 00 2C */	bne lbl_80222D88
lbl_80222D60:
/* 80222D60  38 61 00 0C */	addi r3, r1, 0xc
/* 80222D64  7C 03 E8 AE */	lbzx r0, r3, r29
/* 80222D68  28 00 00 00 */	cmplwi r0, 0
/* 80222D6C  41 82 00 A0 */	beq lbl_80222E0C
/* 80222D70  88 DF 00 F8 */	lbz r6, 0xf8(r31)
/* 80222D74  80 7C 01 0C */	lwz r3, 0x10c(r28)
/* 80222D78  57 A4 06 3E */	clrlwi r4, r29, 0x18
/* 80222D7C  88 BC 01 DA */	lbz r5, 0x1da(r28)
/* 80222D80  4B FF 7E 05 */	bl setItemNum__13dMeter2Draw_cFUcUcUc
/* 80222D84  48 00 00 88 */	b lbl_80222E0C
lbl_80222D88:
/* 80222D88  28 00 00 4B */	cmplwi r0, 0x4b
/* 80222D8C  40 82 00 2C */	bne lbl_80222DB8
/* 80222D90  38 61 00 0C */	addi r3, r1, 0xc
/* 80222D94  7C 03 E8 AE */	lbzx r0, r3, r29
/* 80222D98  28 00 00 00 */	cmplwi r0, 0
/* 80222D9C  41 82 00 70 */	beq lbl_80222E0C
/* 80222DA0  80 7C 01 0C */	lwz r3, 0x10c(r28)
/* 80222DA4  57 A4 06 3E */	clrlwi r4, r29, 0x18
/* 80222DA8  88 BC 01 DB */	lbz r5, 0x1db(r28)
/* 80222DAC  38 C0 00 32 */	li r6, 0x32
/* 80222DB0  4B FF 7D D5 */	bl setItemNum__13dMeter2Draw_cFUcUcUc
/* 80222DB4  48 00 00 58 */	b lbl_80222E0C
lbl_80222DB8:
/* 80222DB8  28 00 00 59 */	cmplwi r0, 0x59
/* 80222DBC  40 82 00 50 */	bne lbl_80222E0C
/* 80222DC0  7F A3 EB 78 */	mr r3, r29
/* 80222DC4  4B E0 B7 FD */	bl dComIfGp_getSelectItemNum__Fi
/* 80222DC8  54 79 06 3E */	clrlwi r25, r3, 0x18
/* 80222DCC  7F A3 EB 78 */	mr r3, r29
/* 80222DD0  4B E0 B8 B9 */	bl dComIfGp_getSelectItemMaxNum__Fi
/* 80222DD4  54 66 06 3E */	clrlwi r6, r3, 0x18
/* 80222DD8  88 1C 01 DA */	lbz r0, 0x1da(r28)
/* 80222DDC  7C 19 00 40 */	cmplw r25, r0
/* 80222DE0  40 81 00 08 */	ble lbl_80222DE8
/* 80222DE4  7C 19 03 78 */	mr r25, r0
lbl_80222DE8:
/* 80222DE8  88 7F 00 F8 */	lbz r3, 0xf8(r31)
/* 80222DEC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80222DF0  7C 06 00 40 */	cmplw r6, r0
/* 80222DF4  40 80 00 08 */	bge lbl_80222DFC
/* 80222DF8  7C 66 1B 78 */	mr r6, r3
lbl_80222DFC:
/* 80222DFC  80 7C 01 0C */	lwz r3, 0x10c(r28)
/* 80222E00  57 A4 06 3E */	clrlwi r4, r29, 0x18
/* 80222E04  7F 25 CB 78 */	mr r5, r25
/* 80222E08  4B FF 7D 7D */	bl setItemNum__13dMeter2Draw_cFUcUcUc
lbl_80222E0C:
/* 80222E0C  88 1B 00 00 */	lbz r0, 0(r27)
/* 80222E10  28 00 00 00 */	cmplwi r0, 0
/* 80222E14  41 82 00 30 */	beq lbl_80222E44
/* 80222E18  80 1C 01 28 */	lwz r0, 0x128(r28)
/* 80222E1C  7C 00 00 34 */	cntlzw r0, r0
/* 80222E20  54 07 D9 7E */	srwi r7, r0, 5
/* 80222E24  7C DC D2 14 */	add r6, r28, r26
/* 80222E28  80 7C 01 0C */	lwz r3, 0x10c(r28)
/* 80222E2C  7F A4 EB 78 */	mr r4, r29
/* 80222E30  88 A6 01 D2 */	lbz r5, 0x1d2(r6)
/* 80222E34  88 C6 01 D3 */	lbz r6, 0x1d3(r6)
/* 80222E38  39 01 00 08 */	addi r8, r1, 8
/* 80222E3C  7D 08 E8 AE */	lbzx r8, r8, r29
/* 80222E40  4B FF 4C 75 */	bl drawButtonXY__13dMeter2Draw_cFiUcUcbb
lbl_80222E44:
/* 80222E44  3B BD 00 01 */	addi r29, r29, 1
/* 80222E48  2C 1D 00 02 */	cmpwi r29, 2
/* 80222E4C  3B 7B 00 01 */	addi r27, r27, 1
/* 80222E50  3B 5A 00 02 */	addi r26, r26, 2
/* 80222E54  41 80 FB 08 */	blt lbl_8022295C
/* 80222E58  7F 83 E3 78 */	mr r3, r28
/* 80222E5C  48 00 22 99 */	bl alphaAnimeButton__9dMeter2_cFv
/* 80222E60  38 00 00 00 */	li r0, 0
/* 80222E64  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80222E68  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80222E6C  98 03 00 B8 */	stb r0, 0xb8(r3)
/* 80222E70  39 61 00 30 */	addi r11, r1, 0x30
/* 80222E74  48 13 F3 A5 */	bl _restgpr_25
/* 80222E78  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80222E7C  7C 08 03 A6 */	mtlr r0
/* 80222E80  38 21 00 30 */	addi r1, r1, 0x30
/* 80222E84  4E 80 00 20 */	blr 

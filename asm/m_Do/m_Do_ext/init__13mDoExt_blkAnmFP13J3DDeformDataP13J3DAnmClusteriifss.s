lbl_8000DA08:
/* 8000DA08  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8000DA0C  7C 08 02 A6 */	mflr r0
/* 8000DA10  90 01 00 34 */	stw r0, 0x34(r1)
/* 8000DA14  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 8000DA18  39 61 00 28 */	addi r11, r1, 0x28
/* 8000DA1C  48 35 47 B9 */	bl _savegpr_27
/* 8000DA20  7C 7B 1B 78 */	mr r27, r3
/* 8000DA24  7C DC 33 78 */	mr r28, r6
/* 8000DA28  7C FD 3B 78 */	mr r29, r7
/* 8000DA2C  FF E0 08 90 */	fmr f31, f1
/* 8000DA30  7D 1E 43 78 */	mr r30, r8
/* 8000DA34  7D 3F 4B 78 */	mr r31, r9
/* 8000DA38  90 A3 00 14 */	stw r5, 0x14(r3)
/* 8000DA3C  7C 83 23 78 */	mr r3, r4
/* 8000DA40  80 9B 00 14 */	lwz r4, 0x14(r27)
/* 8000DA44  48 32 09 21 */	bl setAnm__13J3DDeformDataFP13J3DAnmCluster
/* 8000DA48  2C 1C 00 00 */	cmpwi r28, 0
/* 8000DA4C  41 82 00 3C */	beq lbl_8000DA88
/* 8000DA50  2C 1D 00 00 */	cmpwi r29, 0
/* 8000DA54  40 80 00 10 */	bge lbl_8000DA64
/* 8000DA58  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 8000DA5C  88 A3 00 04 */	lbz r5, 4(r3)
/* 8000DA60  48 00 00 08 */	b lbl_8000DA68
lbl_8000DA64:
/* 8000DA64  7F A5 EB 78 */	mr r5, r29
lbl_8000DA68:
/* 8000DA68  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 8000DA6C  A8 83 00 06 */	lha r4, 6(r3)
/* 8000DA70  7F 63 DB 78 */	mr r3, r27
/* 8000DA74  FC 20 F8 90 */	fmr f1, f31
/* 8000DA78  7F C6 F3 78 */	mr r6, r30
/* 8000DA7C  7F E7 FB 78 */	mr r7, r31
/* 8000DA80  4B FF F8 A1 */	bl initPlay__14mDoExt_baseAnmFsifss
/* 8000DA84  48 00 00 08 */	b lbl_8000DA8C
lbl_8000DA88:
/* 8000DA88  38 60 00 01 */	li r3, 1
lbl_8000DA8C:
/* 8000DA8C  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 8000DA90  39 61 00 28 */	addi r11, r1, 0x28
/* 8000DA94  48 35 47 8D */	bl _restgpr_27
/* 8000DA98  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8000DA9C  7C 08 03 A6 */	mtlr r0
/* 8000DAA0  38 21 00 30 */	addi r1, r1, 0x30
/* 8000DAA4  4E 80 00 20 */	blr 

lbl_8000D63C:
/* 8000D63C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8000D640  7C 08 02 A6 */	mflr r0
/* 8000D644  90 01 00 34 */	stw r0, 0x34(r1)
/* 8000D648  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 8000D64C  39 61 00 28 */	addi r11, r1, 0x28
/* 8000D650  48 35 4B 85 */	bl _savegpr_27
/* 8000D654  7C 7B 1B 78 */	mr r27, r3
/* 8000D658  7C DC 33 78 */	mr r28, r6
/* 8000D65C  7C FD 3B 78 */	mr r29, r7
/* 8000D660  FF E0 08 90 */	fmr f31, f1
/* 8000D664  7D 1E 43 78 */	mr r30, r8
/* 8000D668  7D 3F 4B 78 */	mr r31, r9
/* 8000D66C  90 A3 00 14 */	stw r5, 0x14(r3)
/* 8000D670  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8000D674  48 31 DA 4D */	bl searchUpdateMaterialID__19J3DAnmTextureSRTKeyFP16J3DMaterialTable
/* 8000D678  2C 1C 00 00 */	cmpwi r28, 0
/* 8000D67C  41 82 00 3C */	beq lbl_8000D6B8
/* 8000D680  2C 1D 00 00 */	cmpwi r29, 0
/* 8000D684  40 80 00 10 */	bge lbl_8000D694
/* 8000D688  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 8000D68C  88 A3 00 04 */	lbz r5, 4(r3)
/* 8000D690  48 00 00 08 */	b lbl_8000D698
lbl_8000D694:
/* 8000D694  7F A5 EB 78 */	mr r5, r29
lbl_8000D698:
/* 8000D698  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 8000D69C  A8 83 00 06 */	lha r4, 6(r3)
/* 8000D6A0  7F 63 DB 78 */	mr r3, r27
/* 8000D6A4  FC 20 F8 90 */	fmr f1, f31
/* 8000D6A8  7F C6 F3 78 */	mr r6, r30
/* 8000D6AC  7F E7 FB 78 */	mr r7, r31
/* 8000D6B0  4B FF FC 71 */	bl initPlay__14mDoExt_baseAnmFsifss
/* 8000D6B4  48 00 00 08 */	b lbl_8000D6BC
lbl_8000D6B8:
/* 8000D6B8  38 60 00 01 */	li r3, 1
lbl_8000D6BC:
/* 8000D6BC  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 8000D6C0  39 61 00 28 */	addi r11, r1, 0x28
/* 8000D6C4  48 35 4B 5D */	bl _restgpr_27
/* 8000D6C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8000D6CC  7C 08 03 A6 */	mtlr r0
/* 8000D6D0  38 21 00 30 */	addi r1, r1, 0x30
/* 8000D6D4  4E 80 00 20 */	blr 

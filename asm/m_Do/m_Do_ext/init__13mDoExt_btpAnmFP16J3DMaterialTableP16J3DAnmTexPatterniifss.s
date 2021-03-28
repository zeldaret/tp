lbl_8000D54C:
/* 8000D54C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8000D550  7C 08 02 A6 */	mflr r0
/* 8000D554  90 01 00 34 */	stw r0, 0x34(r1)
/* 8000D558  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 8000D55C  39 61 00 28 */	addi r11, r1, 0x28
/* 8000D560  48 35 4C 75 */	bl _savegpr_27
/* 8000D564  7C 7B 1B 78 */	mr r27, r3
/* 8000D568  7C DC 33 78 */	mr r28, r6
/* 8000D56C  7C FD 3B 78 */	mr r29, r7
/* 8000D570  FF E0 08 90 */	fmr f31, f1
/* 8000D574  7D 1E 43 78 */	mr r30, r8
/* 8000D578  7D 3F 4B 78 */	mr r31, r9
/* 8000D57C  90 A3 00 14 */	stw r5, 0x14(r3)
/* 8000D580  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8000D584  48 31 DA 81 */	bl searchUpdateMaterialID__16J3DAnmTexPatternFP16J3DMaterialTable
/* 8000D588  2C 1C 00 00 */	cmpwi r28, 0
/* 8000D58C  41 82 00 3C */	beq lbl_8000D5C8
/* 8000D590  2C 1D 00 00 */	cmpwi r29, 0
/* 8000D594  40 80 00 10 */	bge lbl_8000D5A4
/* 8000D598  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 8000D59C  88 A3 00 04 */	lbz r5, 4(r3)
/* 8000D5A0  48 00 00 08 */	b lbl_8000D5A8
lbl_8000D5A4:
/* 8000D5A4  7F A5 EB 78 */	mr r5, r29
lbl_8000D5A8:
/* 8000D5A8  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 8000D5AC  A8 83 00 06 */	lha r4, 6(r3)
/* 8000D5B0  7F 63 DB 78 */	mr r3, r27
/* 8000D5B4  FC 20 F8 90 */	fmr f1, f31
/* 8000D5B8  7F C6 F3 78 */	mr r6, r30
/* 8000D5BC  7F E7 FB 78 */	mr r7, r31
/* 8000D5C0  4B FF FD 61 */	bl initPlay__14mDoExt_baseAnmFsifss
/* 8000D5C4  48 00 00 08 */	b lbl_8000D5CC
lbl_8000D5C8:
/* 8000D5C8  38 60 00 01 */	li r3, 1
lbl_8000D5CC:
/* 8000D5CC  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 8000D5D0  39 61 00 28 */	addi r11, r1, 0x28
/* 8000D5D4  48 35 4C 4D */	bl _restgpr_27
/* 8000D5D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8000D5DC  7C 08 03 A6 */	mtlr r0
/* 8000D5E0  38 21 00 30 */	addi r1, r1, 0x30
/* 8000D5E4  4E 80 00 20 */	blr 

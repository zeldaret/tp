lbl_8000D70C:
/* 8000D70C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8000D710  7C 08 02 A6 */	mflr r0
/* 8000D714  90 01 00 34 */	stw r0, 0x34(r1)
/* 8000D718  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 8000D71C  39 61 00 28 */	addi r11, r1, 0x28
/* 8000D720  48 35 4A B5 */	bl _savegpr_27
/* 8000D724  7C 7B 1B 78 */	mr r27, r3
/* 8000D728  7C DC 33 78 */	mr r28, r6
/* 8000D72C  7C FD 3B 78 */	mr r29, r7
/* 8000D730  FF E0 08 90 */	fmr f31, f1
/* 8000D734  7D 1E 43 78 */	mr r30, r8
/* 8000D738  7D 3F 4B 78 */	mr r31, r9
/* 8000D73C  90 A3 00 14 */	stw r5, 0x14(r3)
/* 8000D740  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8000D744  48 31 E0 3D */	bl searchUpdateMaterialID__15J3DAnmTevRegKeyFP16J3DMaterialTable
/* 8000D748  2C 1C 00 00 */	cmpwi r28, 0
/* 8000D74C  41 82 00 3C */	beq lbl_8000D788
/* 8000D750  2C 1D 00 00 */	cmpwi r29, 0
/* 8000D754  40 80 00 10 */	bge lbl_8000D764
/* 8000D758  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 8000D75C  88 A3 00 04 */	lbz r5, 4(r3)
/* 8000D760  48 00 00 08 */	b lbl_8000D768
lbl_8000D764:
/* 8000D764  7F A5 EB 78 */	mr r5, r29
lbl_8000D768:
/* 8000D768  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 8000D76C  A8 83 00 06 */	lha r4, 6(r3)
/* 8000D770  7F 63 DB 78 */	mr r3, r27
/* 8000D774  FC 20 F8 90 */	fmr f1, f31
/* 8000D778  7F C6 F3 78 */	mr r6, r30
/* 8000D77C  7F E7 FB 78 */	mr r7, r31
/* 8000D780  4B FF FB A1 */	bl initPlay__14mDoExt_baseAnmFsifss
/* 8000D784  48 00 00 08 */	b lbl_8000D78C
lbl_8000D788:
/* 8000D788  38 60 00 01 */	li r3, 1
lbl_8000D78C:
/* 8000D78C  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 8000D790  39 61 00 28 */	addi r11, r1, 0x28
/* 8000D794  48 35 4A 8D */	bl _restgpr_27
/* 8000D798  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8000D79C  7C 08 03 A6 */	mtlr r0
/* 8000D7A0  38 21 00 30 */	addi r1, r1, 0x30
/* 8000D7A4  4E 80 00 20 */	blr 

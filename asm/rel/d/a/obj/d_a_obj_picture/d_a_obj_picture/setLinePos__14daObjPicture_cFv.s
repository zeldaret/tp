lbl_80CAE76C:
/* 80CAE76C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80CAE770  7C 08 02 A6 */	mflr r0
/* 80CAE774  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80CAE778  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80CAE77C  4B 6B 3A 51 */	bl _savegpr_25
/* 80CAE780  7C 79 1B 78 */	mr r25, r3
/* 80CAE784  38 81 00 50 */	addi r4, r1, 0x50
/* 80CAE788  4B FF FF BD */	bl getPosTmg__14daObjPicture_cFP4cXyz
/* 80CAE78C  7F 23 CB 78 */	mr r3, r25
/* 80CAE790  38 80 00 00 */	li r4, 0
/* 80CAE794  38 A1 00 5C */	addi r5, r1, 0x5c
/* 80CAE798  4B FF FF 2D */	bl getLinePosPic__14daObjPicture_cFiP4cXyz
/* 80CAE79C  7F 23 CB 78 */	mr r3, r25
/* 80CAE7A0  38 80 00 01 */	li r4, 1
/* 80CAE7A4  38 A1 00 68 */	addi r5, r1, 0x68
/* 80CAE7A8  4B FF FF 1D */	bl getLinePosPic__14daObjPicture_cFiP4cXyz
/* 80CAE7AC  3B 60 00 00 */	li r27, 0
/* 80CAE7B0  3B E0 00 00 */	li r31, 0
/* 80CAE7B4  3B C0 00 00 */	li r30, 0
/* 80CAE7B8  3C 60 80 CB */	lis r3, lit_4280@ha /* 0x80CAF09C@ha */
/* 80CAE7BC  3B A3 F0 9C */	addi r29, r3, lit_4280@l /* 0x80CAF09C@l */
lbl_80CAE7C0:
/* 80CAE7C0  38 61 00 2C */	addi r3, r1, 0x2c
/* 80CAE7C4  38 81 00 50 */	addi r4, r1, 0x50
/* 80CAE7C8  3B 81 00 5C */	addi r28, r1, 0x5c
/* 80CAE7CC  7F 9C F2 14 */	add r28, r28, r30
/* 80CAE7D0  7F 85 E3 78 */	mr r5, r28
/* 80CAE7D4  4B 5B 83 61 */	bl __mi__4cXyzCFRC3Vec
/* 80CAE7D8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80CAE7DC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80CAE7E0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80CAE7E4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80CAE7E8  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80CAE7EC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80CAE7F0  38 61 00 20 */	addi r3, r1, 0x20
/* 80CAE7F4  38 81 00 44 */	addi r4, r1, 0x44
/* 80CAE7F8  4B 5B 87 51 */	bl normalizeZP__4cXyzFv
/* 80CAE7FC  38 1F 0C AC */	addi r0, r31, 0xcac
/* 80CAE800  7C 79 00 2E */	lwzx r3, r25, r0
/* 80CAE804  80 63 00 38 */	lwz r3, 0x38(r3)
/* 80CAE808  80 63 00 00 */	lwz r3, 0(r3)
/* 80CAE80C  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80CAE810  D0 03 00 00 */	stfs f0, 0(r3)
/* 80CAE814  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80CAE818  D0 03 00 04 */	stfs f0, 4(r3)
/* 80CAE81C  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80CAE820  D0 03 00 08 */	stfs f0, 8(r3)
/* 80CAE824  C0 03 00 00 */	lfs f0, 0(r3)
/* 80CAE828  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80CAE82C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CAE830  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80CAE834  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CAE838  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80CAE83C  3B 40 00 01 */	li r26, 1
/* 80CAE840  3B 83 00 0C */	addi r28, r3, 0xc
lbl_80CAE844:
/* 80CAE844  38 61 00 14 */	addi r3, r1, 0x14
/* 80CAE848  38 81 00 44 */	addi r4, r1, 0x44
/* 80CAE84C  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80CAE850  4B 5B 83 35 */	bl __ml__4cXyzCFf
/* 80CAE854  38 61 00 08 */	addi r3, r1, 8
/* 80CAE858  38 81 00 38 */	addi r4, r1, 0x38
/* 80CAE85C  38 A1 00 14 */	addi r5, r1, 0x14
/* 80CAE860  4B 5B 82 85 */	bl __pl__4cXyzCFRC3Vec
/* 80CAE864  C0 01 00 08 */	lfs f0, 8(r1)
/* 80CAE868  D0 1C 00 00 */	stfs f0, 0(r28)
/* 80CAE86C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80CAE870  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80CAE874  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80CAE878  D0 1C 00 08 */	stfs f0, 8(r28)
/* 80CAE87C  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80CAE880  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80CAE884  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80CAE888  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80CAE88C  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80CAE890  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80CAE894  3B 5A 00 01 */	addi r26, r26, 1
/* 80CAE898  2C 1A 00 09 */	cmpwi r26, 9
/* 80CAE89C  3B 9C 00 0C */	addi r28, r28, 0xc
/* 80CAE8A0  41 80 FF A4 */	blt lbl_80CAE844
/* 80CAE8A4  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80CAE8A8  D0 1C 00 00 */	stfs f0, 0(r28)
/* 80CAE8AC  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80CAE8B0  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80CAE8B4  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80CAE8B8  D0 1C 00 08 */	stfs f0, 8(r28)
/* 80CAE8BC  3B 7B 00 01 */	addi r27, r27, 1
/* 80CAE8C0  2C 1B 00 02 */	cmpwi r27, 2
/* 80CAE8C4  3B FF 00 04 */	addi r31, r31, 4
/* 80CAE8C8  3B DE 00 0C */	addi r30, r30, 0xc
/* 80CAE8CC  41 80 FE F4 */	blt lbl_80CAE7C0
/* 80CAE8D0  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80CAE8D4  4B 6B 39 45 */	bl _restgpr_25
/* 80CAE8D8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80CAE8DC  7C 08 03 A6 */	mtlr r0
/* 80CAE8E0  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80CAE8E4  4E 80 00 20 */	blr 

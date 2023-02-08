lbl_8032181C:
/* 8032181C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80321820  7C 08 02 A6 */	mflr r0
/* 80321824  90 01 00 24 */	stw r0, 0x24(r1)
/* 80321828  39 61 00 20 */	addi r11, r1, 0x20
/* 8032182C  48 04 09 AD */	bl _savegpr_28
/* 80321830  7C 7E 1B 78 */	mr r30, r3
/* 80321834  3B E0 00 00 */	li r31, 0
/* 80321838  3B A0 00 00 */	li r29, 0
/* 8032183C  3B 80 00 00 */	li r28, 0
lbl_80321840:
/* 80321840  38 BC 00 38 */	addi r5, r28, 0x38
/* 80321844  7C 7E 28 2E */	lwzx r3, r30, r5
/* 80321848  28 03 00 00 */	cmplwi r3, 0
/* 8032184C  41 82 00 C0 */	beq lbl_8032190C
/* 80321850  88 03 00 01 */	lbz r0, 1(r3)
/* 80321854  54 06 06 BE */	clrlwi r6, r0, 0x1a
/* 80321858  7C 9E EA 14 */	add r4, r30, r29
/* 8032185C  88 04 00 0A */	lbz r0, 0xa(r4)
/* 80321860  B0 04 00 0C */	sth r0, 0xc(r4)
/* 80321864  28 06 00 0B */	cmplwi r6, 0xb
/* 80321868  41 81 00 8C */	bgt lbl_803218F4
/* 8032186C  3C 60 80 3D */	lis r3, lit_5187@ha /* 0x803CDFC0@ha */
/* 80321870  38 63 DF C0 */	addi r3, r3, lit_5187@l /* 0x803CDFC0@l */
/* 80321874  54 C0 10 3A */	slwi r0, r6, 2
/* 80321878  7C 03 00 2E */	lwzx r0, r3, r0
/* 8032187C  7C 09 03 A6 */	mtctr r0
/* 80321880  4E 80 04 20 */	bctr 
/* 80321884  38 00 00 1E */	li r0, 0x1e
/* 80321888  B0 04 00 0C */	sth r0, 0xc(r4)
/* 8032188C  7C 7E 28 2E */	lwzx r3, r30, r5
/* 80321890  3C 80 80 3A */	lis r4, j3dDefaultMtx@ha /* 0x803A1E5C@ha */
/* 80321894  38 84 1E 5C */	addi r4, r4, j3dDefaultMtx@l /* 0x803A1E5C@l */
/* 80321898  48 00 23 75 */	bl calcPostTexMtx__9J3DTexMtxFPA4_Cf
/* 8032189C  48 00 00 70 */	b lbl_8032190C
/* 803218A0  38 00 00 00 */	li r0, 0
/* 803218A4  B0 04 00 0C */	sth r0, 0xc(r4)
/* 803218A8  7C 7E 28 2E */	lwzx r3, r30, r5
/* 803218AC  3C 80 80 3A */	lis r4, j3dDefaultMtx@ha /* 0x803A1E5C@ha */
/* 803218B0  38 84 1E 5C */	addi r4, r4, j3dDefaultMtx@l /* 0x803A1E5C@l */
/* 803218B4  48 00 23 59 */	bl calcPostTexMtx__9J3DTexMtxFPA4_Cf
/* 803218B8  48 00 00 54 */	b lbl_8032190C
/* 803218BC  38 00 00 00 */	li r0, 0
/* 803218C0  B0 04 00 0C */	sth r0, 0xc(r4)
/* 803218C4  7C 7E 28 2E */	lwzx r3, r30, r5
/* 803218C8  3C 80 80 3A */	lis r4, j3dDefaultMtx@ha /* 0x803A1E5C@ha */
/* 803218CC  38 84 1E 5C */	addi r4, r4, j3dDefaultMtx@l /* 0x803A1E5C@l */
/* 803218D0  48 00 23 3D */	bl calcPostTexMtx__9J3DTexMtxFPA4_Cf
/* 803218D4  48 00 00 38 */	b lbl_8032190C
/* 803218D8  38 00 00 1E */	li r0, 0x1e
/* 803218DC  B0 04 00 0C */	sth r0, 0xc(r4)
/* 803218E0  7C 7E 28 2E */	lwzx r3, r30, r5
/* 803218E4  3C 80 80 3A */	lis r4, j3dDefaultMtx@ha /* 0x803A1E5C@ha */
/* 803218E8  38 84 1E 5C */	addi r4, r4, j3dDefaultMtx@l /* 0x803A1E5C@l */
/* 803218EC  48 00 23 21 */	bl calcPostTexMtx__9J3DTexMtxFPA4_Cf
/* 803218F0  48 00 00 1C */	b lbl_8032190C
lbl_803218F4:
/* 803218F4  38 00 00 3C */	li r0, 0x3c
/* 803218F8  B0 04 00 0C */	sth r0, 0xc(r4)
/* 803218FC  7C 7E 28 2E */	lwzx r3, r30, r5
/* 80321900  3C 80 80 3A */	lis r4, j3dDefaultMtx@ha /* 0x803A1E5C@ha */
/* 80321904  38 84 1E 5C */	addi r4, r4, j3dDefaultMtx@l /* 0x803A1E5C@l */
/* 80321908  48 00 23 05 */	bl calcPostTexMtx__9J3DTexMtxFPA4_Cf
lbl_8032190C:
/* 8032190C  3B FF 00 01 */	addi r31, r31, 1
/* 80321910  2C 1F 00 08 */	cmpwi r31, 8
/* 80321914  3B BD 00 06 */	addi r29, r29, 6
/* 80321918  3B 9C 00 04 */	addi r28, r28, 4
/* 8032191C  41 80 FF 24 */	blt lbl_80321840
/* 80321920  39 61 00 20 */	addi r11, r1, 0x20
/* 80321924  48 04 09 01 */	bl _restgpr_28
/* 80321928  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032192C  7C 08 03 A6 */	mtlr r0
/* 80321930  38 21 00 20 */	addi r1, r1, 0x20
/* 80321934  4E 80 00 20 */	blr 

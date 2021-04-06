lbl_806F8714:
/* 806F8714  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806F8718  7C 08 02 A6 */	mflr r0
/* 806F871C  90 01 00 44 */	stw r0, 0x44(r1)
/* 806F8720  39 61 00 40 */	addi r11, r1, 0x40
/* 806F8724  4B C6 9A B1 */	bl _savegpr_27
/* 806F8728  7C 7C 1B 78 */	mr r28, r3
/* 806F872C  3C 80 80 70 */	lis r4, lit_3788@ha /* 0x806FA3A4@ha */
/* 806F8730  3B E4 A3 A4 */	addi r31, r4, lit_3788@l /* 0x806FA3A4@l */
/* 806F8734  80 83 05 B8 */	lwz r4, 0x5b8(r3)
/* 806F8738  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 806F873C  FC 00 00 1E */	fctiwz f0, f0
/* 806F8740  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 806F8744  83 61 00 1C */	lwz r27, 0x1c(r1)
/* 806F8748  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806F874C  3B C0 00 00 */	li r30, 0
/* 806F8750  3B A0 00 00 */	li r29, 0
/* 806F8754  A8 03 06 78 */	lha r0, 0x678(r3)
/* 806F8758  2C 00 00 03 */	cmpwi r0, 3
/* 806F875C  41 82 01 E0 */	beq lbl_806F893C
/* 806F8760  40 80 00 1C */	bge lbl_806F877C
/* 806F8764  2C 00 00 01 */	cmpwi r0, 1
/* 806F8768  41 82 00 6C */	beq lbl_806F87D4
/* 806F876C  40 80 01 34 */	bge lbl_806F88A0
/* 806F8770  2C 00 00 00 */	cmpwi r0, 0
/* 806F8774  40 80 00 18 */	bge lbl_806F878C
/* 806F8778  48 00 02 98 */	b lbl_806F8A10
lbl_806F877C:
/* 806F877C  2C 00 00 05 */	cmpwi r0, 5
/* 806F8780  41 82 02 78 */	beq lbl_806F89F8
/* 806F8784  40 80 02 8C */	bge lbl_806F8A10
/* 806F8788  48 00 01 EC */	b lbl_806F8974
lbl_806F878C:
/* 806F878C  38 80 00 0F */	li r4, 0xf
/* 806F8790  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 806F8794  38 A0 00 02 */	li r5, 2
/* 806F8798  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 806F879C  4B FF F7 89 */	bl anm_init__FP10e_kg_classifUcf
/* 806F87A0  38 00 00 01 */	li r0, 1
/* 806F87A4  B0 1C 06 78 */	sth r0, 0x678(r28)
/* 806F87A8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700C0@ha */
/* 806F87AC  38 03 00 C0 */	addi r0, r3, 0x00C0 /* 0x000700C0@l */
/* 806F87B0  90 01 00 10 */	stw r0, 0x10(r1)
/* 806F87B4  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 806F87B8  38 81 00 10 */	addi r4, r1, 0x10
/* 806F87BC  38 A0 FF FF */	li r5, -1
/* 806F87C0  81 9C 05 BC */	lwz r12, 0x5bc(r28)
/* 806F87C4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806F87C8  7D 89 03 A6 */	mtctr r12
/* 806F87CC  4E 80 04 21 */	bctrl 
/* 806F87D0  48 00 02 40 */	b lbl_806F8A10
lbl_806F87D4:
/* 806F87D4  3B C0 07 00 */	li r30, 0x700
/* 806F87D8  2C 1B 00 03 */	cmpwi r27, 3
/* 806F87DC  40 81 00 1C */	ble lbl_806F87F8
/* 806F87E0  2C 1B 00 0B */	cmpwi r27, 0xb
/* 806F87E4  41 80 00 0C */	blt lbl_806F87F0
/* 806F87E8  2C 1B 00 12 */	cmpwi r27, 0x12
/* 806F87EC  40 81 00 0C */	ble lbl_806F87F8
lbl_806F87F0:
/* 806F87F0  2C 1B 00 1A */	cmpwi r27, 0x1a
/* 806F87F4  41 80 00 18 */	blt lbl_806F880C
lbl_806F87F8:
/* 806F87F8  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 806F87FC  3C 60 80 70 */	lis r3, l_HIO@ha /* 0x806FA5F8@ha */
/* 806F8800  38 63 A5 F8 */	addi r3, r3, l_HIO@l /* 0x806FA5F8@l */
/* 806F8804  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806F8808  EC 01 00 32 */	fmuls f0, f1, f0
lbl_806F880C:
/* 806F880C  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 806F8810  7F 83 E3 78 */	mr r3, r28
/* 806F8814  C0 3F 00 00 */	lfs f1, 0(r31)
/* 806F8818  3C 80 80 70 */	lis r4, l_HIO@ha /* 0x806FA5F8@ha */
/* 806F881C  38 84 A5 F8 */	addi r4, r4, l_HIO@l /* 0x806FA5F8@l */
/* 806F8820  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 806F8824  EC 21 00 2A */	fadds f1, f1, f0
/* 806F8828  38 80 70 00 */	li r4, 0x7000
/* 806F882C  4B FF F9 7D */	bl pl_check__FP10e_kg_classfs
/* 806F8830  2C 03 00 00 */	cmpwi r3, 0
/* 806F8834  40 82 00 18 */	bne lbl_806F884C
/* 806F8838  38 00 00 00 */	li r0, 0
/* 806F883C  B0 1C 06 76 */	sth r0, 0x676(r28)
/* 806F8840  B0 1C 06 78 */	sth r0, 0x678(r28)
/* 806F8844  B0 1C 06 94 */	sth r0, 0x694(r28)
/* 806F8848  48 00 01 C8 */	b lbl_806F8A10
lbl_806F884C:
/* 806F884C  C0 3C 06 90 */	lfs f1, 0x690(r28)
/* 806F8850  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 806F8854  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806F8858  40 80 01 B8 */	bge lbl_806F8A10
/* 806F885C  7F 83 E3 78 */	mr r3, r28
/* 806F8860  38 80 00 05 */	li r4, 5
/* 806F8864  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 806F8868  38 A0 00 00 */	li r5, 0
/* 806F886C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806F8870  4B FF F6 B5 */	bl anm_init__FP10e_kg_classifUcf
/* 806F8874  38 00 00 02 */	li r0, 2
/* 806F8878  B0 1C 06 78 */	sth r0, 0x678(r28)
/* 806F887C  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 806F8880  4B B6 F0 D5 */	bl cM_rndF__Ff
/* 806F8884  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806F8888  EC 00 08 2A */	fadds f0, f0, f1
/* 806F888C  FC 00 00 1E */	fctiwz f0, f0
/* 806F8890  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 806F8894  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 806F8898  B0 1C 06 6C */	sth r0, 0x66c(r28)
/* 806F889C  48 00 01 74 */	b lbl_806F8A10
lbl_806F88A0:
/* 806F88A0  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 806F88A4  2C 1B 00 32 */	cmpwi r27, 0x32
/* 806F88A8  40 82 00 2C */	bne lbl_806F88D4
/* 806F88AC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700BE@ha */
/* 806F88B0  38 03 00 BE */	addi r0, r3, 0x00BE /* 0x000700BE@l */
/* 806F88B4  90 01 00 0C */	stw r0, 0xc(r1)
/* 806F88B8  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 806F88BC  38 81 00 0C */	addi r4, r1, 0xc
/* 806F88C0  38 A0 FF FF */	li r5, -1
/* 806F88C4  81 9C 05 BC */	lwz r12, 0x5bc(r28)
/* 806F88C8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806F88CC  7D 89 03 A6 */	mtctr r12
/* 806F88D0  4E 80 04 21 */	bctrl 
lbl_806F88D4:
/* 806F88D4  2C 1B 00 3A */	cmpwi r27, 0x3a
/* 806F88D8  40 80 00 08 */	bge lbl_806F88E0
/* 806F88DC  3B C0 04 00 */	li r30, 0x400
lbl_806F88E0:
/* 806F88E0  2C 1B 00 3F */	cmpwi r27, 0x3f
/* 806F88E4  41 80 01 2C */	blt lbl_806F8A10
/* 806F88E8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806F88EC  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 806F88F0  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 806F88F4  38 00 00 03 */	li r0, 3
/* 806F88F8  B0 1C 06 78 */	sth r0, 0x678(r28)
/* 806F88FC  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 806F8900  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 806F8904  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 806F8908  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 806F890C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700BD@ha */
/* 806F8910  38 03 00 BD */	addi r0, r3, 0x00BD /* 0x000700BD@l */
/* 806F8914  90 01 00 08 */	stw r0, 8(r1)
/* 806F8918  38 7C 05 BC */	addi r3, r28, 0x5bc
/* 806F891C  38 81 00 08 */	addi r4, r1, 8
/* 806F8920  38 A0 00 00 */	li r5, 0
/* 806F8924  38 C0 FF FF */	li r6, -1
/* 806F8928  81 9C 05 BC */	lwz r12, 0x5bc(r28)
/* 806F892C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806F8930  7D 89 03 A6 */	mtctr r12
/* 806F8934  4E 80 04 21 */	bctrl 
/* 806F8938  48 00 00 D8 */	b lbl_806F8A10
lbl_806F893C:
/* 806F893C  3B A0 00 01 */	li r29, 1
/* 806F8940  80 1C 07 10 */	lwz r0, 0x710(r28)
/* 806F8944  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806F8948  41 82 00 14 */	beq lbl_806F895C
/* 806F894C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 806F8950  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 806F8954  38 00 00 04 */	li r0, 4
/* 806F8958  B0 1C 06 78 */	sth r0, 0x678(r28)
lbl_806F895C:
/* 806F895C  80 1C 09 54 */	lwz r0, 0x954(r28)
/* 806F8960  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806F8964  41 82 00 AC */	beq lbl_806F8A10
/* 806F8968  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 806F896C  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 806F8970  48 00 00 A0 */	b lbl_806F8A10
lbl_806F8974:
/* 806F8974  38 7C 05 2C */	addi r3, r28, 0x52c
/* 806F8978  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806F897C  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 806F8980  4B B7 71 01 */	bl cLib_addCalc0__FPfff
/* 806F8984  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 806F8988  38 80 00 01 */	li r4, 1
/* 806F898C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806F8990  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806F8994  40 82 00 18 */	bne lbl_806F89AC
/* 806F8998  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806F899C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806F89A0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806F89A4  41 82 00 08 */	beq lbl_806F89AC
/* 806F89A8  38 80 00 00 */	li r4, 0
lbl_806F89AC:
/* 806F89AC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806F89B0  41 82 00 60 */	beq lbl_806F8A10
/* 806F89B4  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 806F89B8  4B B6 EF 9D */	bl cM_rndF__Ff
/* 806F89BC  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 806F89C0  EC 00 08 2A */	fadds f0, f0, f1
/* 806F89C4  FC 00 00 1E */	fctiwz f0, f0
/* 806F89C8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 806F89CC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 806F89D0  B0 1C 06 94 */	sth r0, 0x694(r28)
/* 806F89D4  7F 83 E3 78 */	mr r3, r28
/* 806F89D8  38 80 00 0E */	li r4, 0xe
/* 806F89DC  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 806F89E0  38 A0 00 02 */	li r5, 2
/* 806F89E4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806F89E8  4B FF F5 3D */	bl anm_init__FP10e_kg_classifUcf
/* 806F89EC  38 00 00 05 */	li r0, 5
/* 806F89F0  B0 1C 06 78 */	sth r0, 0x678(r28)
/* 806F89F4  48 00 00 1C */	b lbl_806F8A10
lbl_806F89F8:
/* 806F89F8  A8 1C 06 94 */	lha r0, 0x694(r28)
/* 806F89FC  2C 00 00 00 */	cmpwi r0, 0
/* 806F8A00  40 82 00 10 */	bne lbl_806F8A10
/* 806F8A04  38 00 00 00 */	li r0, 0
/* 806F8A08  B0 1C 06 76 */	sth r0, 0x676(r28)
/* 806F8A0C  B0 1C 06 78 */	sth r0, 0x678(r28)
lbl_806F8A10:
/* 806F8A10  38 7C 04 DE */	addi r3, r28, 0x4de
/* 806F8A14  A8 9C 06 8C */	lha r4, 0x68c(r28)
/* 806F8A18  38 A0 00 08 */	li r5, 8
/* 806F8A1C  7F C6 F3 78 */	mr r6, r30
/* 806F8A20  4B B7 7B E9 */	bl cLib_addCalcAngleS2__FPssss
/* 806F8A24  7F A3 EB 78 */	mr r3, r29
/* 806F8A28  39 61 00 40 */	addi r11, r1, 0x40
/* 806F8A2C  4B C6 97 F5 */	bl _restgpr_27
/* 806F8A30  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806F8A34  7C 08 03 A6 */	mtlr r0
/* 806F8A38  38 21 00 40 */	addi r1, r1, 0x40
/* 806F8A3C  4E 80 00 20 */	blr 

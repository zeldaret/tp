lbl_80086FBC:
/* 80086FBC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80086FC0  7C 08 02 A6 */	mflr r0
/* 80086FC4  90 01 00 84 */	stw r0, 0x84(r1)
/* 80086FC8  39 61 00 80 */	addi r11, r1, 0x80
/* 80086FCC  48 2D B1 FD */	bl _savegpr_24
/* 80086FD0  7C 7C 1B 78 */	mr r28, r3
/* 80086FD4  7C B9 2B 78 */	mr r25, r5
/* 80086FD8  7C DA 33 78 */	mr r26, r6
/* 80086FDC  7C FB 3B 78 */	mr r27, r7
/* 80086FE0  A0 03 28 04 */	lhz r0, 0x2804(r3)
/* 80086FE4  28 00 00 00 */	cmplwi r0, 0
/* 80086FE8  40 82 00 0C */	bne lbl_80086FF4
/* 80086FEC  38 60 00 00 */	li r3, 0
/* 80086FF0  48 00 02 14 */	b lbl_80087204
lbl_80086FF4:
/* 80086FF4  54 03 13 BA */	rlwinm r3, r0, 2, 0xe, 0x1d
/* 80086FF8  3B A3 10 00 */	addi r29, r3, 0x1000
/* 80086FFC  7F BC EA 14 */	add r29, r28, r29
/* 80087000  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80087004  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80087008  90 01 00 48 */	stw r0, 0x48(r1)
/* 8008700C  3C 60 80 3A */	lis r3, __vt__8cM3dGAab@ha
/* 80087010  38 03 72 18 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80087014  90 01 00 44 */	stw r0, 0x44(r1)
/* 80087018  3C 60 80 3A */	lis r3, __vt__8cM3dGSph@ha
/* 8008701C  38 03 79 04 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80087020  3B E1 00 4C */	addi r31, r1, 0x4c
/* 80087024  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80087028  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 8008702C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80087030  90 61 00 48 */	stw r3, 0x48(r1)
/* 80087034  3B C3 00 58 */	addi r30, r3, 0x58
/* 80087038  93 C1 00 5C */	stw r30, 0x5c(r1)
/* 8008703C  C0 04 00 00 */	lfs f0, 0(r4)
/* 80087040  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80087044  C0 04 00 04 */	lfs f0, 4(r4)
/* 80087048  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8008704C  C0 04 00 08 */	lfs f0, 8(r4)
/* 80087050  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80087054  C0 02 8D 90 */	lfs f0, lit_4336(r2)
/* 80087058  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8008705C  7F E3 FB 78 */	mr r3, r31
/* 80087060  38 81 00 1C */	addi r4, r1, 0x1c
/* 80087064  48 1E 86 45 */	bl Set__8cM3dGSphFRC9cM3dGSphS
/* 80087068  38 61 00 2C */	addi r3, r1, 0x2c
/* 8008706C  48 1D D6 75 */	bl CalcAabBox__12cCcD_SphAttrFv
/* 80087070  3C 60 80 3A */	lis r3, __vt__15cCcD_DivideInfo@ha
/* 80087074  38 03 72 24 */	addi r0, r3, __vt__15cCcD_DivideInfo@l
/* 80087078  90 01 00 18 */	stw r0, 0x18(r1)
/* 8008707C  38 7C 28 08 */	addi r3, r28, 0x2808
/* 80087080  38 81 00 0C */	addi r4, r1, 0xc
/* 80087084  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80087088  48 1D C6 19 */	bl CalcDivideInfoOverArea__15cCcD_DivideAreaFP15cCcD_DivideInfoRC8cM3dGAab
/* 8008708C  3B 9C 10 00 */	addi r28, r28, 0x1000
/* 80087090  48 00 01 20 */	b lbl_800871B0
lbl_80087094:
/* 80087094  80 7C 00 00 */	lwz r3, 0(r28)
/* 80087098  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 8008709C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800870A0  41 82 01 0C */	beq lbl_800871AC
/* 800870A4  48 1D C9 A5 */	bl GetAc__8cCcD_ObjFv
/* 800870A8  7C 03 D0 40 */	cmplw r3, r26
/* 800870AC  41 82 01 00 */	beq lbl_800871AC
/* 800870B0  80 7C 00 00 */	lwz r3, 0(r28)
/* 800870B4  48 1D C9 95 */	bl GetAc__8cCcD_ObjFv
/* 800870B8  7C 03 D8 40 */	cmplw r3, r27
/* 800870BC  41 82 00 F0 */	beq lbl_800871AC
/* 800870C0  80 7C 00 00 */	lwz r3, 0(r28)
/* 800870C4  38 63 00 48 */	addi r3, r3, 0x48
/* 800870C8  38 81 00 0C */	addi r4, r1, 0xc
/* 800870CC  48 1D C2 9D */	bl Chk__15cCcD_DivideInfoCFRC15cCcD_DivideInfo
/* 800870D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800870D4  41 82 00 D8 */	beq lbl_800871AC
/* 800870D8  80 7C 00 00 */	lwz r3, 0(r28)
/* 800870DC  81 83 00 3C */	lwz r12, 0x3c(r3)
/* 800870E0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800870E4  7D 89 03 A6 */	mtctr r12
/* 800870E8  4E 80 04 21 */	bctrl 
/* 800870EC  28 03 00 00 */	cmplwi r3, 0
/* 800870F0  41 82 00 10 */	beq lbl_80087100
/* 800870F4  80 03 00 E8 */	lwz r0, 0xe8(r3)
/* 800870F8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800870FC  40 82 00 B0 */	bne lbl_800871AC
lbl_80087100:
/* 80087100  80 7C 00 00 */	lwz r3, 0(r28)
/* 80087104  81 83 00 3C */	lwz r12, 0x3c(r3)
/* 80087108  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8008710C  7D 89 03 A6 */	mtctr r12
/* 80087110  4E 80 04 21 */	bctrl 
/* 80087114  7C 78 1B 78 */	mr r24, r3
/* 80087118  38 81 00 2C */	addi r4, r1, 0x2c
/* 8008711C  38 A1 00 08 */	addi r5, r1, 8
/* 80087120  81 83 00 1C */	lwz r12, 0x1c(r3)
/* 80087124  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 80087128  7D 89 03 A6 */	mtctr r12
/* 8008712C  4E 80 04 21 */	bctrl 
/* 80087130  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80087134  41 82 00 78 */	beq lbl_800871AC
/* 80087138  7F 03 C3 78 */	mr r3, r24
/* 8008713C  7F 24 CB 78 */	mr r4, r25
/* 80087140  81 98 00 1C */	lwz r12, 0x1c(r24)
/* 80087144  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 80087148  7D 89 03 A6 */	mtctr r12
/* 8008714C  4E 80 04 21 */	bctrl 
/* 80087150  80 19 00 00 */	lwz r0, 0(r25)
/* 80087154  2C 00 00 02 */	cmpwi r0, 2
/* 80087158  41 82 00 54 */	beq lbl_800871AC
/* 8008715C  3C 60 80 3A */	lis r3, __vt__15cCcD_DivideInfo@ha
/* 80087160  38 03 72 24 */	addi r0, r3, __vt__15cCcD_DivideInfo@l
/* 80087164  90 01 00 18 */	stw r0, 0x18(r1)
/* 80087168  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 8008716C  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 80087170  90 01 00 48 */	stw r0, 0x48(r1)
/* 80087174  93 C1 00 5C */	stw r30, 0x5c(r1)
/* 80087178  28 1F 00 00 */	cmplwi r31, 0
/* 8008717C  41 82 00 10 */	beq lbl_8008718C
/* 80087180  3C 60 80 3A */	lis r3, __vt__8cM3dGSph@ha
/* 80087184  38 03 79 04 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80087188  90 01 00 5C */	stw r0, 0x5c(r1)
lbl_8008718C:
/* 8008718C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80087190  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80087194  90 01 00 48 */	stw r0, 0x48(r1)
/* 80087198  3C 60 80 3A */	lis r3, __vt__8cM3dGAab@ha
/* 8008719C  38 03 72 18 */	addi r0, r3, __vt__8cM3dGAab@l
/* 800871A0  90 01 00 44 */	stw r0, 0x44(r1)
/* 800871A4  38 60 00 01 */	li r3, 1
/* 800871A8  48 00 00 5C */	b lbl_80087204
lbl_800871AC:
/* 800871AC  3B 9C 00 04 */	addi r28, r28, 4
lbl_800871B0:
/* 800871B0  7C 1C E8 40 */	cmplw r28, r29
/* 800871B4  41 80 FE E0 */	blt lbl_80087094
/* 800871B8  3C 60 80 3A */	lis r3, __vt__15cCcD_DivideInfo@ha
/* 800871BC  38 03 72 24 */	addi r0, r3, __vt__15cCcD_DivideInfo@l
/* 800871C0  90 01 00 18 */	stw r0, 0x18(r1)
/* 800871C4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 800871C8  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 800871CC  90 01 00 48 */	stw r0, 0x48(r1)
/* 800871D0  93 C1 00 5C */	stw r30, 0x5c(r1)
/* 800871D4  28 1F 00 00 */	cmplwi r31, 0
/* 800871D8  41 82 00 10 */	beq lbl_800871E8
/* 800871DC  3C 60 80 3A */	lis r3, __vt__8cM3dGSph@ha
/* 800871E0  38 03 79 04 */	addi r0, r3, __vt__8cM3dGSph@l
/* 800871E4  90 01 00 5C */	stw r0, 0x5c(r1)
lbl_800871E8:
/* 800871E8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 800871EC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 800871F0  90 01 00 48 */	stw r0, 0x48(r1)
/* 800871F4  3C 60 80 3A */	lis r3, __vt__8cM3dGAab@ha
/* 800871F8  38 03 72 18 */	addi r0, r3, __vt__8cM3dGAab@l
/* 800871FC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80087200  38 60 00 00 */	li r3, 0
lbl_80087204:
/* 80087204  39 61 00 80 */	addi r11, r1, 0x80
/* 80087208  48 2D B0 0D */	bl _restgpr_24
/* 8008720C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80087210  7C 08 03 A6 */	mtlr r0
/* 80087214  38 21 00 80 */	addi r1, r1, 0x80
/* 80087218  4E 80 00 20 */	blr 

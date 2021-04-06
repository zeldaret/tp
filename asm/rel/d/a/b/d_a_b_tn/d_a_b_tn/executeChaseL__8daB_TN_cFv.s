lbl_8062868C:
/* 8062868C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80628690  7C 08 02 A6 */	mflr r0
/* 80628694  90 01 00 74 */	stw r0, 0x74(r1)
/* 80628698  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8062869C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 806286A0  39 61 00 60 */	addi r11, r1, 0x60
/* 806286A4  4B D3 9B 35 */	bl _savegpr_28
/* 806286A8  7C 7D 1B 78 */	mr r29, r3
/* 806286AC  3C 80 80 63 */	lis r4, lit_3920@ha /* 0x8062E634@ha */
/* 806286B0  3B E4 E6 34 */	addi r31, r4, lit_3920@l /* 0x8062E634@l */
/* 806286B4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806286B8  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806286BC  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 806286C0  4B 9F 21 21 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806286C4  FF E0 08 90 */	fmr f31, f1
/* 806286C8  7F A3 EB 78 */	mr r3, r29
/* 806286CC  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 806286D0  4B 9F 20 41 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806286D4  7C 7E 1B 78 */	mr r30, r3
/* 806286D8  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 806286DC  88 03 05 69 */	lbz r0, 0x569(r3)
/* 806286E0  28 00 00 01 */	cmplwi r0, 1
/* 806286E4  41 81 00 14 */	bgt lbl_806286F8
/* 806286E8  88 7D 0A 9C */	lbz r3, 0xa9c(r29)
/* 806286EC  38 03 00 01 */	addi r0, r3, 1
/* 806286F0  98 1D 0A 9C */	stb r0, 0xa9c(r29)
/* 806286F4  48 00 00 0C */	b lbl_80628700
lbl_806286F8:
/* 806286F8  38 00 00 00 */	li r0, 0
/* 806286FC  98 1D 0A 9C */	stb r0, 0xa9c(r29)
lbl_80628700:
/* 80628700  80 1D 06 F4 */	lwz r0, 0x6f4(r29)
/* 80628704  28 00 00 11 */	cmplwi r0, 0x11
/* 80628708  41 81 0B D0 */	bgt lbl_806292D8
/* 8062870C  3C 60 80 63 */	lis r3, lit_8593@ha /* 0x8062EE7C@ha */
/* 80628710  38 63 EE 7C */	addi r3, r3, lit_8593@l /* 0x8062EE7C@l */
/* 80628714  54 00 10 3A */	slwi r0, r0, 2
/* 80628718  7C 03 00 2E */	lwzx r0, r3, r0
/* 8062871C  7C 09 03 A6 */	mtctr r0
/* 80628720  4E 80 04 20 */	bctr 
lbl_80628724:
/* 80628724  38 00 00 00 */	li r0, 0
/* 80628728  98 1D 0A 9D */	stb r0, 0xa9d(r29)
lbl_8062872C:
/* 8062872C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80628730  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80628734  7F A3 EB 78 */	mr r3, r29
/* 80628738  4B FF A0 99 */	bl checkMoveArea__8daB_TN_cFv
/* 8062873C  2C 03 00 00 */	cmpwi r3, 0
/* 80628740  41 82 00 34 */	beq lbl_80628774
/* 80628744  4B C3 F1 29 */	bl cM_rnd__Fv
/* 80628748  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 8062874C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80628750  40 80 00 14 */	bge lbl_80628764
/* 80628754  7F A3 EB 78 */	mr r3, r29
/* 80628758  38 80 00 04 */	li r4, 4
/* 8062875C  4B FF F2 41 */	bl initChaseL__8daB_TN_cFi
/* 80628760  48 00 00 5C */	b lbl_806287BC
lbl_80628764:
/* 80628764  7F A3 EB 78 */	mr r3, r29
/* 80628768  38 80 00 05 */	li r4, 5
/* 8062876C  4B FF F2 31 */	bl initChaseL__8daB_TN_cFi
/* 80628770  48 00 00 4C */	b lbl_806287BC
lbl_80628774:
/* 80628774  C0 1F 01 94 */	lfs f0, 0x194(r31)
/* 80628778  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8062877C  40 81 00 14 */	ble lbl_80628790
/* 80628780  7F A3 EB 78 */	mr r3, r29
/* 80628784  38 80 00 03 */	li r4, 3
/* 80628788  4B FF F2 15 */	bl initChaseL__8daB_TN_cFi
/* 8062878C  48 00 00 30 */	b lbl_806287BC
lbl_80628790:
/* 80628790  4B C3 F0 DD */	bl cM_rnd__Fv
/* 80628794  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80628798  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8062879C  40 80 00 14 */	bge lbl_806287B0
/* 806287A0  7F A3 EB 78 */	mr r3, r29
/* 806287A4  38 80 00 04 */	li r4, 4
/* 806287A8  4B FF F1 F5 */	bl initChaseL__8daB_TN_cFi
/* 806287AC  48 00 00 10 */	b lbl_806287BC
lbl_806287B0:
/* 806287B0  7F A3 EB 78 */	mr r3, r29
/* 806287B4  38 80 00 05 */	li r4, 5
/* 806287B8  4B FF F1 E5 */	bl initChaseL__8daB_TN_cFi
lbl_806287BC:
/* 806287BC  7F A3 EB 78 */	mr r3, r29
/* 806287C0  38 80 00 00 */	li r4, 0
/* 806287C4  4B FF 82 1D */	bl setSwordAtBit__8daB_TN_cFi
/* 806287C8  38 00 00 01 */	li r0, 1
/* 806287CC  98 1D 0A 91 */	stb r0, 0xa91(r29)
/* 806287D0  48 00 0B 08 */	b lbl_806292D8
lbl_806287D4:
/* 806287D4  7F A3 EB 78 */	mr r3, r29
/* 806287D8  4B FF F5 65 */	bl checkNextMove__8daB_TN_cFv
/* 806287DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806287E0  40 82 0A F8 */	bne lbl_806292D8
/* 806287E4  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 806287E8  38 63 00 0C */	addi r3, r3, 0xc
/* 806287EC  C0 3F 01 08 */	lfs f1, 0x108(r31)
/* 806287F0  4B CF FC 3D */	bl checkPass__12J3DFrameCtrlFf
/* 806287F4  2C 03 00 00 */	cmpwi r3, 0
/* 806287F8  41 82 00 30 */	beq lbl_80628828
/* 806287FC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A6@ha */
/* 80628800  38 03 03 A6 */	addi r0, r3, 0x03A6 /* 0x000703A6@l */
/* 80628804  90 01 00 40 */	stw r0, 0x40(r1)
/* 80628808  38 7D 06 4C */	addi r3, r29, 0x64c
/* 8062880C  38 81 00 40 */	addi r4, r1, 0x40
/* 80628810  38 A0 00 00 */	li r5, 0
/* 80628814  38 C0 FF FF */	li r6, -1
/* 80628818  81 9D 06 4C */	lwz r12, 0x64c(r29)
/* 8062881C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80628820  7D 89 03 A6 */	mtctr r12
/* 80628824  4E 80 04 21 */	bctrl 
lbl_80628828:
/* 80628828  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 8062882C  38 63 00 0C */	addi r3, r3, 0xc
/* 80628830  C0 3F 01 5C */	lfs f1, 0x15c(r31)
/* 80628834  4B CF FB F9 */	bl checkPass__12J3DFrameCtrlFf
/* 80628838  2C 03 00 00 */	cmpwi r3, 0
/* 8062883C  41 82 00 30 */	beq lbl_8062886C
/* 80628840  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A7@ha */
/* 80628844  38 03 03 A7 */	addi r0, r3, 0x03A7 /* 0x000703A7@l */
/* 80628848  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8062884C  38 7D 06 4C */	addi r3, r29, 0x64c
/* 80628850  38 81 00 3C */	addi r4, r1, 0x3c
/* 80628854  38 A0 00 00 */	li r5, 0
/* 80628858  38 C0 FF FF */	li r6, -1
/* 8062885C  81 9D 06 4C */	lwz r12, 0x64c(r29)
/* 80628860  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80628864  7D 89 03 A6 */	mtctr r12
/* 80628868  4E 80 04 21 */	bctrl 
lbl_8062886C:
/* 8062886C  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80628870  7F C4 F3 78 */	mr r4, r30
/* 80628874  38 A0 00 04 */	li r5, 4
/* 80628878  38 C0 04 00 */	li r6, 0x400
/* 8062887C  38 E0 00 10 */	li r7, 0x10
/* 80628880  4B C4 7C C1 */	bl cLib_addCalcAngleS__FPsssss
/* 80628884  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80628888  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8062888C  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80628890  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80628894  40 80 00 10 */	bge lbl_806288A4
/* 80628898  7F A3 EB 78 */	mr r3, r29
/* 8062889C  38 80 00 01 */	li r4, 1
/* 806288A0  4B FF F0 FD */	bl initChaseL__8daB_TN_cFi
lbl_806288A4:
/* 806288A4  7F A3 EB 78 */	mr r3, r29
/* 806288A8  4B FF 9F 29 */	bl checkMoveArea__8daB_TN_cFv
/* 806288AC  2C 03 00 00 */	cmpwi r3, 0
/* 806288B0  41 82 0A 28 */	beq lbl_806292D8
/* 806288B4  4B C3 EF B9 */	bl cM_rnd__Fv
/* 806288B8  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 806288BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806288C0  40 80 00 14 */	bge lbl_806288D4
/* 806288C4  7F A3 EB 78 */	mr r3, r29
/* 806288C8  38 80 00 04 */	li r4, 4
/* 806288CC  4B FF F0 D1 */	bl initChaseL__8daB_TN_cFi
/* 806288D0  48 00 0A 08 */	b lbl_806292D8
lbl_806288D4:
/* 806288D4  7F A3 EB 78 */	mr r3, r29
/* 806288D8  38 80 00 05 */	li r4, 5
/* 806288DC  4B FF F0 C1 */	bl initChaseL__8daB_TN_cFi
/* 806288E0  48 00 09 F8 */	b lbl_806292D8
lbl_806288E4:
/* 806288E4  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 806288E8  38 63 00 0C */	addi r3, r3, 0xc
/* 806288EC  C0 3F 01 08 */	lfs f1, 0x108(r31)
/* 806288F0  4B CF FB 3D */	bl checkPass__12J3DFrameCtrlFf
/* 806288F4  2C 03 00 00 */	cmpwi r3, 0
/* 806288F8  41 82 00 30 */	beq lbl_80628928
/* 806288FC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A6@ha */
/* 80628900  38 03 03 A6 */	addi r0, r3, 0x03A6 /* 0x000703A6@l */
/* 80628904  90 01 00 38 */	stw r0, 0x38(r1)
/* 80628908  38 7D 06 4C */	addi r3, r29, 0x64c
/* 8062890C  38 81 00 38 */	addi r4, r1, 0x38
/* 80628910  38 A0 00 00 */	li r5, 0
/* 80628914  38 C0 FF FF */	li r6, -1
/* 80628918  81 9D 06 4C */	lwz r12, 0x64c(r29)
/* 8062891C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80628920  7D 89 03 A6 */	mtctr r12
/* 80628924  4E 80 04 21 */	bctrl 
lbl_80628928:
/* 80628928  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 8062892C  38 63 00 0C */	addi r3, r3, 0xc
/* 80628930  C0 3F 01 5C */	lfs f1, 0x15c(r31)
/* 80628934  4B CF FA F9 */	bl checkPass__12J3DFrameCtrlFf
/* 80628938  2C 03 00 00 */	cmpwi r3, 0
/* 8062893C  41 82 00 30 */	beq lbl_8062896C
/* 80628940  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A7@ha */
/* 80628944  38 03 03 A7 */	addi r0, r3, 0x03A7 /* 0x000703A7@l */
/* 80628948  90 01 00 34 */	stw r0, 0x34(r1)
/* 8062894C  38 7D 06 4C */	addi r3, r29, 0x64c
/* 80628950  38 81 00 34 */	addi r4, r1, 0x34
/* 80628954  38 A0 00 00 */	li r5, 0
/* 80628958  38 C0 FF FF */	li r6, -1
/* 8062895C  81 9D 06 4C */	lwz r12, 0x64c(r29)
/* 80628960  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80628964  7D 89 03 A6 */	mtctr r12
/* 80628968  4E 80 04 21 */	bctrl 
lbl_8062896C:
/* 8062896C  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80628970  7F C4 F3 78 */	mr r4, r30
/* 80628974  38 A0 00 04 */	li r5, 4
/* 80628978  38 C0 04 00 */	li r6, 0x400
/* 8062897C  38 E0 00 10 */	li r7, 0x10
/* 80628980  4B C4 7B C1 */	bl cLib_addCalcAngleS__FPsssss
/* 80628984  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80628988  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8062898C  80 1D 0A 6C */	lwz r0, 0xa6c(r29)
/* 80628990  2C 00 00 00 */	cmpwi r0, 0
/* 80628994  40 82 09 44 */	bne lbl_806292D8
/* 80628998  7F A3 EB 78 */	mr r3, r29
/* 8062899C  38 80 00 11 */	li r4, 0x11
/* 806289A0  4B FF EF FD */	bl initChaseL__8daB_TN_cFi
/* 806289A4  48 00 09 34 */	b lbl_806292D8
lbl_806289A8:
/* 806289A8  80 1D 0A 6C */	lwz r0, 0xa6c(r29)
/* 806289AC  2C 00 00 00 */	cmpwi r0, 0
/* 806289B0  40 82 09 28 */	bne lbl_806292D8
/* 806289B4  7F A3 EB 78 */	mr r3, r29
/* 806289B8  38 80 00 01 */	li r4, 1
/* 806289BC  4B FF EF E1 */	bl initChaseL__8daB_TN_cFi
/* 806289C0  48 00 09 18 */	b lbl_806292D8
lbl_806289C4:
/* 806289C4  7F A3 EB 78 */	mr r3, r29
/* 806289C8  4B FF F3 75 */	bl checkNextMove__8daB_TN_cFv
/* 806289CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806289D0  40 82 09 08 */	bne lbl_806292D8
/* 806289D4  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 806289D8  38 63 00 0C */	addi r3, r3, 0xc
/* 806289DC  C0 3F 02 10 */	lfs f1, 0x210(r31)
/* 806289E0  4B CF FA 4D */	bl checkPass__12J3DFrameCtrlFf
/* 806289E4  2C 03 00 00 */	cmpwi r3, 0
/* 806289E8  41 82 00 30 */	beq lbl_80628A18
/* 806289EC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A6@ha */
/* 806289F0  38 03 03 A6 */	addi r0, r3, 0x03A6 /* 0x000703A6@l */
/* 806289F4  90 01 00 30 */	stw r0, 0x30(r1)
/* 806289F8  38 7D 06 4C */	addi r3, r29, 0x64c
/* 806289FC  38 81 00 30 */	addi r4, r1, 0x30
/* 80628A00  38 A0 00 00 */	li r5, 0
/* 80628A04  38 C0 FF FF */	li r6, -1
/* 80628A08  81 9D 06 4C */	lwz r12, 0x64c(r29)
/* 80628A0C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80628A10  7D 89 03 A6 */	mtctr r12
/* 80628A14  4E 80 04 21 */	bctrl 
lbl_80628A18:
/* 80628A18  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 80628A1C  38 63 00 0C */	addi r3, r3, 0xc
/* 80628A20  C0 3F 02 14 */	lfs f1, 0x214(r31)
/* 80628A24  4B CF FA 09 */	bl checkPass__12J3DFrameCtrlFf
/* 80628A28  2C 03 00 00 */	cmpwi r3, 0
/* 80628A2C  41 82 00 30 */	beq lbl_80628A5C
/* 80628A30  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A7@ha */
/* 80628A34  38 03 03 A7 */	addi r0, r3, 0x03A7 /* 0x000703A7@l */
/* 80628A38  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80628A3C  38 7D 06 4C */	addi r3, r29, 0x64c
/* 80628A40  38 81 00 2C */	addi r4, r1, 0x2c
/* 80628A44  38 A0 00 00 */	li r5, 0
/* 80628A48  38 C0 FF FF */	li r6, -1
/* 80628A4C  81 9D 06 4C */	lwz r12, 0x64c(r29)
/* 80628A50  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80628A54  7D 89 03 A6 */	mtctr r12
/* 80628A58  4E 80 04 21 */	bctrl 
lbl_80628A5C:
/* 80628A5C  38 00 00 01 */	li r0, 1
/* 80628A60  98 1D 0A 94 */	stb r0, 0xa94(r29)
/* 80628A64  7F A3 EB 78 */	mr r3, r29
/* 80628A68  4B FF ED 29 */	bl setWalkDir__8daB_TN_cFv
/* 80628A6C  80 1D 0A 8C */	lwz r0, 0xa8c(r29)
/* 80628A70  2C 00 00 00 */	cmpwi r0, 0
/* 80628A74  40 82 00 24 */	bne lbl_80628A98
/* 80628A78  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80628A7C  38 1E E0 00 */	addi r0, r30, -8192
/* 80628A80  7C 04 07 34 */	extsh r4, r0
/* 80628A84  38 A0 00 04 */	li r5, 4
/* 80628A88  38 C0 04 00 */	li r6, 0x400
/* 80628A8C  38 E0 00 10 */	li r7, 0x10
/* 80628A90  4B C4 7A B1 */	bl cLib_addCalcAngleS__FPsssss
/* 80628A94  48 00 00 44 */	b lbl_80628AD8
lbl_80628A98:
/* 80628A98  2C 00 00 01 */	cmpwi r0, 1
/* 80628A9C  40 82 00 20 */	bne lbl_80628ABC
/* 80628AA0  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80628AA4  7F C4 F3 78 */	mr r4, r30
/* 80628AA8  38 A0 00 04 */	li r5, 4
/* 80628AAC  38 C0 04 00 */	li r6, 0x400
/* 80628AB0  38 E0 00 10 */	li r7, 0x10
/* 80628AB4  4B C4 7A 8D */	bl cLib_addCalcAngleS__FPsssss
/* 80628AB8  48 00 00 20 */	b lbl_80628AD8
lbl_80628ABC:
/* 80628ABC  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80628AC0  38 1E 20 00 */	addi r0, r30, 0x2000
/* 80628AC4  7C 04 07 34 */	extsh r4, r0
/* 80628AC8  38 A0 00 04 */	li r5, 4
/* 80628ACC  38 C0 04 00 */	li r6, 0x400
/* 80628AD0  38 E0 00 10 */	li r7, 0x10
/* 80628AD4  4B C4 7A 6D */	bl cLib_addCalcAngleS__FPsssss
lbl_80628AD8:
/* 80628AD8  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 80628ADC  38 03 40 00 */	addi r0, r3, 0x4000
/* 80628AE0  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80628AE4  80 1D 0A 6C */	lwz r0, 0xa6c(r29)
/* 80628AE8  2C 00 00 00 */	cmpwi r0, 0
/* 80628AEC  40 82 07 EC */	bne lbl_806292D8
/* 80628AF0  7F A3 EB 78 */	mr r3, r29
/* 80628AF4  38 80 00 01 */	li r4, 1
/* 80628AF8  4B FF EE A5 */	bl initChaseL__8daB_TN_cFi
/* 80628AFC  48 00 07 DC */	b lbl_806292D8
lbl_80628B00:
/* 80628B00  7F A3 EB 78 */	mr r3, r29
/* 80628B04  4B FF F2 39 */	bl checkNextMove__8daB_TN_cFv
/* 80628B08  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80628B0C  40 82 07 CC */	bne lbl_806292D8
/* 80628B10  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 80628B14  38 63 00 0C */	addi r3, r3, 0xc
/* 80628B18  C0 3F 02 10 */	lfs f1, 0x210(r31)
/* 80628B1C  4B CF F9 11 */	bl checkPass__12J3DFrameCtrlFf
/* 80628B20  2C 03 00 00 */	cmpwi r3, 0
/* 80628B24  41 82 00 30 */	beq lbl_80628B54
/* 80628B28  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A6@ha */
/* 80628B2C  38 03 03 A6 */	addi r0, r3, 0x03A6 /* 0x000703A6@l */
/* 80628B30  90 01 00 28 */	stw r0, 0x28(r1)
/* 80628B34  38 7D 06 4C */	addi r3, r29, 0x64c
/* 80628B38  38 81 00 28 */	addi r4, r1, 0x28
/* 80628B3C  38 A0 00 00 */	li r5, 0
/* 80628B40  38 C0 FF FF */	li r6, -1
/* 80628B44  81 9D 06 4C */	lwz r12, 0x64c(r29)
/* 80628B48  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80628B4C  7D 89 03 A6 */	mtctr r12
/* 80628B50  4E 80 04 21 */	bctrl 
lbl_80628B54:
/* 80628B54  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 80628B58  38 63 00 0C */	addi r3, r3, 0xc
/* 80628B5C  C0 3F 02 14 */	lfs f1, 0x214(r31)
/* 80628B60  4B CF F8 CD */	bl checkPass__12J3DFrameCtrlFf
/* 80628B64  2C 03 00 00 */	cmpwi r3, 0
/* 80628B68  41 82 00 30 */	beq lbl_80628B98
/* 80628B6C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A7@ha */
/* 80628B70  38 03 03 A7 */	addi r0, r3, 0x03A7 /* 0x000703A7@l */
/* 80628B74  90 01 00 24 */	stw r0, 0x24(r1)
/* 80628B78  38 7D 06 4C */	addi r3, r29, 0x64c
/* 80628B7C  38 81 00 24 */	addi r4, r1, 0x24
/* 80628B80  38 A0 00 00 */	li r5, 0
/* 80628B84  38 C0 FF FF */	li r6, -1
/* 80628B88  81 9D 06 4C */	lwz r12, 0x64c(r29)
/* 80628B8C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80628B90  7D 89 03 A6 */	mtctr r12
/* 80628B94  4E 80 04 21 */	bctrl 
lbl_80628B98:
/* 80628B98  38 00 00 01 */	li r0, 1
/* 80628B9C  98 1D 0A 94 */	stb r0, 0xa94(r29)
/* 80628BA0  7F A3 EB 78 */	mr r3, r29
/* 80628BA4  4B FF EB ED */	bl setWalkDir__8daB_TN_cFv
/* 80628BA8  80 1D 0A 8C */	lwz r0, 0xa8c(r29)
/* 80628BAC  2C 00 00 00 */	cmpwi r0, 0
/* 80628BB0  40 82 00 24 */	bne lbl_80628BD4
/* 80628BB4  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80628BB8  38 1E 20 00 */	addi r0, r30, 0x2000
/* 80628BBC  7C 04 07 34 */	extsh r4, r0
/* 80628BC0  38 A0 00 04 */	li r5, 4
/* 80628BC4  38 C0 04 00 */	li r6, 0x400
/* 80628BC8  38 E0 00 10 */	li r7, 0x10
/* 80628BCC  4B C4 79 75 */	bl cLib_addCalcAngleS__FPsssss
/* 80628BD0  48 00 00 44 */	b lbl_80628C14
lbl_80628BD4:
/* 80628BD4  2C 00 00 01 */	cmpwi r0, 1
/* 80628BD8  40 82 00 20 */	bne lbl_80628BF8
/* 80628BDC  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80628BE0  7F C4 F3 78 */	mr r4, r30
/* 80628BE4  38 A0 00 04 */	li r5, 4
/* 80628BE8  38 C0 04 00 */	li r6, 0x400
/* 80628BEC  38 E0 00 10 */	li r7, 0x10
/* 80628BF0  4B C4 79 51 */	bl cLib_addCalcAngleS__FPsssss
/* 80628BF4  48 00 00 20 */	b lbl_80628C14
lbl_80628BF8:
/* 80628BF8  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80628BFC  38 1E E0 00 */	addi r0, r30, -8192
/* 80628C00  7C 04 07 34 */	extsh r4, r0
/* 80628C04  38 A0 00 04 */	li r5, 4
/* 80628C08  38 C0 04 00 */	li r6, 0x400
/* 80628C0C  38 E0 00 10 */	li r7, 0x10
/* 80628C10  4B C4 79 31 */	bl cLib_addCalcAngleS__FPsssss
lbl_80628C14:
/* 80628C14  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 80628C18  38 03 C0 00 */	addi r0, r3, -16384
/* 80628C1C  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80628C20  80 1D 0A 6C */	lwz r0, 0xa6c(r29)
/* 80628C24  2C 00 00 00 */	cmpwi r0, 0
/* 80628C28  40 82 06 B0 */	bne lbl_806292D8
/* 80628C2C  7F A3 EB 78 */	mr r3, r29
/* 80628C30  38 80 00 01 */	li r4, 1
/* 80628C34  4B FF ED 69 */	bl initChaseL__8daB_TN_cFi
/* 80628C38  48 00 06 A0 */	b lbl_806292D8
lbl_80628C3C:
/* 80628C3C  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80628C40  7F C4 F3 78 */	mr r4, r30
/* 80628C44  38 A0 00 04 */	li r5, 4
/* 80628C48  38 C0 04 00 */	li r6, 0x400
/* 80628C4C  38 E0 00 10 */	li r7, 0x10
/* 80628C50  4B C4 78 F1 */	bl cLib_addCalcAngleS__FPsssss
/* 80628C54  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 80628C58  3C 63 00 01 */	addis r3, r3, 1
/* 80628C5C  38 03 80 00 */	addi r0, r3, -32768
/* 80628C60  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80628C64  7F A3 EB 78 */	mr r3, r29
/* 80628C68  38 80 00 1E */	li r4, 0x1e
/* 80628C6C  4B FF 7D 01 */	bl checkBck__8daB_TN_cFi
/* 80628C70  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80628C74  41 82 00 C0 */	beq lbl_80628D34
/* 80628C78  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 80628C7C  38 63 00 0C */	addi r3, r3, 0xc
/* 80628C80  C0 3F 01 C4 */	lfs f1, 0x1c4(r31)
/* 80628C84  4B CF F7 A9 */	bl checkPass__12J3DFrameCtrlFf
/* 80628C88  2C 03 00 00 */	cmpwi r3, 0
/* 80628C8C  41 82 00 1C */	beq lbl_80628CA8
/* 80628C90  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80628C94  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80628C98  C0 1F 01 B4 */	lfs f0, 0x1b4(r31)
/* 80628C9C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80628CA0  C0 1F 02 18 */	lfs f0, 0x218(r31)
/* 80628CA4  D0 1D 05 30 */	stfs f0, 0x530(r29)
lbl_80628CA8:
/* 80628CA8  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 80628CAC  38 63 00 0C */	addi r3, r3, 0xc
/* 80628CB0  C0 3F 01 DC */	lfs f1, 0x1dc(r31)
/* 80628CB4  4B CF F7 79 */	bl checkPass__12J3DFrameCtrlFf
/* 80628CB8  2C 03 00 00 */	cmpwi r3, 0
/* 80628CBC  41 82 00 2C */	beq lbl_80628CE8
/* 80628CC0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A1@ha */
/* 80628CC4  38 03 03 A1 */	addi r0, r3, 0x03A1 /* 0x000703A1@l */
/* 80628CC8  90 01 00 20 */	stw r0, 0x20(r1)
/* 80628CCC  38 7D 06 4C */	addi r3, r29, 0x64c
/* 80628CD0  38 81 00 20 */	addi r4, r1, 0x20
/* 80628CD4  38 A0 FF FF */	li r5, -1
/* 80628CD8  81 9D 06 4C */	lwz r12, 0x64c(r29)
/* 80628CDC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80628CE0  7D 89 03 A6 */	mtctr r12
/* 80628CE4  4E 80 04 21 */	bctrl 
lbl_80628CE8:
/* 80628CE8  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 80628CEC  38 80 00 01 */	li r4, 1
/* 80628CF0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80628CF4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80628CF8  40 82 00 18 */	bne lbl_80628D10
/* 80628CFC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80628D00  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80628D04  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80628D08  41 82 00 08 */	beq lbl_80628D10
/* 80628D0C  38 80 00 00 */	li r4, 0
lbl_80628D10:
/* 80628D10  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80628D14  41 82 05 C4 */	beq lbl_806292D8
/* 80628D18  7F A3 EB 78 */	mr r3, r29
/* 80628D1C  38 80 00 1F */	li r4, 0x1f
/* 80628D20  38 A0 00 00 */	li r5, 0
/* 80628D24  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80628D28  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80628D2C  4B FF 7B 9D */	bl setBck__8daB_TN_cFiUcff
/* 80628D30  48 00 05 A8 */	b lbl_806292D8
lbl_80628D34:
/* 80628D34  80 1D 0B 24 */	lwz r0, 0xb24(r29)
/* 80628D38  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80628D3C  41 82 05 9C */	beq lbl_806292D8
/* 80628D40  7F A3 EB 78 */	mr r3, r29
/* 80628D44  38 80 00 07 */	li r4, 7
/* 80628D48  4B FF EC 55 */	bl initChaseL__8daB_TN_cFi
/* 80628D4C  48 00 05 8C */	b lbl_806292D8
lbl_80628D50:
/* 80628D50  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80628D54  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80628D58  C0 5F 01 DC */	lfs f2, 0x1dc(r31)
/* 80628D5C  4B C4 79 E5 */	bl cLib_chaseF__FPfff
/* 80628D60  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 80628D64  38 63 00 0C */	addi r3, r3, 0xc
/* 80628D68  C0 3F 01 C4 */	lfs f1, 0x1c4(r31)
/* 80628D6C  4B CF F6 C1 */	bl checkPass__12J3DFrameCtrlFf
/* 80628D70  2C 03 00 00 */	cmpwi r3, 0
/* 80628D74  41 82 00 30 */	beq lbl_80628DA4
/* 80628D78  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A7@ha */
/* 80628D7C  38 03 03 A7 */	addi r0, r3, 0x03A7 /* 0x000703A7@l */
/* 80628D80  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80628D84  38 7D 06 4C */	addi r3, r29, 0x64c
/* 80628D88  38 81 00 1C */	addi r4, r1, 0x1c
/* 80628D8C  38 A0 00 00 */	li r5, 0
/* 80628D90  38 C0 FF FF */	li r6, -1
/* 80628D94  81 9D 06 4C */	lwz r12, 0x64c(r29)
/* 80628D98  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80628D9C  7D 89 03 A6 */	mtctr r12
/* 80628DA0  4E 80 04 21 */	bctrl 
lbl_80628DA4:
/* 80628DA4  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 80628DA8  38 80 00 01 */	li r4, 1
/* 80628DAC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80628DB0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80628DB4  40 82 00 18 */	bne lbl_80628DCC
/* 80628DB8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80628DBC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80628DC0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80628DC4  41 82 00 08 */	beq lbl_80628DCC
/* 80628DC8  38 80 00 00 */	li r4, 0
lbl_80628DCC:
/* 80628DCC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80628DD0  41 82 05 08 */	beq lbl_806292D8
/* 80628DD4  7F A3 EB 78 */	mr r3, r29
/* 80628DD8  4B FF EE E5 */	bl checkAttackAble__8daB_TN_cFv
/* 80628DDC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80628DE0  41 82 00 20 */	beq lbl_80628E00
/* 80628DE4  88 1D 0A AA */	lbz r0, 0xaaa(r29)
/* 80628DE8  28 00 00 00 */	cmplwi r0, 0
/* 80628DEC  40 82 00 14 */	bne lbl_80628E00
/* 80628DF0  7F A3 EB 78 */	mr r3, r29
/* 80628DF4  4B FF 80 9D */	bl checkNormalAttackAble__8daB_TN_cFv
/* 80628DF8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80628DFC  40 82 00 14 */	bne lbl_80628E10
lbl_80628E00:
/* 80628E00  7F A3 EB 78 */	mr r3, r29
/* 80628E04  38 80 00 01 */	li r4, 1
/* 80628E08  4B FF EB 95 */	bl initChaseL__8daB_TN_cFi
/* 80628E0C  48 00 04 CC */	b lbl_806292D8
lbl_80628E10:
/* 80628E10  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80628E14  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80628E18  40 80 00 18 */	bge lbl_80628E30
/* 80628E1C  7F A3 EB 78 */	mr r3, r29
/* 80628E20  38 80 00 0B */	li r4, 0xb
/* 80628E24  38 A0 00 00 */	li r5, 0
/* 80628E28  4B FF 7B A1 */	bl setActionMode__8daB_TN_cFii
/* 80628E2C  48 00 04 AC */	b lbl_806292D8
lbl_80628E30:
/* 80628E30  7F A3 EB 78 */	mr r3, r29
/* 80628E34  38 80 00 0A */	li r4, 0xa
/* 80628E38  38 A0 00 0A */	li r5, 0xa
/* 80628E3C  4B FF 7B 8D */	bl setActionMode__8daB_TN_cFii
/* 80628E40  48 00 04 98 */	b lbl_806292D8
lbl_80628E44:
/* 80628E44  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80628E48  7F C4 F3 78 */	mr r4, r30
/* 80628E4C  38 A0 00 04 */	li r5, 4
/* 80628E50  38 C0 04 00 */	li r6, 0x400
/* 80628E54  38 E0 00 10 */	li r7, 0x10
/* 80628E58  4B C4 76 E9 */	bl cLib_addCalcAngleS__FPsssss
/* 80628E5C  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80628E60  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80628E64  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 80628E68  38 63 00 0C */	addi r3, r3, 0xc
/* 80628E6C  C0 3F 01 C4 */	lfs f1, 0x1c4(r31)
/* 80628E70  4B CF F5 BD */	bl checkPass__12J3DFrameCtrlFf
/* 80628E74  2C 03 00 00 */	cmpwi r3, 0
/* 80628E78  41 82 00 3C */	beq lbl_80628EB4
/* 80628E7C  80 1D 06 F4 */	lwz r0, 0x6f4(r29)
/* 80628E80  2C 00 00 08 */	cmpwi r0, 8
/* 80628E84  40 82 00 18 */	bne lbl_80628E9C
/* 80628E88  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80628E8C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80628E90  C0 1F 01 C4 */	lfs f0, 0x1c4(r31)
/* 80628E94  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80628E98  48 00 00 14 */	b lbl_80628EAC
lbl_80628E9C:
/* 80628E9C  C0 1F 01 F4 */	lfs f0, 0x1f4(r31)
/* 80628EA0  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80628EA4  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80628EA8  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
lbl_80628EAC:
/* 80628EAC  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80628EB0  D0 1D 05 30 */	stfs f0, 0x530(r29)
lbl_80628EB4:
/* 80628EB4  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 80628EB8  38 63 00 0C */	addi r3, r3, 0xc
/* 80628EBC  C0 3F 01 DC */	lfs f1, 0x1dc(r31)
/* 80628EC0  4B CF F5 6D */	bl checkPass__12J3DFrameCtrlFf
/* 80628EC4  2C 03 00 00 */	cmpwi r3, 0
/* 80628EC8  41 82 00 2C */	beq lbl_80628EF4
/* 80628ECC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A1@ha */
/* 80628ED0  38 03 03 A1 */	addi r0, r3, 0x03A1 /* 0x000703A1@l */
/* 80628ED4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80628ED8  38 7D 06 4C */	addi r3, r29, 0x64c
/* 80628EDC  38 81 00 18 */	addi r4, r1, 0x18
/* 80628EE0  38 A0 FF FF */	li r5, -1
/* 80628EE4  81 9D 06 4C */	lwz r12, 0x64c(r29)
/* 80628EE8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80628EEC  7D 89 03 A6 */	mtctr r12
/* 80628EF0  4E 80 04 21 */	bctrl 
lbl_80628EF4:
/* 80628EF4  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 80628EF8  38 80 00 01 */	li r4, 1
/* 80628EFC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80628F00  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80628F04  40 82 00 18 */	bne lbl_80628F1C
/* 80628F08  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80628F0C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80628F10  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80628F14  41 82 00 08 */	beq lbl_80628F1C
/* 80628F18  38 80 00 00 */	li r4, 0
lbl_80628F1C:
/* 80628F1C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80628F20  41 82 03 B8 */	beq lbl_806292D8
/* 80628F24  80 1D 0B 24 */	lwz r0, 0xb24(r29)
/* 80628F28  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80628F2C  41 82 03 AC */	beq lbl_806292D8
/* 80628F30  7F A3 EB 78 */	mr r3, r29
/* 80628F34  4B FF ED 89 */	bl checkAttackAble__8daB_TN_cFv
/* 80628F38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80628F3C  41 82 00 14 */	beq lbl_80628F50
/* 80628F40  7F A3 EB 78 */	mr r3, r29
/* 80628F44  4B FF 7F 4D */	bl checkNormalAttackAble__8daB_TN_cFv
/* 80628F48  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80628F4C  40 82 00 14 */	bne lbl_80628F60
lbl_80628F50:
/* 80628F50  7F A3 EB 78 */	mr r3, r29
/* 80628F54  38 80 00 09 */	li r4, 9
/* 80628F58  4B FF EA 45 */	bl initChaseL__8daB_TN_cFi
/* 80628F5C  48 00 03 7C */	b lbl_806292D8
lbl_80628F60:
/* 80628F60  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A6@ha */
/* 80628F64  38 03 03 A6 */	addi r0, r3, 0x03A6 /* 0x000703A6@l */
/* 80628F68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80628F6C  38 7D 06 4C */	addi r3, r29, 0x64c
/* 80628F70  38 81 00 14 */	addi r4, r1, 0x14
/* 80628F74  38 A0 00 00 */	li r5, 0
/* 80628F78  38 C0 FF FF */	li r6, -1
/* 80628F7C  81 9D 06 4C */	lwz r12, 0x64c(r29)
/* 80628F80  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80628F84  7D 89 03 A6 */	mtctr r12
/* 80628F88  4E 80 04 21 */	bctrl 
/* 80628F8C  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80628F90  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80628F94  40 80 00 18 */	bge lbl_80628FAC
/* 80628F98  7F A3 EB 78 */	mr r3, r29
/* 80628F9C  38 80 00 0B */	li r4, 0xb
/* 80628FA0  38 A0 00 00 */	li r5, 0
/* 80628FA4  4B FF 7A 25 */	bl setActionMode__8daB_TN_cFii
/* 80628FA8  48 00 03 30 */	b lbl_806292D8
lbl_80628FAC:
/* 80628FAC  4B C3 E8 C1 */	bl cM_rnd__Fv
/* 80628FB0  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80628FB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80628FB8  40 80 00 18 */	bge lbl_80628FD0
/* 80628FBC  7F A3 EB 78 */	mr r3, r29
/* 80628FC0  38 80 00 0A */	li r4, 0xa
/* 80628FC4  38 A0 00 0A */	li r5, 0xa
/* 80628FC8  4B FF 7A 01 */	bl setActionMode__8daB_TN_cFii
/* 80628FCC  48 00 03 0C */	b lbl_806292D8
lbl_80628FD0:
/* 80628FD0  7F A3 EB 78 */	mr r3, r29
/* 80628FD4  38 80 00 0A */	li r4, 0xa
/* 80628FD8  38 A0 00 00 */	li r5, 0
/* 80628FDC  4B FF 79 ED */	bl setActionMode__8daB_TN_cFii
/* 80628FE0  48 00 02 F8 */	b lbl_806292D8
lbl_80628FE4:
/* 80628FE4  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80628FE8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80628FEC  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 80628FF0  4B C4 77 51 */	bl cLib_chaseF__FPfff
/* 80628FF4  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 80628FF8  38 63 00 0C */	addi r3, r3, 0xc
/* 80628FFC  C0 3F 01 C4 */	lfs f1, 0x1c4(r31)
/* 80629000  4B CF F4 2D */	bl checkPass__12J3DFrameCtrlFf
/* 80629004  2C 03 00 00 */	cmpwi r3, 0
/* 80629008  41 82 00 30 */	beq lbl_80629038
/* 8062900C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A7@ha */
/* 80629010  38 03 03 A7 */	addi r0, r3, 0x03A7 /* 0x000703A7@l */
/* 80629014  90 01 00 10 */	stw r0, 0x10(r1)
/* 80629018  38 7D 06 4C */	addi r3, r29, 0x64c
/* 8062901C  38 81 00 10 */	addi r4, r1, 0x10
/* 80629020  38 A0 00 00 */	li r5, 0
/* 80629024  38 C0 FF FF */	li r6, -1
/* 80629028  81 9D 06 4C */	lwz r12, 0x64c(r29)
/* 8062902C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80629030  7D 89 03 A6 */	mtctr r12
/* 80629034  4E 80 04 21 */	bctrl 
lbl_80629038:
/* 80629038  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 8062903C  38 80 00 01 */	li r4, 1
/* 80629040  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80629044  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80629048  40 82 00 18 */	bne lbl_80629060
/* 8062904C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80629050  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80629054  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80629058  41 82 00 08 */	beq lbl_80629060
/* 8062905C  38 80 00 00 */	li r4, 0
lbl_80629060:
/* 80629060  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80629064  41 82 02 74 */	beq lbl_806292D8
/* 80629068  7F A3 EB 78 */	mr r3, r29
/* 8062906C  38 80 00 01 */	li r4, 1
/* 80629070  4B FF E9 2D */	bl initChaseL__8daB_TN_cFi
/* 80629074  48 00 02 64 */	b lbl_806292D8
lbl_80629078:
/* 80629078  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 8062907C  7F C4 F3 78 */	mr r4, r30
/* 80629080  38 A0 00 04 */	li r5, 4
/* 80629084  38 C0 04 00 */	li r6, 0x400
/* 80629088  38 E0 00 10 */	li r7, 0x10
/* 8062908C  4B C4 74 B5 */	bl cLib_addCalcAngleS__FPsssss
/* 80629090  80 1D 06 F4 */	lwz r0, 0x6f4(r29)
/* 80629094  2C 00 00 0B */	cmpwi r0, 0xb
/* 80629098  41 82 00 0C */	beq lbl_806290A4
/* 8062909C  2C 00 00 0A */	cmpwi r0, 0xa
/* 806290A0  40 82 00 14 */	bne lbl_806290B4
lbl_806290A4:
/* 806290A4  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 806290A8  38 03 C0 00 */	addi r0, r3, -16384
/* 806290AC  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 806290B0  48 00 00 10 */	b lbl_806290C0
lbl_806290B4:
/* 806290B4  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 806290B8  38 03 40 00 */	addi r0, r3, 0x4000
/* 806290BC  B0 1D 04 DE */	sth r0, 0x4de(r29)
lbl_806290C0:
/* 806290C0  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 806290C4  38 63 00 0C */	addi r3, r3, 0xc
/* 806290C8  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 806290CC  4B CF F3 61 */	bl checkPass__12J3DFrameCtrlFf
/* 806290D0  2C 03 00 00 */	cmpwi r3, 0
/* 806290D4  41 82 00 10 */	beq lbl_806290E4
/* 806290D8  C0 1F 01 5C */	lfs f0, 0x15c(r31)
/* 806290DC  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 806290E0  48 00 00 A4 */	b lbl_80629184
lbl_806290E4:
/* 806290E4  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 806290E8  38 63 00 0C */	addi r3, r3, 0xc
/* 806290EC  C0 3F 01 DC */	lfs f1, 0x1dc(r31)
/* 806290F0  4B CF F3 3D */	bl checkPass__12J3DFrameCtrlFf
/* 806290F4  2C 03 00 00 */	cmpwi r3, 0
/* 806290F8  41 82 00 38 */	beq lbl_80629130
/* 806290FC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A1@ha */
/* 80629100  38 03 03 A1 */	addi r0, r3, 0x03A1 /* 0x000703A1@l */
/* 80629104  90 01 00 0C */	stw r0, 0xc(r1)
/* 80629108  38 7D 06 4C */	addi r3, r29, 0x64c
/* 8062910C  38 81 00 0C */	addi r4, r1, 0xc
/* 80629110  38 A0 FF FF */	li r5, -1
/* 80629114  81 9D 06 4C */	lwz r12, 0x64c(r29)
/* 80629118  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8062911C  7D 89 03 A6 */	mtctr r12
/* 80629120  4E 80 04 21 */	bctrl 
/* 80629124  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80629128  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8062912C  48 00 00 58 */	b lbl_80629184
lbl_80629130:
/* 80629130  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 80629134  38 63 00 0C */	addi r3, r3, 0xc
/* 80629138  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8062913C  4B CF F2 F1 */	bl checkPass__12J3DFrameCtrlFf
/* 80629140  2C 03 00 00 */	cmpwi r3, 0
/* 80629144  41 82 00 10 */	beq lbl_80629154
/* 80629148  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8062914C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80629150  48 00 00 34 */	b lbl_80629184
lbl_80629154:
/* 80629154  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 80629158  38 63 00 0C */	addi r3, r3, 0xc
/* 8062915C  C0 3F 01 C4 */	lfs f1, 0x1c4(r31)
/* 80629160  4B CF F2 CD */	bl checkPass__12J3DFrameCtrlFf
/* 80629164  2C 03 00 00 */	cmpwi r3, 0
/* 80629168  41 82 00 1C */	beq lbl_80629184
/* 8062916C  C0 1F 01 F4 */	lfs f0, 0x1f4(r31)
/* 80629170  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80629174  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80629178  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8062917C  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80629180  D0 1D 05 30 */	stfs f0, 0x530(r29)
lbl_80629184:
/* 80629184  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 80629188  38 80 00 01 */	li r4, 1
/* 8062918C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80629190  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80629194  40 82 00 18 */	bne lbl_806291AC
/* 80629198  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8062919C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806291A0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806291A4  41 82 00 08 */	beq lbl_806291AC
/* 806291A8  38 80 00 00 */	li r4, 0
lbl_806291AC:
/* 806291AC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806291B0  41 82 01 28 */	beq lbl_806292D8
/* 806291B4  80 1D 0B 24 */	lwz r0, 0xb24(r29)
/* 806291B8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806291BC  41 82 01 1C */	beq lbl_806292D8
/* 806291C0  80 1D 06 F4 */	lwz r0, 0x6f4(r29)
/* 806291C4  2C 00 00 0B */	cmpwi r0, 0xb
/* 806291C8  41 82 00 0C */	beq lbl_806291D4
/* 806291CC  2C 00 00 0A */	cmpwi r0, 0xa
/* 806291D0  40 82 00 14 */	bne lbl_806291E4
lbl_806291D4:
/* 806291D4  7F A3 EB 78 */	mr r3, r29
/* 806291D8  38 80 00 0C */	li r4, 0xc
/* 806291DC  4B FF E7 C1 */	bl initChaseL__8daB_TN_cFi
/* 806291E0  48 00 00 F8 */	b lbl_806292D8
lbl_806291E4:
/* 806291E4  7F A3 EB 78 */	mr r3, r29
/* 806291E8  38 80 00 0F */	li r4, 0xf
/* 806291EC  4B FF E7 B1 */	bl initChaseL__8daB_TN_cFi
/* 806291F0  48 00 00 E8 */	b lbl_806292D8
lbl_806291F4:
/* 806291F4  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 806291F8  38 63 00 0C */	addi r3, r3, 0xc
/* 806291FC  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80629200  4B CF F2 2D */	bl checkPass__12J3DFrameCtrlFf
/* 80629204  2C 03 00 00 */	cmpwi r3, 0
/* 80629208  41 82 00 30 */	beq lbl_80629238
/* 8062920C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A7@ha */
/* 80629210  38 03 03 A7 */	addi r0, r3, 0x03A7 /* 0x000703A7@l */
/* 80629214  90 01 00 08 */	stw r0, 8(r1)
/* 80629218  38 7D 06 4C */	addi r3, r29, 0x64c
/* 8062921C  38 81 00 08 */	addi r4, r1, 8
/* 80629220  38 A0 00 00 */	li r5, 0
/* 80629224  38 C0 FF FF */	li r6, -1
/* 80629228  81 9D 06 4C */	lwz r12, 0x64c(r29)
/* 8062922C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80629230  7D 89 03 A6 */	mtctr r12
/* 80629234  4E 80 04 21 */	bctrl 
lbl_80629238:
/* 80629238  38 7D 05 2C */	addi r3, r29, 0x52c
/* 8062923C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80629240  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 80629244  4B C4 74 FD */	bl cLib_chaseF__FPfff
/* 80629248  80 7D 06 00 */	lwz r3, 0x600(r29)
/* 8062924C  38 80 00 01 */	li r4, 1
/* 80629250  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80629254  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80629258  40 82 00 18 */	bne lbl_80629270
/* 8062925C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80629260  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80629264  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80629268  41 82 00 08 */	beq lbl_80629270
/* 8062926C  38 80 00 00 */	li r4, 0
lbl_80629270:
/* 80629270  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80629274  41 82 00 64 */	beq lbl_806292D8
/* 80629278  7F A3 EB 78 */	mr r3, r29
/* 8062927C  4B FF EA 41 */	bl checkAttackAble__8daB_TN_cFv
/* 80629280  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80629284  41 82 00 14 */	beq lbl_80629298
/* 80629288  7F A3 EB 78 */	mr r3, r29
/* 8062928C  4B FF 7C 05 */	bl checkNormalAttackAble__8daB_TN_cFv
/* 80629290  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80629294  40 82 00 14 */	bne lbl_806292A8
lbl_80629298:
/* 80629298  7F A3 EB 78 */	mr r3, r29
/* 8062929C  38 80 00 01 */	li r4, 1
/* 806292A0  4B FF E6 FD */	bl initChaseL__8daB_TN_cFi
/* 806292A4  48 00 00 34 */	b lbl_806292D8
lbl_806292A8:
/* 806292A8  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 806292AC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 806292B0  40 80 00 18 */	bge lbl_806292C8
/* 806292B4  7F A3 EB 78 */	mr r3, r29
/* 806292B8  38 80 00 0B */	li r4, 0xb
/* 806292BC  38 A0 00 00 */	li r5, 0
/* 806292C0  4B FF 77 09 */	bl setActionMode__8daB_TN_cFii
/* 806292C4  48 00 00 14 */	b lbl_806292D8
lbl_806292C8:
/* 806292C8  7F A3 EB 78 */	mr r3, r29
/* 806292CC  38 80 00 0A */	li r4, 0xa
/* 806292D0  38 A0 00 0A */	li r5, 0xa
/* 806292D4  4B FF 76 F5 */	bl setActionMode__8daB_TN_cFii
lbl_806292D8:
/* 806292D8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 806292DC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 806292E0  39 61 00 60 */	addi r11, r1, 0x60
/* 806292E4  4B D3 8F 41 */	bl _restgpr_28
/* 806292E8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 806292EC  7C 08 03 A6 */	mtlr r0
/* 806292F0  38 21 00 70 */	addi r1, r1, 0x70
/* 806292F4  4E 80 00 20 */	blr 

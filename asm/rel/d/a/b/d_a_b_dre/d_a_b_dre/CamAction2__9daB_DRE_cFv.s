lbl_805C85E8:
/* 805C85E8  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 805C85EC  7C 08 02 A6 */	mflr r0
/* 805C85F0  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 805C85F4  39 61 00 F0 */	addi r11, r1, 0xf0
/* 805C85F8  4B D9 9B DC */	b _savegpr_27
/* 805C85FC  7C 7D 1B 78 */	mr r29, r3
/* 805C8600  3C 60 80 5D */	lis r3, lit_1109@ha
/* 805C8604  3B C3 B0 40 */	addi r30, r3, lit_1109@l
/* 805C8608  3C 60 80 5D */	lis r3, lit_3844@ha
/* 805C860C  3B E3 AD 5C */	addi r31, r3, lit_3844@l
/* 805C8610  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 805C8614  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 805C8618  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805C861C  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 805C8620  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 805C8624  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 805C8628  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805C862C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805C8630  83 83 5D AC */	lwz r28, 0x5dac(r3)
/* 805C8634  4B BB 90 0C */	b dCam_getBody__Fv
/* 805C8638  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 805C863C  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 805C8640  3B 7E 00 70 */	addi r27, r30, 0x70
/* 805C8644  C0 1B 00 04 */	lfs f0, 4(r27)
/* 805C8648  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 805C864C  C0 1B 00 08 */	lfs f0, 8(r27)
/* 805C8650  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 805C8654  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 805C8658  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 805C865C  C0 1B 00 04 */	lfs f0, 4(r27)
/* 805C8660  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 805C8664  C0 1B 00 08 */	lfs f0, 8(r27)
/* 805C8668  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 805C866C  88 1D 05 B8 */	lbz r0, 0x5b8(r29)
/* 805C8670  2C 00 00 02 */	cmpwi r0, 2
/* 805C8674  41 82 02 48 */	beq lbl_805C88BC
/* 805C8678  40 80 00 14 */	bge lbl_805C868C
/* 805C867C  2C 00 00 00 */	cmpwi r0, 0
/* 805C8680  41 82 00 1C */	beq lbl_805C869C
/* 805C8684  40 80 00 CC */	bge lbl_805C8750
/* 805C8688  48 00 05 58 */	b lbl_805C8BE0
lbl_805C868C:
/* 805C868C  2C 00 00 04 */	cmpwi r0, 4
/* 805C8690  41 82 04 D8 */	beq lbl_805C8B68
/* 805C8694  40 80 05 4C */	bge lbl_805C8BE0
/* 805C8698  48 00 02 BC */	b lbl_805C8954
lbl_805C869C:
/* 805C869C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 805C86A0  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 805C86A4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805C86A8  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 805C86AC  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 805C86B0  7F 83 E3 78 */	mr r3, r28
/* 805C86B4  38 81 00 B0 */	addi r4, r1, 0xb0
/* 805C86B8  A8 BD 04 E6 */	lha r5, 0x4e6(r29)
/* 805C86BC  38 05 50 00 */	addi r0, r5, 0x5000
/* 805C86C0  7C 05 07 34 */	extsh r5, r0
/* 805C86C4  38 C0 00 00 */	li r6, 0
/* 805C86C8  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 805C86CC  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805C86D0  7D 89 03 A6 */	mtctr r12
/* 805C86D4  4E 80 04 21 */	bctrl 
/* 805C86D8  A8 1D 06 2C */	lha r0, 0x62c(r29)
/* 805C86DC  2C 00 00 00 */	cmpwi r0, 0
/* 805C86E0  40 82 05 00 */	bne lbl_805C8BE0
/* 805C86E4  88 7D 05 B8 */	lbz r3, 0x5b8(r29)
/* 805C86E8  38 03 00 01 */	addi r0, r3, 1
/* 805C86EC  98 1D 05 B8 */	stb r0, 0x5b8(r29)
/* 805C86F0  38 00 00 AA */	li r0, 0xaa
/* 805C86F4  B0 1D 06 2C */	sth r0, 0x62c(r29)
/* 805C86F8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805C86FC  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 805C8700  EC 00 18 2A */	fadds f0, f0, f3
/* 805C8704  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 805C8708  C0 5E 00 70 */	lfs f2, 0x70(r30)
/* 805C870C  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 805C8710  C0 1B 00 04 */	lfs f0, 4(r27)
/* 805C8714  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 805C8718  C0 3B 00 08 */	lfs f1, 8(r27)
/* 805C871C  D0 21 00 A0 */	stfs f1, 0xa0(r1)
/* 805C8720  EC 00 18 2A */	fadds f0, f0, f3
/* 805C8724  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 805C8728  D0 41 00 8C */	stfs f2, 0x8c(r1)
/* 805C872C  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 805C8730  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 805C8734  7F A3 EB 78 */	mr r3, r29
/* 805C8738  38 81 00 8C */	addi r4, r1, 0x8c
/* 805C873C  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 805C8740  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 805C8744  A8 BD 05 FC */	lha r5, 0x5fc(r29)
/* 805C8748  4B FF F9 45 */	bl SetStopCam__9daB_DRE_cF4cXyzffs
/* 805C874C  48 00 04 94 */	b lbl_805C8BE0
lbl_805C8750:
/* 805C8750  A8 1D 06 2C */	lha r0, 0x62c(r29)
/* 805C8754  2C 00 00 8C */	cmpwi r0, 0x8c
/* 805C8758  40 80 00 64 */	bge lbl_805C87BC
/* 805C875C  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 805C8760  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 805C8764  C0 1B 00 04 */	lfs f0, 4(r27)
/* 805C8768  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 805C876C  C0 1B 00 08 */	lfs f0, 8(r27)
/* 805C8770  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 805C8774  7F A3 EB 78 */	mr r3, r29
/* 805C8778  38 81 00 80 */	addi r4, r1, 0x80
/* 805C877C  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 805C8780  4B FF FA 39 */	bl SetCMoveCam__9daB_DRE_cF4cXyzf
/* 805C8784  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 805C8788  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 805C878C  C0 1B 00 04 */	lfs f0, 4(r27)
/* 805C8790  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 805C8794  C0 1B 00 08 */	lfs f0, 8(r27)
/* 805C8798  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 805C879C  7F A3 EB 78 */	mr r3, r29
/* 805C87A0  38 81 00 74 */	addi r4, r1, 0x74
/* 805C87A4  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 805C87A8  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 805C87AC  A8 BD 05 FC */	lha r5, 0x5fc(r29)
/* 805C87B0  C0 7F 00 24 */	lfs f3, 0x24(r31)
/* 805C87B4  C0 9F 00 28 */	lfs f4, 0x28(r31)
/* 805C87B8  4B FF FB 91 */	bl SetEyeMoveCam__9daB_DRE_cF4cXyzffsff
lbl_805C87BC:
/* 805C87BC  A8 1D 06 2C */	lha r0, 0x62c(r29)
/* 805C87C0  2C 00 00 00 */	cmpwi r0, 0
/* 805C87C4  40 82 04 1C */	bne lbl_805C8BE0
/* 805C87C8  88 7D 05 B8 */	lbz r3, 0x5b8(r29)
/* 805C87CC  38 03 00 01 */	addi r0, r3, 1
/* 805C87D0  98 1D 05 B8 */	stb r0, 0x5b8(r29)
/* 805C87D4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805C87D8  D0 3D 04 D0 */	stfs f1, 0x4d0(r29)
/* 805C87DC  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 805C87E0  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 805C87E4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805C87E8  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 805C87EC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 805C87F0  D0 1D 04 BC */	stfs f0, 0x4bc(r29)
/* 805C87F4  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805C87F8  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 805C87FC  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 805C8800  D0 1D 04 C4 */	stfs f0, 0x4c4(r29)
/* 805C8804  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 805C8808  38 03 05 00 */	addi r0, r3, 0x500
/* 805C880C  B0 1D 05 FC */	sth r0, 0x5fc(r29)
/* 805C8810  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 805C8814  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 805C8818  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 805C881C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805C8820  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 805C8824  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 805C8828  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 805C882C  7F A3 EB 78 */	mr r3, r29
/* 805C8830  38 81 00 68 */	addi r4, r1, 0x68
/* 805C8834  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 805C8838  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 805C883C  A8 BD 05 FC */	lha r5, 0x5fc(r29)
/* 805C8840  4B FF F8 4D */	bl SetStopCam__9daB_DRE_cF4cXyzffs
/* 805C8844  38 00 00 64 */	li r0, 0x64
/* 805C8848  B0 1D 06 2C */	sth r0, 0x62c(r29)
/* 805C884C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805C8850  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805C8854  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 805C8858  7F A4 EB 78 */	mr r4, r29
/* 805C885C  4B A7 AE 30 */	b setPtT__14dEvt_control_cFPv
/* 805C8860  38 00 00 17 */	li r0, 0x17
/* 805C8864  90 1C 06 14 */	stw r0, 0x614(r28)
/* 805C8868  38 00 00 03 */	li r0, 3
/* 805C886C  90 1C 06 0C */	stw r0, 0x60c(r28)
/* 805C8870  38 00 00 00 */	li r0, 0
/* 805C8874  90 1C 06 10 */	stw r0, 0x610(r28)
/* 805C8878  B0 1C 06 0A */	sth r0, 0x60a(r28)
/* 805C887C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805C8880  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 805C8884  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 805C8888  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 805C888C  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 805C8890  7F 83 E3 78 */	mr r3, r28
/* 805C8894  38 81 00 B0 */	addi r4, r1, 0xb0
/* 805C8898  A8 BD 04 E6 */	lha r5, 0x4e6(r29)
/* 805C889C  38 05 50 00 */	addi r0, r5, 0x5000
/* 805C88A0  7C 05 07 34 */	extsh r5, r0
/* 805C88A4  38 C0 00 00 */	li r6, 0
/* 805C88A8  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 805C88AC  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805C88B0  7D 89 03 A6 */	mtctr r12
/* 805C88B4  4E 80 04 21 */	bctrl 
/* 805C88B8  48 00 03 28 */	b lbl_805C8BE0
lbl_805C88BC:
/* 805C88BC  A8 7D 05 FC */	lha r3, 0x5fc(r29)
/* 805C88C0  38 03 FF FB */	addi r0, r3, -5
/* 805C88C4  B0 1D 05 FC */	sth r0, 0x5fc(r29)
/* 805C88C8  A8 1D 06 2C */	lha r0, 0x62c(r29)
/* 805C88CC  2C 00 00 00 */	cmpwi r0, 0
/* 805C88D0  40 82 00 48 */	bne lbl_805C8918
/* 805C88D4  7F A3 EB 78 */	mr r3, r29
/* 805C88D8  80 9D 06 EC */	lwz r4, 0x6ec(r29)
/* 805C88DC  38 A0 00 38 */	li r5, 0x38
/* 805C88E0  38 C0 00 00 */	li r6, 0
/* 805C88E4  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 805C88E8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805C88EC  4B FF F4 E9 */	bl SetAnm__9daB_DRE_cFP16mDoExt_McaMorfSOiiff
/* 805C88F0  38 00 00 02 */	li r0, 2
/* 805C88F4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 805C88F8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 805C88FC  98 03 12 CC */	stb r0, 0x12cc(r3)
/* 805C8900  88 7D 05 B4 */	lbz r3, 0x5b4(r29)
/* 805C8904  38 03 00 01 */	addi r0, r3, 1
/* 805C8908  98 1D 05 B4 */	stb r0, 0x5b4(r29)
/* 805C890C  88 7D 05 B8 */	lbz r3, 0x5b8(r29)
/* 805C8910  38 03 00 01 */	addi r0, r3, 1
/* 805C8914  98 1D 05 B8 */	stb r0, 0x5b8(r29)
lbl_805C8918:
/* 805C8918  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805C891C  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 805C8920  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 805C8924  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805C8928  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 805C892C  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 805C8930  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 805C8934  7F A3 EB 78 */	mr r3, r29
/* 805C8938  38 81 00 5C */	addi r4, r1, 0x5c
/* 805C893C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 805C8940  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 805C8944  A8 BD 05 FC */	lha r5, 0x5fc(r29)
/* 805C8948  C0 7F 00 3C */	lfs f3, 0x3c(r31)
/* 805C894C  4B FF F9 01 */	bl SetEyeMoveCam__9daB_DRE_cF4cXyzffsf
/* 805C8950  48 00 02 90 */	b lbl_805C8BE0
lbl_805C8954:
/* 805C8954  A8 1D 06 2C */	lha r0, 0x62c(r29)
/* 805C8958  2C 00 00 00 */	cmpwi r0, 0
/* 805C895C  40 82 00 0C */	bne lbl_805C8968
/* 805C8960  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805C8964  D0 1D 05 F8 */	stfs f0, 0x5f8(r29)
lbl_805C8968:
/* 805C8968  80 7D 06 EC */	lwz r3, 0x6ec(r29)
/* 805C896C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 805C8970  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 805C8974  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C8978  40 81 00 44 */	ble lbl_805C89BC
/* 805C897C  80 1D 05 B0 */	lwz r0, 0x5b0(r29)
/* 805C8980  2C 00 00 17 */	cmpwi r0, 0x17
/* 805C8984  40 82 00 38 */	bne lbl_805C89BC
/* 805C8988  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 805C898C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805C8990  38 7E 00 58 */	addi r3, r30, 0x58
/* 805C8994  C0 03 00 04 */	lfs f0, 4(r3)
/* 805C8998  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805C899C  C0 03 00 08 */	lfs f0, 8(r3)
/* 805C89A0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805C89A4  7F A3 EB 78 */	mr r3, r29
/* 805C89A8  38 81 00 50 */	addi r4, r1, 0x50
/* 805C89AC  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 805C89B0  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 805C89B4  4B FF F8 55 */	bl SetCMoveCam__9daB_DRE_cF4cXyzff
/* 805C89B8  48 00 00 98 */	b lbl_805C8A50
lbl_805C89BC:
/* 805C89BC  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 805C89C0  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 805C89C4  38 7E 00 58 */	addi r3, r30, 0x58
/* 805C89C8  C0 03 00 04 */	lfs f0, 4(r3)
/* 805C89CC  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 805C89D0  C0 03 00 08 */	lfs f0, 8(r3)
/* 805C89D4  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 805C89D8  80 7D 06 EC */	lwz r3, 0x6ec(r29)
/* 805C89DC  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 805C89E0  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 805C89E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C89E8  4C 40 13 82 */	cror 2, 0, 2
/* 805C89EC  40 82 00 10 */	bne lbl_805C89FC
/* 805C89F0  80 1D 05 B0 */	lwz r0, 0x5b0(r29)
/* 805C89F4  2C 00 00 38 */	cmpwi r0, 0x38
/* 805C89F8  41 82 00 14 */	beq lbl_805C8A0C
lbl_805C89FC:
/* 805C89FC  C0 21 00 A8 */	lfs f1, 0xa8(r1)
/* 805C8A00  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 805C8A04  EC 01 00 28 */	fsubs f0, f1, f0
/* 805C8A08  D0 01 00 A8 */	stfs f0, 0xa8(r1)
lbl_805C8A0C:
/* 805C8A0C  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 805C8A10  38 7E 00 88 */	addi r3, r30, 0x88
/* 805C8A14  C0 23 00 04 */	lfs f1, 4(r3)
/* 805C8A18  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 805C8A1C  40 80 00 08 */	bge lbl_805C8A24
/* 805C8A20  D0 21 00 A8 */	stfs f1, 0xa8(r1)
lbl_805C8A24:
/* 805C8A24  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 805C8A28  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805C8A2C  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 805C8A30  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 805C8A34  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 805C8A38  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805C8A3C  7F A3 EB 78 */	mr r3, r29
/* 805C8A40  38 81 00 44 */	addi r4, r1, 0x44
/* 805C8A44  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 805C8A48  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 805C8A4C  4B FF F7 BD */	bl SetCMoveCam__9daB_DRE_cF4cXyzff
lbl_805C8A50:
/* 805C8A50  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805C8A54  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 805C8A58  80 7D 06 EC */	lwz r3, 0x6ec(r29)
/* 805C8A5C  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 805C8A60  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 805C8A64  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805C8A68  40 81 00 48 */	ble lbl_805C8AB0
/* 805C8A6C  80 1D 05 B0 */	lwz r0, 0x5b0(r29)
/* 805C8A70  2C 00 00 38 */	cmpwi r0, 0x38
/* 805C8A74  40 82 00 3C */	bne lbl_805C8AB0
/* 805C8A78  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 805C8A7C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805C8A80  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 805C8A84  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 805C8A88  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 805C8A8C  7F A3 EB 78 */	mr r3, r29
/* 805C8A90  38 81 00 38 */	addi r4, r1, 0x38
/* 805C8A94  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 805C8A98  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805C8A9C  A8 BD 05 FC */	lha r5, 0x5fc(r29)
/* 805C8AA0  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 805C8AA4  C0 9F 00 48 */	lfs f4, 0x48(r31)
/* 805C8AA8  4B FF F8 A1 */	bl SetEyeMoveCam__9daB_DRE_cF4cXyzffsff
/* 805C8AAC  48 00 01 34 */	b lbl_805C8BE0
lbl_805C8AB0:
/* 805C8AB0  80 1D 05 B0 */	lwz r0, 0x5b0(r29)
/* 805C8AB4  2C 00 00 17 */	cmpwi r0, 0x17
/* 805C8AB8  40 82 00 40 */	bne lbl_805C8AF8
/* 805C8ABC  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 805C8AC0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805C8AC4  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 805C8AC8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805C8ACC  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 805C8AD0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805C8AD4  7F A3 EB 78 */	mr r3, r29
/* 805C8AD8  38 81 00 2C */	addi r4, r1, 0x2c
/* 805C8ADC  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 805C8AE0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805C8AE4  A8 BD 05 FC */	lha r5, 0x5fc(r29)
/* 805C8AE8  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 805C8AEC  C0 9F 00 48 */	lfs f4, 0x48(r31)
/* 805C8AF0  4B FF F8 59 */	bl SetEyeMoveCam__9daB_DRE_cF4cXyzffsff
/* 805C8AF4  48 00 00 EC */	b lbl_805C8BE0
lbl_805C8AF8:
/* 805C8AF8  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 805C8AFC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805C8B00  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 805C8B04  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805C8B08  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 805C8B0C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805C8B10  7F A3 EB 78 */	mr r3, r29
/* 805C8B14  38 81 00 20 */	addi r4, r1, 0x20
/* 805C8B18  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 805C8B1C  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 805C8B20  A8 BD 05 FC */	lha r5, 0x5fc(r29)
/* 805C8B24  C0 7F 00 3C */	lfs f3, 0x3c(r31)
/* 805C8B28  4B FF F7 25 */	bl SetEyeMoveCam__9daB_DRE_cF4cXyzffsf
/* 805C8B2C  A8 1D 05 FC */	lha r0, 0x5fc(r29)
/* 805C8B30  C8 3F 00 60 */	lfd f1, 0x60(r31)
/* 805C8B34  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805C8B38  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 805C8B3C  3C 00 43 30 */	lis r0, 0x4330
/* 805C8B40  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 805C8B44  C8 01 00 C0 */	lfd f0, 0xc0(r1)
/* 805C8B48  EC 20 08 28 */	fsubs f1, f0, f1
/* 805C8B4C  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 805C8B50  EC 01 00 28 */	fsubs f0, f1, f0
/* 805C8B54  FC 00 00 1E */	fctiwz f0, f0
/* 805C8B58  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 805C8B5C  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 805C8B60  B0 1D 05 FC */	sth r0, 0x5fc(r29)
/* 805C8B64  48 00 00 7C */	b lbl_805C8BE0
lbl_805C8B68:
/* 805C8B68  88 1D 05 B4 */	lbz r0, 0x5b4(r29)
/* 805C8B6C  28 00 00 04 */	cmplwi r0, 4
/* 805C8B70  41 82 00 70 */	beq lbl_805C8BE0
/* 805C8B74  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805C8B78  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 805C8B7C  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 805C8B80  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805C8B84  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 805C8B88  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 805C8B8C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805C8B90  7F A3 EB 78 */	mr r3, r29
/* 805C8B94  38 81 00 14 */	addi r4, r1, 0x14
/* 805C8B98  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 805C8B9C  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 805C8BA0  A8 BD 05 FC */	lha r5, 0x5fc(r29)
/* 805C8BA4  C0 7F 00 3C */	lfs f3, 0x3c(r31)
/* 805C8BA8  4B FF F6 A5 */	bl SetEyeMoveCam__9daB_DRE_cF4cXyzffsf
/* 805C8BAC  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 805C8BB0  D0 01 00 08 */	stfs f0, 8(r1)
/* 805C8BB4  C0 1B 00 04 */	lfs f0, 4(r27)
/* 805C8BB8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805C8BBC  C0 1B 00 08 */	lfs f0, 8(r27)
/* 805C8BC0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805C8BC4  7F A3 EB 78 */	mr r3, r29
/* 805C8BC8  38 81 00 08 */	addi r4, r1, 8
/* 805C8BCC  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 805C8BD0  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 805C8BD4  4B FF F6 35 */	bl SetCMoveCam__9daB_DRE_cF4cXyzff
/* 805C8BD8  7F A3 EB 78 */	mr r3, r29
/* 805C8BDC  4B FF F4 2D */	bl SetStopingCam__9daB_DRE_cFv
lbl_805C8BE0:
/* 805C8BE0  39 61 00 F0 */	addi r11, r1, 0xf0
/* 805C8BE4  4B D9 96 3C */	b _restgpr_27
/* 805C8BE8  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 805C8BEC  7C 08 03 A6 */	mtlr r0
/* 805C8BF0  38 21 00 F0 */	addi r1, r1, 0xf0
/* 805C8BF4  4E 80 00 20 */	blr 

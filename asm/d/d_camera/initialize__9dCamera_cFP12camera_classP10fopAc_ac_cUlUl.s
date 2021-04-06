lbl_80160470:
/* 80160470  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 80160474  7C 08 02 A6 */	mflr r0
/* 80160478  90 01 01 14 */	stw r0, 0x114(r1)
/* 8016047C  39 61 01 10 */	addi r11, r1, 0x110
/* 80160480  48 20 1D 51 */	bl _savegpr_26
/* 80160484  7C 7C 1B 78 */	mr r28, r3
/* 80160488  7C 9E 23 78 */	mr r30, r4
/* 8016048C  7C BD 2B 78 */	mr r29, r5
/* 80160490  7C DB 33 78 */	mr r27, r6
/* 80160494  7C FA 3B 78 */	mr r26, r7
/* 80160498  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8016049C  38 A3 61 C0 */	addi r5, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801604A0  80 65 5D 88 */	lwz r3, 0x5d88(r5)
/* 801604A4  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 801604A8  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 801604AC  3C A5 00 02 */	addis r5, r5, 2
/* 801604B0  38 C0 00 80 */	li r6, 0x80
/* 801604B4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 801604B8  4B ED BE C5 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 801604BC  38 03 00 08 */	addi r0, r3, 8
/* 801604C0  90 1C 06 84 */	stw r0, 0x684(r28)
/* 801604C4  80 03 00 04 */	lwz r0, 4(r3)
/* 801604C8  90 1C 06 88 */	stw r0, 0x688(r28)
/* 801604CC  93 DC 00 00 */	stw r30, 0(r28)
/* 801604D0  38 00 00 01 */	li r0, 1
/* 801604D4  98 1C 00 20 */	stb r0, 0x20(r28)
/* 801604D8  38 00 00 00 */	li r0, 0
/* 801604DC  98 1C 00 21 */	stb r0, 0x21(r28)
/* 801604E0  90 1C 00 24 */	stw r0, 0x24(r28)
/* 801604E4  93 BC 01 80 */	stw r29, 0x180(r28)
/* 801604E8  93 7C 01 78 */	stw r27, 0x178(r28)
/* 801604EC  93 5C 01 7C */	stw r26, 0x17c(r28)
/* 801604F0  7F 83 E3 78 */	mr r3, r28
/* 801604F4  48 00 18 91 */	bl initMonitor__9dCamera_cFv
/* 801604F8  7F 83 E3 78 */	mr r3, r28
/* 801604FC  48 00 10 55 */	bl initPad__9dCamera_cFv
/* 80160500  38 7C 02 28 */	addi r3, r28, 0x228
/* 80160504  48 02 1F C5 */	bl Init__14dCamForcusLineFv
/* 80160508  88 0D 87 E4 */	lbz r0, struct_80450D64+0x0(r13)
/* 8016050C  7C 00 07 74 */	extsb r0, r0
/* 80160510  90 1C 00 04 */	stw r0, 4(r28)
/* 80160514  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80160518  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8016051C  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80160520  3B DD 3E C8 */	addi r30, r29, 0x3ec8
/* 80160524  7F C3 F3 78 */	mr r3, r30
/* 80160528  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 8016052C  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 80160530  38 84 00 0C */	addi r4, r4, 0xc
/* 80160534  48 20 84 61 */	bl strcmp
/* 80160538  2C 03 00 00 */	cmpwi r3, 0
/* 8016053C  40 82 00 10 */	bne lbl_8016054C
/* 80160540  38 00 00 68 */	li r0, 0x68
/* 80160544  90 0D 8A A0 */	stw r0, data_80451020(r13)
/* 80160548  48 00 00 C8 */	b lbl_80160610
lbl_8016054C:
/* 8016054C  7F C3 F3 78 */	mr r3, r30
/* 80160550  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 80160554  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 80160558  38 84 00 14 */	addi r4, r4, 0x14
/* 8016055C  48 20 84 39 */	bl strcmp
/* 80160560  2C 03 00 00 */	cmpwi r3, 0
/* 80160564  40 82 00 10 */	bne lbl_80160574
/* 80160568  38 00 00 69 */	li r0, 0x69
/* 8016056C  90 0D 8A A0 */	stw r0, data_80451020(r13)
/* 80160570  48 00 00 A0 */	b lbl_80160610
lbl_80160574:
/* 80160574  7F C3 F3 78 */	mr r3, r30
/* 80160578  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 8016057C  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 80160580  38 84 00 1C */	addi r4, r4, 0x1c
/* 80160584  48 20 84 11 */	bl strcmp
/* 80160588  2C 03 00 00 */	cmpwi r3, 0
/* 8016058C  40 82 00 10 */	bne lbl_8016059C
/* 80160590  38 00 00 6A */	li r0, 0x6a
/* 80160594  90 0D 8A A0 */	stw r0, data_80451020(r13)
/* 80160598  48 00 00 78 */	b lbl_80160610
lbl_8016059C:
/* 8016059C  7F C3 F3 78 */	mr r3, r30
/* 801605A0  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 801605A4  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 801605A8  38 84 00 24 */	addi r4, r4, 0x24
/* 801605AC  48 20 83 E9 */	bl strcmp
/* 801605B0  2C 03 00 00 */	cmpwi r3, 0
/* 801605B4  40 82 00 10 */	bne lbl_801605C4
/* 801605B8  38 00 00 66 */	li r0, 0x66
/* 801605BC  90 0D 8A A0 */	stw r0, data_80451020(r13)
/* 801605C0  48 00 00 50 */	b lbl_80160610
lbl_801605C4:
/* 801605C4  7F C3 F3 78 */	mr r3, r30
/* 801605C8  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 801605CC  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 801605D0  38 84 00 2C */	addi r4, r4, 0x2c
/* 801605D4  48 20 83 C1 */	bl strcmp
/* 801605D8  2C 03 00 00 */	cmpwi r3, 0
/* 801605DC  40 82 00 10 */	bne lbl_801605EC
/* 801605E0  38 00 00 65 */	li r0, 0x65
/* 801605E4  90 0D 8A A0 */	stw r0, data_80451020(r13)
/* 801605E8  48 00 00 28 */	b lbl_80160610
lbl_801605EC:
/* 801605EC  7F C3 F3 78 */	mr r3, r30
/* 801605F0  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 801605F4  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 801605F8  38 84 00 34 */	addi r4, r4, 0x34
/* 801605FC  48 20 83 99 */	bl strcmp
/* 80160600  2C 03 00 00 */	cmpwi r3, 0
/* 80160604  40 82 00 0C */	bne lbl_80160610
/* 80160608  38 00 00 6B */	li r0, 0x6b
/* 8016060C  90 0D 8A A0 */	stw r0, data_80451020(r13)
lbl_80160610:
/* 80160610  7F 83 E3 78 */	mr r3, r28
/* 80160614  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 80160618  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 8016061C  38 84 00 3C */	addi r4, r4, 0x3c
/* 80160620  48 00 45 45 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 80160624  3C 80 80 43 */	lis r4, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 80160628  90 64 C8 F8 */	stw r3, data_8042C8F8@l(r4)  /* 0x8042C8F8@l */
/* 8016062C  7F 83 E3 78 */	mr r3, r28
/* 80160630  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 80160634  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 80160638  38 84 00 43 */	addi r4, r4, 0x43
/* 8016063C  48 00 45 29 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 80160640  3C 80 80 43 */	lis r4, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 80160644  38 84 C8 F8 */	addi r4, r4, data_8042C8F8@l /* 0x8042C8F8@l */
/* 80160648  90 64 00 04 */	stw r3, 4(r4)
/* 8016064C  7F 83 E3 78 */	mr r3, r28
/* 80160650  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 80160654  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 80160658  38 84 00 49 */	addi r4, r4, 0x49
/* 8016065C  48 00 45 09 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 80160660  3C 80 80 43 */	lis r4, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 80160664  38 84 C8 F8 */	addi r4, r4, data_8042C8F8@l /* 0x8042C8F8@l */
/* 80160668  90 64 00 08 */	stw r3, 8(r4)
/* 8016066C  7F 83 E3 78 */	mr r3, r28
/* 80160670  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 80160674  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 80160678  38 84 00 4F */	addi r4, r4, 0x4f
/* 8016067C  48 00 44 E9 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 80160680  3C 80 80 43 */	lis r4, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 80160684  38 84 C8 F8 */	addi r4, r4, data_8042C8F8@l /* 0x8042C8F8@l */
/* 80160688  90 64 00 0C */	stw r3, 0xc(r4)
/* 8016068C  7F 83 E3 78 */	mr r3, r28
/* 80160690  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 80160694  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 80160698  38 84 00 55 */	addi r4, r4, 0x55
/* 8016069C  48 00 44 C9 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 801606A0  3C 80 80 43 */	lis r4, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 801606A4  38 84 C8 F8 */	addi r4, r4, data_8042C8F8@l /* 0x8042C8F8@l */
/* 801606A8  90 64 00 34 */	stw r3, 0x34(r4)
/* 801606AC  7F 83 E3 78 */	mr r3, r28
/* 801606B0  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 801606B4  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 801606B8  38 84 00 5F */	addi r4, r4, 0x5f
/* 801606BC  48 00 44 A9 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 801606C0  3C 80 80 43 */	lis r4, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 801606C4  38 84 C8 F8 */	addi r4, r4, data_8042C8F8@l /* 0x8042C8F8@l */
/* 801606C8  90 64 00 14 */	stw r3, 0x14(r4)
/* 801606CC  7F 83 E3 78 */	mr r3, r28
/* 801606D0  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 801606D4  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 801606D8  38 84 00 66 */	addi r4, r4, 0x66
/* 801606DC  48 00 44 89 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 801606E0  3C 80 80 43 */	lis r4, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 801606E4  38 84 C8 F8 */	addi r4, r4, data_8042C8F8@l /* 0x8042C8F8@l */
/* 801606E8  90 64 00 18 */	stw r3, 0x18(r4)
/* 801606EC  7F 83 E3 78 */	mr r3, r28
/* 801606F0  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 801606F4  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 801606F8  38 84 00 6C */	addi r4, r4, 0x6c
/* 801606FC  48 00 44 69 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 80160700  3C 80 80 43 */	lis r4, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 80160704  38 84 C8 F8 */	addi r4, r4, data_8042C8F8@l /* 0x8042C8F8@l */
/* 80160708  90 64 00 10 */	stw r3, 0x10(r4)
/* 8016070C  7F 83 E3 78 */	mr r3, r28
/* 80160710  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 80160714  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 80160718  38 84 00 72 */	addi r4, r4, 0x72
/* 8016071C  48 00 44 49 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 80160720  3C 80 80 43 */	lis r4, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 80160724  38 84 C8 F8 */	addi r4, r4, data_8042C8F8@l /* 0x8042C8F8@l */
/* 80160728  90 64 00 20 */	stw r3, 0x20(r4)
/* 8016072C  7F 83 E3 78 */	mr r3, r28
/* 80160730  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 80160734  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 80160738  38 84 00 77 */	addi r4, r4, 0x77
/* 8016073C  48 00 44 29 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 80160740  3C 80 80 43 */	lis r4, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 80160744  38 84 C8 F8 */	addi r4, r4, data_8042C8F8@l /* 0x8042C8F8@l */
/* 80160748  90 64 00 24 */	stw r3, 0x24(r4)
/* 8016074C  7F 83 E3 78 */	mr r3, r28
/* 80160750  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 80160754  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 80160758  38 84 00 7D */	addi r4, r4, 0x7d
/* 8016075C  48 00 44 09 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 80160760  3C 80 80 43 */	lis r4, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 80160764  38 84 C8 F8 */	addi r4, r4, data_8042C8F8@l /* 0x8042C8F8@l */
/* 80160768  90 64 00 28 */	stw r3, 0x28(r4)
/* 8016076C  7F 83 E3 78 */	mr r3, r28
/* 80160770  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 80160774  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 80160778  38 84 00 88 */	addi r4, r4, 0x88
/* 8016077C  48 00 43 E9 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 80160780  3C 80 80 43 */	lis r4, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 80160784  38 84 C8 F8 */	addi r4, r4, data_8042C8F8@l /* 0x8042C8F8@l */
/* 80160788  90 64 00 30 */	stw r3, 0x30(r4)
/* 8016078C  7F 83 E3 78 */	mr r3, r28
/* 80160790  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 80160794  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 80160798  38 84 00 92 */	addi r4, r4, 0x92
/* 8016079C  48 00 43 C9 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 801607A0  3C 80 80 43 */	lis r4, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 801607A4  38 84 C8 F8 */	addi r4, r4, data_8042C8F8@l /* 0x8042C8F8@l */
/* 801607A8  90 64 00 2C */	stw r3, 0x2c(r4)
/* 801607AC  7F 83 E3 78 */	mr r3, r28
/* 801607B0  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 801607B4  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 801607B8  38 84 00 9C */	addi r4, r4, 0x9c
/* 801607BC  48 00 43 A9 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 801607C0  3C 80 80 43 */	lis r4, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 801607C4  38 84 C8 F8 */	addi r4, r4, data_8042C8F8@l /* 0x8042C8F8@l */
/* 801607C8  90 64 00 80 */	stw r3, 0x80(r4)
/* 801607CC  7F 83 E3 78 */	mr r3, r28
/* 801607D0  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 801607D4  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 801607D8  38 84 00 A6 */	addi r4, r4, 0xa6
/* 801607DC  48 00 43 89 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 801607E0  3C 80 80 43 */	lis r4, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 801607E4  38 84 C8 F8 */	addi r4, r4, data_8042C8F8@l /* 0x8042C8F8@l */
/* 801607E8  90 64 00 7C */	stw r3, 0x7c(r4)
/* 801607EC  7F 83 E3 78 */	mr r3, r28
/* 801607F0  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 801607F4  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 801607F8  38 84 00 AB */	addi r4, r4, 0xab
/* 801607FC  48 00 43 69 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 80160800  3C 80 80 43 */	lis r4, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 80160804  38 84 C8 F8 */	addi r4, r4, data_8042C8F8@l /* 0x8042C8F8@l */
/* 80160808  90 64 00 78 */	stw r3, 0x78(r4)
/* 8016080C  7F 83 E3 78 */	mr r3, r28
/* 80160810  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 80160814  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 80160818  38 84 00 B6 */	addi r4, r4, 0xb6
/* 8016081C  48 00 43 49 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 80160820  3C 80 80 43 */	lis r4, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 80160824  38 84 C8 F8 */	addi r4, r4, data_8042C8F8@l /* 0x8042C8F8@l */
/* 80160828  90 64 00 74 */	stw r3, 0x74(r4)
/* 8016082C  7F 83 E3 78 */	mr r3, r28
/* 80160830  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 80160834  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 80160838  38 84 00 C0 */	addi r4, r4, 0xc0
/* 8016083C  48 00 43 29 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 80160840  3C 80 80 43 */	lis r4, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 80160844  38 84 C8 F8 */	addi r4, r4, data_8042C8F8@l /* 0x8042C8F8@l */
/* 80160848  90 64 00 70 */	stw r3, 0x70(r4)
/* 8016084C  7F 83 E3 78 */	mr r3, r28
/* 80160850  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 80160854  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 80160858  38 84 00 C8 */	addi r4, r4, 0xc8
/* 8016085C  48 00 43 09 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 80160860  3C 80 80 43 */	lis r4, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 80160864  38 84 C8 F8 */	addi r4, r4, data_8042C8F8@l /* 0x8042C8F8@l */
/* 80160868  90 64 00 64 */	stw r3, 0x64(r4)
/* 8016086C  7F 83 E3 78 */	mr r3, r28
/* 80160870  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 80160874  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 80160878  38 84 00 D1 */	addi r4, r4, 0xd1
/* 8016087C  48 00 42 E9 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 80160880  3C 80 80 43 */	lis r4, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 80160884  38 84 C8 F8 */	addi r4, r4, data_8042C8F8@l /* 0x8042C8F8@l */
/* 80160888  90 64 00 68 */	stw r3, 0x68(r4)
/* 8016088C  7F 83 E3 78 */	mr r3, r28
/* 80160890  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 80160894  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 80160898  38 84 00 DA */	addi r4, r4, 0xda
/* 8016089C  48 00 42 C9 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 801608A0  3C 80 80 43 */	lis r4, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 801608A4  38 84 C8 F8 */	addi r4, r4, data_8042C8F8@l /* 0x8042C8F8@l */
/* 801608A8  90 64 00 6C */	stw r3, 0x6c(r4)
/* 801608AC  7F 83 E3 78 */	mr r3, r28
/* 801608B0  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 801608B4  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 801608B8  38 84 00 E4 */	addi r4, r4, 0xe4
/* 801608BC  48 00 42 A9 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 801608C0  3C 80 80 43 */	lis r4, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 801608C4  38 84 C8 F8 */	addi r4, r4, data_8042C8F8@l /* 0x8042C8F8@l */
/* 801608C8  90 64 00 84 */	stw r3, 0x84(r4)
/* 801608CC  7F 83 E3 78 */	mr r3, r28
/* 801608D0  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 801608D4  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 801608D8  38 84 00 ED */	addi r4, r4, 0xed
/* 801608DC  48 00 42 89 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 801608E0  3C 80 80 43 */	lis r4, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 801608E4  38 84 C8 F8 */	addi r4, r4, data_8042C8F8@l /* 0x8042C8F8@l */
/* 801608E8  90 64 00 38 */	stw r3, 0x38(r4)
/* 801608EC  7F 83 E3 78 */	mr r3, r28
/* 801608F0  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 801608F4  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 801608F8  38 84 00 F4 */	addi r4, r4, 0xf4
/* 801608FC  48 00 42 69 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 80160900  3C 80 80 43 */	lis r4, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 80160904  38 84 C8 F8 */	addi r4, r4, data_8042C8F8@l /* 0x8042C8F8@l */
/* 80160908  90 64 00 3C */	stw r3, 0x3c(r4)
/* 8016090C  7F 83 E3 78 */	mr r3, r28
/* 80160910  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 80160914  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 80160918  38 84 00 FB */	addi r4, r4, 0xfb
/* 8016091C  48 00 42 49 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 80160920  3C 80 80 43 */	lis r4, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 80160924  38 84 C8 F8 */	addi r4, r4, data_8042C8F8@l /* 0x8042C8F8@l */
/* 80160928  90 64 00 40 */	stw r3, 0x40(r4)
/* 8016092C  7F 83 E3 78 */	mr r3, r28
/* 80160930  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 80160934  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 80160938  38 84 01 03 */	addi r4, r4, 0x103
/* 8016093C  48 00 42 29 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 80160940  3C 80 80 43 */	lis r4, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 80160944  38 84 C8 F8 */	addi r4, r4, data_8042C8F8@l /* 0x8042C8F8@l */
/* 80160948  90 64 00 44 */	stw r3, 0x44(r4)
/* 8016094C  7F 83 E3 78 */	mr r3, r28
/* 80160950  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 80160954  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 80160958  38 84 01 0B */	addi r4, r4, 0x10b
/* 8016095C  48 00 42 09 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 80160960  3C 80 80 43 */	lis r4, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 80160964  38 84 C8 F8 */	addi r4, r4, data_8042C8F8@l /* 0x8042C8F8@l */
/* 80160968  90 64 00 48 */	stw r3, 0x48(r4)
/* 8016096C  7F 83 E3 78 */	mr r3, r28
/* 80160970  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 80160974  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 80160978  38 84 01 14 */	addi r4, r4, 0x114
/* 8016097C  48 00 41 E9 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 80160980  3C 80 80 43 */	lis r4, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 80160984  38 84 C8 F8 */	addi r4, r4, data_8042C8F8@l /* 0x8042C8F8@l */
/* 80160988  90 64 00 4C */	stw r3, 0x4c(r4)
/* 8016098C  7F 83 E3 78 */	mr r3, r28
/* 80160990  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 80160994  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 80160998  38 84 01 1A */	addi r4, r4, 0x11a
/* 8016099C  48 00 41 C9 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 801609A0  3C 80 80 43 */	lis r4, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 801609A4  38 84 C8 F8 */	addi r4, r4, data_8042C8F8@l /* 0x8042C8F8@l */
/* 801609A8  90 64 00 50 */	stw r3, 0x50(r4)
/* 801609AC  7F 83 E3 78 */	mr r3, r28
/* 801609B0  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 801609B4  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 801609B8  38 84 01 21 */	addi r4, r4, 0x121
/* 801609BC  48 00 41 A9 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 801609C0  3C 80 80 43 */	lis r4, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 801609C4  38 84 C8 F8 */	addi r4, r4, data_8042C8F8@l /* 0x8042C8F8@l */
/* 801609C8  90 64 00 54 */	stw r3, 0x54(r4)
/* 801609CC  7F 83 E3 78 */	mr r3, r28
/* 801609D0  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 801609D4  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 801609D8  38 84 01 29 */	addi r4, r4, 0x129
/* 801609DC  48 00 41 89 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 801609E0  3C 80 80 43 */	lis r4, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 801609E4  38 84 C8 F8 */	addi r4, r4, data_8042C8F8@l /* 0x8042C8F8@l */
/* 801609E8  90 64 00 58 */	stw r3, 0x58(r4)
/* 801609EC  7F 83 E3 78 */	mr r3, r28
/* 801609F0  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 801609F4  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 801609F8  38 84 01 30 */	addi r4, r4, 0x130
/* 801609FC  48 00 41 69 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 80160A00  3C 80 80 43 */	lis r4, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 80160A04  38 84 C8 F8 */	addi r4, r4, data_8042C8F8@l /* 0x8042C8F8@l */
/* 80160A08  90 64 00 5C */	stw r3, 0x5c(r4)
/* 80160A0C  7F 83 E3 78 */	mr r3, r28
/* 80160A10  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 80160A14  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 80160A18  38 84 01 37 */	addi r4, r4, 0x137
/* 80160A1C  48 00 41 49 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 80160A20  3C 80 80 43 */	lis r4, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 80160A24  38 84 C8 F8 */	addi r4, r4, data_8042C8F8@l /* 0x8042C8F8@l */
/* 80160A28  90 64 00 60 */	stw r3, 0x60(r4)
/* 80160A2C  7F 83 E3 78 */	mr r3, r28
/* 80160A30  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 80160A34  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 80160A38  38 84 01 3F */	addi r4, r4, 0x13f
/* 80160A3C  48 00 41 29 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 80160A40  3C 80 80 43 */	lis r4, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 80160A44  38 84 C8 F8 */	addi r4, r4, data_8042C8F8@l /* 0x8042C8F8@l */
/* 80160A48  90 64 00 88 */	stw r3, 0x88(r4)
/* 80160A4C  7F 83 E3 78 */	mr r3, r28
/* 80160A50  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 80160A54  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 80160A58  38 84 01 4B */	addi r4, r4, 0x14b
/* 80160A5C  48 00 41 09 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 80160A60  3C 80 80 43 */	lis r4, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 80160A64  38 84 C8 F8 */	addi r4, r4, data_8042C8F8@l /* 0x8042C8F8@l */
/* 80160A68  90 64 00 8C */	stw r3, 0x8c(r4)
/* 80160A6C  7F 83 E3 78 */	mr r3, r28
/* 80160A70  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 80160A74  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 80160A78  38 84 01 54 */	addi r4, r4, 0x154
/* 80160A7C  48 00 40 E9 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 80160A80  3C 80 80 43 */	lis r4, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 80160A84  38 84 C8 F8 */	addi r4, r4, data_8042C8F8@l /* 0x8042C8F8@l */
/* 80160A88  90 64 00 90 */	stw r3, 0x90(r4)
/* 80160A8C  7F 83 E3 78 */	mr r3, r28
/* 80160A90  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 80160A94  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 80160A98  38 84 01 5C */	addi r4, r4, 0x15c
/* 80160A9C  48 00 40 C9 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 80160AA0  3C 80 80 43 */	lis r4, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 80160AA4  38 84 C8 F8 */	addi r4, r4, data_8042C8F8@l /* 0x8042C8F8@l */
/* 80160AA8  90 64 00 94 */	stw r3, 0x94(r4)
/* 80160AAC  7F 83 E3 78 */	mr r3, r28
/* 80160AB0  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 80160AB4  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 80160AB8  38 84 01 69 */	addi r4, r4, 0x169
/* 80160ABC  48 00 40 A9 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 80160AC0  3C 80 80 43 */	lis r4, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 80160AC4  38 84 C8 F8 */	addi r4, r4, data_8042C8F8@l /* 0x8042C8F8@l */
/* 80160AC8  90 64 00 9C */	stw r3, 0x9c(r4)
/* 80160ACC  7F 83 E3 78 */	mr r3, r28
/* 80160AD0  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 80160AD4  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 80160AD8  38 84 01 75 */	addi r4, r4, 0x175
/* 80160ADC  48 00 40 89 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 80160AE0  3C 80 80 43 */	lis r4, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 80160AE4  38 84 C8 F8 */	addi r4, r4, data_8042C8F8@l /* 0x8042C8F8@l */
/* 80160AE8  90 64 00 A0 */	stw r3, 0xa0(r4)
/* 80160AEC  7F 83 E3 78 */	mr r3, r28
/* 80160AF0  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 80160AF4  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 80160AF8  38 84 01 7D */	addi r4, r4, 0x17d
/* 80160AFC  48 00 40 69 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 80160B00  3C 80 80 43 */	lis r4, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 80160B04  38 84 C8 F8 */	addi r4, r4, data_8042C8F8@l /* 0x8042C8F8@l */
/* 80160B08  90 64 00 98 */	stw r3, 0x98(r4)
/* 80160B0C  80 04 00 00 */	lwz r0, 0(r4)
/* 80160B10  90 1C 06 94 */	stw r0, 0x694(r28)
/* 80160B14  90 1C 06 8C */	stw r0, 0x68c(r28)
/* 80160B18  7F 83 E3 78 */	mr r3, r28
/* 80160B1C  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 80160B20  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 80160B24  38 84 01 88 */	addi r4, r4, 0x188
/* 80160B28  48 00 40 3D */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 80160B2C  3C 80 80 43 */	lis r4, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 80160B30  38 84 C8 F8 */	addi r4, r4, data_8042C8F8@l /* 0x8042C8F8@l */
/* 80160B34  90 64 00 A4 */	stw r3, 0xa4(r4)
/* 80160B38  38 00 00 FF */	li r0, 0xff
/* 80160B3C  90 1C 06 98 */	stw r0, 0x698(r28)
/* 80160B40  38 80 00 00 */	li r4, 0
/* 80160B44  90 9C 06 9C */	stw r4, 0x69c(r28)
/* 80160B48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80160B4C  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80160B50  80 7E 5D B4 */	lwz r3, 0x5db4(r30)
/* 80160B54  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80160B58  54 00 3F FE */	rlwinm r0, r0, 7, 0x1f, 0x1f
/* 80160B5C  90 1C 01 90 */	stw r0, 0x190(r28)
/* 80160B60  90 9C 01 A4 */	stw r4, 0x1a4(r28)
/* 80160B64  90 9C 06 80 */	stw r4, 0x680(r28)
/* 80160B68  38 00 00 0B */	li r0, 0xb
/* 80160B6C  90 1C 01 AC */	stw r0, 0x1ac(r28)
/* 80160B70  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 80160B74  D0 1C 01 B4 */	stfs f0, 0x1b4(r28)
/* 80160B78  90 9C 06 0C */	stw r4, 0x60c(r28)
/* 80160B7C  A8 0D 8C 08 */	lha r0, _0__7cSAngle(r13)
/* 80160B80  B0 1C 01 B0 */	sth r0, 0x1b0(r28)
/* 80160B84  90 9C 00 A8 */	stw r4, 0xa8(r28)
/* 80160B88  C0 22 9C A4 */	lfs f1, lit_5657(r2)
/* 80160B8C  48 10 6E 01 */	bl cM_rndFX__Ff
/* 80160B90  48 20 15 1D */	bl __cvt_fp2unsigned
/* 80160B94  90 7C 00 AC */	stw r3, 0xac(r28)
/* 80160B98  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 80160B9C  D0 1C 00 84 */	stfs f0, 0x84(r28)
/* 80160BA0  C0 42 9C A0 */	lfs f2, lit_5656(r2)
/* 80160BA4  D0 5C 09 1C */	stfs f2, 0x91c(r28)
/* 80160BA8  D0 5C 09 20 */	stfs f2, 0x920(r28)
/* 80160BAC  38 A0 00 00 */	li r5, 0
/* 80160BB0  90 BC 09 24 */	stw r5, 0x924(r28)
/* 80160BB4  38 00 FF FF */	li r0, -1
/* 80160BB8  90 1C 09 28 */	stw r0, 0x928(r28)
/* 80160BBC  90 BC 09 40 */	stw r5, 0x940(r28)
/* 80160BC0  98 BC 09 44 */	stb r5, 0x944(r28)
/* 80160BC4  80 1C 09 40 */	lwz r0, 0x940(r28)
/* 80160BC8  90 1C 09 50 */	stw r0, 0x950(r28)
/* 80160BCC  98 BC 03 28 */	stb r5, 0x328(r28)
/* 80160BD0  98 BC 02 CC */	stb r5, 0x2cc(r28)
/* 80160BD4  38 80 00 FF */	li r4, 0xff
/* 80160BD8  90 9C 03 C8 */	stw r4, 0x3c8(r28)
/* 80160BDC  C0 22 9C AC */	lfs f1, lit_5659(r2)
/* 80160BE0  D0 3C 03 80 */	stfs f1, 0x380(r28)
/* 80160BE4  D0 3C 03 24 */	stfs f1, 0x324(r28)
/* 80160BE8  80 1C 03 20 */	lwz r0, 0x320(r28)
/* 80160BEC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80160BF0  90 1C 03 20 */	stw r0, 0x320(r28)
/* 80160BF4  80 1C 03 20 */	lwz r0, 0x320(r28)
/* 80160BF8  60 00 00 02 */	ori r0, r0, 2
/* 80160BFC  90 1C 03 20 */	stw r0, 0x320(r28)
/* 80160C00  98 BC 03 8D */	stb r5, 0x38d(r28)
/* 80160C04  98 BC 03 8C */	stb r5, 0x38c(r28)
/* 80160C08  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 80160C0C  3B E3 0C F4 */	addi r31, r3, Zero__4cXyz@l /* 0x80430CF4@l */
/* 80160C10  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80160C14  D0 1C 03 9C */	stfs f0, 0x39c(r28)
/* 80160C18  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80160C1C  D0 1C 03 A0 */	stfs f0, 0x3a0(r28)
/* 80160C20  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80160C24  D0 1C 03 A4 */	stfs f0, 0x3a4(r28)
/* 80160C28  C0 1C 03 9C */	lfs f0, 0x39c(r28)
/* 80160C2C  D0 1C 03 90 */	stfs f0, 0x390(r28)
/* 80160C30  C0 1C 03 A0 */	lfs f0, 0x3a0(r28)
/* 80160C34  D0 1C 03 94 */	stfs f0, 0x394(r28)
/* 80160C38  C0 1C 03 A4 */	lfs f0, 0x3a4(r28)
/* 80160C3C  D0 1C 03 98 */	stfs f0, 0x398(r28)
/* 80160C40  90 BC 03 AC */	stw r5, 0x3ac(r28)
/* 80160C44  A8 0D 8C 08 */	lha r0, _0__7cSAngle(r13)
/* 80160C48  B0 1C 03 AA */	sth r0, 0x3aa(r28)
/* 80160C4C  A8 1C 03 AA */	lha r0, 0x3aa(r28)
/* 80160C50  B0 1C 03 A8 */	sth r0, 0x3a8(r28)
/* 80160C54  90 BC 03 C0 */	stw r5, 0x3c0(r28)
/* 80160C58  90 BC 03 D4 */	stw r5, 0x3d4(r28)
/* 80160C5C  D0 5C 03 D8 */	stfs f2, 0x3d8(r28)
/* 80160C60  D0 3C 03 C4 */	stfs f1, 0x3c4(r28)
/* 80160C64  90 9C 03 CC */	stw r4, 0x3cc(r28)
/* 80160C68  C0 1C 0A C0 */	lfs f0, 0xac0(r28)
/* 80160C6C  D0 1C 09 34 */	stfs f0, 0x934(r28)
/* 80160C70  90 9C 06 94 */	stw r4, 0x694(r28)
/* 80160C74  90 9C 07 D8 */	stw r4, 0x7d8(r28)
/* 80160C78  90 9C 07 DC */	stw r4, 0x7dc(r28)
/* 80160C7C  98 BC 07 E6 */	stb r5, 0x7e6(r28)
/* 80160C80  90 BC 07 E0 */	stw r5, 0x7e0(r28)
/* 80160C84  98 9C 07 E7 */	stb r4, 0x7e7(r28)
/* 80160C88  B0 9C 07 E4 */	sth r4, 0x7e4(r28)
/* 80160C8C  90 9C 08 14 */	stw r4, 0x814(r28)
/* 80160C90  90 9C 08 18 */	stw r4, 0x818(r28)
/* 80160C94  98 BC 08 22 */	stb r5, 0x822(r28)
/* 80160C98  90 BC 08 1C */	stw r5, 0x81c(r28)
/* 80160C9C  98 9C 08 23 */	stb r4, 0x823(r28)
/* 80160CA0  B0 9C 08 20 */	sth r4, 0x820(r28)
/* 80160CA4  90 9C 08 50 */	stw r4, 0x850(r28)
/* 80160CA8  90 9C 08 54 */	stw r4, 0x854(r28)
/* 80160CAC  98 BC 08 5E */	stb r5, 0x85e(r28)
/* 80160CB0  90 BC 08 58 */	stw r5, 0x858(r28)
/* 80160CB4  98 9C 08 5F */	stb r4, 0x85f(r28)
/* 80160CB8  B0 9C 08 5C */	sth r4, 0x85c(r28)
/* 80160CBC  90 9C 08 8C */	stw r4, 0x88c(r28)
/* 80160CC0  90 9C 08 90 */	stw r4, 0x890(r28)
/* 80160CC4  98 BC 08 9A */	stb r5, 0x89a(r28)
/* 80160CC8  90 BC 08 94 */	stw r5, 0x894(r28)
/* 80160CCC  98 9C 08 9B */	stb r4, 0x89b(r28)
/* 80160CD0  B0 9C 08 98 */	sth r4, 0x898(r28)
/* 80160CD4  90 9C 08 C8 */	stw r4, 0x8c8(r28)
/* 80160CD8  90 9C 08 CC */	stw r4, 0x8cc(r28)
/* 80160CDC  98 BC 08 D6 */	stb r5, 0x8d6(r28)
/* 80160CE0  90 BC 08 D0 */	stw r5, 0x8d0(r28)
/* 80160CE4  98 9C 08 D7 */	stb r4, 0x8d7(r28)
/* 80160CE8  B0 9C 08 D4 */	sth r4, 0x8d4(r28)
/* 80160CEC  90 9C 09 04 */	stw r4, 0x904(r28)
/* 80160CF0  90 9C 09 08 */	stw r4, 0x908(r28)
/* 80160CF4  98 BC 09 12 */	stb r5, 0x912(r28)
/* 80160CF8  90 BC 09 0C */	stw r5, 0x90c(r28)
/* 80160CFC  98 9C 09 13 */	stb r4, 0x913(r28)
/* 80160D00  B0 9C 09 10 */	sth r4, 0x910(r28)
/* 80160D04  7F 83 E3 78 */	mr r3, r28
/* 80160D08  48 00 24 75 */	bl setStageMapToolData__9dCamera_cFv
/* 80160D0C  80 1C 08 18 */	lwz r0, 0x818(r28)
/* 80160D10  2C 00 00 FF */	cmpwi r0, 0xff
/* 80160D14  41 82 00 14 */	beq lbl_80160D28
/* 80160D18  7F 83 E3 78 */	mr r3, r28
/* 80160D1C  38 9C 07 E8 */	addi r4, r28, 0x7e8
/* 80160D20  48 00 3E F1 */	bl GetCameraTypeFromToolData__9dCamera_cFP24stage_camera2_data_class
/* 80160D24  90 7C 06 94 */	stw r3, 0x694(r28)
lbl_80160D28:
/* 80160D28  34 7D 3E E8 */	addic. r3, r29, 0x3ee8
/* 80160D2C  41 82 00 18 */	beq lbl_80160D44
/* 80160D30  81 83 00 00 */	lwz r12, 0(r3)
/* 80160D34  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 80160D38  7D 89 03 A6 */	mtctr r12
/* 80160D3C  4E 80 04 21 */	bctrl 
/* 80160D40  48 00 00 08 */	b lbl_80160D48
lbl_80160D44:
/* 80160D44  38 60 00 00 */	li r3, 0
lbl_80160D48:
/* 80160D48  28 03 00 00 */	cmplwi r3, 0
/* 80160D4C  41 82 00 80 */	beq lbl_80160DCC
/* 80160D50  80 1C 06 94 */	lwz r0, 0x694(r28)
/* 80160D54  2C 00 00 FF */	cmpwi r0, 0xff
/* 80160D58  40 82 00 74 */	bne lbl_80160DCC
/* 80160D5C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80160D60  54 00 87 7E */	rlwinm r0, r0, 0x10, 0x1d, 0x1f
/* 80160D64  2C 00 00 02 */	cmpwi r0, 2
/* 80160D68  41 82 00 30 */	beq lbl_80160D98
/* 80160D6C  40 80 00 48 */	bge lbl_80160DB4
/* 80160D70  2C 00 00 01 */	cmpwi r0, 1
/* 80160D74  40 80 00 08 */	bge lbl_80160D7C
/* 80160D78  48 00 00 3C */	b lbl_80160DB4
lbl_80160D7C:
/* 80160D7C  7F 83 E3 78 */	mr r3, r28
/* 80160D80  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 80160D84  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 80160D88  38 84 01 8D */	addi r4, r4, 0x18d
/* 80160D8C  48 00 3D D9 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 80160D90  90 7C 06 94 */	stw r3, 0x694(r28)
/* 80160D94  48 00 00 38 */	b lbl_80160DCC
lbl_80160D98:
/* 80160D98  7F 83 E3 78 */	mr r3, r28
/* 80160D9C  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 80160DA0  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 80160DA4  38 84 01 96 */	addi r4, r4, 0x196
/* 80160DA8  48 00 3D BD */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 80160DAC  90 7C 06 94 */	stw r3, 0x694(r28)
/* 80160DB0  48 00 00 1C */	b lbl_80160DCC
lbl_80160DB4:
/* 80160DB4  7F 83 E3 78 */	mr r3, r28
/* 80160DB8  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 80160DBC  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 80160DC0  38 84 00 3C */	addi r4, r4, 0x3c
/* 80160DC4  48 00 3D A1 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 80160DC8  90 7C 06 94 */	stw r3, 0x694(r28)
lbl_80160DCC:
/* 80160DCC  3B 60 00 FF */	li r27, 0xff
/* 80160DD0  8B 4D 87 E4 */	lbz r26, struct_80450D64+0x0(r13)
/* 80160DD4  7F 5A 07 74 */	extsb r26, r26
/* 80160DD8  38 7D 3F 8C */	addi r3, r29, 0x3f8c
/* 80160DDC  7F 44 D3 78 */	mr r4, r26
/* 80160DE0  4B EC 35 A5 */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 80160DE4  28 03 00 00 */	cmplwi r3, 0
/* 80160DE8  41 82 00 20 */	beq lbl_80160E08
/* 80160DEC  81 83 00 00 */	lwz r12, 0(r3)
/* 80160DF0  81 8C 01 0C */	lwz r12, 0x10c(r12)
/* 80160DF4  7D 89 03 A6 */	mtctr r12
/* 80160DF8  4E 80 04 21 */	bctrl 
/* 80160DFC  28 03 00 00 */	cmplwi r3, 0
/* 80160E00  41 82 00 08 */	beq lbl_80160E08
/* 80160E04  8B 63 00 1A */	lbz r27, 0x1a(r3)
lbl_80160E08:
/* 80160E08  7F 83 E3 78 */	mr r3, r28
/* 80160E0C  38 9C 08 24 */	addi r4, r28, 0x824
/* 80160E10  7F 65 DB 78 */	mr r5, r27
/* 80160E14  7F 46 D3 78 */	mr r6, r26
/* 80160E18  48 00 27 95 */	bl setRoomMapToolData__9dCamera_cFP15dCamMapToolDatall
/* 80160E1C  7F 83 E3 78 */	mr r3, r28
/* 80160E20  48 00 71 CD */	bl checkGroundInfo__9dCamera_cFv
/* 80160E24  7F 83 E3 78 */	mr r3, r28
/* 80160E28  48 00 25 19 */	bl setMapToolData__9dCamera_cFv
/* 80160E2C  80 1C 07 DC */	lwz r0, 0x7dc(r28)
/* 80160E30  2C 00 00 FF */	cmpwi r0, 0xff
/* 80160E34  41 82 00 18 */	beq lbl_80160E4C
/* 80160E38  7F 83 E3 78 */	mr r3, r28
/* 80160E3C  38 9C 07 AC */	addi r4, r28, 0x7ac
/* 80160E40  48 00 3D D1 */	bl GetCameraTypeFromToolData__9dCamera_cFP24stage_camera2_data_class
/* 80160E44  90 7C 06 8C */	stw r3, 0x68c(r28)
/* 80160E48  48 00 00 48 */	b lbl_80160E90
lbl_80160E4C:
/* 80160E4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80160E50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80160E54  80 1C 01 7C */	lwz r0, 0x17c(r28)
/* 80160E58  54 00 20 36 */	slwi r0, r0, 4
/* 80160E5C  7C 63 02 14 */	add r3, r3, r0
/* 80160E60  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80160E64  54 00 01 09 */	rlwinm. r0, r0, 0, 4, 4
/* 80160E68  41 82 00 20 */	beq lbl_80160E88
/* 80160E6C  7F 83 E3 78 */	mr r3, r28
/* 80160E70  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 80160E74  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 80160E78  38 84 01 9B */	addi r4, r4, 0x19b
/* 80160E7C  48 00 3C E9 */	bl GetCameraTypeFromCameraName__9dCamera_cFPCc
/* 80160E80  90 7C 06 8C */	stw r3, 0x68c(r28)
/* 80160E84  48 00 00 0C */	b lbl_80160E90
lbl_80160E88:
/* 80160E88  80 1C 06 94 */	lwz r0, 0x694(r28)
/* 80160E8C  90 1C 06 8C */	stw r0, 0x68c(r28)
lbl_80160E90:
/* 80160E90  80 7C 06 84 */	lwz r3, 0x684(r28)
/* 80160E94  80 1C 06 8C */	lwz r0, 0x68c(r28)
/* 80160E98  1C 00 00 44 */	mulli r0, r0, 0x44
/* 80160E9C  7C 63 02 14 */	add r3, r3, r0
/* 80160EA0  80 1C 01 90 */	lwz r0, 0x190(r28)
/* 80160EA4  1C 00 00 16 */	mulli r0, r0, 0x16
/* 80160EA8  7C 63 02 14 */	add r3, r3, r0
/* 80160EAC  80 1C 01 A4 */	lwz r0, 0x1a4(r28)
/* 80160EB0  54 00 08 3C */	slwi r0, r0, 1
/* 80160EB4  7C 63 02 14 */	add r3, r3, r0
/* 80160EB8  A8 03 00 18 */	lha r0, 0x18(r3)
/* 80160EBC  90 1C 06 7C */	stw r0, 0x67c(r28)
/* 80160EC0  38 00 FF FF */	li r0, -1
/* 80160EC4  90 1C 01 98 */	stw r0, 0x198(r28)
/* 80160EC8  90 1C 04 FC */	stw r0, 0x4fc(r28)
/* 80160ECC  90 1C 05 00 */	stw r0, 0x500(r28)
/* 80160ED0  90 1C 04 EC */	stw r0, 0x4ec(r28)
/* 80160ED4  90 1C 04 F4 */	stw r0, 0x4f4(r28)
/* 80160ED8  38 00 00 01 */	li r0, 1
/* 80160EDC  98 1C 04 E8 */	stb r0, 0x4e8(r28)
/* 80160EE0  38 7C 0A EC */	addi r3, r28, 0xaec
/* 80160EE4  80 9C 06 7C */	lwz r4, 0x67c(r28)
/* 80160EE8  4B F2 76 ED */	bl Change__11dCamParam_cFl
/* 80160EEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80160EF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80160EF4  80 03 0D D0 */	lwz r0, 0xdd0(r3)
/* 80160EF8  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80160EFC  28 00 00 07 */	cmplwi r0, 7
/* 80160F00  41 82 00 1C */	beq lbl_80160F1C
/* 80160F04  A8 03 4E 08 */	lha r0, 0x4e08(r3)
/* 80160F08  2C 00 FF FE */	cmpwi r0, -2
/* 80160F0C  41 82 00 10 */	beq lbl_80160F1C
/* 80160F10  7C 00 07 34 */	extsh r0, r0
/* 80160F14  2C 00 FF FD */	cmpwi r0, -3
/* 80160F18  40 82 00 F4 */	bne lbl_8016100C
lbl_80160F1C:
/* 80160F1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80160F20  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80160F24  C0 1D 0E EC */	lfs f0, 0xeec(r29)
/* 80160F28  D0 1C 00 64 */	stfs f0, 0x64(r28)
/* 80160F2C  C0 1D 0E F0 */	lfs f0, 0xef0(r29)
/* 80160F30  D0 1C 00 68 */	stfs f0, 0x68(r28)
/* 80160F34  C0 1D 0E F4 */	lfs f0, 0xef4(r29)
/* 80160F38  D0 1C 00 6C */	stfs f0, 0x6c(r28)
/* 80160F3C  C0 1C 00 64 */	lfs f0, 0x64(r28)
/* 80160F40  D0 1C 00 30 */	stfs f0, 0x30(r28)
/* 80160F44  C0 1C 00 68 */	lfs f0, 0x68(r28)
/* 80160F48  D0 1C 00 34 */	stfs f0, 0x34(r28)
/* 80160F4C  C0 1C 00 6C */	lfs f0, 0x6c(r28)
/* 80160F50  D0 1C 00 38 */	stfs f0, 0x38(r28)
/* 80160F54  C0 1D 0E F8 */	lfs f0, 0xef8(r29)
/* 80160F58  D0 1C 00 70 */	stfs f0, 0x70(r28)
/* 80160F5C  C0 1D 0E FC */	lfs f0, 0xefc(r29)
/* 80160F60  D0 1C 00 74 */	stfs f0, 0x74(r28)
/* 80160F64  C0 1D 0F 00 */	lfs f0, 0xf00(r29)
/* 80160F68  D0 1C 00 78 */	stfs f0, 0x78(r28)
/* 80160F6C  C0 1C 00 70 */	lfs f0, 0x70(r28)
/* 80160F70  D0 1C 00 3C */	stfs f0, 0x3c(r28)
/* 80160F74  C0 1C 00 74 */	lfs f0, 0x74(r28)
/* 80160F78  D0 1C 00 40 */	stfs f0, 0x40(r28)
/* 80160F7C  C0 1C 00 78 */	lfs f0, 0x78(r28)
/* 80160F80  D0 1C 00 44 */	stfs f0, 0x44(r28)
/* 80160F84  38 61 00 BC */	addi r3, r1, 0xbc
/* 80160F88  38 9C 00 3C */	addi r4, r28, 0x3c
/* 80160F8C  38 BC 00 30 */	addi r5, r28, 0x30
/* 80160F90  48 10 5B A5 */	bl __mi__4cXyzCFRC3Vec
/* 80160F94  38 7C 00 5C */	addi r3, r28, 0x5c
/* 80160F98  38 81 00 BC */	addi r4, r1, 0xbc
/* 80160F9C  48 11 0A D5 */	bl Val__7cSGlobeFRC4cXyz
/* 80160FA0  C0 1C 00 5C */	lfs f0, 0x5c(r28)
/* 80160FA4  D0 1C 00 28 */	stfs f0, 0x28(r28)
/* 80160FA8  A8 1C 00 60 */	lha r0, 0x60(r28)
/* 80160FAC  B0 1C 00 2C */	sth r0, 0x2c(r28)
/* 80160FB0  A8 1C 00 62 */	lha r0, 0x62(r28)
/* 80160FB4  B0 1C 00 2E */	sth r0, 0x2e(r28)
/* 80160FB8  38 7C 00 62 */	addi r3, r28, 0x62
/* 80160FBC  48 11 01 2D */	bl Inv__7cSAngleCFv
/* 80160FC0  7C 64 1B 78 */	mr r4, r3
/* 80160FC4  38 61 00 24 */	addi r3, r1, 0x24
/* 80160FC8  48 10 FF D1 */	bl __ct__7cSAngleFs
/* 80160FCC  A8 01 00 24 */	lha r0, 0x24(r1)
/* 80160FD0  B0 1C 00 8C */	sth r0, 0x8c(r28)
/* 80160FD4  C0 1D 0F 04 */	lfs f0, 0xf04(r29)
/* 80160FD8  D0 1C 00 48 */	stfs f0, 0x48(r28)
/* 80160FDC  C0 1D 0F 08 */	lfs f0, 0xf08(r29)
/* 80160FE0  D0 1C 00 4C */	stfs f0, 0x4c(r28)
/* 80160FE4  C0 1D 0F 0C */	lfs f0, 0xf0c(r29)
/* 80160FE8  D0 1C 00 50 */	stfs f0, 0x50(r28)
/* 80160FEC  A8 0D 8C 08 */	lha r0, _0__7cSAngle(r13)
/* 80160FF0  B0 1C 00 54 */	sth r0, 0x54(r28)
/* 80160FF4  A8 1C 00 54 */	lha r0, 0x54(r28)
/* 80160FF8  B0 1C 00 7C */	sth r0, 0x7c(r28)
/* 80160FFC  C0 1D 0F 10 */	lfs f0, 0xf10(r29)
/* 80161000  D0 1C 00 58 */	stfs f0, 0x58(r28)
/* 80161004  D0 1C 00 80 */	stfs f0, 0x80(r28)
/* 80161008  48 00 03 68 */	b lbl_80161370
lbl_8016100C:
/* 8016100C  80 7E 5D B4 */	lwz r3, 0x5db4(r30)
/* 80161010  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80161014  54 00 A6 FE */	rlwinm r0, r0, 0x14, 0x1b, 0x1f
/* 80161018  2C 00 00 03 */	cmpwi r0, 3
/* 8016101C  40 82 01 B8 */	bne lbl_801611D4
/* 80161020  38 61 00 B0 */	addi r3, r1, 0xb0
/* 80161024  7F 84 E3 78 */	mr r4, r28
/* 80161028  80 BC 01 80 */	lwz r5, 0x180(r28)
/* 8016102C  4B F3 66 F1 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80161030  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 80161034  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 80161038  C0 21 00 B4 */	lfs f1, 0xb4(r1)
/* 8016103C  D0 21 00 F0 */	stfs f1, 0xf0(r1)
/* 80161040  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 80161044  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 80161048  80 7C 0A FC */	lwz r3, 0xafc(r28)
/* 8016104C  A0 03 00 04 */	lhz r0, 4(r3)
/* 80161050  2C 00 00 01 */	cmpwi r0, 1
/* 80161054  40 82 00 10 */	bne lbl_80161064
/* 80161058  C0 02 9C B0 */	lfs f0, lit_5660(r2)
/* 8016105C  EC 01 00 2A */	fadds f0, f1, f0
/* 80161060  D0 01 00 F0 */	stfs f0, 0xf0(r1)
lbl_80161064:
/* 80161064  38 61 00 20 */	addi r3, r1, 0x20
/* 80161068  38 80 00 00 */	li r4, 0
/* 8016106C  48 10 FF 2D */	bl __ct__7cSAngleFs
/* 80161070  38 61 00 1C */	addi r3, r1, 0x1c
/* 80161074  7F 84 E3 78 */	mr r4, r28
/* 80161078  80 BC 01 80 */	lwz r5, 0x180(r28)
/* 8016107C  4B F3 66 BD */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 80161080  38 61 00 30 */	addi r3, r1, 0x30
/* 80161084  C0 22 9C A0 */	lfs f1, lit_5656(r2)
/* 80161088  38 81 00 20 */	addi r4, r1, 0x20
/* 8016108C  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80161090  48 11 07 C1 */	bl __ct__7cSGlobeFfRC7cSAngleRC7cSAngle
/* 80161094  38 61 00 A4 */	addi r3, r1, 0xa4
/* 80161098  38 81 00 30 */	addi r4, r1, 0x30
/* 8016109C  48 11 0A 19 */	bl Xyz__7cSGlobeCFv
/* 801610A0  38 61 00 98 */	addi r3, r1, 0x98
/* 801610A4  38 81 00 EC */	addi r4, r1, 0xec
/* 801610A8  38 A1 00 A4 */	addi r5, r1, 0xa4
/* 801610AC  48 10 5A 39 */	bl __pl__4cXyzCFRC3Vec
/* 801610B0  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 801610B4  D0 1C 00 64 */	stfs f0, 0x64(r28)
/* 801610B8  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 801610BC  D0 1C 00 68 */	stfs f0, 0x68(r28)
/* 801610C0  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 801610C4  D0 1C 00 6C */	stfs f0, 0x6c(r28)
/* 801610C8  C0 1C 00 64 */	lfs f0, 0x64(r28)
/* 801610CC  D0 1C 00 30 */	stfs f0, 0x30(r28)
/* 801610D0  C0 1C 00 68 */	lfs f0, 0x68(r28)
/* 801610D4  D0 1C 00 34 */	stfs f0, 0x34(r28)
/* 801610D8  C0 1C 00 6C */	lfs f0, 0x6c(r28)
/* 801610DC  D0 1C 00 38 */	stfs f0, 0x38(r28)
/* 801610E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801610E4  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801610E8  C0 1D 0E EC */	lfs f0, 0xeec(r29)
/* 801610EC  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 801610F0  C0 1D 0E F0 */	lfs f0, 0xef0(r29)
/* 801610F4  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 801610F8  C0 1D 0E F4 */	lfs f0, 0xef4(r29)
/* 801610FC  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 80161100  C0 1D 0E F8 */	lfs f0, 0xef8(r29)
/* 80161104  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80161108  C0 1D 0E FC */	lfs f0, 0xefc(r29)
/* 8016110C  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80161110  C0 1D 0F 00 */	lfs f0, 0xf00(r29)
/* 80161114  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80161118  38 61 00 8C */	addi r3, r1, 0x8c
/* 8016111C  38 81 00 D4 */	addi r4, r1, 0xd4
/* 80161120  38 A1 00 E0 */	addi r5, r1, 0xe0
/* 80161124  48 10 5A 11 */	bl __mi__4cXyzCFRC3Vec
/* 80161128  38 7C 00 5C */	addi r3, r28, 0x5c
/* 8016112C  38 81 00 8C */	addi r4, r1, 0x8c
/* 80161130  48 11 09 41 */	bl Val__7cSGlobeFRC4cXyz
/* 80161134  38 7C 00 62 */	addi r3, r28, 0x62
/* 80161138  48 10 FF B1 */	bl Inv__7cSAngleCFv
/* 8016113C  7C 64 1B 78 */	mr r4, r3
/* 80161140  38 61 00 18 */	addi r3, r1, 0x18
/* 80161144  48 10 FE 55 */	bl __ct__7cSAngleFs
/* 80161148  A8 01 00 18 */	lha r0, 0x18(r1)
/* 8016114C  B0 1C 00 8C */	sth r0, 0x8c(r28)
/* 80161150  38 61 00 80 */	addi r3, r1, 0x80
/* 80161154  38 9C 00 5C */	addi r4, r28, 0x5c
/* 80161158  48 11 09 5D */	bl Xyz__7cSGlobeCFv
/* 8016115C  38 61 00 74 */	addi r3, r1, 0x74
/* 80161160  38 9C 00 64 */	addi r4, r28, 0x64
/* 80161164  38 A1 00 80 */	addi r5, r1, 0x80
/* 80161168  48 10 59 7D */	bl __pl__4cXyzCFRC3Vec
/* 8016116C  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80161170  D0 1C 00 70 */	stfs f0, 0x70(r28)
/* 80161174  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80161178  D0 1C 00 74 */	stfs f0, 0x74(r28)
/* 8016117C  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80161180  D0 1C 00 78 */	stfs f0, 0x78(r28)
/* 80161184  C0 1C 00 70 */	lfs f0, 0x70(r28)
/* 80161188  D0 1C 00 3C */	stfs f0, 0x3c(r28)
/* 8016118C  C0 1C 00 74 */	lfs f0, 0x74(r28)
/* 80161190  D0 1C 00 40 */	stfs f0, 0x40(r28)
/* 80161194  C0 1C 00 78 */	lfs f0, 0x78(r28)
/* 80161198  D0 1C 00 44 */	stfs f0, 0x44(r28)
/* 8016119C  C0 1D 0F 04 */	lfs f0, 0xf04(r29)
/* 801611A0  D0 1C 00 48 */	stfs f0, 0x48(r28)
/* 801611A4  C0 1D 0F 08 */	lfs f0, 0xf08(r29)
/* 801611A8  D0 1C 00 4C */	stfs f0, 0x4c(r28)
/* 801611AC  C0 1D 0F 0C */	lfs f0, 0xf0c(r29)
/* 801611B0  D0 1C 00 50 */	stfs f0, 0x50(r28)
/* 801611B4  A8 0D 8C 08 */	lha r0, _0__7cSAngle(r13)
/* 801611B8  B0 1C 00 54 */	sth r0, 0x54(r28)
/* 801611BC  A8 1C 00 54 */	lha r0, 0x54(r28)
/* 801611C0  B0 1C 00 7C */	sth r0, 0x7c(r28)
/* 801611C4  C0 1D 0F 10 */	lfs f0, 0xf10(r29)
/* 801611C8  D0 1C 00 58 */	stfs f0, 0x58(r28)
/* 801611CC  D0 1C 00 80 */	stfs f0, 0x80(r28)
/* 801611D0  48 00 01 A0 */	b lbl_80161370
lbl_801611D4:
/* 801611D4  38 61 00 68 */	addi r3, r1, 0x68
/* 801611D8  7F 84 E3 78 */	mr r4, r28
/* 801611DC  80 BC 01 80 */	lwz r5, 0x180(r28)
/* 801611E0  4B F3 65 3D */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 801611E4  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 801611E8  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 801611EC  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 801611F0  D0 21 00 CC */	stfs f1, 0xcc(r1)
/* 801611F4  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 801611F8  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 801611FC  80 7C 0A FC */	lwz r3, 0xafc(r28)
/* 80161200  A0 03 00 04 */	lhz r0, 4(r3)
/* 80161204  2C 00 00 01 */	cmpwi r0, 1
/* 80161208  40 82 00 10 */	bne lbl_80161218
/* 8016120C  C0 02 9C B0 */	lfs f0, lit_5660(r2)
/* 80161210  EC 01 00 2A */	fadds f0, f1, f0
/* 80161214  D0 01 00 CC */	stfs f0, 0xcc(r1)
lbl_80161218:
/* 80161218  38 61 00 14 */	addi r3, r1, 0x14
/* 8016121C  38 80 00 00 */	li r4, 0
/* 80161220  48 10 FD 79 */	bl __ct__7cSAngleFs
/* 80161224  38 61 00 10 */	addi r3, r1, 0x10
/* 80161228  7F 84 E3 78 */	mr r4, r28
/* 8016122C  80 BC 01 80 */	lwz r5, 0x180(r28)
/* 80161230  4B F3 65 09 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 80161234  38 61 00 28 */	addi r3, r1, 0x28
/* 80161238  C0 22 9C A0 */	lfs f1, lit_5656(r2)
/* 8016123C  38 81 00 14 */	addi r4, r1, 0x14
/* 80161240  38 A1 00 10 */	addi r5, r1, 0x10
/* 80161244  48 11 06 0D */	bl __ct__7cSGlobeFfRC7cSAngleRC7cSAngle
/* 80161248  38 61 00 5C */	addi r3, r1, 0x5c
/* 8016124C  38 81 00 28 */	addi r4, r1, 0x28
/* 80161250  48 11 08 65 */	bl Xyz__7cSGlobeCFv
/* 80161254  38 61 00 50 */	addi r3, r1, 0x50
/* 80161258  38 81 00 C8 */	addi r4, r1, 0xc8
/* 8016125C  38 A1 00 5C */	addi r5, r1, 0x5c
/* 80161260  48 10 58 85 */	bl __pl__4cXyzCFRC3Vec
/* 80161264  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80161268  D0 1C 00 64 */	stfs f0, 0x64(r28)
/* 8016126C  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80161270  D0 1C 00 68 */	stfs f0, 0x68(r28)
/* 80161274  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80161278  D0 1C 00 6C */	stfs f0, 0x6c(r28)
/* 8016127C  C0 1C 00 64 */	lfs f0, 0x64(r28)
/* 80161280  D0 1C 00 30 */	stfs f0, 0x30(r28)
/* 80161284  C0 1C 00 68 */	lfs f0, 0x68(r28)
/* 80161288  D0 1C 00 34 */	stfs f0, 0x34(r28)
/* 8016128C  C0 1C 00 6C */	lfs f0, 0x6c(r28)
/* 80161290  D0 1C 00 38 */	stfs f0, 0x38(r28)
/* 80161294  38 61 00 0C */	addi r3, r1, 0xc
/* 80161298  7F 84 E3 78 */	mr r4, r28
/* 8016129C  80 BC 01 80 */	lwz r5, 0x180(r28)
/* 801612A0  4B F3 64 99 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 801612A4  38 61 00 0C */	addi r3, r1, 0xc
/* 801612A8  48 10 FE 41 */	bl Inv__7cSAngleCFv
/* 801612AC  7C 65 1B 78 */	mr r5, r3
/* 801612B0  38 7C 00 5C */	addi r3, r28, 0x5c
/* 801612B4  C0 22 9C B4 */	lfs f1, lit_5661(r2)
/* 801612B8  38 80 00 00 */	li r4, 0
/* 801612BC  48 11 06 E9 */	bl Val__7cSGlobeFfss
/* 801612C0  38 61 00 44 */	addi r3, r1, 0x44
/* 801612C4  38 9C 00 5C */	addi r4, r28, 0x5c
/* 801612C8  48 11 07 ED */	bl Xyz__7cSGlobeCFv
/* 801612CC  38 61 00 38 */	addi r3, r1, 0x38
/* 801612D0  38 9C 00 64 */	addi r4, r28, 0x64
/* 801612D4  38 A1 00 44 */	addi r5, r1, 0x44
/* 801612D8  48 10 58 0D */	bl __pl__4cXyzCFRC3Vec
/* 801612DC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 801612E0  D0 1C 00 70 */	stfs f0, 0x70(r28)
/* 801612E4  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 801612E8  D0 1C 00 74 */	stfs f0, 0x74(r28)
/* 801612EC  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 801612F0  D0 1C 00 78 */	stfs f0, 0x78(r28)
/* 801612F4  C0 1C 00 70 */	lfs f0, 0x70(r28)
/* 801612F8  D0 1C 00 3C */	stfs f0, 0x3c(r28)
/* 801612FC  C0 1C 00 74 */	lfs f0, 0x74(r28)
/* 80161300  D0 1C 00 40 */	stfs f0, 0x40(r28)
/* 80161304  C0 1C 00 78 */	lfs f0, 0x78(r28)
/* 80161308  D0 1C 00 44 */	stfs f0, 0x44(r28)
/* 8016130C  C0 1C 00 5C */	lfs f0, 0x5c(r28)
/* 80161310  D0 1C 00 28 */	stfs f0, 0x28(r28)
/* 80161314  A8 1C 00 60 */	lha r0, 0x60(r28)
/* 80161318  B0 1C 00 2C */	sth r0, 0x2c(r28)
/* 8016131C  A8 1C 00 62 */	lha r0, 0x62(r28)
/* 80161320  B0 1C 00 2E */	sth r0, 0x2e(r28)
/* 80161324  38 7C 00 62 */	addi r3, r28, 0x62
/* 80161328  48 10 FD C1 */	bl Inv__7cSAngleCFv
/* 8016132C  7C 64 1B 78 */	mr r4, r3
/* 80161330  38 61 00 08 */	addi r3, r1, 8
/* 80161334  48 10 FC 65 */	bl __ct__7cSAngleFs
/* 80161338  A8 01 00 08 */	lha r0, 8(r1)
/* 8016133C  B0 1C 00 8C */	sth r0, 0x8c(r28)
/* 80161340  C0 02 9C B8 */	lfs f0, lit_5662(r2)
/* 80161344  D0 1C 00 58 */	stfs f0, 0x58(r28)
/* 80161348  D0 1C 00 80 */	stfs f0, 0x80(r28)
/* 8016134C  C0 22 9C A0 */	lfs f1, lit_5656(r2)
/* 80161350  D0 3C 00 48 */	stfs f1, 0x48(r28)
/* 80161354  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 80161358  D0 1C 00 4C */	stfs f0, 0x4c(r28)
/* 8016135C  D0 3C 00 50 */	stfs f1, 0x50(r28)
/* 80161360  A8 0D 8C 08 */	lha r0, _0__7cSAngle(r13)
/* 80161364  B0 1C 00 54 */	sth r0, 0x54(r28)
/* 80161368  A8 1C 00 54 */	lha r0, 0x54(r28)
/* 8016136C  B0 1C 00 7C */	sth r0, 0x7c(r28)
lbl_80161370:
/* 80161370  38 A0 00 00 */	li r5, 0
/* 80161374  98 BC 02 98 */	stb r5, 0x298(r28)
/* 80161378  38 00 00 FF */	li r0, 0xff
/* 8016137C  90 1C 06 74 */	stw r0, 0x674(r28)
/* 80161380  90 1C 06 70 */	stw r0, 0x670(r28)
/* 80161384  90 BC 06 68 */	stw r5, 0x668(r28)
/* 80161388  90 BC 06 6C */	stw r5, 0x66c(r28)
/* 8016138C  38 80 00 01 */	li r4, 1
/* 80161390  98 9C 06 78 */	stb r4, 0x678(r28)
/* 80161394  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 80161398  D0 1C 07 3C */	stfs f0, 0x73c(r28)
/* 8016139C  C0 02 9C BC */	lfs f0, lit_5663(r2)
/* 801613A0  D0 1C 07 38 */	stfs f0, 0x738(r28)
/* 801613A4  98 BC 06 10 */	stb r5, 0x610(r28)
/* 801613A8  98 BC 06 11 */	stb r5, 0x611(r28)
/* 801613AC  B0 BC 00 CE */	sth r5, 0xce(r28)
/* 801613B0  B0 BC 00 EE */	sth r5, 0xee(r28)
/* 801613B4  B0 BC 01 0E */	sth r5, 0x10e(r28)
/* 801613B8  B0 BC 01 36 */	sth r5, 0x136(r28)
/* 801613BC  B0 BC 01 14 */	sth r5, 0x114(r28)
/* 801613C0  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 801613C4  C0 03 0C F4 */	lfs f0, Zero__4cXyz@l(r3)  /* 0x80430CF4@l */
/* 801613C8  D0 1C 01 38 */	stfs f0, 0x138(r28)
/* 801613CC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 801613D0  D0 1C 01 3C */	stfs f0, 0x13c(r28)
/* 801613D4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 801613D8  D0 1C 01 40 */	stfs f0, 0x140(r28)
/* 801613DC  38 00 FF FF */	li r0, -1
/* 801613E0  90 1C 01 10 */	stw r0, 0x110(r28)
/* 801613E4  90 BC 09 3C */	stw r5, 0x93c(r28)
/* 801613E8  90 BC 09 48 */	stw r5, 0x948(r28)
/* 801613EC  A8 0D 8C 08 */	lha r0, _0__7cSAngle(r13)
/* 801613F0  B0 1C 09 4C */	sth r0, 0x94c(r28)
/* 801613F4  C0 1C 00 48 */	lfs f0, 0x48(r28)
/* 801613F8  D0 1C 07 58 */	stfs f0, 0x758(r28)
/* 801613FC  C0 1C 00 4C */	lfs f0, 0x4c(r28)
/* 80161400  D0 1C 07 5C */	stfs f0, 0x75c(r28)
/* 80161404  C0 1C 00 50 */	lfs f0, 0x50(r28)
/* 80161408  D0 1C 07 60 */	stfs f0, 0x760(r28)
/* 8016140C  C0 1C 00 3C */	lfs f0, 0x3c(r28)
/* 80161410  D0 1C 07 4C */	stfs f0, 0x74c(r28)
/* 80161414  C0 1C 00 40 */	lfs f0, 0x40(r28)
/* 80161418  D0 1C 07 50 */	stfs f0, 0x750(r28)
/* 8016141C  C0 1C 00 44 */	lfs f0, 0x44(r28)
/* 80161420  D0 1C 07 54 */	stfs f0, 0x754(r28)
/* 80161424  C0 1C 00 30 */	lfs f0, 0x30(r28)
/* 80161428  D0 1C 07 40 */	stfs f0, 0x740(r28)
/* 8016142C  C0 1C 00 34 */	lfs f0, 0x34(r28)
/* 80161430  D0 1C 07 44 */	stfs f0, 0x744(r28)
/* 80161434  C0 1C 00 38 */	lfs f0, 0x38(r28)
/* 80161438  D0 1C 07 48 */	stfs f0, 0x748(r28)
/* 8016143C  80 1C 06 0C */	lwz r0, 0x60c(r28)
/* 80161440  60 00 10 00 */	ori r0, r0, 0x1000
/* 80161444  90 1C 06 0C */	stw r0, 0x60c(r28)
/* 80161448  80 7E 5D B4 */	lwz r3, 0x5db4(r30)
/* 8016144C  80 CD 8A 98 */	lwz r6, m_midnaActor__9daPy_py_c(r13)
/* 80161450  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80161454  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80161458  41 82 00 14 */	beq lbl_8016146C
/* 8016145C  80 06 08 90 */	lwz r0, 0x890(r6)
/* 80161460  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80161464  40 82 00 08 */	bne lbl_8016146C
/* 80161468  7C 85 23 78 */	mr r5, r4
lbl_8016146C:
/* 8016146C  98 BC 01 94 */	stb r5, 0x194(r28)
/* 80161470  38 00 00 00 */	li r0, 0
/* 80161474  90 1C 09 58 */	stw r0, 0x958(r28)
/* 80161478  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 8016147C  C0 03 0C F4 */	lfs f0, Zero__4cXyz@l(r3)  /* 0x80430CF4@l */
/* 80161480  D0 1C 09 5C */	stfs f0, 0x95c(r28)
/* 80161484  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80161488  D0 1C 09 60 */	stfs f0, 0x960(r28)
/* 8016148C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80161490  D0 1C 09 64 */	stfs f0, 0x964(r28)
/* 80161494  39 61 01 10 */	addi r11, r1, 0x110
/* 80161498  48 20 0D 85 */	bl _restgpr_26
/* 8016149C  80 01 01 14 */	lwz r0, 0x114(r1)
/* 801614A0  7C 08 03 A6 */	mtlr r0
/* 801614A4  38 21 01 10 */	addi r1, r1, 0x110
/* 801614A8  4E 80 00 20 */	blr 

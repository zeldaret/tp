lbl_800F8700:
/* 800F8700  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 800F8704  7C 08 02 A6 */	mflr r0
/* 800F8708  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 800F870C  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 800F8710  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 800F8714  39 61 00 A0 */	addi r11, r1, 0xa0
/* 800F8718  48 26 9A B9 */	bl _savegpr_26
/* 800F871C  7C 7A 1B 78 */	mr r26, r3
/* 800F8720  7C DB 33 78 */	mr r27, r6
/* 800F8724  7C FC 3B 78 */	mr r28, r7
/* 800F8728  7D 1D 43 78 */	mr r29, r8
/* 800F872C  7D 3E 4B 78 */	mr r30, r9
/* 800F8730  4B FA 9A 69 */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800F8734  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F8738  41 82 01 9C */	beq lbl_800F88D4
/* 800F873C  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 800F8740  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 800F8744  90 01 00 84 */	stw r0, 0x84(r1)
/* 800F8748  C0 1A 1B 78 */	lfs f0, 0x1b78(r26)
/* 800F874C  D0 1B 00 00 */	stfs f0, 0(r27)
/* 800F8750  C0 1A 1B 7C */	lfs f0, 0x1b7c(r26)
/* 800F8754  D0 1B 00 04 */	stfs f0, 4(r27)
/* 800F8758  C0 1A 1B 80 */	lfs f0, 0x1b80(r26)
/* 800F875C  D0 1B 00 08 */	stfs f0, 8(r27)
/* 800F8760  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800F8764  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800F8768  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 800F876C  7F E3 FB 78 */	mr r3, r31
/* 800F8770  38 9A 1B 5C */	addi r4, r26, 0x1b5c
/* 800F8774  38 A1 00 74 */	addi r5, r1, 0x74
/* 800F8778  4B F7 BF CD */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800F877C  38 61 00 74 */	addi r3, r1, 0x74
/* 800F8780  48 16 E9 A9 */	bl atan2sX_Z__4cXyzCFv
/* 800F8784  B0 7D 00 00 */	sth r3, 0(r29)
/* 800F8788  38 61 00 44 */	addi r3, r1, 0x44
/* 800F878C  38 81 00 74 */	addi r4, r1, 0x74
/* 800F8790  C0 22 93 54 */	lfs f1, lit_8248(r2)
/* 800F8794  48 16 E3 F1 */	bl __ml__4cXyzCFf
/* 800F8798  38 61 00 38 */	addi r3, r1, 0x38
/* 800F879C  7F 64 DB 78 */	mr r4, r27
/* 800F87A0  38 A1 00 44 */	addi r5, r1, 0x44
/* 800F87A4  48 16 E3 41 */	bl __pl__4cXyzCFRC3Vec
/* 800F87A8  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 800F87AC  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 800F87B0  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 800F87B4  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 800F87B8  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 800F87BC  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 800F87C0  38 61 00 2C */	addi r3, r1, 0x2c
/* 800F87C4  38 81 00 5C */	addi r4, r1, 0x5c
/* 800F87C8  7F 65 DB 78 */	mr r5, r27
/* 800F87CC  48 16 E3 19 */	bl __pl__4cXyzCFRC3Vec
/* 800F87D0  38 61 00 20 */	addi r3, r1, 0x20
/* 800F87D4  38 81 00 2C */	addi r4, r1, 0x2c
/* 800F87D8  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800F87DC  48 16 E3 A9 */	bl __ml__4cXyzCFf
/* 800F87E0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 800F87E4  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 800F87E8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 800F87EC  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 800F87F0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 800F87F4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 800F87F8  7F 43 D3 78 */	mr r3, r26
/* 800F87FC  38 81 00 68 */	addi r4, r1, 0x68
/* 800F8800  38 A1 00 5C */	addi r5, r1, 0x5c
/* 800F8804  4B FA 99 95 */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800F8808  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F880C  41 82 00 BC */	beq lbl_800F88C8
/* 800F8810  C0 1A 1B 78 */	lfs f0, 0x1b78(r26)
/* 800F8814  D0 1C 00 00 */	stfs f0, 0(r28)
/* 800F8818  C0 1A 1B 7C */	lfs f0, 0x1b7c(r26)
/* 800F881C  D0 1C 00 04 */	stfs f0, 4(r28)
/* 800F8820  C0 1A 1B 80 */	lfs f0, 0x1b80(r26)
/* 800F8824  D0 1C 00 08 */	stfs f0, 8(r28)
/* 800F8828  7F E3 FB 78 */	mr r3, r31
/* 800F882C  38 9A 1B 5C */	addi r4, r26, 0x1b5c
/* 800F8830  38 A1 00 74 */	addi r5, r1, 0x74
/* 800F8834  4B F7 BF 11 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800F8838  38 61 00 74 */	addi r3, r1, 0x74
/* 800F883C  48 16 E8 ED */	bl atan2sX_Z__4cXyzCFv
/* 800F8840  B0 7E 00 00 */	sth r3, 0(r30)
/* 800F8844  38 61 00 14 */	addi r3, r1, 0x14
/* 800F8848  7F 64 DB 78 */	mr r4, r27
/* 800F884C  7F 85 E3 78 */	mr r5, r28
/* 800F8850  48 16 E2 E5 */	bl __mi__4cXyzCFRC3Vec
/* 800F8854  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 800F8858  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 800F885C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800F8860  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 800F8864  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 800F8868  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 800F886C  D0 41 00 08 */	stfs f2, 8(r1)
/* 800F8870  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800F8874  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800F8878  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800F887C  38 61 00 08 */	addi r3, r1, 8
/* 800F8880  48 24 E8 B9 */	bl PSVECSquareMag
/* 800F8884  FF E0 08 90 */	fmr f31, f1
/* 800F8888  A8 7D 00 00 */	lha r3, 0(r29)
/* 800F888C  A8 9E 00 00 */	lha r4, 0(r30)
/* 800F8890  48 17 85 95 */	bl cLib_distanceAngleS__Fss
/* 800F8894  2C 03 7F 00 */	cmpwi r3, 0x7f00
/* 800F8898  40 81 00 30 */	ble lbl_800F88C8
/* 800F889C  C0 02 95 3C */	lfs f0, lit_22608(r2)
/* 800F88A0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800F88A4  40 80 00 24 */	bge lbl_800F88C8
/* 800F88A8  C0 02 95 40 */	lfs f0, lit_22609(r2)
/* 800F88AC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800F88B0  40 81 00 18 */	ble lbl_800F88C8
/* 800F88B4  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 800F88B8  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 800F88BC  90 01 00 84 */	stw r0, 0x84(r1)
/* 800F88C0  38 60 00 01 */	li r3, 1
/* 800F88C4  48 00 00 14 */	b lbl_800F88D8
lbl_800F88C8:
/* 800F88C8  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 800F88CC  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 800F88D0  90 01 00 84 */	stw r0, 0x84(r1)
lbl_800F88D4:
/* 800F88D4  38 60 00 00 */	li r3, 0
lbl_800F88D8:
/* 800F88D8  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 800F88DC  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 800F88E0  39 61 00 A0 */	addi r11, r1, 0xa0
/* 800F88E4  48 26 99 39 */	bl _restgpr_26
/* 800F88E8  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 800F88EC  7C 08 03 A6 */	mtlr r0
/* 800F88F0  38 21 00 B0 */	addi r1, r1, 0xb0
/* 800F88F4  4E 80 00 20 */	blr 

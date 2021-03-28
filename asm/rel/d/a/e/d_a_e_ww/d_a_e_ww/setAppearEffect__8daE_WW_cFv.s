lbl_807E8700:
/* 807E8700  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 807E8704  7C 08 02 A6 */	mflr r0
/* 807E8708  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 807E870C  39 61 00 C0 */	addi r11, r1, 0xc0
/* 807E8710  4B B7 9A CC */	b _savegpr_29
/* 807E8714  7C 7D 1B 78 */	mr r29, r3
/* 807E8718  3C 60 80 7F */	lis r3, lit_3905@ha
/* 807E871C  3B E3 F7 70 */	addi r31, r3, lit_3905@l
/* 807E8720  3B C1 00 50 */	addi r30, r1, 0x50
/* 807E8724  7F C3 F3 78 */	mr r3, r30
/* 807E8728  4B 88 EE 54 */	b __ct__11dBgS_GndChkFv
/* 807E872C  3C 60 80 7F */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 807E8730  38 63 FB 30 */	addi r3, r3, __vt__14dBgS_ObjGndChk@l
/* 807E8734  90 61 00 60 */	stw r3, 0x60(r1)
/* 807E8738  38 03 00 0C */	addi r0, r3, 0xc
/* 807E873C  90 01 00 70 */	stw r0, 0x70(r1)
/* 807E8740  38 03 00 18 */	addi r0, r3, 0x18
/* 807E8744  90 01 00 8C */	stw r0, 0x8c(r1)
/* 807E8748  38 03 00 24 */	addi r0, r3, 0x24
/* 807E874C  90 01 00 9C */	stw r0, 0x9c(r1)
/* 807E8750  38 7E 00 3C */	addi r3, r30, 0x3c
/* 807E8754  4B 89 07 14 */	b SetObj__16dBgS_PolyPassChkFv
/* 807E8758  3C 60 80 3B */	lis r3, __vt__18dBgS_ObjGndChk_All@ha
/* 807E875C  38 63 B6 E8 */	addi r3, r3, __vt__18dBgS_ObjGndChk_All@l
/* 807E8760  90 61 00 60 */	stw r3, 0x60(r1)
/* 807E8764  38 03 00 0C */	addi r0, r3, 0xc
/* 807E8768  90 01 00 70 */	stw r0, 0x70(r1)
/* 807E876C  38 03 00 18 */	addi r0, r3, 0x18
/* 807E8770  90 01 00 8C */	stw r0, 0x8c(r1)
/* 807E8774  38 03 00 24 */	addi r0, r3, 0x24
/* 807E8778  90 01 00 9C */	stw r0, 0x9c(r1)
/* 807E877C  80 01 00 A0 */	lwz r0, 0xa0(r1)
/* 807E8780  60 00 00 03 */	ori r0, r0, 3
/* 807E8784  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 807E8788  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 807E878C  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 807E8790  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 807E8794  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807E8798  7C 64 02 14 */	add r3, r4, r0
/* 807E879C  C0 43 00 04 */	lfs f2, 4(r3)
/* 807E87A0  7C 04 04 2E */	lfsx f0, r4, r0
/* 807E87A4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807E87A8  EC 01 00 32 */	fmuls f0, f1, f0
/* 807E87AC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807E87B0  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 807E87B4  EC 01 00 B2 */	fmuls f0, f1, f2
/* 807E87B8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807E87BC  38 61 00 30 */	addi r3, r1, 0x30
/* 807E87C0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 807E87C4  7C 65 1B 78 */	mr r5, r3
/* 807E87C8  4B B5 E8 C8 */	b PSVECAdd
/* 807E87CC  7F C3 F3 78 */	mr r3, r30
/* 807E87D0  38 81 00 30 */	addi r4, r1, 0x30
/* 807E87D4  4B A7 F5 54 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 807E87D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807E87DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807E87E0  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 807E87E4  7F C3 F3 78 */	mr r3, r30
/* 807E87E8  38 81 00 50 */	addi r4, r1, 0x50
/* 807E87EC  4B 88 BC B4 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 807E87F0  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 807E87F4  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 807E87F8  FC 00 08 18 */	frsp f0, f1
/* 807E87FC  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 807E8800  41 82 01 E4 */	beq lbl_807E89E4
/* 807E8804  38 61 00 1C */	addi r3, r1, 0x1c
/* 807E8808  38 80 00 00 */	li r4, 0
/* 807E880C  38 A0 00 00 */	li r5, 0
/* 807E8810  38 C0 00 00 */	li r6, 0
/* 807E8814  4B A7 EB E0 */	b __ct__5csXyzFsss
/* 807E8818  3C 60 80 7F */	lis r3, __vt__8cM3dGPla@ha
/* 807E881C  38 03 FB 60 */	addi r0, r3, __vt__8cM3dGPla@l
/* 807E8820  90 01 00 4C */	stw r0, 0x4c(r1)
/* 807E8824  7F C3 F3 78 */	mr r3, r30
/* 807E8828  3B C1 00 64 */	addi r30, r1, 0x64
/* 807E882C  7F C4 F3 78 */	mr r4, r30
/* 807E8830  38 A1 00 3C */	addi r5, r1, 0x3c
/* 807E8834  4B 88 BF 10 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 807E8838  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 807E883C  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 807E8840  4B A7 EE 34 */	b cM_atan2s__Fff
/* 807E8844  B0 61 00 1E */	sth r3, 0x1e(r1)
/* 807E8848  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 807E884C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807E8850  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807E8854  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807E8858  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 807E885C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807E8860  38 61 00 24 */	addi r3, r1, 0x24
/* 807E8864  4B B5 E8 D4 */	b PSVECSquareMag
/* 807E8868  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807E886C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E8870  40 81 00 58 */	ble lbl_807E88C8
/* 807E8874  FC 00 08 34 */	frsqrte f0, f1
/* 807E8878  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807E887C  FC 44 00 32 */	fmul f2, f4, f0
/* 807E8880  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807E8884  FC 00 00 32 */	fmul f0, f0, f0
/* 807E8888  FC 01 00 32 */	fmul f0, f1, f0
/* 807E888C  FC 03 00 28 */	fsub f0, f3, f0
/* 807E8890  FC 02 00 32 */	fmul f0, f2, f0
/* 807E8894  FC 44 00 32 */	fmul f2, f4, f0
/* 807E8898  FC 00 00 32 */	fmul f0, f0, f0
/* 807E889C  FC 01 00 32 */	fmul f0, f1, f0
/* 807E88A0  FC 03 00 28 */	fsub f0, f3, f0
/* 807E88A4  FC 02 00 32 */	fmul f0, f2, f0
/* 807E88A8  FC 44 00 32 */	fmul f2, f4, f0
/* 807E88AC  FC 00 00 32 */	fmul f0, f0, f0
/* 807E88B0  FC 01 00 32 */	fmul f0, f1, f0
/* 807E88B4  FC 03 00 28 */	fsub f0, f3, f0
/* 807E88B8  FC 02 00 32 */	fmul f0, f2, f0
/* 807E88BC  FC 21 00 32 */	fmul f1, f1, f0
/* 807E88C0  FC 20 08 18 */	frsp f1, f1
/* 807E88C4  48 00 00 88 */	b lbl_807E894C
lbl_807E88C8:
/* 807E88C8  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807E88CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E88D0  40 80 00 10 */	bge lbl_807E88E0
/* 807E88D4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807E88D8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807E88DC  48 00 00 70 */	b lbl_807E894C
lbl_807E88E0:
/* 807E88E0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 807E88E4  80 81 00 18 */	lwz r4, 0x18(r1)
/* 807E88E8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807E88EC  3C 00 7F 80 */	lis r0, 0x7f80
/* 807E88F0  7C 03 00 00 */	cmpw r3, r0
/* 807E88F4  41 82 00 14 */	beq lbl_807E8908
/* 807E88F8  40 80 00 40 */	bge lbl_807E8938
/* 807E88FC  2C 03 00 00 */	cmpwi r3, 0
/* 807E8900  41 82 00 20 */	beq lbl_807E8920
/* 807E8904  48 00 00 34 */	b lbl_807E8938
lbl_807E8908:
/* 807E8908  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807E890C  41 82 00 0C */	beq lbl_807E8918
/* 807E8910  38 00 00 01 */	li r0, 1
/* 807E8914  48 00 00 28 */	b lbl_807E893C
lbl_807E8918:
/* 807E8918  38 00 00 02 */	li r0, 2
/* 807E891C  48 00 00 20 */	b lbl_807E893C
lbl_807E8920:
/* 807E8920  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807E8924  41 82 00 0C */	beq lbl_807E8930
/* 807E8928  38 00 00 05 */	li r0, 5
/* 807E892C  48 00 00 10 */	b lbl_807E893C
lbl_807E8930:
/* 807E8930  38 00 00 03 */	li r0, 3
/* 807E8934  48 00 00 08 */	b lbl_807E893C
lbl_807E8938:
/* 807E8938  38 00 00 04 */	li r0, 4
lbl_807E893C:
/* 807E893C  2C 00 00 01 */	cmpwi r0, 1
/* 807E8940  40 82 00 0C */	bne lbl_807E894C
/* 807E8944  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807E8948  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807E894C:
/* 807E894C  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 807E8950  4B A7 ED 24 */	b cM_atan2s__Fff
/* 807E8954  B0 61 00 1C */	sth r3, 0x1c(r1)
/* 807E8958  38 60 00 00 */	li r3, 0
/* 807E895C  90 61 00 08 */	stw r3, 8(r1)
/* 807E8960  38 00 FF FF */	li r0, -1
/* 807E8964  90 01 00 0C */	stw r0, 0xc(r1)
/* 807E8968  90 61 00 10 */	stw r3, 0x10(r1)
/* 807E896C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807E8970  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 807E8974  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 807E8978  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008A56@ha */
/* 807E897C  38 84 8A 56 */	addi r4, r4, 0x8A56 /* 0x00008A56@l */
/* 807E8980  7F C5 F3 78 */	mr r5, r30
/* 807E8984  38 C1 00 30 */	addi r6, r1, 0x30
/* 807E8988  38 FD 01 0C */	addi r7, r29, 0x10c
/* 807E898C  39 01 00 1C */	addi r8, r1, 0x1c
/* 807E8990  39 20 00 00 */	li r9, 0
/* 807E8994  39 40 00 00 */	li r10, 0
/* 807E8998  4B 86 46 D0 */	b setPoly__13dPa_control_cFUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz
/* 807E899C  38 60 00 00 */	li r3, 0
/* 807E89A0  90 61 00 08 */	stw r3, 8(r1)
/* 807E89A4  38 00 FF FF */	li r0, -1
/* 807E89A8  90 01 00 0C */	stw r0, 0xc(r1)
/* 807E89AC  90 61 00 10 */	stw r3, 0x10(r1)
/* 807E89B0  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 807E89B4  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008A57@ha */
/* 807E89B8  38 84 8A 57 */	addi r4, r4, 0x8A57 /* 0x00008A57@l */
/* 807E89BC  7F C5 F3 78 */	mr r5, r30
/* 807E89C0  38 C1 00 30 */	addi r6, r1, 0x30
/* 807E89C4  38 FD 01 0C */	addi r7, r29, 0x10c
/* 807E89C8  39 01 00 1C */	addi r8, r1, 0x1c
/* 807E89CC  39 20 00 00 */	li r9, 0
/* 807E89D0  39 40 00 00 */	li r10, 0
/* 807E89D4  4B 86 46 94 */	b setPoly__13dPa_control_cFUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz
/* 807E89D8  3C 60 80 7F */	lis r3, __vt__8cM3dGPla@ha
/* 807E89DC  38 03 FB 60 */	addi r0, r3, __vt__8cM3dGPla@l
/* 807E89E0  90 01 00 4C */	stw r0, 0x4c(r1)
lbl_807E89E4:
/* 807E89E4  38 61 00 50 */	addi r3, r1, 0x50
/* 807E89E8  38 80 FF FF */	li r4, -1
/* 807E89EC  4B 88 EE FC */	b __dt__18dBgS_ObjGndChk_AllFv
/* 807E89F0  39 61 00 C0 */	addi r11, r1, 0xc0
/* 807E89F4  4B B7 98 34 */	b _restgpr_29
/* 807E89F8  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 807E89FC  7C 08 03 A6 */	mtlr r0
/* 807E8A00  38 21 00 C0 */	addi r1, r1, 0xc0
/* 807E8A04  4E 80 00 20 */	blr 

lbl_8016C384:
/* 8016C384  94 21 FA B0 */	stwu r1, -0x550(r1)
/* 8016C388  7C 08 02 A6 */	mflr r0
/* 8016C38C  90 01 05 54 */	stw r0, 0x554(r1)
/* 8016C390  DB E1 05 40 */	stfd f31, 0x540(r1)
/* 8016C394  F3 E1 05 48 */	psq_st f31, 1352(r1), 0, 0 /* qr0 */
/* 8016C398  DB C1 05 30 */	stfd f30, 0x530(r1)
/* 8016C39C  F3 C1 05 38 */	psq_st f30, 1336(r1), 0, 0 /* qr0 */
/* 8016C3A0  DB A1 05 20 */	stfd f29, 0x520(r1)
/* 8016C3A4  F3 A1 05 28 */	psq_st f29, 1320(r1), 0, 0 /* qr0 */
/* 8016C3A8  DB 81 05 10 */	stfd f28, 0x510(r1)
/* 8016C3AC  F3 81 05 18 */	psq_st f28, 1304(r1), 0, 0 /* qr0 */
/* 8016C3B0  DB 61 05 00 */	stfd f27, 0x500(r1)
/* 8016C3B4  F3 61 05 08 */	psq_st f27, 1288(r1), 0, 0 /* qr0 */
/* 8016C3B8  DB 41 04 F0 */	stfd f26, 0x4f0(r1)
/* 8016C3BC  F3 41 04 F8 */	psq_st f26, 1272(r1), 0, 0 /* qr0 */
/* 8016C3C0  DB 21 04 E0 */	stfd f25, 0x4e0(r1)
/* 8016C3C4  F3 21 04 E8 */	psq_st f25, 1256(r1), 0, 0 /* qr0 */
/* 8016C3C8  DB 01 04 D0 */	stfd f24, 0x4d0(r1)
/* 8016C3CC  F3 01 04 D8 */	psq_st f24, 1240(r1), 0, 0 /* qr0 */
/* 8016C3D0  DA E1 04 C0 */	stfd f23, 0x4c0(r1)
/* 8016C3D4  F2 E1 04 C8 */	psq_st f23, 1224(r1), 0, 0 /* qr0 */
/* 8016C3D8  DA C1 04 B0 */	stfd f22, 0x4b0(r1)
/* 8016C3DC  F2 C1 04 B8 */	psq_st f22, 1208(r1), 0, 0 /* qr0 */
/* 8016C3E0  DA A1 04 A0 */	stfd f21, 0x4a0(r1)
/* 8016C3E4  F2 A1 04 A8 */	psq_st f21, 1192(r1), 0, 0 /* qr0 */
/* 8016C3E8  DA 81 04 90 */	stfd f20, 0x490(r1)
/* 8016C3EC  F2 81 04 98 */	psq_st f20, 1176(r1), 0, 0 /* qr0 */
/* 8016C3F0  DA 61 04 80 */	stfd f19, 0x480(r1)
/* 8016C3F4  F2 61 04 88 */	psq_st f19, 1160(r1), 0, 0 /* qr0 */
/* 8016C3F8  DA 41 04 70 */	stfd f18, 0x470(r1)
/* 8016C3FC  F2 41 04 78 */	psq_st f18, 1144(r1), 0, 0 /* qr0 */
/* 8016C400  DA 21 04 60 */	stfd f17, 0x460(r1)
/* 8016C404  F2 21 04 68 */	psq_st f17, 1128(r1), 0, 0 /* qr0 */
/* 8016C408  DA 01 04 50 */	stfd f16, 0x450(r1)
/* 8016C40C  F2 01 04 58 */	psq_st f16, 1112(r1), 0, 0 /* qr0 */
/* 8016C410  D9 E1 04 40 */	stfd f15, 0x440(r1)
/* 8016C414  F1 E1 04 48 */	psq_st f15, 1096(r1), 0, 0 /* qr0 */
/* 8016C418  D9 C1 04 30 */	stfd f14, 0x430(r1)
/* 8016C41C  F1 C1 04 38 */	psq_st f14, 1080(r1), 0, 0 /* qr0 */
/* 8016C420  39 61 04 30 */	addi r11, r1, 0x430
/* 8016C424  48 1F 5D 8D */	bl _savegpr_18
/* 8016C428  7C 7E 1B 78 */	mr r30, r3
/* 8016C42C  7C 9F 23 78 */	mr r31, r4
/* 8016C430  C3 C3 0A 40 */	lfs f30, 0xa40(r3)
/* 8016C434  38 61 00 F4 */	addi r3, r1, 0xf4
/* 8016C438  C0 3E 0A 30 */	lfs f1, 0xa30(r30)
/* 8016C43C  48 10 4B 8D */	bl __ct__7cSAngleFf
/* 8016C440  38 61 01 48 */	addi r3, r1, 0x148
/* 8016C444  38 81 00 F4 */	addi r4, r1, 0xf4
/* 8016C448  48 10 4B 21 */	bl __ct__7cSAngleFRC7cSAngle
/* 8016C44C  38 61 00 F4 */	addi r3, r1, 0xf4
/* 8016C450  38 80 FF FF */	li r4, -1
/* 8016C454  4B EC 40 BD */	bl __dt__7cSAngleFv
/* 8016C458  C0 1E 0A 38 */	lfs f0, 0xa38(r30)
/* 8016C45C  D0 01 03 E0 */	stfs f0, 0x3e0(r1)
/* 8016C460  83 BE 0A 3C */	lwz r29, 0xa3c(r30)
/* 8016C464  38 7E 0A EC */	addi r3, r30, 0xaec
/* 8016C468  7F E4 FB 78 */	mr r4, r31
/* 8016C46C  38 A0 00 01 */	li r5, 1
/* 8016C470  48 01 68 61 */	bl Val__11dCamParam_cFli
/* 8016C474  D8 21 03 E8 */	stfd f1, 0x3e8(r1)
/* 8016C478  38 7E 0A EC */	addi r3, r30, 0xaec
/* 8016C47C  7F E4 FB 78 */	mr r4, r31
/* 8016C480  38 A0 00 05 */	li r5, 5
/* 8016C484  48 01 68 4D */	bl Val__11dCamParam_cFli
/* 8016C488  FF A0 08 90 */	fmr f29, f1
/* 8016C48C  38 7E 0A EC */	addi r3, r30, 0xaec
/* 8016C490  7F E4 FB 78 */	mr r4, r31
/* 8016C494  38 A0 00 06 */	li r5, 6
/* 8016C498  48 01 68 39 */	bl Val__11dCamParam_cFli
/* 8016C49C  FF 80 08 90 */	fmr f28, f1
/* 8016C4A0  38 7E 0A EC */	addi r3, r30, 0xaec
/* 8016C4A4  7F E4 FB 78 */	mr r4, r31
/* 8016C4A8  38 A0 00 19 */	li r5, 0x19
/* 8016C4AC  48 01 68 25 */	bl Val__11dCamParam_cFli
/* 8016C4B0  FF 60 08 90 */	fmr f27, f1
/* 8016C4B4  38 7E 0A EC */	addi r3, r30, 0xaec
/* 8016C4B8  7F E4 FB 78 */	mr r4, r31
/* 8016C4BC  38 A0 00 1A */	li r5, 0x1a
/* 8016C4C0  48 01 68 11 */	bl Val__11dCamParam_cFli
/* 8016C4C4  FF 40 08 90 */	fmr f26, f1
/* 8016C4C8  38 7E 0A EC */	addi r3, r30, 0xaec
/* 8016C4CC  7F E4 FB 78 */	mr r4, r31
/* 8016C4D0  38 A0 00 04 */	li r5, 4
/* 8016C4D4  48 01 67 FD */	bl Val__11dCamParam_cFli
/* 8016C4D8  FF 20 08 90 */	fmr f25, f1
/* 8016C4DC  38 7E 0A EC */	addi r3, r30, 0xaec
/* 8016C4E0  7F E4 FB 78 */	mr r4, r31
/* 8016C4E4  38 A0 00 0D */	li r5, 0xd
/* 8016C4E8  48 01 67 E9 */	bl Val__11dCamParam_cFli
/* 8016C4EC  FF 00 08 90 */	fmr f24, f1
/* 8016C4F0  38 7E 0A EC */	addi r3, r30, 0xaec
/* 8016C4F4  7F E4 FB 78 */	mr r4, r31
/* 8016C4F8  38 A0 00 0F */	li r5, 0xf
/* 8016C4FC  48 01 67 D5 */	bl Val__11dCamParam_cFli
/* 8016C500  FE E0 08 90 */	fmr f23, f1
/* 8016C504  38 7E 0A EC */	addi r3, r30, 0xaec
/* 8016C508  7F E4 FB 78 */	mr r4, r31
/* 8016C50C  38 A0 00 10 */	li r5, 0x10
/* 8016C510  48 01 67 C1 */	bl Val__11dCamParam_cFli
/* 8016C514  FE C0 08 90 */	fmr f22, f1
/* 8016C518  38 7E 0A EC */	addi r3, r30, 0xaec
/* 8016C51C  7F E4 FB 78 */	mr r4, r31
/* 8016C520  38 A0 00 1B */	li r5, 0x1b
/* 8016C524  48 01 67 AD */	bl Val__11dCamParam_cFli
/* 8016C528  FE A0 08 90 */	fmr f21, f1
/* 8016C52C  38 7E 0A EC */	addi r3, r30, 0xaec
/* 8016C530  7F E4 FB 78 */	mr r4, r31
/* 8016C534  38 A0 00 16 */	li r5, 0x16
/* 8016C538  48 01 67 99 */	bl Val__11dCamParam_cFli
/* 8016C53C  FE 80 08 90 */	fmr f20, f1
/* 8016C540  38 7E 0A EC */	addi r3, r30, 0xaec
/* 8016C544  7F E4 FB 78 */	mr r4, r31
/* 8016C548  38 A0 00 17 */	li r5, 0x17
/* 8016C54C  48 01 67 85 */	bl Val__11dCamParam_cFli
/* 8016C550  FE 60 08 90 */	fmr f19, f1
/* 8016C554  38 7E 0A EC */	addi r3, r30, 0xaec
/* 8016C558  7F E4 FB 78 */	mr r4, r31
/* 8016C55C  38 A0 00 18 */	li r5, 0x18
/* 8016C560  48 01 67 71 */	bl Val__11dCamParam_cFli
/* 8016C564  FE 40 08 90 */	fmr f18, f1
/* 8016C568  38 7E 0A EC */	addi r3, r30, 0xaec
/* 8016C56C  7F E4 FB 78 */	mr r4, r31
/* 8016C570  38 A0 00 0A */	li r5, 0xa
/* 8016C574  48 01 67 5D */	bl Val__11dCamParam_cFli
/* 8016C578  FE 20 08 90 */	fmr f17, f1
/* 8016C57C  38 7E 0A EC */	addi r3, r30, 0xaec
/* 8016C580  7F E4 FB 78 */	mr r4, r31
/* 8016C584  38 A0 00 0B */	li r5, 0xb
/* 8016C588  48 01 67 49 */	bl Val__11dCamParam_cFli
/* 8016C58C  FE 00 08 90 */	fmr f16, f1
/* 8016C590  38 7E 0A EC */	addi r3, r30, 0xaec
/* 8016C594  7F E4 FB 78 */	mr r4, r31
/* 8016C598  38 A0 00 14 */	li r5, 0x14
/* 8016C59C  48 01 67 35 */	bl Val__11dCamParam_cFli
/* 8016C5A0  D0 21 03 DC */	stfs f1, 0x3dc(r1)
/* 8016C5A4  38 7E 0A EC */	addi r3, r30, 0xaec
/* 8016C5A8  7F E4 FB 78 */	mr r4, r31
/* 8016C5AC  38 A0 00 15 */	li r5, 0x15
/* 8016C5B0  48 01 67 21 */	bl Val__11dCamParam_cFli
/* 8016C5B4  D0 21 03 D8 */	stfs f1, 0x3d8(r1)
/* 8016C5B8  48 01 63 E5 */	bl dComIfGp_getAttention__Fv
/* 8016C5BC  7C 7C 1B 78 */	mr r28, r3
/* 8016C5C0  83 7E 01 80 */	lwz r27, 0x180(r30)
/* 8016C5C4  48 01 64 91 */	bl dComIfGp_evmng_cameraPlay__Fv
/* 8016C5C8  2C 03 00 00 */	cmpwi r3, 0
/* 8016C5CC  41 82 00 24 */	beq lbl_8016C5F0
/* 8016C5D0  7F C3 F3 78 */	mr r3, r30
/* 8016C5D4  3C 80 80 39 */	lis r4, d_d_camera__stringBase0@ha
/* 8016C5D8  38 84 3F 68 */	addi r4, r4, d_d_camera__stringBase0@l
/* 8016C5DC  38 84 01 A6 */	addi r4, r4, 0x1a6
/* 8016C5E0  4B F1 CE E5 */	bl getEvActor__9dCamera_cFPc
/* 8016C5E4  28 03 00 00 */	cmplwi r3, 0
/* 8016C5E8  41 82 00 08 */	beq lbl_8016C5F0
/* 8016C5EC  90 7E 01 84 */	stw r3, 0x184(r30)
lbl_8016C5F0:
/* 8016C5F0  80 1E 01 74 */	lwz r0, 0x174(r30)
/* 8016C5F4  28 00 00 00 */	cmplwi r0, 0
/* 8016C5F8  40 82 02 AC */	bne lbl_8016C8A4
/* 8016C5FC  A8 1E 01 36 */	lha r0, 0x136(r30)
/* 8016C600  2C 00 00 00 */	cmpwi r0, 0
/* 8016C604  41 81 00 28 */	bgt lbl_8016C62C
/* 8016C608  38 7E 00 5C */	addi r3, r30, 0x5c
/* 8016C60C  38 9E 00 28 */	addi r4, r30, 0x28
/* 8016C610  4B F2 21 65 */	bl __as__7cSGlobeFRC7cSGlobe
/* 8016C614  38 7E 00 64 */	addi r3, r30, 0x64
/* 8016C618  38 9E 00 30 */	addi r4, r30, 0x30
/* 8016C61C  4B F2 B1 BD */	bl __as__4cXyzFRC4cXyz
/* 8016C620  38 7E 00 70 */	addi r3, r30, 0x70
/* 8016C624  38 9E 00 3C */	addi r4, r30, 0x3c
/* 8016C628  4B F2 B1 B1 */	bl __as__4cXyzFRC4cXyz
lbl_8016C62C:
/* 8016C62C  3C 60 4C 4F */	lis r3, 0x4C4F /* 0x4C4F434B@ha */
/* 8016C630  38 03 43 4B */	addi r0, r3, 0x434B /* 0x4C4F434B@l */
/* 8016C634  90 1E 03 E8 */	stw r0, 0x3e8(r30)
/* 8016C638  38 00 00 00 */	li r0, 0
/* 8016C63C  90 1E 03 F4 */	stw r0, 0x3f4(r30)
/* 8016C640  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 8016C644  D0 1E 03 F8 */	stfs f0, 0x3f8(r30)
/* 8016C648  98 1E 04 00 */	stb r0, 0x400(r30)
/* 8016C64C  98 1E 04 10 */	stb r0, 0x410(r30)
/* 8016C650  38 7E 04 04 */	addi r3, r30, 0x404
/* 8016C654  38 9E 00 64 */	addi r4, r30, 0x64
/* 8016C658  4B F2 B1 81 */	bl __as__4cXyzFRC4cXyz
/* 8016C65C  38 61 02 64 */	addi r3, r1, 0x264
/* 8016C660  7F C4 F3 78 */	mr r4, r30
/* 8016C664  80 BE 01 80 */	lwz r5, 0x180(r30)
/* 8016C668  4B F2 B0 B5 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8016C66C  38 61 02 C4 */	addi r3, r1, 0x2c4
/* 8016C670  38 81 02 64 */	addi r4, r1, 0x264
/* 8016C674  4B F2 B1 81 */	bl __ct__4cXyzFRC4cXyz
/* 8016C678  38 61 02 64 */	addi r3, r1, 0x264
/* 8016C67C  38 80 FF FF */	li r4, -1
/* 8016C680  4B E9 CB 05 */	bl __dt__4cXyzFv
/* 8016C684  38 61 02 58 */	addi r3, r1, 0x258
/* 8016C688  38 9E 00 64 */	addi r4, r30, 0x64
/* 8016C68C  38 A1 02 C4 */	addi r5, r1, 0x2c4
/* 8016C690  48 0F A4 A5 */	bl __mi__4cXyzCFRC3Vec
/* 8016C694  38 7E 04 1C */	addi r3, r30, 0x41c
/* 8016C698  38 81 02 58 */	addi r4, r1, 0x258
/* 8016C69C  48 10 53 D5 */	bl Val__7cSGlobeFRC4cXyz
/* 8016C6A0  38 61 02 58 */	addi r3, r1, 0x258
/* 8016C6A4  38 80 FF FF */	li r4, -1
/* 8016C6A8  4B E9 CA DD */	bl __dt__4cXyzFv
/* 8016C6AC  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 8016C6B0  C0 01 02 C4 */	lfs f0, 0x2c4(r1)
/* 8016C6B4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8016C6B8  40 82 00 3C */	bne lbl_8016C6F4
/* 8016C6BC  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 8016C6C0  C0 01 02 CC */	lfs f0, 0x2cc(r1)
/* 8016C6C4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8016C6C8  40 82 00 2C */	bne lbl_8016C6F4
/* 8016C6CC  38 61 00 F0 */	addi r3, r1, 0xf0
/* 8016C6D0  7F C4 F3 78 */	mr r4, r30
/* 8016C6D4  80 BE 01 80 */	lwz r5, 0x180(r30)
/* 8016C6D8  4B F2 B0 61 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8016C6DC  38 7E 04 1C */	addi r3, r30, 0x41c
/* 8016C6E0  38 81 00 F0 */	addi r4, r1, 0xf0
/* 8016C6E4  4B F2 21 B1 */	bl U__7cSGlobeFRC7cSAngle
/* 8016C6E8  38 61 00 F0 */	addi r3, r1, 0xf0
/* 8016C6EC  38 80 FF FF */	li r4, -1
/* 8016C6F0  4B EC 3E 21 */	bl __dt__7cSAngleFv
lbl_8016C6F4:
/* 8016C6F4  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 8016C6F8  D0 1E 04 40 */	stfs f0, 0x440(r30)
/* 8016C6FC  D0 1E 04 3C */	stfs f0, 0x43c(r30)
/* 8016C700  C0 1E 09 A8 */	lfs f0, 0x9a8(r30)
/* 8016C704  D0 1E 04 44 */	stfs f0, 0x444(r30)
/* 8016C708  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 8016C70C  D0 1E 04 48 */	stfs f0, 0x448(r30)
/* 8016C710  38 00 00 00 */	li r0, 0
/* 8016C714  90 1E 03 FC */	stw r0, 0x3fc(r30)
/* 8016C718  98 1E 04 11 */	stb r0, 0x411(r30)
/* 8016C71C  90 1E 04 14 */	stw r0, 0x414(r30)
/* 8016C720  90 1E 04 18 */	stw r0, 0x418(r30)
/* 8016C724  98 1E 04 28 */	stb r0, 0x428(r30)
/* 8016C728  90 1E 04 2C */	stw r0, 0x42c(r30)
/* 8016C72C  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 8016C730  D0 1E 04 30 */	stfs f0, 0x430(r30)
/* 8016C734  38 7E 04 38 */	addi r3, r30, 0x438
/* 8016C738  3A 7E 00 60 */	addi r19, r30, 0x60
/* 8016C73C  7E 64 9B 78 */	mr r4, r19
/* 8016C740  48 01 65 69 */	bl __as__7cSAngleFRC7cSAngle
/* 8016C744  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 8016C748  D0 1E 04 34 */	stfs f0, 0x434(r30)
/* 8016C74C  38 00 00 00 */	li r0, 0
/* 8016C750  98 1E 04 12 */	stb r0, 0x412(r30)
/* 8016C754  38 00 FF FF */	li r0, -1
/* 8016C758  90 1E 04 24 */	stw r0, 0x424(r30)
/* 8016C75C  7F 63 DB 78 */	mr r3, r27
/* 8016C760  48 01 61 29 */	bl checkCutHeadProc__9daAlink_cCFv
/* 8016C764  2C 03 00 00 */	cmpwi r3, 0
/* 8016C768  41 82 00 18 */	beq lbl_8016C780
/* 8016C76C  80 7E 01 84 */	lwz r3, 0x184(r30)
/* 8016C770  28 03 00 00 */	cmplwi r3, 0
/* 8016C774  41 82 00 0C */	beq lbl_8016C780
/* 8016C778  4B F2 B0 49 */	bl fopAcM_GetID__FPCv
/* 8016C77C  90 7E 04 24 */	stw r3, 0x424(r30)
lbl_8016C780:
/* 8016C780  80 7E 01 84 */	lwz r3, 0x184(r30)
/* 8016C784  28 03 00 00 */	cmplwi r3, 0
/* 8016C788  41 82 00 34 */	beq lbl_8016C7BC
/* 8016C78C  4B FD 4B 31 */	bl fopAcM_GetName__FPv
/* 8016C790  7C 60 07 34 */	extsh r0, r3
/* 8016C794  2C 00 00 84 */	cmpwi r0, 0x84
/* 8016C798  41 82 00 18 */	beq lbl_8016C7B0
/* 8016C79C  80 7E 01 84 */	lwz r3, 0x184(r30)
/* 8016C7A0  4B FD 4B 1D */	bl fopAcM_GetName__FPv
/* 8016C7A4  7C 60 07 34 */	extsh r0, r3
/* 8016C7A8  2C 00 00 8E */	cmpwi r0, 0x8e
/* 8016C7AC  40 82 00 44 */	bne lbl_8016C7F0
lbl_8016C7B0:
/* 8016C7B0  7F C3 F3 78 */	mr r3, r30
/* 8016C7B4  4B FF 89 51 */	bl setUSOAngle__9dCamera_cFv
/* 8016C7B8  48 00 00 38 */	b lbl_8016C7F0
lbl_8016C7BC:
/* 8016C7BC  38 7E 0A EC */	addi r3, r30, 0xaec
/* 8016C7C0  7F E4 FB 78 */	mr r4, r31
/* 8016C7C4  38 A0 20 00 */	li r5, 0x2000
/* 8016C7C8  48 01 64 C5 */	bl Flag__11dCamParam_cFlUs
/* 8016C7CC  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8016C7D0  41 82 00 20 */	beq lbl_8016C7F0
/* 8016C7D4  7F C3 F3 78 */	mr r3, r30
/* 8016C7D8  80 9E 06 8C */	lwz r4, 0x68c(r30)
/* 8016C7DC  4B FF 80 9D */	bl getParamTargetActor__9dCamera_cFl
/* 8016C7E0  28 03 00 00 */	cmplwi r3, 0
/* 8016C7E4  41 82 00 0C */	beq lbl_8016C7F0
/* 8016C7E8  4B F2 AF D9 */	bl fopAcM_GetID__FPCv
/* 8016C7EC  90 7E 04 24 */	stw r3, 0x424(r30)
lbl_8016C7F0:
/* 8016C7F0  80 9E 06 8C */	lwz r4, 0x68c(r30)
/* 8016C7F4  3C 60 80 43 */	lis r3, data_8042C8F8@ha
/* 8016C7F8  38 63 C8 F8 */	addi r3, r3, data_8042C8F8@l
/* 8016C7FC  80 03 00 A0 */	lwz r0, 0xa0(r3)
/* 8016C800  7C 04 00 00 */	cmpw r4, r0
/* 8016C804  40 82 00 90 */	bne lbl_8016C894
/* 8016C808  38 61 01 44 */	addi r3, r1, 0x144
/* 8016C80C  C0 22 9D F0 */	lfs f1, lit_11167(r2)
/* 8016C810  48 10 47 B9 */	bl __ct__7cSAngleFf
/* 8016C814  A8 73 00 00 */	lha r3, 0(r19)
/* 8016C818  A8 01 01 44 */	lha r0, 0x144(r1)
/* 8016C81C  7C 03 00 00 */	cmpw r3, r0
/* 8016C820  40 80 00 68 */	bge lbl_8016C888
/* 8016C824  38 61 00 EC */	addi r3, r1, 0xec
/* 8016C828  C0 22 9D F0 */	lfs f1, lit_11167(r2)
/* 8016C82C  48 10 47 9D */	bl __ct__7cSAngleFf
/* 8016C830  38 7E 00 5C */	addi r3, r30, 0x5c
/* 8016C834  38 81 00 EC */	addi r4, r1, 0xec
/* 8016C838  4B F2 32 21 */	bl V__7cSGlobeFRC7cSAngle
/* 8016C83C  38 61 00 EC */	addi r3, r1, 0xec
/* 8016C840  38 80 FF FF */	li r4, -1
/* 8016C844  4B EC 3C CD */	bl __dt__7cSAngleFv
/* 8016C848  38 61 02 4C */	addi r3, r1, 0x24c
/* 8016C84C  38 9E 00 5C */	addi r4, r30, 0x5c
/* 8016C850  48 10 52 65 */	bl Xyz__7cSGlobeCFv
/* 8016C854  38 61 02 40 */	addi r3, r1, 0x240
/* 8016C858  38 9E 00 64 */	addi r4, r30, 0x64
/* 8016C85C  38 A1 02 4C */	addi r5, r1, 0x24c
/* 8016C860  48 0F A2 85 */	bl __pl__4cXyzCFRC3Vec
/* 8016C864  38 7E 00 70 */	addi r3, r30, 0x70
/* 8016C868  38 81 02 40 */	addi r4, r1, 0x240
/* 8016C86C  4B F2 AF 6D */	bl __as__4cXyzFRC4cXyz
/* 8016C870  38 61 02 40 */	addi r3, r1, 0x240
/* 8016C874  38 80 FF FF */	li r4, -1
/* 8016C878  4B E9 C9 0D */	bl __dt__4cXyzFv
/* 8016C87C  38 61 02 4C */	addi r3, r1, 0x24c
/* 8016C880  38 80 FF FF */	li r4, -1
/* 8016C884  4B E9 C9 01 */	bl __dt__4cXyzFv
lbl_8016C888:
/* 8016C888  38 61 01 44 */	addi r3, r1, 0x144
/* 8016C88C  38 80 FF FF */	li r4, -1
/* 8016C890  4B EC 3C 81 */	bl __dt__7cSAngleFv
lbl_8016C894:
/* 8016C894  38 61 02 C4 */	addi r3, r1, 0x2c4
/* 8016C898  38 80 FF FF */	li r4, -1
/* 8016C89C  4B E9 C8 E9 */	bl __dt__4cXyzFv
/* 8016C8A0  48 00 00 0C */	b lbl_8016C8AC
lbl_8016C8A4:
/* 8016C8A4  38 00 00 01 */	li r0, 1
/* 8016C8A8  98 1E 01 58 */	stb r0, 0x158(r30)
lbl_8016C8AC:
/* 8016C8AC  7F 63 DB 78 */	mr r3, r27
/* 8016C8B0  48 01 5F D9 */	bl checkCutHeadProc__9daAlink_cCFv
/* 8016C8B4  2C 03 00 00 */	cmpwi r3, 0
/* 8016C8B8  41 82 00 54 */	beq lbl_8016C90C
/* 8016C8BC  80 7E 04 24 */	lwz r3, 0x424(r30)
/* 8016C8C0  3C 03 00 01 */	addis r0, r3, 1
/* 8016C8C4  28 00 FF FF */	cmplwi r0, 0xffff
/* 8016C8C8  41 82 00 44 */	beq lbl_8016C90C
/* 8016C8CC  90 61 01 50 */	stw r3, 0x150(r1)
/* 8016C8D0  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 8016C8D4  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 8016C8D8  38 81 01 50 */	addi r4, r1, 0x150
/* 8016C8DC  4B EA CF 1D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8016C8E0  90 7E 01 84 */	stw r3, 0x184(r30)
/* 8016C8E4  80 1E 01 84 */	lwz r0, 0x184(r30)
/* 8016C8E8  28 00 00 00 */	cmplwi r0, 0
/* 8016C8EC  41 82 00 14 */	beq lbl_8016C900
/* 8016C8F0  48 01 60 AD */	bl dComIfGp_getAttention__Fv
/* 8016C8F4  38 80 00 1E */	li r4, 0x1e
/* 8016C8F8  48 01 61 D9 */	bl keepLock__12dAttention_cFi
/* 8016C8FC  48 00 00 10 */	b lbl_8016C90C
lbl_8016C900:
/* 8016C900  48 01 60 9D */	bl dComIfGp_getAttention__Fv
/* 8016C904  38 80 00 00 */	li r4, 0
/* 8016C908  48 01 61 C9 */	bl keepLock__12dAttention_cFi
lbl_8016C90C:
/* 8016C90C  80 1E 01 84 */	lwz r0, 0x184(r30)
/* 8016C910  28 00 00 00 */	cmplwi r0, 0
/* 8016C914  40 82 00 2C */	bne lbl_8016C940
/* 8016C918  80 7E 04 24 */	lwz r3, 0x424(r30)
/* 8016C91C  3C 03 00 01 */	addis r0, r3, 1
/* 8016C920  28 00 FF FF */	cmplwi r0, 0xffff
/* 8016C924  41 82 00 1C */	beq lbl_8016C940
/* 8016C928  90 61 01 4C */	stw r3, 0x14c(r1)
/* 8016C92C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 8016C930  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 8016C934  38 81 01 4C */	addi r4, r1, 0x14c
/* 8016C938  4B EA CE C1 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8016C93C  90 7E 01 84 */	stw r3, 0x184(r30)
lbl_8016C940:
/* 8016C940  3B 40 00 00 */	li r26, 0
/* 8016C944  80 7E 01 7C */	lwz r3, 0x17c(r30)
/* 8016C948  38 80 00 06 */	li r4, 6
/* 8016C94C  4B FF FA 1D */	bl func_8016C368
/* 8016C950  28 03 00 00 */	cmplwi r3, 0
/* 8016C954  41 82 00 0C */	beq lbl_8016C960
/* 8016C958  3B A0 00 05 */	li r29, 5
/* 8016C95C  48 00 00 34 */	b lbl_8016C990
lbl_8016C960:
/* 8016C960  80 9E 06 8C */	lwz r4, 0x68c(r30)
/* 8016C964  3C 60 80 43 */	lis r3, data_8042C8F8@ha
/* 8016C968  38 63 C8 F8 */	addi r3, r3, data_8042C8F8@l
/* 8016C96C  80 03 00 94 */	lwz r0, 0x94(r3)
/* 8016C970  7C 04 00 00 */	cmpw r4, r0
/* 8016C974  40 82 00 0C */	bne lbl_8016C980
/* 8016C978  3B A0 00 3C */	li r29, 0x3c
/* 8016C97C  48 00 00 14 */	b lbl_8016C990
lbl_8016C980:
/* 8016C980  80 03 00 98 */	lwz r0, 0x98(r3)
/* 8016C984  7C 04 00 00 */	cmpw r4, r0
/* 8016C988  40 82 00 08 */	bne lbl_8016C990
/* 8016C98C  3B A0 00 28 */	li r29, 0x28
lbl_8016C990:
/* 8016C990  88 1E 03 8D */	lbz r0, 0x38d(r30)
/* 8016C994  28 00 00 00 */	cmplwi r0, 0
/* 8016C998  41 82 00 28 */	beq lbl_8016C9C0
/* 8016C99C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8016C9A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8016C9A4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8016C9A8  38 9E 03 40 */	addi r4, r30, 0x340
/* 8016C9AC  38 A0 00 01 */	li r5, 1
/* 8016C9B0  38 DE 04 04 */	addi r6, r30, 0x404
/* 8016C9B4  38 E0 00 00 */	li r7, 0
/* 8016C9B8  39 00 00 00 */	li r8, 0
/* 8016C9BC  4B F0 8F A1 */	bl MoveBgMatrixCrrPos__4dBgSFRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz
lbl_8016C9C0:
/* 8016C9C0  7F 63 DB 78 */	mr r3, r27
/* 8016C9C4  48 01 61 01 */	bl checkCopyRodThrowAfter__9daPy_py_cCFv
/* 8016C9C8  28 03 00 00 */	cmplwi r3, 0
/* 8016C9CC  41 82 00 10 */	beq lbl_8016C9DC
/* 8016C9D0  38 00 00 01 */	li r0, 1
/* 8016C9D4  98 1E 04 10 */	stb r0, 0x410(r30)
/* 8016C9D8  48 00 00 3C */	b lbl_8016CA14
lbl_8016C9DC:
/* 8016C9DC  7F 83 E3 78 */	mr r3, r28
/* 8016C9E0  4B F0 6E 05 */	bl LockonTruth__12dAttention_cFv
/* 8016C9E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016C9E8  40 82 00 24 */	bne lbl_8016CA0C
/* 8016C9EC  80 7E 01 7C */	lwz r3, 0x17c(r30)
/* 8016C9F0  3C 80 00 40 */	lis r4, 0x40
/* 8016C9F4  4B FF F9 75 */	bl func_8016C368
/* 8016C9F8  28 03 00 00 */	cmplwi r3, 0
/* 8016C9FC  41 82 00 10 */	beq lbl_8016CA0C
/* 8016CA00  38 00 00 01 */	li r0, 1
/* 8016CA04  98 1E 04 10 */	stb r0, 0x410(r30)
/* 8016CA08  48 00 00 0C */	b lbl_8016CA14
lbl_8016CA0C:
/* 8016CA0C  38 00 00 00 */	li r0, 0
/* 8016CA10  98 1E 04 10 */	stb r0, 0x410(r30)
lbl_8016CA14:
/* 8016CA14  88 1E 04 10 */	lbz r0, 0x410(r30)
/* 8016CA18  28 00 00 00 */	cmplwi r0, 0
/* 8016CA1C  41 82 00 A0 */	beq lbl_8016CABC
/* 8016CA20  7F C3 F3 78 */	mr r3, r30
/* 8016CA24  3C 80 00 08 */	lis r4, 0x0008 /* 0x00080080@ha */
/* 8016CA28  38 84 00 80 */	addi r4, r4, 0x0080 /* 0x00080080@l */
/* 8016CA2C  48 01 5F 55 */	bl chkFlag__9dCamera_cFUl
/* 8016CA30  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016CA34  41 82 00 48 */	beq lbl_8016CA7C
/* 8016CA38  38 61 02 34 */	addi r3, r1, 0x234
/* 8016CA3C  38 9E 00 90 */	addi r4, r30, 0x90
/* 8016CA40  38 BE 00 64 */	addi r5, r30, 0x64
/* 8016CA44  48 0F A0 F1 */	bl __mi__4cXyzCFRC3Vec
/* 8016CA48  38 61 02 28 */	addi r3, r1, 0x228
/* 8016CA4C  38 81 02 34 */	addi r4, r1, 0x234
/* 8016CA50  4B F2 AD A5 */	bl __ct__4cXyzFRC4cXyz
/* 8016CA54  38 61 02 28 */	addi r3, r1, 0x228
/* 8016CA58  4B F2 1D 39 */	bl abs__4cXyzCFv
/* 8016CA5C  D0 3E 04 30 */	stfs f1, 0x430(r30)
/* 8016CA60  38 61 02 28 */	addi r3, r1, 0x228
/* 8016CA64  38 80 FF FF */	li r4, -1
/* 8016CA68  4B E9 C7 1D */	bl __dt__4cXyzFv
/* 8016CA6C  38 61 02 34 */	addi r3, r1, 0x234
/* 8016CA70  38 80 FF FF */	li r4, -1
/* 8016CA74  4B E9 C7 11 */	bl __dt__4cXyzFv
/* 8016CA78  C2 1E 04 30 */	lfs f16, 0x430(r30)
lbl_8016CA7C:
/* 8016CA7C  C2 3E 04 30 */	lfs f17, 0x430(r30)
/* 8016CA80  C0 02 9D 34 */	lfs f0, lit_9398(r2)
/* 8016CA84  FC 13 00 40 */	fcmpo cr0, f19, f0
/* 8016CA88  40 80 00 08 */	bge lbl_8016CA90
/* 8016CA8C  C2 62 9D 68 */	lfs f19, lit_9788(r2)
lbl_8016CA90:
/* 8016CA90  C0 02 9D 68 */	lfs f0, lit_9788(r2)
/* 8016CA94  FC 12 00 40 */	fcmpo cr0, f18, f0
/* 8016CA98  40 80 00 08 */	bge lbl_8016CAA0
/* 8016CA9C  FE 40 00 90 */	fmr f18, f0
lbl_8016CAA0:
/* 8016CAA0  C3 02 9D 24 */	lfs f24, lit_8530(r2)
/* 8016CAA4  38 7E 04 38 */	addi r3, r30, 0x438
/* 8016CAA8  48 10 45 89 */	bl Degree__7cSAngleCFv
/* 8016CAAC  FE E0 08 90 */	fmr f23, f1
/* 8016CAB0  C2 C2 9D 68 */	lfs f22, lit_9788(r2)
/* 8016CAB4  C2 A2 9D 0C */	lfs f21, lit_8021(r2)
/* 8016CAB8  C2 82 9D D8 */	lfs f20, lit_10577(r2)
lbl_8016CABC:
/* 8016CABC  80 7E 01 84 */	lwz r3, 0x184(r30)
/* 8016CAC0  28 03 00 00 */	cmplwi r3, 0
/* 8016CAC4  41 82 00 30 */	beq lbl_8016CAF4
/* 8016CAC8  80 9E 01 98 */	lwz r4, 0x198(r30)
/* 8016CACC  3C 04 00 01 */	addis r0, r4, 1
/* 8016CAD0  28 00 FF FF */	cmplwi r0, 0xffff
/* 8016CAD4  41 82 00 20 */	beq lbl_8016CAF4
/* 8016CAD8  4B FD 47 E5 */	bl fopAcM_GetName__FPv
/* 8016CADC  7C 60 07 34 */	extsh r0, r3
/* 8016CAE0  2C 00 01 FC */	cmpwi r0, 0x1fc
/* 8016CAE4  41 82 00 10 */	beq lbl_8016CAF4
/* 8016CAE8  C2 E2 9C B8 */	lfs f23, lit_5662(r2)
/* 8016CAEC  C2 C2 9D 68 */	lfs f22, lit_9788(r2)
/* 8016CAF0  C3 42 9C B0 */	lfs f26, lit_5660(r2)
lbl_8016CAF4:
/* 8016CAF4  80 7E 01 84 */	lwz r3, 0x184(r30)
/* 8016CAF8  28 03 00 00 */	cmplwi r3, 0
/* 8016CAFC  41 82 00 44 */	beq lbl_8016CB40
/* 8016CB00  4B FD 47 BD */	bl fopAcM_GetName__FPv
/* 8016CB04  7C 60 07 34 */	extsh r0, r3
/* 8016CB08  2C 00 01 06 */	cmpwi r0, 0x106
/* 8016CB0C  40 82 00 18 */	bne lbl_8016CB24
/* 8016CB10  C2 A2 9D F4 */	lfs f21, lit_11168(r2)
/* 8016CB14  FE 80 A8 90 */	fmr f20, f21
/* 8016CB18  C2 62 9D 50 */	lfs f19, lit_9405(r2)
/* 8016CB1C  C2 42 9C E4 */	lfs f18, lit_6629(r2)
/* 8016CB20  48 00 00 20 */	b lbl_8016CB40
lbl_8016CB24:
/* 8016CB24  80 7E 01 84 */	lwz r3, 0x184(r30)
/* 8016CB28  4B FD 47 95 */	bl fopAcM_GetName__FPv
/* 8016CB2C  7C 60 07 34 */	extsh r0, r3
/* 8016CB30  2C 00 00 34 */	cmpwi r0, 0x34
/* 8016CB34  40 82 00 0C */	bne lbl_8016CB40
/* 8016CB38  C2 62 9D CC */	lfs f19, lit_10574(r2)
/* 8016CB3C  C2 42 9D 50 */	lfs f18, lit_9405(r2)
lbl_8016CB40:
/* 8016CB40  7F 63 DB 78 */	mr r3, r27
/* 8016CB44  48 01 5E 9D */	bl checkThrowDamage__9daPy_py_cCFv
/* 8016CB48  28 03 00 00 */	cmplwi r3, 0
/* 8016CB4C  41 82 00 20 */	beq lbl_8016CB6C
/* 8016CB50  3B 40 00 01 */	li r26, 1
/* 8016CB54  C2 E2 9D F0 */	lfs f23, lit_11167(r2)
/* 8016CB58  C2 C2 9C A0 */	lfs f22, lit_5656(r2)
/* 8016CB5C  C2 22 9C B4 */	lfs f17, lit_5661(r2)
/* 8016CB60  C2 02 9D F8 */	lfs f16, lit_11169(r2)
/* 8016CB64  C3 A2 9C E8 */	lfs f29, lit_6630(r2)
/* 8016CB68  C3 82 9D 0C */	lfs f28, lit_8021(r2)
lbl_8016CB6C:
/* 8016CB6C  80 7E 01 7C */	lwz r3, 0x17c(r30)
/* 8016CB70  38 80 00 00 */	li r4, 0
/* 8016CB74  4B FF F7 F5 */	bl func_8016C368
/* 8016CB78  28 03 00 00 */	cmplwi r3, 0
/* 8016CB7C  40 82 00 1C */	bne lbl_8016CB98
/* 8016CB80  80 7E 01 7C */	lwz r3, 0x17c(r30)
/* 8016CB84  3C 80 01 20 */	lis r4, 0x120
/* 8016CB88  4B FF F7 A9 */	bl func_8016C330
/* 8016CB8C  28 03 00 00 */	cmplwi r3, 0
/* 8016CB90  40 82 00 08 */	bne lbl_8016CB98
/* 8016CB94  3B 40 00 01 */	li r26, 1
lbl_8016CB98:
/* 8016CB98  48 01 5E 05 */	bl dComIfGp_getAttention__Fv
/* 8016CB9C  48 00 18 89 */	bl LockEdge__12dAttention_cFv
/* 8016CBA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016CBA4  41 82 00 14 */	beq lbl_8016CBB8
/* 8016CBA8  38 00 00 00 */	li r0, 0
/* 8016CBAC  90 1E 01 74 */	stw r0, 0x174(r30)
/* 8016CBB0  90 1E 01 60 */	stw r0, 0x160(r30)
/* 8016CBB4  98 1E 04 12 */	stb r0, 0x412(r30)
lbl_8016CBB8:
/* 8016CBB8  38 61 01 60 */	addi r3, r1, 0x160
/* 8016CBBC  48 00 18 65 */	bl __ct__7cSGlobeFv
/* 8016CBC0  7F 83 E3 78 */	mr r3, r28
/* 8016CBC4  4B F0 6A 19 */	bl LockonReleaseDistanse__12dAttention_cFv
/* 8016CBC8  FD E0 08 90 */	fmr f15, f1
/* 8016CBCC  80 BE 01 84 */	lwz r5, 0x184(r30)
/* 8016CBD0  28 05 00 00 */	cmplwi r5, 0
/* 8016CBD4  41 82 01 B4 */	beq lbl_8016CD88
/* 8016CBD8  38 61 02 1C */	addi r3, r1, 0x21c
/* 8016CBDC  7F C4 F3 78 */	mr r4, r30
/* 8016CBE0  4B F2 AB 3D */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8016CBE4  38 61 02 B8 */	addi r3, r1, 0x2b8
/* 8016CBE8  38 81 02 1C */	addi r4, r1, 0x21c
/* 8016CBEC  4B F2 AC 09 */	bl __ct__4cXyzFRC4cXyz
/* 8016CBF0  38 61 02 1C */	addi r3, r1, 0x21c
/* 8016CBF4  38 80 FF FF */	li r4, -1
/* 8016CBF8  4B E9 C5 8D */	bl __dt__4cXyzFv
/* 8016CBFC  38 61 02 10 */	addi r3, r1, 0x210
/* 8016CC00  7F C4 F3 78 */	mr r4, r30
/* 8016CC04  80 BE 01 80 */	lwz r5, 0x180(r30)
/* 8016CC08  4B F2 AB 15 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8016CC0C  38 61 02 AC */	addi r3, r1, 0x2ac
/* 8016CC10  38 81 02 10 */	addi r4, r1, 0x210
/* 8016CC14  4B F2 AB E1 */	bl __ct__4cXyzFRC4cXyz
/* 8016CC18  38 61 02 10 */	addi r3, r1, 0x210
/* 8016CC1C  38 80 FF FF */	li r4, -1
/* 8016CC20  4B E9 C5 65 */	bl __dt__4cXyzFv
/* 8016CC24  80 1E 01 A4 */	lwz r0, 0x1a4(r30)
/* 8016CC28  2C 00 00 06 */	cmpwi r0, 6
/* 8016CC2C  40 82 00 4C */	bne lbl_8016CC78
/* 8016CC30  38 61 02 04 */	addi r3, r1, 0x204
/* 8016CC34  7F C4 F3 78 */	mr r4, r30
/* 8016CC38  80 BE 01 84 */	lwz r5, 0x184(r30)
/* 8016CC3C  4B F2 AB 21 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8016CC40  C0 01 02 04 */	lfs f0, 0x204(r1)
/* 8016CC44  D0 01 02 B8 */	stfs f0, 0x2b8(r1)
/* 8016CC48  38 61 02 04 */	addi r3, r1, 0x204
/* 8016CC4C  38 80 FF FF */	li r4, -1
/* 8016CC50  4B E9 C5 35 */	bl __dt__4cXyzFv
/* 8016CC54  38 61 01 F8 */	addi r3, r1, 0x1f8
/* 8016CC58  7F C4 F3 78 */	mr r4, r30
/* 8016CC5C  80 BE 01 84 */	lwz r5, 0x184(r30)
/* 8016CC60  4B F2 AA FD */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8016CC64  C0 01 02 00 */	lfs f0, 0x200(r1)
/* 8016CC68  D0 01 02 C0 */	stfs f0, 0x2c0(r1)
/* 8016CC6C  38 61 01 F8 */	addi r3, r1, 0x1f8
/* 8016CC70  38 80 FF FF */	li r4, -1
/* 8016CC74  4B E9 C5 11 */	bl __dt__4cXyzFv
lbl_8016CC78:
/* 8016CC78  80 7E 01 7C */	lwz r3, 0x17c(r30)
/* 8016CC7C  3C 80 02 00 */	lis r4, 0x0200 /* 0x02000008@ha */
/* 8016CC80  38 84 00 08 */	addi r4, r4, 0x0008 /* 0x02000008@l */
/* 8016CC84  4B FF F6 E5 */	bl func_8016C368
/* 8016CC88  28 03 00 00 */	cmplwi r3, 0
/* 8016CC8C  41 82 00 68 */	beq lbl_8016CCF4
/* 8016CC90  38 61 02 A0 */	addi r3, r1, 0x2a0
/* 8016CC94  C0 22 9C A0 */	lfs f1, lit_5656(r2)
/* 8016CC98  FC 40 08 90 */	fmr f2, f1
/* 8016CC9C  C0 62 9D FC */	lfs f3, lit_11170(r2)
/* 8016CCA0  4B FD 4C BD */	bl __ct__4cXyzFfff
/* 8016CCA4  38 61 00 E8 */	addi r3, r1, 0xe8
/* 8016CCA8  7F C4 F3 78 */	mr r4, r30
/* 8016CCAC  80 BE 01 80 */	lwz r5, 0x180(r30)
/* 8016CCB0  4B F2 AA 89 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8016CCB4  38 61 01 EC */	addi r3, r1, 0x1ec
/* 8016CCB8  38 81 02 A0 */	addi r4, r1, 0x2a0
/* 8016CCBC  38 A1 00 E8 */	addi r5, r1, 0xe8
/* 8016CCC0  4B F1 B6 C5 */	bl xyzRotateY__8dCamMathFR4cXyz7cSAngle
/* 8016CCC4  38 61 02 AC */	addi r3, r1, 0x2ac
/* 8016CCC8  38 81 01 EC */	addi r4, r1, 0x1ec
/* 8016CCCC  4B F2 1C 39 */	bl __apl__4cXyzFRC3Vec
/* 8016CCD0  38 61 01 EC */	addi r3, r1, 0x1ec
/* 8016CCD4  38 80 FF FF */	li r4, -1
/* 8016CCD8  4B E9 C4 AD */	bl __dt__4cXyzFv
/* 8016CCDC  38 61 00 E8 */	addi r3, r1, 0xe8
/* 8016CCE0  38 80 FF FF */	li r4, -1
/* 8016CCE4  4B EC 38 2D */	bl __dt__7cSAngleFv
/* 8016CCE8  38 61 02 A0 */	addi r3, r1, 0x2a0
/* 8016CCEC  38 80 FF FF */	li r4, -1
/* 8016CCF0  4B E9 C4 95 */	bl __dt__4cXyzFv
lbl_8016CCF4:
/* 8016CCF4  38 61 01 E0 */	addi r3, r1, 0x1e0
/* 8016CCF8  38 81 02 B8 */	addi r4, r1, 0x2b8
/* 8016CCFC  38 A1 02 AC */	addi r5, r1, 0x2ac
/* 8016CD00  48 0F 9E 35 */	bl __mi__4cXyzCFRC3Vec
/* 8016CD04  38 61 01 60 */	addi r3, r1, 0x160
/* 8016CD08  38 81 01 E0 */	addi r4, r1, 0x1e0
/* 8016CD0C  48 10 4D 65 */	bl Val__7cSGlobeFRC4cXyz
/* 8016CD10  38 61 01 E0 */	addi r3, r1, 0x1e0
/* 8016CD14  38 80 FF FF */	li r4, -1
/* 8016CD18  4B E9 C4 6D */	bl __dt__4cXyzFv
/* 8016CD1C  80 7E 01 84 */	lwz r3, 0x184(r30)
/* 8016CD20  A8 03 05 4E */	lha r0, 0x54e(r3)
/* 8016CD24  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 8016CD28  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8016CD2C  90 01 03 CC */	stw r0, 0x3cc(r1)
/* 8016CD30  3C 00 43 30 */	lis r0, 0x4330
/* 8016CD34  90 01 03 C8 */	stw r0, 0x3c8(r1)
/* 8016CD38  C8 01 03 C8 */	lfd f0, 0x3c8(r1)
/* 8016CD3C  EC 20 08 28 */	fsubs f1, f0, f1
/* 8016CD40  C0 01 01 60 */	lfs f0, 0x160(r1)
/* 8016CD44  EC 01 00 2A */	fadds f0, f1, f0
/* 8016CD48  D0 01 01 60 */	stfs f0, 0x160(r1)
/* 8016CD4C  ED E0 78 24 */	fdivs f15, f0, f15
/* 8016CD50  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 8016CD54  FC 0F 00 40 */	fcmpo cr0, f15, f0
/* 8016CD58  40 81 00 08 */	ble lbl_8016CD60
/* 8016CD5C  FD E0 00 90 */	fmr f15, f0
lbl_8016CD60:
/* 8016CD60  38 61 02 B8 */	addi r3, r1, 0x2b8
/* 8016CD64  38 81 02 AC */	addi r4, r1, 0x2ac
/* 8016CD68  4B F1 B6 85 */	bl xyzHorizontalDistance__8dCamMathFR4cXyzR4cXyz
/* 8016CD6C  38 61 02 AC */	addi r3, r1, 0x2ac
/* 8016CD70  38 80 FF FF */	li r4, -1
/* 8016CD74  4B E9 C4 11 */	bl __dt__4cXyzFv
/* 8016CD78  38 61 02 B8 */	addi r3, r1, 0x2b8
/* 8016CD7C  38 80 FF FF */	li r4, -1
/* 8016CD80  4B E9 C4 05 */	bl __dt__4cXyzFv
/* 8016CD84  48 00 00 38 */	b lbl_8016CDBC
lbl_8016CD88:
/* 8016CD88  38 61 00 E4 */	addi r3, r1, 0xe4
/* 8016CD8C  7F C4 F3 78 */	mr r4, r30
/* 8016CD90  80 BE 01 80 */	lwz r5, 0x180(r30)
/* 8016CD94  4B F2 A9 A5 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8016CD98  38 61 01 60 */	addi r3, r1, 0x160
/* 8016CD9C  C0 3E 09 B0 */	lfs f1, 0x9b0(r30)
/* 8016CDA0  38 8D 8C 08 */	la r4, _0__7cSAngle(r13) /* 80451188-_SDA_BASE_ */
/* 8016CDA4  38 A1 00 E4 */	addi r5, r1, 0xe4
/* 8016CDA8  48 10 4C 61 */	bl Val__7cSGlobeFfRC7cSAngleRC7cSAngle
/* 8016CDAC  38 61 00 E4 */	addi r3, r1, 0xe4
/* 8016CDB0  38 80 FF FF */	li r4, -1
/* 8016CDB4  4B EC 37 5D */	bl __dt__7cSAngleFv
/* 8016CDB8  C1 E2 9C A8 */	lfs f15, lit_5658(r2)
lbl_8016CDBC:
/* 8016CDBC  38 61 01 40 */	addi r3, r1, 0x140
/* 8016CDC0  3B 21 01 66 */	addi r25, r1, 0x166
/* 8016CDC4  7F 24 CB 78 */	mr r4, r25
/* 8016CDC8  48 10 41 A1 */	bl __ct__7cSAngleFRC7cSAngle
/* 8016CDCC  FC 20 98 90 */	fmr f1, f19
/* 8016CDD0  FC 40 90 90 */	fmr f2, f18
/* 8016CDD4  FC 60 78 90 */	fmr f3, f15
/* 8016CDD8  48 00 16 39 */	bl func_8016E410
/* 8016CDDC  38 61 01 3C */	addi r3, r1, 0x13c
/* 8016CDE0  48 10 41 E9 */	bl __ct__7cSAngleFf
/* 8016CDE4  7F 63 DB 78 */	mr r3, r27
/* 8016CDE8  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 8016CDEC  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8016CDF0  7D 89 03 A6 */	mtctr r12
/* 8016CDF4  4E 80 04 21 */	bctrl 
/* 8016CDF8  28 03 00 00 */	cmplwi r3, 0
/* 8016CDFC  41 82 00 2C */	beq lbl_8016CE28
/* 8016CE00  38 61 00 E0 */	addi r3, r1, 0xe0
/* 8016CE04  7F C4 F3 78 */	mr r4, r30
/* 8016CE08  80 BE 01 80 */	lwz r5, 0x180(r30)
/* 8016CE0C  4B F2 A9 2D */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8016CE10  38 61 01 40 */	addi r3, r1, 0x140
/* 8016CE14  38 81 00 E0 */	addi r4, r1, 0xe0
/* 8016CE18  48 10 41 E1 */	bl Val__7cSAngleFRC7cSAngle
/* 8016CE1C  38 61 00 E0 */	addi r3, r1, 0xe0
/* 8016CE20  38 80 FF FF */	li r4, -1
/* 8016CE24  4B EC 36 ED */	bl __dt__7cSAngleFv
lbl_8016CE28:
/* 8016CE28  3A A0 00 00 */	li r21, 0
/* 8016CE2C  80 7E 01 7C */	lwz r3, 0x17c(r30)
/* 8016CE30  38 80 01 00 */	li r4, 0x100
/* 8016CE34  4B FF F5 35 */	bl func_8016C368
/* 8016CE38  80 7E 01 7C */	lwz r3, 0x17c(r30)
/* 8016CE3C  3C 80 02 00 */	lis r4, 0x0200 /* 0x02000008@ha */
/* 8016CE40  38 84 00 08 */	addi r4, r4, 0x0008 /* 0x02000008@l */
/* 8016CE44  4B FF F5 25 */	bl func_8016C368
/* 8016CE48  28 03 00 00 */	cmplwi r3, 0
/* 8016CE4C  41 82 00 08 */	beq lbl_8016CE54
/* 8016CE50  3A A0 00 01 */	li r21, 1
lbl_8016CE54:
/* 8016CE54  7F 63 DB 78 */	mr r3, r27
/* 8016CE58  4B FD 46 75 */	bl checkMagneBootsOn__9daPy_py_cCFv
/* 8016CE5C  28 03 00 00 */	cmplwi r3, 0
/* 8016CE60  41 82 00 2C */	beq lbl_8016CE8C
/* 8016CE64  7F 63 DB 78 */	mr r3, r27
/* 8016CE68  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 8016CE6C  81 8C 01 C4 */	lwz r12, 0x1c4(r12)
/* 8016CE70  7D 89 03 A6 */	mtctr r12
/* 8016CE74  4E 80 04 21 */	bctrl 
/* 8016CE78  C0 23 00 04 */	lfs f1, 4(r3)
/* 8016CE7C  48 0F B3 95 */	bl cBgW_CheckBWall__Ff
/* 8016CE80  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016CE84  41 82 00 08 */	beq lbl_8016CE8C
/* 8016CE88  3A A0 00 01 */	li r21, 1
lbl_8016CE8C:
/* 8016CE8C  80 7E 01 74 */	lwz r3, 0x174(r30)
/* 8016CE90  7C 03 E8 40 */	cmplw r3, r29
/* 8016CE94  40 80 00 5C */	bge lbl_8016CEF0
/* 8016CE98  88 1E 04 12 */	lbz r0, 0x412(r30)
/* 8016CE9C  28 00 00 00 */	cmplwi r0, 0
/* 8016CEA0  40 82 00 50 */	bne lbl_8016CEF0
/* 8016CEA4  C8 22 9D 60 */	lfd f1, lit_9410(r2)
/* 8016CEA8  90 61 03 CC */	stw r3, 0x3cc(r1)
/* 8016CEAC  3C 60 43 30 */	lis r3, 0x4330
/* 8016CEB0  90 61 03 C8 */	stw r3, 0x3c8(r1)
/* 8016CEB4  C8 01 03 C8 */	lfd f0, 0x3c8(r1)
/* 8016CEB8  EC 40 08 28 */	fsubs f2, f0, f1
/* 8016CEBC  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 8016CEC0  6F A0 80 00 */	xoris r0, r29, 0x8000
/* 8016CEC4  90 01 03 D4 */	stw r0, 0x3d4(r1)
/* 8016CEC8  90 61 03 D0 */	stw r3, 0x3d0(r1)
/* 8016CECC  C8 01 03 D0 */	lfd f0, 0x3d0(r1)
/* 8016CED0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8016CED4  EC 22 00 24 */	fdivs f1, f2, f0
/* 8016CED8  C0 42 9C 90 */	lfs f2, lit_4445(r2)
/* 8016CEDC  4B F1 B2 61 */	bl rationalBezierRatio__8dCamMathFff
/* 8016CEE0  FD C0 08 90 */	fmr f14, f1
/* 8016CEE4  38 61 01 3C */	addi r3, r1, 0x13c
/* 8016CEE8  48 10 43 CD */	bl __amu__7cSAngleFf
/* 8016CEEC  48 00 00 18 */	b lbl_8016CF04
lbl_8016CEF0:
/* 8016CEF0  7C 03 E8 40 */	cmplw r3, r29
/* 8016CEF4  41 80 00 10 */	blt lbl_8016CF04
/* 8016CEF8  38 00 00 01 */	li r0, 1
/* 8016CEFC  98 1E 04 12 */	stb r0, 0x412(r30)
/* 8016CF00  C1 C2 9C A8 */	lfs f14, lit_5658(r2)
lbl_8016CF04:
/* 8016CF04  3A FE 00 62 */	addi r23, r30, 0x62
/* 8016CF08  7E E3 BB 78 */	mr r3, r23
/* 8016CF0C  48 10 41 DD */	bl Inv__7cSAngleCFv
/* 8016CF10  7C 64 1B 78 */	mr r4, r3
/* 8016CF14  38 61 00 DC */	addi r3, r1, 0xdc
/* 8016CF18  38 A1 01 40 */	addi r5, r1, 0x140
/* 8016CF1C  48 10 44 05 */	bl __mi__FsRC7cSAngle
/* 8016CF20  38 61 01 38 */	addi r3, r1, 0x138
/* 8016CF24  38 81 00 DC */	addi r4, r1, 0xdc
/* 8016CF28  48 10 40 41 */	bl __ct__7cSAngleFRC7cSAngle
/* 8016CF2C  38 61 00 DC */	addi r3, r1, 0xdc
/* 8016CF30  38 80 FF FF */	li r4, -1
/* 8016CF34  4B EC 35 DD */	bl __dt__7cSAngleFv
/* 8016CF38  80 1E 01 74 */	lwz r0, 0x174(r30)
/* 8016CF3C  28 00 00 00 */	cmplwi r0, 0
/* 8016CF40  41 82 00 5C */	beq lbl_8016CF9C
/* 8016CF44  7C 00 E8 40 */	cmplw r0, r29
/* 8016CF48  40 80 00 54 */	bge lbl_8016CF9C
/* 8016CF4C  80 1E 04 14 */	lwz r0, 0x414(r30)
/* 8016CF50  2C 00 00 00 */	cmpwi r0, 0
/* 8016CF54  40 82 00 38 */	bne lbl_8016CF8C
/* 8016CF58  38 61 01 40 */	addi r3, r1, 0x140
/* 8016CF5C  38 81 01 3C */	addi r4, r1, 0x13c
/* 8016CF60  48 10 42 89 */	bl __ami__7cSAngleFRC7cSAngle
/* 8016CF64  38 61 00 D8 */	addi r3, r1, 0xd8
/* 8016CF68  38 81 01 38 */	addi r4, r1, 0x138
/* 8016CF6C  48 10 41 DD */	bl __mi__7cSAngleCFv
/* 8016CF70  38 61 01 38 */	addi r3, r1, 0x138
/* 8016CF74  38 81 00 D8 */	addi r4, r1, 0xd8
/* 8016CF78  48 01 5D 31 */	bl __as__7cSAngleFRC7cSAngle
/* 8016CF7C  38 61 00 D8 */	addi r3, r1, 0xd8
/* 8016CF80  38 80 FF FF */	li r4, -1
/* 8016CF84  4B EC 35 8D */	bl __dt__7cSAngleFv
/* 8016CF88  48 00 00 74 */	b lbl_8016CFFC
lbl_8016CF8C:
/* 8016CF8C  38 61 01 40 */	addi r3, r1, 0x140
/* 8016CF90  38 81 01 3C */	addi r4, r1, 0x13c
/* 8016CF94  48 10 42 41 */	bl __apl__7cSAngleFRC7cSAngle
/* 8016CF98  48 00 00 64 */	b lbl_8016CFFC
lbl_8016CF9C:
/* 8016CF9C  A8 61 01 38 */	lha r3, 0x138(r1)
/* 8016CFA0  A8 0D 8C 08 */	lha r0, _0__7cSAngle(r13)
/* 8016CFA4  7C 03 00 00 */	cmpw r3, r0
/* 8016CFA8  40 80 00 40 */	bge lbl_8016CFE8
/* 8016CFAC  38 00 00 00 */	li r0, 0
/* 8016CFB0  90 1E 04 14 */	stw r0, 0x414(r30)
/* 8016CFB4  38 61 01 40 */	addi r3, r1, 0x140
/* 8016CFB8  38 81 01 3C */	addi r4, r1, 0x13c
/* 8016CFBC  48 10 42 2D */	bl __ami__7cSAngleFRC7cSAngle
/* 8016CFC0  38 61 00 D4 */	addi r3, r1, 0xd4
/* 8016CFC4  38 81 01 38 */	addi r4, r1, 0x138
/* 8016CFC8  48 10 41 81 */	bl __mi__7cSAngleCFv
/* 8016CFCC  38 61 01 38 */	addi r3, r1, 0x138
/* 8016CFD0  38 81 00 D4 */	addi r4, r1, 0xd4
/* 8016CFD4  48 01 5C D5 */	bl __as__7cSAngleFRC7cSAngle
/* 8016CFD8  38 61 00 D4 */	addi r3, r1, 0xd4
/* 8016CFDC  38 80 FF FF */	li r4, -1
/* 8016CFE0  4B EC 35 31 */	bl __dt__7cSAngleFv
/* 8016CFE4  48 00 00 18 */	b lbl_8016CFFC
lbl_8016CFE8:
/* 8016CFE8  38 00 00 01 */	li r0, 1
/* 8016CFEC  90 1E 04 14 */	stw r0, 0x414(r30)
/* 8016CFF0  38 61 01 40 */	addi r3, r1, 0x140
/* 8016CFF4  38 81 01 3C */	addi r4, r1, 0x13c
/* 8016CFF8  48 10 41 DD */	bl __apl__7cSAngleFRC7cSAngle
lbl_8016CFFC:
/* 8016CFFC  38 61 01 D4 */	addi r3, r1, 0x1d4
/* 8016D000  7F C4 F3 78 */	mr r4, r30
/* 8016D004  80 BE 01 80 */	lwz r5, 0x180(r30)
/* 8016D008  4B F2 A7 15 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8016D00C  38 61 02 94 */	addi r3, r1, 0x294
/* 8016D010  38 81 01 D4 */	addi r4, r1, 0x1d4
/* 8016D014  4B F2 A7 E1 */	bl __ct__4cXyzFRC4cXyz
/* 8016D018  38 61 01 D4 */	addi r3, r1, 0x1d4
/* 8016D01C  38 80 FF FF */	li r4, -1
/* 8016D020  4B E9 C1 65 */	bl __dt__4cXyzFv
/* 8016D024  3A 80 00 00 */	li r20, 0
/* 8016D028  7F C3 F3 78 */	mr r3, r30
/* 8016D02C  3C 80 00 08 */	lis r4, 0x0008 /* 0x00080080@ha */
/* 8016D030  38 84 00 80 */	addi r4, r4, 0x0080 /* 0x00080080@l */
/* 8016D034  48 01 59 4D */	bl chkFlag__9dCamera_cFUl
/* 8016D038  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016D03C  41 82 00 78 */	beq lbl_8016D0B4
/* 8016D040  38 61 01 C8 */	addi r3, r1, 0x1c8
/* 8016D044  7F C4 F3 78 */	mr r4, r30
/* 8016D048  80 BE 01 80 */	lwz r5, 0x180(r30)
/* 8016D04C  4B F2 A6 D1 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8016D050  38 61 02 88 */	addi r3, r1, 0x288
/* 8016D054  38 81 01 C8 */	addi r4, r1, 0x1c8
/* 8016D058  4B F2 A7 9D */	bl __ct__4cXyzFRC4cXyz
/* 8016D05C  38 61 01 C8 */	addi r3, r1, 0x1c8
/* 8016D060  38 80 FF FF */	li r4, -1
/* 8016D064  4B E9 C1 21 */	bl __dt__4cXyzFv
/* 8016D068  7F C3 F3 78 */	mr r3, r30
/* 8016D06C  38 81 02 88 */	addi r4, r1, 0x288
/* 8016D070  4B FF 81 0D */	bl pointInSight__9dCamera_cFP4cXyz
/* 8016D074  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016D078  40 82 00 30 */	bne lbl_8016D0A8
/* 8016D07C  80 1E 03 FC */	lwz r0, 0x3fc(r30)
/* 8016D080  2C 00 00 00 */	cmpwi r0, 0
/* 8016D084  40 82 00 18 */	bne lbl_8016D09C
/* 8016D088  80 1E 04 14 */	lwz r0, 0x414(r30)
/* 8016D08C  20 60 00 01 */	subfic r3, r0, 1
/* 8016D090  30 03 FF FF */	addic r0, r3, -1
/* 8016D094  7C 00 19 10 */	subfe r0, r0, r3
/* 8016D098  90 1E 04 18 */	stw r0, 0x418(r30)
lbl_8016D09C:
/* 8016D09C  3A 80 00 01 */	li r20, 1
/* 8016D0A0  38 00 00 1E */	li r0, 0x1e
/* 8016D0A4  90 1E 03 FC */	stw r0, 0x3fc(r30)
lbl_8016D0A8:
/* 8016D0A8  38 61 02 88 */	addi r3, r1, 0x288
/* 8016D0AC  38 80 FF FF */	li r4, -1
/* 8016D0B0  4B E9 C0 D5 */	bl __dt__4cXyzFv
lbl_8016D0B4:
/* 8016D0B4  80 7E 03 FC */	lwz r3, 0x3fc(r30)
/* 8016D0B8  2C 03 00 00 */	cmpwi r3, 0
/* 8016D0BC  41 82 00 38 */	beq lbl_8016D0F4
/* 8016D0C0  38 03 FF FF */	addi r0, r3, -1
/* 8016D0C4  90 1E 03 FC */	stw r0, 0x3fc(r30)
/* 8016D0C8  80 1E 03 FC */	lwz r0, 0x3fc(r30)
/* 8016D0CC  2C 00 00 00 */	cmpwi r0, 0
/* 8016D0D0  40 82 00 20 */	bne lbl_8016D0F0
/* 8016D0D4  C0 3E 01 C4 */	lfs f1, 0x1c4(r30)
/* 8016D0D8  C0 02 9D 0C */	lfs f0, lit_8021(r2)
/* 8016D0DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016D0E0  4C 40 13 82 */	cror 2, 0, 2
/* 8016D0E4  40 82 00 0C */	bne lbl_8016D0F0
/* 8016D0E8  38 00 00 01 */	li r0, 1
/* 8016D0EC  90 1E 03 FC */	stw r0, 0x3fc(r30)
lbl_8016D0F0:
/* 8016D0F0  3A 80 00 01 */	li r20, 1
lbl_8016D0F4:
/* 8016D0F4  C0 3E 01 DC */	lfs f1, 0x1dc(r30)
/* 8016D0F8  48 01 59 45 */	bl fabsf__3stdFf
/* 8016D0FC  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 8016D100  EE 40 08 28 */	fsubs f18, f0, f1
/* 8016D104  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 8016D108  41 82 00 20 */	beq lbl_8016D128
/* 8016D10C  80 1E 01 74 */	lwz r0, 0x174(r30)
/* 8016D110  28 00 00 00 */	cmplwi r0, 0
/* 8016D114  40 82 00 0C */	bne lbl_8016D120
/* 8016D118  C0 02 9C E0 */	lfs f0, lit_6180(r2)
/* 8016D11C  D0 1E 04 44 */	stfs f0, 0x444(r30)
lbl_8016D120:
/* 8016D120  C0 02 9C EC */	lfs f0, lit_6766(r2)
/* 8016D124  48 00 00 20 */	b lbl_8016D144
lbl_8016D128:
/* 8016D128  88 1E 03 D0 */	lbz r0, 0x3d0(r30)
/* 8016D12C  28 00 00 00 */	cmplwi r0, 0
/* 8016D130  40 82 00 0C */	bne lbl_8016D13C
/* 8016D134  C0 1E 09 AC */	lfs f0, 0x9ac(r30)
/* 8016D138  48 00 00 0C */	b lbl_8016D144
lbl_8016D13C:
/* 8016D13C  C0 1E 09 A8 */	lfs f0, 0x9a8(r30)
/* 8016D140  EC 0E 00 32 */	fmuls f0, f14, f0
lbl_8016D144:
/* 8016D144  C0 5E 04 44 */	lfs f2, 0x444(r30)
/* 8016D148  EC 20 10 28 */	fsubs f1, f0, f2
/* 8016D14C  C0 1E 09 90 */	lfs f0, 0x990(r30)
/* 8016D150  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016D154  EC 02 00 2A */	fadds f0, f2, f0
/* 8016D158  D0 1E 04 44 */	stfs f0, 0x444(r30)
/* 8016D15C  C0 01 02 94 */	lfs f0, 0x294(r1)
/* 8016D160  D0 1E 04 04 */	stfs f0, 0x404(r30)
/* 8016D164  C0 01 02 9C */	lfs f0, 0x29c(r1)
/* 8016D168  D0 1E 04 0C */	stfs f0, 0x40c(r30)
/* 8016D16C  56 80 06 3F */	clrlwi. r0, r20, 0x18
/* 8016D170  41 82 00 20 */	beq lbl_8016D190
/* 8016D174  FC 20 D8 90 */	fmr f1, f27
/* 8016D178  FC 40 D0 90 */	fmr f2, f26
/* 8016D17C  FC 60 78 90 */	fmr f3, f15
/* 8016D180  48 00 12 91 */	bl func_8016E410
/* 8016D184  C0 02 9E 00 */	lfs f0, lit_11171(r2)
/* 8016D188  EC 20 08 2A */	fadds f1, f0, f1
/* 8016D18C  48 00 00 14 */	b lbl_8016D1A0
lbl_8016D190:
/* 8016D190  FC 20 D8 90 */	fmr f1, f27
/* 8016D194  FC 40 D0 90 */	fmr f2, f26
/* 8016D198  FC 60 78 90 */	fmr f3, f15
/* 8016D19C  48 00 12 75 */	bl func_8016E410
lbl_8016D1A0:
/* 8016D1A0  C0 7E 04 08 */	lfs f3, 0x408(r30)
/* 8016D1A4  C0 5E 04 44 */	lfs f2, 0x444(r30)
/* 8016D1A8  C0 01 02 98 */	lfs f0, 0x298(r1)
/* 8016D1AC  EC 00 08 2A */	fadds f0, f0, f1
/* 8016D1B0  EC 00 18 28 */	fsubs f0, f0, f3
/* 8016D1B4  EC 02 00 32 */	fmuls f0, f2, f0
/* 8016D1B8  EC 03 00 2A */	fadds f0, f3, f0
/* 8016D1BC  D0 1E 04 08 */	stfs f0, 0x408(r30)
/* 8016D1C0  80 1E 01 74 */	lwz r0, 0x174(r30)
/* 8016D1C4  28 00 00 00 */	cmplwi r0, 0
/* 8016D1C8  40 82 00 8C */	bne lbl_8016D254
/* 8016D1CC  38 61 02 7C */	addi r3, r1, 0x27c
/* 8016D1D0  38 9E 04 04 */	addi r4, r30, 0x404
/* 8016D1D4  4B F2 A6 21 */	bl __ct__4cXyzFRC4cXyz
/* 8016D1D8  38 61 01 BC */	addi r3, r1, 0x1bc
/* 8016D1DC  38 9E 00 64 */	addi r4, r30, 0x64
/* 8016D1E0  38 A1 02 7C */	addi r5, r1, 0x27c
/* 8016D1E4  48 0F 99 51 */	bl __mi__4cXyzCFRC3Vec
/* 8016D1E8  38 7E 04 1C */	addi r3, r30, 0x41c
/* 8016D1EC  38 81 01 BC */	addi r4, r1, 0x1bc
/* 8016D1F0  48 10 48 81 */	bl Val__7cSGlobeFRC4cXyz
/* 8016D1F4  38 61 01 BC */	addi r3, r1, 0x1bc
/* 8016D1F8  38 80 FF FF */	li r4, -1
/* 8016D1FC  4B E9 BF 89 */	bl __dt__4cXyzFv
/* 8016D200  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 8016D204  C0 01 02 7C */	lfs f0, 0x27c(r1)
/* 8016D208  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8016D20C  40 82 00 3C */	bne lbl_8016D248
/* 8016D210  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 8016D214  C0 01 02 84 */	lfs f0, 0x284(r1)
/* 8016D218  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8016D21C  40 82 00 2C */	bne lbl_8016D248
/* 8016D220  38 61 00 D0 */	addi r3, r1, 0xd0
/* 8016D224  7F C4 F3 78 */	mr r4, r30
/* 8016D228  80 BE 01 80 */	lwz r5, 0x180(r30)
/* 8016D22C  4B F2 A5 0D */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8016D230  38 7E 04 1C */	addi r3, r30, 0x41c
/* 8016D234  38 81 00 D0 */	addi r4, r1, 0xd0
/* 8016D238  4B F2 16 5D */	bl U__7cSGlobeFRC7cSAngle
/* 8016D23C  38 61 00 D0 */	addi r3, r1, 0xd0
/* 8016D240  38 80 FF FF */	li r4, -1
/* 8016D244  4B EC 32 CD */	bl __dt__7cSAngleFv
lbl_8016D248:
/* 8016D248  38 61 02 7C */	addi r3, r1, 0x27c
/* 8016D24C  38 80 FF FF */	li r4, -1
/* 8016D250  4B E9 BF 35 */	bl __dt__4cXyzFv
lbl_8016D254:
/* 8016D254  80 1E 01 84 */	lwz r0, 0x184(r30)
/* 8016D258  28 00 00 00 */	cmplwi r0, 0
/* 8016D25C  41 82 00 A8 */	beq lbl_8016D304
/* 8016D260  38 61 01 38 */	addi r3, r1, 0x138
/* 8016D264  48 10 3E BD */	bl Cos__7cSAngleCFv
/* 8016D268  FE 60 08 90 */	fmr f19, f1
/* 8016D26C  38 61 00 CC */	addi r3, r1, 0xcc
/* 8016D270  38 81 01 64 */	addi r4, r1, 0x164
/* 8016D274  48 10 3C F5 */	bl __ct__7cSAngleFRC7cSAngle
/* 8016D278  38 61 00 CC */	addi r3, r1, 0xcc
/* 8016D27C  48 10 3E A5 */	bl Cos__7cSAngleCFv
/* 8016D280  FF 40 08 90 */	fmr f26, f1
/* 8016D284  38 61 00 CC */	addi r3, r1, 0xcc
/* 8016D288  38 80 FF FF */	li r4, -1
/* 8016D28C  4B EC 32 85 */	bl __dt__7cSAngleFv
/* 8016D290  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 8016D294  FC 13 00 40 */	fcmpo cr0, f19, f0
/* 8016D298  40 80 00 08 */	bge lbl_8016D2A0
/* 8016D29C  FF 40 D0 50 */	fneg f26, f26
lbl_8016D2A0:
/* 8016D2A0  FC 20 D0 90 */	fmr f1, f26
/* 8016D2A4  48 01 5A 6D */	bl fabs__3stdFf
/* 8016D2A8  FF 60 08 90 */	fmr f27, f1
/* 8016D2AC  FC 20 98 90 */	fmr f1, f19
/* 8016D2B0  48 01 5A 61 */	bl fabs__3stdFf
/* 8016D2B4  FC 01 D8 40 */	fcmpo cr0, f1, f27
/* 8016D2B8  40 80 00 0C */	bge lbl_8016D2C4
/* 8016D2BC  FC 20 98 90 */	fmr f1, f19
/* 8016D2C0  48 00 00 08 */	b lbl_8016D2C8
lbl_8016D2C4:
/* 8016D2C4  FC 20 D0 90 */	fmr f1, f26
lbl_8016D2C8:
/* 8016D2C8  C0 02 9C 90 */	lfs f0, lit_4445(r2)
/* 8016D2CC  FC 19 00 40 */	fcmpo cr0, f25, f0
/* 8016D2D0  40 80 00 0C */	bge lbl_8016D2DC
/* 8016D2D4  FC 00 C8 90 */	fmr f0, f25
/* 8016D2D8  48 00 00 0C */	b lbl_8016D2E4
lbl_8016D2DC:
/* 8016D2DC  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 8016D2E0  EC 00 C8 28 */	fsubs f0, f0, f25
lbl_8016D2E4:
/* 8016D2E4  EC 21 00 32 */	fmuls f1, f1, f0
/* 8016D2E8  C0 01 01 60 */	lfs f0, 0x160(r1)
/* 8016D2EC  EC 59 00 32 */	fmuls f2, f25, f0
/* 8016D2F0  EC 21 00 32 */	fmuls f1, f1, f0
/* 8016D2F4  C8 01 03 E8 */	lfd f0, 0x3e8(r1)
/* 8016D2F8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8016D2FC  EE 62 00 28 */	fsubs f19, f2, f0
/* 8016D300  48 00 00 20 */	b lbl_8016D320
lbl_8016D304:
/* 8016D304  C0 22 9C 90 */	lfs f1, lit_4445(r2)
/* 8016D308  C0 01 01 60 */	lfs f0, 0x160(r1)
/* 8016D30C  EE 61 00 32 */	fmuls f19, f1, f0
/* 8016D310  38 61 01 38 */	addi r3, r1, 0x138
/* 8016D314  48 10 3E 0D */	bl Cos__7cSAngleCFv
/* 8016D318  EC 13 00 72 */	fmuls f0, f19, f1
/* 8016D31C  EE 73 00 2A */	fadds f19, f19, f0
lbl_8016D320:
/* 8016D320  38 61 01 34 */	addi r3, r1, 0x134
/* 8016D324  7F 24 CB 78 */	mr r4, r25
/* 8016D328  48 10 3C 41 */	bl __ct__7cSAngleFRC7cSAngle
/* 8016D32C  C0 5E 04 40 */	lfs f2, 0x440(r30)
/* 8016D330  EC 3C 10 28 */	fsubs f1, f28, f2
/* 8016D334  C0 1E 09 90 */	lfs f0, 0x990(r30)
/* 8016D338  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016D33C  EC 02 00 2A */	fadds f0, f2, f0
/* 8016D340  D0 1E 04 40 */	stfs f0, 0x440(r30)
/* 8016D344  C0 5E 04 3C */	lfs f2, 0x43c(r30)
/* 8016D348  EC 3D 10 28 */	fsubs f1, f29, f2
/* 8016D34C  C0 1E 09 90 */	lfs f0, 0x990(r30)
/* 8016D350  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016D354  EC 02 00 2A */	fadds f0, f2, f0
/* 8016D358  D0 1E 04 3C */	stfs f0, 0x43c(r30)
/* 8016D35C  38 61 00 C8 */	addi r3, r1, 0xc8
/* 8016D360  38 81 01 64 */	addi r4, r1, 0x164
/* 8016D364  3B 1E 04 20 */	addi r24, r30, 0x420
/* 8016D368  7F 05 C3 78 */	mr r5, r24
/* 8016D36C  48 10 3E 39 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8016D370  38 61 01 28 */	addi r3, r1, 0x128
/* 8016D374  38 81 00 C8 */	addi r4, r1, 0xc8
/* 8016D378  48 10 3B F1 */	bl __ct__7cSAngleFRC7cSAngle
/* 8016D37C  38 61 00 C8 */	addi r3, r1, 0xc8
/* 8016D380  38 80 FF FF */	li r4, -1
/* 8016D384  4B EC 31 8D */	bl __dt__7cSAngleFv
/* 8016D388  56 80 06 3F */	clrlwi. r0, r20, 0x18
/* 8016D38C  41 82 00 CC */	beq lbl_8016D458
/* 8016D390  C2 7E 04 1C */	lfs f19, 0x41c(r30)
/* 8016D394  38 61 01 28 */	addi r3, r1, 0x128
/* 8016D398  48 10 3D 89 */	bl Cos__7cSAngleCFv
/* 8016D39C  48 01 56 A1 */	bl fabsf__3stdFf
/* 8016D3A0  C0 02 9D 24 */	lfs f0, lit_8530(r2)
/* 8016D3A4  EC 00 04 F2 */	fmuls f0, f0, f19
/* 8016D3A8  EE 60 00 72 */	fmuls f19, f0, f1
/* 8016D3AC  38 61 00 C4 */	addi r3, r1, 0xc4
/* 8016D3B0  38 81 01 34 */	addi r4, r1, 0x134
/* 8016D3B4  3A 7E 04 22 */	addi r19, r30, 0x422
/* 8016D3B8  7E 65 9B 78 */	mr r5, r19
/* 8016D3BC  48 10 3D E9 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8016D3C0  38 61 00 C0 */	addi r3, r1, 0xc0
/* 8016D3C4  38 81 00 C4 */	addi r4, r1, 0xc4
/* 8016D3C8  C0 3E 04 40 */	lfs f1, 0x440(r30)
/* 8016D3CC  48 10 3E 99 */	bl __ml__7cSAngleCFf
/* 8016D3D0  38 61 00 BC */	addi r3, r1, 0xbc
/* 8016D3D4  7E 64 9B 78 */	mr r4, r19
/* 8016D3D8  38 A1 00 C0 */	addi r5, r1, 0xc0
/* 8016D3DC  48 10 3D 99 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8016D3E0  38 61 01 30 */	addi r3, r1, 0x130
/* 8016D3E4  38 81 00 BC */	addi r4, r1, 0xbc
/* 8016D3E8  48 10 3C 11 */	bl Val__7cSAngleFRC7cSAngle
/* 8016D3EC  38 61 00 BC */	addi r3, r1, 0xbc
/* 8016D3F0  38 80 FF FF */	li r4, -1
/* 8016D3F4  4B EC 31 1D */	bl __dt__7cSAngleFv
/* 8016D3F8  38 61 00 C0 */	addi r3, r1, 0xc0
/* 8016D3FC  38 80 FF FF */	li r4, -1
/* 8016D400  4B EC 31 11 */	bl __dt__7cSAngleFv
/* 8016D404  38 61 00 C4 */	addi r3, r1, 0xc4
/* 8016D408  38 80 FF FF */	li r4, -1
/* 8016D40C  4B EC 31 05 */	bl __dt__7cSAngleFv
/* 8016D410  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8016D414  38 81 01 28 */	addi r4, r1, 0x128
/* 8016D418  C0 22 9C E8 */	lfs f1, lit_6630(r2)
/* 8016D41C  48 10 3E 49 */	bl __ml__7cSAngleCFf
/* 8016D420  38 61 00 B4 */	addi r3, r1, 0xb4
/* 8016D424  7F 04 C3 78 */	mr r4, r24
/* 8016D428  38 A1 00 B8 */	addi r5, r1, 0xb8
/* 8016D42C  48 10 3D 49 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8016D430  38 61 01 2C */	addi r3, r1, 0x12c
/* 8016D434  38 81 00 B4 */	addi r4, r1, 0xb4
/* 8016D438  48 10 3B C1 */	bl Val__7cSAngleFRC7cSAngle
/* 8016D43C  38 61 00 B4 */	addi r3, r1, 0xb4
/* 8016D440  38 80 FF FF */	li r4, -1
/* 8016D444  4B EC 30 CD */	bl __dt__7cSAngleFv
/* 8016D448  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8016D44C  38 80 FF FF */	li r4, -1
/* 8016D450  4B EC 30 C1 */	bl __dt__7cSAngleFv
/* 8016D454  48 00 00 D0 */	b lbl_8016D524
lbl_8016D458:
/* 8016D458  C3 3E 04 1C */	lfs f25, 0x41c(r30)
/* 8016D45C  38 61 01 28 */	addi r3, r1, 0x128
/* 8016D460  48 10 3C C1 */	bl Cos__7cSAngleCFv
/* 8016D464  48 01 55 D9 */	bl fabsf__3stdFf
/* 8016D468  C0 5E 04 3C */	lfs f2, 0x43c(r30)
/* 8016D46C  EC 13 C8 28 */	fsubs f0, f19, f25
/* 8016D470  EC 02 00 32 */	fmuls f0, f2, f0
/* 8016D474  EC 00 00 72 */	fmuls f0, f0, f1
/* 8016D478  EE 79 00 2A */	fadds f19, f25, f0
/* 8016D47C  38 61 00 B0 */	addi r3, r1, 0xb0
/* 8016D480  38 81 01 34 */	addi r4, r1, 0x134
/* 8016D484  3A 7E 04 22 */	addi r19, r30, 0x422
/* 8016D488  7E 65 9B 78 */	mr r5, r19
/* 8016D48C  48 10 3D 19 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8016D490  38 61 00 AC */	addi r3, r1, 0xac
/* 8016D494  38 81 00 B0 */	addi r4, r1, 0xb0
/* 8016D498  C0 3E 04 40 */	lfs f1, 0x440(r30)
/* 8016D49C  48 10 3D C9 */	bl __ml__7cSAngleCFf
/* 8016D4A0  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8016D4A4  7E 64 9B 78 */	mr r4, r19
/* 8016D4A8  38 A1 00 AC */	addi r5, r1, 0xac
/* 8016D4AC  48 10 3C C9 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8016D4B0  38 61 01 30 */	addi r3, r1, 0x130
/* 8016D4B4  38 81 00 A8 */	addi r4, r1, 0xa8
/* 8016D4B8  48 10 3B 41 */	bl Val__7cSAngleFRC7cSAngle
/* 8016D4BC  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8016D4C0  38 80 FF FF */	li r4, -1
/* 8016D4C4  4B EC 30 4D */	bl __dt__7cSAngleFv
/* 8016D4C8  38 61 00 AC */	addi r3, r1, 0xac
/* 8016D4CC  38 80 FF FF */	li r4, -1
/* 8016D4D0  4B EC 30 41 */	bl __dt__7cSAngleFv
/* 8016D4D4  38 61 00 B0 */	addi r3, r1, 0xb0
/* 8016D4D8  38 80 FF FF */	li r4, -1
/* 8016D4DC  4B EC 30 35 */	bl __dt__7cSAngleFv
/* 8016D4E0  38 61 00 A4 */	addi r3, r1, 0xa4
/* 8016D4E4  38 81 01 28 */	addi r4, r1, 0x128
/* 8016D4E8  C0 3E 04 40 */	lfs f1, 0x440(r30)
/* 8016D4EC  48 10 3D 79 */	bl __ml__7cSAngleCFf
/* 8016D4F0  38 61 00 A0 */	addi r3, r1, 0xa0
/* 8016D4F4  7F 04 C3 78 */	mr r4, r24
/* 8016D4F8  38 A1 00 A4 */	addi r5, r1, 0xa4
/* 8016D4FC  48 10 3C 79 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8016D500  38 61 01 2C */	addi r3, r1, 0x12c
/* 8016D504  38 81 00 A0 */	addi r4, r1, 0xa0
/* 8016D508  48 10 3A F1 */	bl Val__7cSAngleFRC7cSAngle
/* 8016D50C  38 61 00 A0 */	addi r3, r1, 0xa0
/* 8016D510  38 80 FF FF */	li r4, -1
/* 8016D514  4B EC 2F FD */	bl __dt__7cSAngleFv
/* 8016D518  38 61 00 A4 */	addi r3, r1, 0xa4
/* 8016D51C  38 80 FF FF */	li r4, -1
/* 8016D520  4B EC 2F F1 */	bl __dt__7cSAngleFv
lbl_8016D524:
/* 8016D524  38 7E 04 1C */	addi r3, r30, 0x41c
/* 8016D528  FC 20 98 90 */	fmr f1, f19
/* 8016D52C  38 81 01 2C */	addi r4, r1, 0x12c
/* 8016D530  38 A1 01 30 */	addi r5, r1, 0x130
/* 8016D534  48 10 44 D5 */	bl Val__7cSGlobeFfRC7cSAngleRC7cSAngle
/* 8016D538  38 61 01 B0 */	addi r3, r1, 0x1b0
/* 8016D53C  38 9E 04 1C */	addi r4, r30, 0x41c
/* 8016D540  48 10 45 75 */	bl Xyz__7cSGlobeCFv
/* 8016D544  38 61 01 A4 */	addi r3, r1, 0x1a4
/* 8016D548  38 9E 04 04 */	addi r4, r30, 0x404
/* 8016D54C  38 A1 01 B0 */	addi r5, r1, 0x1b0
/* 8016D550  48 0F 95 95 */	bl __pl__4cXyzCFRC3Vec
/* 8016D554  38 7E 00 64 */	addi r3, r30, 0x64
/* 8016D558  38 81 01 A4 */	addi r4, r1, 0x1a4
/* 8016D55C  4B F2 A2 7D */	bl __as__4cXyzFRC4cXyz
/* 8016D560  38 61 01 A4 */	addi r3, r1, 0x1a4
/* 8016D564  38 80 FF FF */	li r4, -1
/* 8016D568  4B E9 BC 1D */	bl __dt__4cXyzFv
/* 8016D56C  38 61 01 B0 */	addi r3, r1, 0x1b0
/* 8016D570  38 80 FF FF */	li r4, -1
/* 8016D574  4B E9 BC 11 */	bl __dt__4cXyzFv
/* 8016D578  38 61 03 54 */	addi r3, r1, 0x354
/* 8016D57C  4B F0 A8 29 */	bl __ct__14dBgS_CamLinChkFv
/* 8016D580  80 1E 01 84 */	lwz r0, 0x184(r30)
/* 8016D584  28 00 00 00 */	cmplwi r0, 0
/* 8016D588  41 82 01 4C */	beq lbl_8016D6D4
/* 8016D58C  7F C3 F3 78 */	mr r3, r30
/* 8016D590  38 81 02 94 */	addi r4, r1, 0x294
/* 8016D594  38 BE 00 64 */	addi r5, r30, 0x64
/* 8016D598  38 C1 03 54 */	addi r6, r1, 0x354
/* 8016D59C  38 E0 40 B7 */	li r7, 0x40b7
/* 8016D5A0  4B FF 83 21 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzP11dBgS_LinChkUl
/* 8016D5A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016D5A8  41 82 01 2C */	beq lbl_8016D6D4
/* 8016D5AC  38 61 01 98 */	addi r3, r1, 0x198
/* 8016D5B0  7F C4 F3 78 */	mr r4, r30
/* 8016D5B4  80 BE 01 84 */	lwz r5, 0x184(r30)
/* 8016D5B8  4B F2 A1 65 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8016D5BC  38 61 02 70 */	addi r3, r1, 0x270
/* 8016D5C0  38 81 01 98 */	addi r4, r1, 0x198
/* 8016D5C4  4B F2 A2 31 */	bl __ct__4cXyzFRC4cXyz
/* 8016D5C8  38 61 01 98 */	addi r3, r1, 0x198
/* 8016D5CC  38 80 FF FF */	li r4, -1
/* 8016D5D0  4B E9 BB B5 */	bl __dt__4cXyzFv
/* 8016D5D4  38 61 02 E4 */	addi r3, r1, 0x2e4
/* 8016D5D8  4B F0 A7 CD */	bl __ct__14dBgS_CamLinChkFv
/* 8016D5DC  3A 40 00 00 */	li r18, 0
/* 8016D5E0  7F C3 F3 78 */	mr r3, r30
/* 8016D5E4  38 81 02 94 */	addi r4, r1, 0x294
/* 8016D5E8  38 BE 00 70 */	addi r5, r30, 0x70
/* 8016D5EC  38 C1 02 E4 */	addi r6, r1, 0x2e4
/* 8016D5F0  38 E0 40 B7 */	li r7, 0x40b7
/* 8016D5F4  4B FF A6 05 */	bl lineBGCheckBoth__9dCamera_cFP4cXyzP4cXyzP11dBgS_LinChkUl
/* 8016D5F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016D5FC  41 82 00 0C */	beq lbl_8016D608
/* 8016D600  62 52 00 01 */	ori r18, r18, 1
/* 8016D604  48 00 00 28 */	b lbl_8016D62C
lbl_8016D608:
/* 8016D608  7F C3 F3 78 */	mr r3, r30
/* 8016D60C  38 81 02 70 */	addi r4, r1, 0x270
/* 8016D610  38 BE 00 70 */	addi r5, r30, 0x70
/* 8016D614  38 C1 02 E4 */	addi r6, r1, 0x2e4
/* 8016D618  38 E0 40 B7 */	li r7, 0x40b7
/* 8016D61C  4B FF A5 DD */	bl lineBGCheckBoth__9dCamera_cFP4cXyzP4cXyzP11dBgS_LinChkUl
/* 8016D620  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016D624  41 82 00 08 */	beq lbl_8016D62C
/* 8016D628  62 52 00 02 */	ori r18, r18, 2
lbl_8016D62C:
/* 8016D62C  2C 12 00 00 */	cmpwi r18, 0
/* 8016D630  41 82 00 8C */	beq lbl_8016D6BC
/* 8016D634  38 61 02 D0 */	addi r3, r1, 0x2d0
/* 8016D638  4B FD 3B B9 */	bl __ct__8cM3dGPlaFv
/* 8016D63C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8016D640  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8016D644  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8016D648  38 81 03 68 */	addi r4, r1, 0x368
/* 8016D64C  38 A1 02 D0 */	addi r5, r1, 0x2d0
/* 8016D650  4B F0 70 F5 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 8016D654  38 61 03 54 */	addi r3, r1, 0x354
/* 8016D658  48 01 53 99 */	bl GetCross__11cBgS_LinChkFv
/* 8016D65C  7C 64 1B 78 */	mr r4, r3
/* 8016D660  38 7E 00 64 */	addi r3, r30, 0x64
/* 8016D664  4B F2 A1 75 */	bl __as__4cXyzFRC4cXyz
/* 8016D668  38 61 01 8C */	addi r3, r1, 0x18c
/* 8016D66C  38 81 02 D0 */	addi r4, r1, 0x2d0
/* 8016D670  C0 22 9D 50 */	lfs f1, lit_9405(r2)
/* 8016D674  48 0F 95 11 */	bl __ml__4cXyzCFf
/* 8016D678  38 7E 00 64 */	addi r3, r30, 0x64
/* 8016D67C  38 81 01 8C */	addi r4, r1, 0x18c
/* 8016D680  4B F2 12 85 */	bl __apl__4cXyzFRC3Vec
/* 8016D684  38 61 01 8C */	addi r3, r1, 0x18c
/* 8016D688  38 80 FF FF */	li r4, -1
/* 8016D68C  4B E9 BA F9 */	bl __dt__4cXyzFv
/* 8016D690  80 7E 01 84 */	lwz r3, 0x184(r30)
/* 8016D694  4B FD 3C 29 */	bl fopAcM_GetName__FPv
/* 8016D698  7C 60 07 34 */	extsh r0, r3
/* 8016D69C  2C 00 01 FC */	cmpwi r0, 0x1fc
/* 8016D6A0  41 82 00 10 */	beq lbl_8016D6B0
/* 8016D6A4  7F C3 F3 78 */	mr r3, r30
/* 8016D6A8  80 9E 01 98 */	lwz r4, 0x198(r30)
/* 8016D6AC  48 01 3E B5 */	bl ForceLockOff__9dCamera_cFUi
lbl_8016D6B0:
/* 8016D6B0  38 61 02 D0 */	addi r3, r1, 0x2d0
/* 8016D6B4  38 80 FF FF */	li r4, -1
/* 8016D6B8  4B EB 04 D9 */	bl __dt__8cM3dGPlaFv
lbl_8016D6BC:
/* 8016D6BC  38 61 02 E4 */	addi r3, r1, 0x2e4
/* 8016D6C0  38 80 FF FF */	li r4, -1
/* 8016D6C4  4B F0 A7 3D */	bl __dt__14dBgS_CamLinChkFv
/* 8016D6C8  38 61 02 70 */	addi r3, r1, 0x270
/* 8016D6CC  38 80 FF FF */	li r4, -1
/* 8016D6D0  4B E9 BA B5 */	bl __dt__4cXyzFv
lbl_8016D6D4:
/* 8016D6D4  38 61 01 80 */	addi r3, r1, 0x180
/* 8016D6D8  38 9E 00 70 */	addi r4, r30, 0x70
/* 8016D6DC  38 BE 00 64 */	addi r5, r30, 0x64
/* 8016D6E0  48 0F 94 55 */	bl __mi__4cXyzCFRC3Vec
/* 8016D6E4  38 61 01 58 */	addi r3, r1, 0x158
/* 8016D6E8  38 81 01 80 */	addi r4, r1, 0x180
/* 8016D6EC  48 10 41 95 */	bl __ct__7cSGlobeFRC4cXyz
/* 8016D6F0  38 61 01 80 */	addi r3, r1, 0x180
/* 8016D6F4  38 80 FF FF */	li r4, -1
/* 8016D6F8  4B E9 BA 8D */	bl __dt__4cXyzFv
/* 8016D6FC  38 61 01 24 */	addi r3, r1, 0x124
/* 8016D700  7E E4 BB 78 */	mr r4, r23
/* 8016D704  48 10 38 65 */	bl __ct__7cSAngleFRC7cSAngle
/* 8016D708  38 61 01 20 */	addi r3, r1, 0x120
/* 8016D70C  3A DE 00 60 */	addi r22, r30, 0x60
/* 8016D710  7E C4 B3 78 */	mr r4, r22
/* 8016D714  48 10 38 55 */	bl __ct__7cSAngleFRC7cSAngle
/* 8016D718  C2 7E 00 5C */	lfs f19, 0x5c(r30)
/* 8016D71C  38 61 00 9C */	addi r3, r1, 0x9c
/* 8016D720  38 81 01 38 */	addi r4, r1, 0x138
/* 8016D724  38 A1 01 3C */	addi r5, r1, 0x13c
/* 8016D728  48 10 3A 7D */	bl __mi__7cSAngleCFRC7cSAngle
/* 8016D72C  38 61 01 1C */	addi r3, r1, 0x11c
/* 8016D730  38 81 00 9C */	addi r4, r1, 0x9c
/* 8016D734  48 10 38 35 */	bl __ct__7cSAngleFRC7cSAngle
/* 8016D738  38 61 00 9C */	addi r3, r1, 0x9c
/* 8016D73C  38 80 FF FF */	li r4, -1
/* 8016D740  4B EC 2D D1 */	bl __dt__7cSAngleFv
/* 8016D744  C3 3E 09 BC */	lfs f25, 0x9bc(r30)
/* 8016D748  C3 5E 01 D8 */	lfs f26, 0x1d8(r30)
/* 8016D74C  38 7E 0A EC */	addi r3, r30, 0xaec
/* 8016D750  7F E4 FB 78 */	mr r4, r31
/* 8016D754  38 A0 00 40 */	li r5, 0x40
/* 8016D758  48 01 55 35 */	bl Flag__11dCamParam_cFlUs
/* 8016D75C  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8016D760  41 82 00 08 */	beq lbl_8016D768
/* 8016D764  C3 42 9C A0 */	lfs f26, lit_5656(r2)
lbl_8016D768:
/* 8016D768  C0 3E 01 DC */	lfs f1, 0x1dc(r30)
/* 8016D76C  C0 1E 0A 74 */	lfs f0, 0xa74(r30)
/* 8016D770  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016D774  40 81 00 2C */	ble lbl_8016D7A0
/* 8016D778  80 1E 01 FC */	lwz r0, 0x1fc(r30)
/* 8016D77C  2C 00 00 01 */	cmpwi r0, 1
/* 8016D780  41 82 00 14 */	beq lbl_8016D794
/* 8016D784  38 00 00 00 */	li r0, 0
/* 8016D788  98 1E 04 28 */	stb r0, 0x428(r30)
/* 8016D78C  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 8016D790  D0 1E 04 34 */	stfs f0, 0x434(r30)
lbl_8016D794:
/* 8016D794  38 00 00 01 */	li r0, 1
/* 8016D798  90 1E 01 FC */	stw r0, 0x1fc(r30)
/* 8016D79C  48 00 00 0C */	b lbl_8016D7A8
lbl_8016D7A0:
/* 8016D7A0  38 00 00 00 */	li r0, 0
/* 8016D7A4  90 1E 01 FC */	stw r0, 0x1fc(r30)
lbl_8016D7A8:
/* 8016D7A8  3A 60 00 00 */	li r19, 0
/* 8016D7AC  FC 20 D0 90 */	fmr f1, f26
/* 8016D7B0  48 01 52 8D */	bl fabsf__3stdFf
/* 8016D7B4  C0 02 9C E8 */	lfs f0, lit_6630(r2)
/* 8016D7B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016D7BC  40 81 00 8C */	ble lbl_8016D848
/* 8016D7C0  FC 20 D0 90 */	fmr f1, f26
/* 8016D7C4  C0 42 9C 90 */	lfs f2, lit_4445(r2)
/* 8016D7C8  4B F1 A9 75 */	bl rationalBezierRatio__8dCamMathFff
/* 8016D7CC  C0 02 9E 04 */	lfs f0, lit_11172(r2)
/* 8016D7D0  EC 20 00 72 */	fmuls f1, f0, f1
/* 8016D7D4  38 61 00 98 */	addi r3, r1, 0x98
/* 8016D7D8  48 10 37 F1 */	bl __ct__7cSAngleFf
/* 8016D7DC  38 61 00 94 */	addi r3, r1, 0x94
/* 8016D7E0  38 81 01 5E */	addi r4, r1, 0x15e
/* 8016D7E4  38 A1 00 98 */	addi r5, r1, 0x98
/* 8016D7E8  48 10 39 8D */	bl __pl__7cSAngleCFRC7cSAngle
/* 8016D7EC  38 61 01 18 */	addi r3, r1, 0x118
/* 8016D7F0  38 81 00 94 */	addi r4, r1, 0x94
/* 8016D7F4  48 10 37 75 */	bl __ct__7cSAngleFRC7cSAngle
/* 8016D7F8  38 61 00 94 */	addi r3, r1, 0x94
/* 8016D7FC  38 80 FF FF */	li r4, -1
/* 8016D800  4B EC 2D 11 */	bl __dt__7cSAngleFv
/* 8016D804  38 61 00 98 */	addi r3, r1, 0x98
/* 8016D808  38 80 FF FF */	li r4, -1
/* 8016D80C  4B EC 2D 05 */	bl __dt__7cSAngleFv
/* 8016D810  FC 20 D0 90 */	fmr f1, f26
/* 8016D814  48 01 52 29 */	bl fabsf__3stdFf
/* 8016D818  C0 02 9C E8 */	lfs f0, lit_6630(r2)
/* 8016D81C  EF E1 00 28 */	fsubs f31, f1, f0
/* 8016D820  38 7E 04 2A */	addi r3, r30, 0x42a
/* 8016D824  38 81 01 18 */	addi r4, r1, 0x118
/* 8016D828  48 01 54 81 */	bl __as__7cSAngleFRC7cSAngle
/* 8016D82C  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 8016D830  D0 1E 04 34 */	stfs f0, 0x434(r30)
/* 8016D834  3A 60 00 01 */	li r19, 1
/* 8016D838  38 61 01 18 */	addi r3, r1, 0x118
/* 8016D83C  38 80 FF FF */	li r4, -1
/* 8016D840  4B EC 2C D1 */	bl __dt__7cSAngleFv
/* 8016D844  48 00 01 78 */	b lbl_8016D9BC
lbl_8016D848:
/* 8016D848  38 7E 0A EC */	addi r3, r30, 0xaec
/* 8016D84C  7F E4 FB 78 */	mr r4, r31
/* 8016D850  38 A0 01 00 */	li r5, 0x100
/* 8016D854  48 01 54 39 */	bl Flag__11dCamParam_cFlUs
/* 8016D858  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8016D85C  41 82 01 24 */	beq lbl_8016D980
/* 8016D860  80 1E 01 A4 */	lwz r0, 0x1a4(r30)
/* 8016D864  2C 00 00 00 */	cmpwi r0, 0
/* 8016D868  40 82 00 E0 */	bne lbl_8016D948
/* 8016D86C  38 00 00 01 */	li r0, 1
/* 8016D870  98 1E 04 28 */	stb r0, 0x428(r30)
/* 8016D874  38 61 00 90 */	addi r3, r1, 0x90
/* 8016D878  7F C4 F3 78 */	mr r4, r30
/* 8016D87C  80 BE 01 80 */	lwz r5, 0x180(r30)
/* 8016D880  4B F2 9E B9 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8016D884  38 61 00 8C */	addi r3, r1, 0x8c
/* 8016D888  3A 41 01 5E */	addi r18, r1, 0x15e
/* 8016D88C  7E 44 93 78 */	mr r4, r18
/* 8016D890  38 A1 00 90 */	addi r5, r1, 0x90
/* 8016D894  48 10 39 11 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8016D898  38 61 01 14 */	addi r3, r1, 0x114
/* 8016D89C  38 81 00 8C */	addi r4, r1, 0x8c
/* 8016D8A0  48 10 36 C9 */	bl __ct__7cSAngleFRC7cSAngle
/* 8016D8A4  38 61 00 8C */	addi r3, r1, 0x8c
/* 8016D8A8  38 80 FF FF */	li r4, -1
/* 8016D8AC  4B EC 2C 65 */	bl __dt__7cSAngleFv
/* 8016D8B0  38 61 00 90 */	addi r3, r1, 0x90
/* 8016D8B4  38 80 FF FF */	li r4, -1
/* 8016D8B8  4B EC 2C 59 */	bl __dt__7cSAngleFv
/* 8016D8BC  38 61 00 88 */	addi r3, r1, 0x88
/* 8016D8C0  7E 44 93 78 */	mr r4, r18
/* 8016D8C4  7E E5 BB 78 */	mr r5, r23
/* 8016D8C8  48 10 38 DD */	bl __mi__7cSAngleCFRC7cSAngle
/* 8016D8CC  38 61 00 84 */	addi r3, r1, 0x84
/* 8016D8D0  38 81 00 88 */	addi r4, r1, 0x88
/* 8016D8D4  FC 20 A0 90 */	fmr f1, f20
/* 8016D8D8  48 10 39 8D */	bl __ml__7cSAngleCFf
/* 8016D8DC  38 61 01 14 */	addi r3, r1, 0x114
/* 8016D8E0  48 10 38 19 */	bl Sin__7cSAngleCFv
/* 8016D8E4  38 61 00 80 */	addi r3, r1, 0x80
/* 8016D8E8  38 81 00 84 */	addi r4, r1, 0x84
/* 8016D8EC  48 10 39 79 */	bl __ml__7cSAngleCFf
/* 8016D8F0  38 61 00 7C */	addi r3, r1, 0x7c
/* 8016D8F4  7E E4 BB 78 */	mr r4, r23
/* 8016D8F8  38 A1 00 80 */	addi r5, r1, 0x80
/* 8016D8FC  48 10 38 79 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8016D900  38 7E 04 2A */	addi r3, r30, 0x42a
/* 8016D904  38 81 00 7C */	addi r4, r1, 0x7c
/* 8016D908  48 01 53 A1 */	bl __as__7cSAngleFRC7cSAngle
/* 8016D90C  38 61 00 7C */	addi r3, r1, 0x7c
/* 8016D910  38 80 FF FF */	li r4, -1
/* 8016D914  4B EC 2B FD */	bl __dt__7cSAngleFv
/* 8016D918  38 61 00 80 */	addi r3, r1, 0x80
/* 8016D91C  38 80 FF FF */	li r4, -1
/* 8016D920  4B EC 2B F1 */	bl __dt__7cSAngleFv
/* 8016D924  38 61 00 84 */	addi r3, r1, 0x84
/* 8016D928  38 80 FF FF */	li r4, -1
/* 8016D92C  4B EC 2B E5 */	bl __dt__7cSAngleFv
/* 8016D930  38 61 00 88 */	addi r3, r1, 0x88
/* 8016D934  38 80 FF FF */	li r4, -1
/* 8016D938  4B EC 2B D9 */	bl __dt__7cSAngleFv
/* 8016D93C  38 61 01 14 */	addi r3, r1, 0x114
/* 8016D940  38 80 FF FF */	li r4, -1
/* 8016D944  4B EC 2B CD */	bl __dt__7cSAngleFv
lbl_8016D948:
/* 8016D948  80 1E 01 A4 */	lwz r0, 0x1a4(r30)
/* 8016D94C  2C 00 00 02 */	cmpwi r0, 2
/* 8016D950  41 82 00 6C */	beq lbl_8016D9BC
/* 8016D954  38 61 00 78 */	addi r3, r1, 0x78
/* 8016D958  7F C4 F3 78 */	mr r4, r30
/* 8016D95C  80 BE 01 80 */	lwz r5, 0x180(r30)
/* 8016D960  4B F2 9D D9 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8016D964  38 61 01 40 */	addi r3, r1, 0x140
/* 8016D968  38 81 00 78 */	addi r4, r1, 0x78
/* 8016D96C  48 10 36 8D */	bl Val__7cSAngleFRC7cSAngle
/* 8016D970  38 61 00 78 */	addi r3, r1, 0x78
/* 8016D974  38 80 FF FF */	li r4, -1
/* 8016D978  4B EC 2B 99 */	bl __dt__7cSAngleFv
/* 8016D97C  48 00 00 40 */	b lbl_8016D9BC
lbl_8016D980:
/* 8016D980  88 1E 04 28 */	lbz r0, 0x428(r30)
/* 8016D984  28 00 00 00 */	cmplwi r0, 0
/* 8016D988  41 82 00 10 */	beq lbl_8016D998
/* 8016D98C  C3 E2 9C A8 */	lfs f31, lit_5658(r2)
/* 8016D990  D3 FE 04 34 */	stfs f31, 0x434(r30)
/* 8016D994  48 00 00 28 */	b lbl_8016D9BC
lbl_8016D998:
/* 8016D998  38 00 00 00 */	li r0, 0
/* 8016D99C  98 1E 04 28 */	stb r0, 0x428(r30)
/* 8016D9A0  C0 5E 04 34 */	lfs f2, 0x434(r30)
/* 8016D9A4  C0 22 9C E0 */	lfs f1, lit_6180(r2)
/* 8016D9A8  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 8016D9AC  EC 00 10 28 */	fsubs f0, f0, f2
/* 8016D9B0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016D9B4  EC 02 00 2A */	fadds f0, f2, f0
/* 8016D9B8  D0 1E 04 34 */	stfs f0, 0x434(r30)
lbl_8016D9BC:
/* 8016D9BC  88 1E 04 28 */	lbz r0, 0x428(r30)
/* 8016D9C0  28 00 00 00 */	cmplwi r0, 0
/* 8016D9C4  40 82 00 0C */	bne lbl_8016D9D0
/* 8016D9C8  56 60 06 3F */	clrlwi. r0, r19, 0x18
/* 8016D9CC  41 82 00 6C */	beq lbl_8016DA38
lbl_8016D9D0:
/* 8016D9D0  38 61 00 74 */	addi r3, r1, 0x74
/* 8016D9D4  38 9E 04 2A */	addi r4, r30, 0x42a
/* 8016D9D8  3A 41 01 5E */	addi r18, r1, 0x15e
/* 8016D9DC  7E 45 93 78 */	mr r5, r18
/* 8016D9E0  48 10 37 C5 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8016D9E4  38 61 00 70 */	addi r3, r1, 0x70
/* 8016D9E8  38 81 00 74 */	addi r4, r1, 0x74
/* 8016D9EC  FC 20 F8 90 */	fmr f1, f31
/* 8016D9F0  48 10 38 75 */	bl __ml__7cSAngleCFf
/* 8016D9F4  38 61 00 6C */	addi r3, r1, 0x6c
/* 8016D9F8  7E 44 93 78 */	mr r4, r18
/* 8016D9FC  38 A1 00 70 */	addi r5, r1, 0x70
/* 8016DA00  48 10 37 75 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8016DA04  38 61 01 24 */	addi r3, r1, 0x124
/* 8016DA08  38 81 00 6C */	addi r4, r1, 0x6c
/* 8016DA0C  48 01 52 9D */	bl __as__7cSAngleFRC7cSAngle
/* 8016DA10  38 61 00 6C */	addi r3, r1, 0x6c
/* 8016DA14  38 80 FF FF */	li r4, -1
/* 8016DA18  4B EC 2A F9 */	bl __dt__7cSAngleFv
/* 8016DA1C  38 61 00 70 */	addi r3, r1, 0x70
/* 8016DA20  38 80 FF FF */	li r4, -1
/* 8016DA24  4B EC 2A ED */	bl __dt__7cSAngleFv
/* 8016DA28  38 61 00 74 */	addi r3, r1, 0x74
/* 8016DA2C  38 80 FF FF */	li r4, -1
/* 8016DA30  4B EC 2A E1 */	bl __dt__7cSAngleFv
/* 8016DA34  48 00 03 84 */	b lbl_8016DDB8
lbl_8016DA38:
/* 8016DA38  56 80 06 3F */	clrlwi. r0, r20, 0x18
/* 8016DA3C  41 82 00 A4 */	beq lbl_8016DAE0
/* 8016DA40  80 1E 04 18 */	lwz r0, 0x418(r30)
/* 8016DA44  2C 00 00 01 */	cmpwi r0, 1
/* 8016DA48  40 82 00 14 */	bne lbl_8016DA5C
/* 8016DA4C  38 61 01 10 */	addi r3, r1, 0x110
/* 8016DA50  C0 22 9D CC */	lfs f1, lit_10574(r2)
/* 8016DA54  48 10 35 B9 */	bl Val__7cSAngleFf
/* 8016DA58  48 00 00 10 */	b lbl_8016DA68
lbl_8016DA5C:
/* 8016DA5C  38 61 01 10 */	addi r3, r1, 0x110
/* 8016DA60  C0 22 9E 08 */	lfs f1, lit_11173(r2)
/* 8016DA64  48 10 35 A9 */	bl Val__7cSAngleFf
lbl_8016DA68:
/* 8016DA68  7F 23 CB 78 */	mr r3, r25
/* 8016DA6C  48 10 36 7D */	bl Inv__7cSAngleCFv
/* 8016DA70  7C 64 1B 78 */	mr r4, r3
/* 8016DA74  38 61 00 68 */	addi r3, r1, 0x68
/* 8016DA78  38 A1 01 10 */	addi r5, r1, 0x110
/* 8016DA7C  48 10 38 79 */	bl __pl__FsRC7cSAngle
/* 8016DA80  38 61 00 64 */	addi r3, r1, 0x64
/* 8016DA84  38 81 00 68 */	addi r4, r1, 0x68
/* 8016DA88  38 A1 01 24 */	addi r5, r1, 0x124
/* 8016DA8C  48 10 37 19 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8016DA90  38 61 00 60 */	addi r3, r1, 0x60
/* 8016DA94  38 81 00 64 */	addi r4, r1, 0x64
/* 8016DA98  C0 22 9C E8 */	lfs f1, lit_6630(r2)
/* 8016DA9C  48 10 37 C9 */	bl __ml__7cSAngleCFf
/* 8016DAA0  38 61 01 24 */	addi r3, r1, 0x124
/* 8016DAA4  38 81 00 60 */	addi r4, r1, 0x60
/* 8016DAA8  48 10 37 2D */	bl __apl__7cSAngleFRC7cSAngle
/* 8016DAAC  38 61 00 60 */	addi r3, r1, 0x60
/* 8016DAB0  38 80 FF FF */	li r4, -1
/* 8016DAB4  4B EC 2A 5D */	bl __dt__7cSAngleFv
/* 8016DAB8  38 61 00 64 */	addi r3, r1, 0x64
/* 8016DABC  38 80 FF FF */	li r4, -1
/* 8016DAC0  4B EC 2A 51 */	bl __dt__7cSAngleFv
/* 8016DAC4  38 61 00 68 */	addi r3, r1, 0x68
/* 8016DAC8  38 80 FF FF */	li r4, -1
/* 8016DACC  4B EC 2A 45 */	bl __dt__7cSAngleFv
/* 8016DAD0  38 61 01 10 */	addi r3, r1, 0x110
/* 8016DAD4  38 80 FF FF */	li r4, -1
/* 8016DAD8  4B EC 2A 39 */	bl __dt__7cSAngleFv
/* 8016DADC  48 00 02 DC */	b lbl_8016DDB8
lbl_8016DAE0:
/* 8016DAE0  80 7E 01 7C */	lwz r3, 0x17c(r30)
/* 8016DAE4  3C 80 01 20 */	lis r4, 0x120
/* 8016DAE8  4B FF E8 49 */	bl func_8016C330
/* 8016DAEC  28 03 00 00 */	cmplwi r3, 0
/* 8016DAF0  41 82 00 14 */	beq lbl_8016DB04
/* 8016DAF4  38 61 01 24 */	addi r3, r1, 0x124
/* 8016DAF8  38 81 01 5E */	addi r4, r1, 0x15e
/* 8016DAFC  48 01 51 AD */	bl __as__7cSAngleFRC7cSAngle
/* 8016DB00  48 00 02 B8 */	b lbl_8016DDB8
lbl_8016DB04:
/* 8016DB04  80 1E 01 84 */	lwz r0, 0x184(r30)
/* 8016DB08  28 00 00 00 */	cmplwi r0, 0
/* 8016DB0C  40 82 00 10 */	bne lbl_8016DB1C
/* 8016DB10  C0 02 9D 94 */	lfs f0, lit_10560(r2)
/* 8016DB14  EF E0 03 B2 */	fmuls f31, f0, f14
/* 8016DB18  48 00 01 7C */	b lbl_8016DC94
lbl_8016DB1C:
/* 8016DB1C  A8 01 01 38 */	lha r0, 0x138(r1)
/* 8016DB20  A8 81 01 3C */	lha r4, 0x13c(r1)
/* 8016DB24  7C 00 20 00 */	cmpw r0, r4
/* 8016DB28  40 80 00 50 */	bge lbl_8016DB78
/* 8016DB2C  A8 01 01 1C */	lha r0, 0x11c(r1)
/* 8016DB30  C8 42 9C 98 */	lfd f2, lit_4448(r2)
/* 8016DB34  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8016DB38  90 01 03 D4 */	stw r0, 0x3d4(r1)
/* 8016DB3C  3C 60 43 30 */	lis r3, 0x4330
/* 8016DB40  90 61 03 D0 */	stw r3, 0x3d0(r1)
/* 8016DB44  C8 01 03 D0 */	lfd f0, 0x3d0(r1)
/* 8016DB48  EC 20 10 28 */	fsubs f1, f0, f2
/* 8016DB4C  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8016DB50  90 01 03 CC */	stw r0, 0x3cc(r1)
/* 8016DB54  90 61 03 C8 */	stw r3, 0x3c8(r1)
/* 8016DB58  C8 01 03 C8 */	lfd f0, 0x3c8(r1)
/* 8016DB5C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8016DB60  EC 01 00 24 */	fdivs f0, f1, f0
/* 8016DB64  FC 20 00 50 */	fneg f1, f0
/* 8016DB68  FC 40 C8 90 */	fmr f2, f25
/* 8016DB6C  4B F1 A5 D1 */	bl rationalBezierRatio__8dCamMathFff
/* 8016DB70  EF F5 00 72 */	fmuls f31, f21, f1
/* 8016DB74  48 00 01 20 */	b lbl_8016DC94
lbl_8016DB78:
/* 8016DB78  38 61 00 5C */	addi r3, r1, 0x5c
/* 8016DB7C  38 8D 8C 14 */	la r4, _180__7cSAngle(r13) /* 80451194-_SDA_BASE_ */
/* 8016DB80  38 A1 01 3C */	addi r5, r1, 0x13c
/* 8016DB84  48 10 36 21 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8016DB88  38 61 00 58 */	addi r3, r1, 0x58
/* 8016DB8C  38 81 00 5C */	addi r4, r1, 0x5c
/* 8016DB90  C0 22 9C 90 */	lfs f1, lit_4445(r2)
/* 8016DB94  48 10 36 D1 */	bl __ml__7cSAngleCFf
/* 8016DB98  38 61 00 54 */	addi r3, r1, 0x54
/* 8016DB9C  38 81 01 3C */	addi r4, r1, 0x13c
/* 8016DBA0  38 A1 00 58 */	addi r5, r1, 0x58
/* 8016DBA4  48 10 35 D1 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8016DBA8  38 61 01 0C */	addi r3, r1, 0x10c
/* 8016DBAC  38 81 00 54 */	addi r4, r1, 0x54
/* 8016DBB0  48 10 33 B9 */	bl __ct__7cSAngleFRC7cSAngle
/* 8016DBB4  38 61 00 54 */	addi r3, r1, 0x54
/* 8016DBB8  38 80 FF FF */	li r4, -1
/* 8016DBBC  4B EC 29 55 */	bl __dt__7cSAngleFv
/* 8016DBC0  38 61 00 58 */	addi r3, r1, 0x58
/* 8016DBC4  38 80 FF FF */	li r4, -1
/* 8016DBC8  4B EC 29 49 */	bl __dt__7cSAngleFv
/* 8016DBCC  38 61 00 5C */	addi r3, r1, 0x5c
/* 8016DBD0  38 80 FF FF */	li r4, -1
/* 8016DBD4  4B EC 29 3D */	bl __dt__7cSAngleFv
/* 8016DBD8  A8 61 01 1C */	lha r3, 0x11c(r1)
/* 8016DBDC  A8 01 01 0C */	lha r0, 0x10c(r1)
/* 8016DBE0  7C 03 00 00 */	cmpw r3, r0
/* 8016DBE4  40 81 00 54 */	ble lbl_8016DC38
/* 8016DBE8  38 61 00 50 */	addi r3, r1, 0x50
/* 8016DBEC  38 8D 8C 14 */	la r4, _180__7cSAngle(r13) /* 80451194-_SDA_BASE_ */
/* 8016DBF0  38 A1 01 1C */	addi r5, r1, 0x11c
/* 8016DBF4  48 10 35 B1 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8016DBF8  38 61 01 1C */	addi r3, r1, 0x11c
/* 8016DBFC  38 81 00 50 */	addi r4, r1, 0x50
/* 8016DC00  48 01 50 A9 */	bl __as__7cSAngleFRC7cSAngle
/* 8016DC04  38 61 00 50 */	addi r3, r1, 0x50
/* 8016DC08  38 80 FF FF */	li r4, -1
/* 8016DC0C  4B EC 29 05 */	bl __dt__7cSAngleFv
/* 8016DC10  38 61 00 4C */	addi r3, r1, 0x4c
/* 8016DC14  38 8D 8C 14 */	la r4, _180__7cSAngle(r13) /* 80451194-_SDA_BASE_ */
/* 8016DC18  38 A1 01 0C */	addi r5, r1, 0x10c
/* 8016DC1C  48 10 35 89 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8016DC20  38 61 01 0C */	addi r3, r1, 0x10c
/* 8016DC24  38 81 00 4C */	addi r4, r1, 0x4c
/* 8016DC28  48 01 50 81 */	bl __as__7cSAngleFRC7cSAngle
/* 8016DC2C  38 61 00 4C */	addi r3, r1, 0x4c
/* 8016DC30  38 80 FF FF */	li r4, -1
/* 8016DC34  4B EC 28 DD */	bl __dt__7cSAngleFv
lbl_8016DC38:
/* 8016DC38  A8 01 01 1C */	lha r0, 0x11c(r1)
/* 8016DC3C  C8 42 9C 98 */	lfd f2, lit_4448(r2)
/* 8016DC40  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8016DC44  90 01 03 D4 */	stw r0, 0x3d4(r1)
/* 8016DC48  3C 60 43 30 */	lis r3, 0x4330
/* 8016DC4C  90 61 03 D0 */	stw r3, 0x3d0(r1)
/* 8016DC50  C8 01 03 D0 */	lfd f0, 0x3d0(r1)
/* 8016DC54  EC 20 10 28 */	fsubs f1, f0, f2
/* 8016DC58  A8 01 01 0C */	lha r0, 0x10c(r1)
/* 8016DC5C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8016DC60  90 01 03 CC */	stw r0, 0x3cc(r1)
/* 8016DC64  90 61 03 C8 */	stw r3, 0x3c8(r1)
/* 8016DC68  C8 01 03 C8 */	lfd f0, 0x3c8(r1)
/* 8016DC6C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8016DC70  EC 21 00 24 */	fdivs f1, f1, f0
/* 8016DC74  FC 40 C8 90 */	fmr f2, f25
/* 8016DC78  4B F1 A4 C5 */	bl rationalBezierRatio__8dCamMathFff
/* 8016DC7C  EC 14 A8 28 */	fsubs f0, f20, f21
/* 8016DC80  EC 00 00 72 */	fmuls f0, f0, f1
/* 8016DC84  EF F5 00 2A */	fadds f31, f21, f0
/* 8016DC88  38 61 01 0C */	addi r3, r1, 0x10c
/* 8016DC8C  38 80 FF FF */	li r4, -1
/* 8016DC90  4B EC 28 81 */	bl __dt__7cSAngleFv
lbl_8016DC94:
/* 8016DC94  88 1E 04 12 */	lbz r0, 0x412(r30)
/* 8016DC98  28 00 00 00 */	cmplwi r0, 0
/* 8016DC9C  40 82 00 9C */	bne lbl_8016DD38
/* 8016DCA0  7F A4 0E 70 */	srawi r4, r29, 1
/* 8016DCA4  80 1E 01 74 */	lwz r0, 0x174(r30)
/* 8016DCA8  7C 00 20 40 */	cmplw r0, r4
/* 8016DCAC  40 80 00 40 */	bge lbl_8016DCEC
/* 8016DCB0  C8 22 9D 60 */	lfd f1, lit_9410(r2)
/* 8016DCB4  90 01 03 D4 */	stw r0, 0x3d4(r1)
/* 8016DCB8  3C 60 43 30 */	lis r3, 0x4330
/* 8016DCBC  90 61 03 D0 */	stw r3, 0x3d0(r1)
/* 8016DCC0  C8 01 03 D0 */	lfd f0, 0x3d0(r1)
/* 8016DCC4  EC 40 08 28 */	fsubs f2, f0, f1
/* 8016DCC8  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 8016DCCC  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8016DCD0  90 01 03 CC */	stw r0, 0x3cc(r1)
/* 8016DCD4  90 61 03 C8 */	stw r3, 0x3c8(r1)
/* 8016DCD8  C8 01 03 C8 */	lfd f0, 0x3c8(r1)
/* 8016DCDC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8016DCE0  EC 02 00 24 */	fdivs f0, f2, f0
/* 8016DCE4  EF FE 00 32 */	fmuls f31, f30, f0
/* 8016DCE8  48 00 00 50 */	b lbl_8016DD38
lbl_8016DCEC:
/* 8016DCEC  7C 04 00 50 */	subf r0, r4, r0
/* 8016DCF0  C8 22 9D 60 */	lfd f1, lit_9410(r2)
/* 8016DCF4  90 01 03 D4 */	stw r0, 0x3d4(r1)
/* 8016DCF8  3C 60 43 30 */	lis r3, 0x4330
/* 8016DCFC  90 61 03 D0 */	stw r3, 0x3d0(r1)
/* 8016DD00  C8 01 03 D0 */	lfd f0, 0x3d0(r1)
/* 8016DD04  EC 40 08 28 */	fsubs f2, f0, f1
/* 8016DD08  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 8016DD0C  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8016DD10  90 01 03 CC */	stw r0, 0x3cc(r1)
/* 8016DD14  90 61 03 C8 */	stw r3, 0x3c8(r1)
/* 8016DD18  C8 01 03 C8 */	lfd f0, 0x3c8(r1)
/* 8016DD1C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8016DD20  EC 42 00 24 */	fdivs f2, f2, f0
/* 8016DD24  EC 3F 00 B2 */	fmuls f1, f31, f2
/* 8016DD28  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 8016DD2C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8016DD30  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8016DD34  EF E1 00 2A */	fadds f31, f1, f0
lbl_8016DD38:
/* 8016DD38  38 61 01 40 */	addi r3, r1, 0x140
/* 8016DD3C  48 10 33 AD */	bl Inv__7cSAngleCFv
/* 8016DD40  7C 64 1B 78 */	mr r4, r3
/* 8016DD44  38 61 00 48 */	addi r3, r1, 0x48
/* 8016DD48  7E E5 BB 78 */	mr r5, r23
/* 8016DD4C  48 10 35 D5 */	bl __mi__FsRC7cSAngle
/* 8016DD50  38 61 01 1C */	addi r3, r1, 0x11c
/* 8016DD54  38 81 00 48 */	addi r4, r1, 0x48
/* 8016DD58  48 01 4F 51 */	bl __as__7cSAngleFRC7cSAngle
/* 8016DD5C  38 61 00 48 */	addi r3, r1, 0x48
/* 8016DD60  38 80 FF FF */	li r4, -1
/* 8016DD64  4B EC 27 AD */	bl __dt__7cSAngleFv
/* 8016DD68  38 61 01 1C */	addi r3, r1, 0x11c
/* 8016DD6C  48 10 32 C5 */	bl Degree__7cSAngleCFv
/* 8016DD70  48 01 4C CD */	bl fabsf__3stdFf
/* 8016DD74  38 61 00 44 */	addi r3, r1, 0x44
/* 8016DD78  38 81 01 1C */	addi r4, r1, 0x11c
/* 8016DD7C  FC 20 F8 90 */	fmr f1, f31
/* 8016DD80  48 10 34 E5 */	bl __ml__7cSAngleCFf
/* 8016DD84  38 61 00 40 */	addi r3, r1, 0x40
/* 8016DD88  38 81 00 44 */	addi r4, r1, 0x44
/* 8016DD8C  C0 3E 04 34 */	lfs f1, 0x434(r30)
/* 8016DD90  48 10 34 D5 */	bl __ml__7cSAngleCFf
/* 8016DD94  38 61 01 24 */	addi r3, r1, 0x124
/* 8016DD98  38 81 00 40 */	addi r4, r1, 0x40
/* 8016DD9C  48 10 34 39 */	bl __apl__7cSAngleFRC7cSAngle
/* 8016DDA0  38 61 00 40 */	addi r3, r1, 0x40
/* 8016DDA4  38 80 FF FF */	li r4, -1
/* 8016DDA8  4B EC 27 69 */	bl __dt__7cSAngleFv
/* 8016DDAC  38 61 00 44 */	addi r3, r1, 0x44
/* 8016DDB0  38 80 FF FF */	li r4, -1
/* 8016DDB4  4B EC 27 5D */	bl __dt__7cSAngleFv
lbl_8016DDB8:
/* 8016DDB8  56 A0 06 3F */	clrlwi. r0, r21, 0x18
/* 8016DDBC  41 82 00 C8 */	beq lbl_8016DE84
/* 8016DDC0  38 61 01 40 */	addi r3, r1, 0x140
/* 8016DDC4  48 10 33 25 */	bl Inv__7cSAngleCFv
/* 8016DDC8  7C 64 1B 78 */	mr r4, r3
/* 8016DDCC  38 61 01 08 */	addi r3, r1, 0x108
/* 8016DDD0  48 10 31 C9 */	bl __ct__7cSAngleFs
/* 8016DDD4  38 61 00 3C */	addi r3, r1, 0x3c
/* 8016DDD8  38 81 01 08 */	addi r4, r1, 0x108
/* 8016DDDC  38 A1 01 24 */	addi r5, r1, 0x124
/* 8016DDE0  48 10 33 C5 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8016DDE4  38 61 01 04 */	addi r3, r1, 0x104
/* 8016DDE8  38 81 00 3C */	addi r4, r1, 0x3c
/* 8016DDEC  48 10 31 7D */	bl __ct__7cSAngleFRC7cSAngle
/* 8016DDF0  38 61 00 3C */	addi r3, r1, 0x3c
/* 8016DDF4  38 80 FF FF */	li r4, -1
/* 8016DDF8  4B EC 27 19 */	bl __dt__7cSAngleFv
/* 8016DDFC  A8 61 01 04 */	lha r3, 0x104(r1)
/* 8016DE00  A8 0D 8C 18 */	lha r0, _270__7cSAngle(r13)
/* 8016DE04  7C 03 00 00 */	cmpw r3, r0
/* 8016DE08  40 80 00 30 */	bge lbl_8016DE38
/* 8016DE0C  38 61 00 38 */	addi r3, r1, 0x38
/* 8016DE10  38 81 01 08 */	addi r4, r1, 0x108
/* 8016DE14  38 AD 8C 18 */	la r5, _270__7cSAngle(r13) /* 80451198-_SDA_BASE_ */
/* 8016DE18  48 10 33 8D */	bl __mi__7cSAngleCFRC7cSAngle
/* 8016DE1C  38 61 01 24 */	addi r3, r1, 0x124
/* 8016DE20  38 81 00 38 */	addi r4, r1, 0x38
/* 8016DE24  48 01 4E 85 */	bl __as__7cSAngleFRC7cSAngle
/* 8016DE28  38 61 00 38 */	addi r3, r1, 0x38
/* 8016DE2C  38 80 FF FF */	li r4, -1
/* 8016DE30  4B EC 26 E1 */	bl __dt__7cSAngleFv
/* 8016DE34  48 00 00 38 */	b lbl_8016DE6C
lbl_8016DE38:
/* 8016DE38  A8 0D 8C 10 */	lha r0, _90__7cSAngle(r13)
/* 8016DE3C  7C 03 00 00 */	cmpw r3, r0
/* 8016DE40  40 81 00 2C */	ble lbl_8016DE6C
/* 8016DE44  38 61 00 34 */	addi r3, r1, 0x34
/* 8016DE48  38 81 01 08 */	addi r4, r1, 0x108
/* 8016DE4C  38 AD 8C 10 */	la r5, _90__7cSAngle(r13) /* 80451190-_SDA_BASE_ */
/* 8016DE50  48 10 33 55 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8016DE54  38 61 01 24 */	addi r3, r1, 0x124
/* 8016DE58  38 81 00 34 */	addi r4, r1, 0x34
/* 8016DE5C  48 01 4E 4D */	bl __as__7cSAngleFRC7cSAngle
/* 8016DE60  38 61 00 34 */	addi r3, r1, 0x34
/* 8016DE64  38 80 FF FF */	li r4, -1
/* 8016DE68  4B EC 26 A9 */	bl __dt__7cSAngleFv
lbl_8016DE6C:
/* 8016DE6C  38 61 01 04 */	addi r3, r1, 0x104
/* 8016DE70  38 80 FF FF */	li r4, -1
/* 8016DE74  4B EC 26 9D */	bl __dt__7cSAngleFv
/* 8016DE78  38 61 01 08 */	addi r3, r1, 0x108
/* 8016DE7C  38 80 FF FF */	li r4, -1
/* 8016DE80  4B EC 26 91 */	bl __dt__7cSAngleFv
lbl_8016DE84:
/* 8016DE84  80 7E 01 7C */	lwz r3, 0x17c(r30)
/* 8016DE88  4B FF E4 C5 */	bl func_8016C34C
/* 8016DE8C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016DE90  41 82 00 AC */	beq lbl_8016DF3C
/* 8016DE94  80 1E 03 F4 */	lwz r0, 0x3f4(r30)
/* 8016DE98  2C 00 00 14 */	cmpwi r0, 0x14
/* 8016DE9C  41 81 00 90 */	bgt lbl_8016DF2C
/* 8016DEA0  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 8016DEA4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8016DEA8  90 01 03 D4 */	stw r0, 0x3d4(r1)
/* 8016DEAC  3C 00 43 30 */	lis r0, 0x4330
/* 8016DEB0  90 01 03 D0 */	stw r0, 0x3d0(r1)
/* 8016DEB4  C8 01 03 D0 */	lfd f0, 0x3d0(r1)
/* 8016DEB8  EC 20 08 28 */	fsubs f1, f0, f1
/* 8016DEBC  C0 02 9D 68 */	lfs f0, lit_9788(r2)
/* 8016DEC0  EE 41 00 24 */	fdivs f18, f1, f0
/* 8016DEC4  38 61 00 30 */	addi r3, r1, 0x30
/* 8016DEC8  38 81 01 48 */	addi r4, r1, 0x148
/* 8016DECC  38 A1 01 20 */	addi r5, r1, 0x120
/* 8016DED0  48 10 32 D5 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8016DED4  FC 20 90 90 */	fmr f1, f18
/* 8016DED8  C0 41 03 E0 */	lfs f2, 0x3e0(r1)
/* 8016DEDC  4B F1 A2 61 */	bl rationalBezierRatio__8dCamMathFff
/* 8016DEE0  38 61 00 2C */	addi r3, r1, 0x2c
/* 8016DEE4  38 81 00 30 */	addi r4, r1, 0x30
/* 8016DEE8  48 10 33 7D */	bl __ml__7cSAngleCFf
/* 8016DEEC  38 61 01 20 */	addi r3, r1, 0x120
/* 8016DEF0  38 81 00 2C */	addi r4, r1, 0x2c
/* 8016DEF4  48 10 32 E1 */	bl __apl__7cSAngleFRC7cSAngle
/* 8016DEF8  38 61 00 2C */	addi r3, r1, 0x2c
/* 8016DEFC  38 80 FF FF */	li r4, -1
/* 8016DF00  4B EC 26 11 */	bl __dt__7cSAngleFv
/* 8016DF04  38 61 00 30 */	addi r3, r1, 0x30
/* 8016DF08  38 80 FF FF */	li r4, -1
/* 8016DF0C  4B EC 26 05 */	bl __dt__7cSAngleFv
/* 8016DF10  7F C3 F3 78 */	mr r3, r30
/* 8016DF14  3C 80 04 00 */	lis r4, 0x400
/* 8016DF18  4B F2 98 61 */	bl setFlag__9dCamera_cFUl
/* 8016DF1C  80 7E 03 F4 */	lwz r3, 0x3f4(r30)
/* 8016DF20  38 03 00 01 */	addi r0, r3, 1
/* 8016DF24  90 1E 03 F4 */	stw r0, 0x3f4(r30)
/* 8016DF28  48 00 01 DC */	b lbl_8016E104
lbl_8016DF2C:
/* 8016DF2C  38 61 01 20 */	addi r3, r1, 0x120
/* 8016DF30  38 81 01 48 */	addi r4, r1, 0x148
/* 8016DF34  48 01 4D 75 */	bl __as__7cSAngleFRC7cSAngle
/* 8016DF38  48 00 01 CC */	b lbl_8016E104
lbl_8016DF3C:
/* 8016DF3C  38 00 00 00 */	li r0, 0
/* 8016DF40  90 1E 03 F4 */	stw r0, 0x3f4(r30)
/* 8016DF44  88 1E 03 D0 */	lbz r0, 0x3d0(r30)
/* 8016DF48  28 00 00 00 */	cmplwi r0, 0
/* 8016DF4C  40 82 00 78 */	bne lbl_8016DFC4
/* 8016DF50  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 8016DF54  40 82 00 70 */	bne lbl_8016DFC4
/* 8016DF58  38 61 00 28 */	addi r3, r1, 0x28
/* 8016DF5C  38 81 01 5C */	addi r4, r1, 0x15c
/* 8016DF60  38 A1 01 20 */	addi r5, r1, 0x120
/* 8016DF64  48 10 32 41 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8016DF68  38 61 00 24 */	addi r3, r1, 0x24
/* 8016DF6C  38 81 00 28 */	addi r4, r1, 0x28
/* 8016DF70  FC 20 90 90 */	fmr f1, f18
/* 8016DF74  48 10 32 F1 */	bl __ml__7cSAngleCFf
/* 8016DF78  7E C3 B3 78 */	mr r3, r22
/* 8016DF7C  48 10 31 A5 */	bl Cos__7cSAngleCFv
/* 8016DF80  48 01 4A BD */	bl fabsf__3stdFf
/* 8016DF84  38 61 00 20 */	addi r3, r1, 0x20
/* 8016DF88  38 81 00 24 */	addi r4, r1, 0x24
/* 8016DF8C  48 10 32 D9 */	bl __ml__7cSAngleCFf
/* 8016DF90  38 61 01 20 */	addi r3, r1, 0x120
/* 8016DF94  38 81 00 20 */	addi r4, r1, 0x20
/* 8016DF98  48 10 32 3D */	bl __apl__7cSAngleFRC7cSAngle
/* 8016DF9C  38 61 00 20 */	addi r3, r1, 0x20
/* 8016DFA0  38 80 FF FF */	li r4, -1
/* 8016DFA4  4B EC 25 6D */	bl __dt__7cSAngleFv
/* 8016DFA8  38 61 00 24 */	addi r3, r1, 0x24
/* 8016DFAC  38 80 FF FF */	li r4, -1
/* 8016DFB0  4B EC 25 61 */	bl __dt__7cSAngleFv
/* 8016DFB4  38 61 00 28 */	addi r3, r1, 0x28
/* 8016DFB8  38 80 FF FF */	li r4, -1
/* 8016DFBC  4B EC 25 55 */	bl __dt__7cSAngleFv
/* 8016DFC0  48 00 01 1C */	b lbl_8016E0DC
lbl_8016DFC4:
/* 8016DFC4  38 61 01 00 */	addi r3, r1, 0x100
/* 8016DFC8  7F 04 C3 78 */	mr r4, r24
/* 8016DFCC  48 10 2F 9D */	bl __ct__7cSAngleFRC7cSAngle
/* 8016DFD0  38 61 00 1C */	addi r3, r1, 0x1c
/* 8016DFD4  38 9E 04 22 */	addi r4, r30, 0x422
/* 8016DFD8  7E E5 BB 78 */	mr r5, r23
/* 8016DFDC  48 10 31 C9 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8016DFE0  38 61 00 18 */	addi r3, r1, 0x18
/* 8016DFE4  38 81 00 1C */	addi r4, r1, 0x1c
/* 8016DFE8  48 10 2F 81 */	bl __ct__7cSAngleFRC7cSAngle
/* 8016DFEC  38 61 00 18 */	addi r3, r1, 0x18
/* 8016DFF0  48 10 31 31 */	bl Cos__7cSAngleCFv
/* 8016DFF4  38 61 01 00 */	addi r3, r1, 0x100
/* 8016DFF8  48 10 32 BD */	bl __amu__7cSAngleFf
/* 8016DFFC  38 61 00 18 */	addi r3, r1, 0x18
/* 8016E000  38 80 FF FF */	li r4, -1
/* 8016E004  4B EC 25 0D */	bl __dt__7cSAngleFv
/* 8016E008  38 61 00 1C */	addi r3, r1, 0x1c
/* 8016E00C  38 80 FF FF */	li r4, -1
/* 8016E010  4B EC 25 01 */	bl __dt__7cSAngleFv
/* 8016E014  38 61 01 00 */	addi r3, r1, 0x100
/* 8016E018  FC 20 C0 90 */	fmr f1, f24
/* 8016E01C  48 10 32 99 */	bl __amu__7cSAngleFf
/* 8016E020  FC 20 B8 90 */	fmr f1, f23
/* 8016E024  FC 40 B0 90 */	fmr f2, f22
/* 8016E028  FC 60 78 90 */	fmr f3, f15
/* 8016E02C  48 00 03 E5 */	bl func_8016E410
/* 8016E030  38 61 00 FC */	addi r3, r1, 0xfc
/* 8016E034  48 10 2F 95 */	bl __ct__7cSAngleFf
/* 8016E038  38 61 00 FC */	addi r3, r1, 0xfc
/* 8016E03C  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 8016E040  EC 20 C0 28 */	fsubs f1, f0, f24
/* 8016E044  48 10 32 71 */	bl __amu__7cSAngleFf
/* 8016E048  38 61 00 14 */	addi r3, r1, 0x14
/* 8016E04C  38 81 01 00 */	addi r4, r1, 0x100
/* 8016E050  38 A1 00 FC */	addi r5, r1, 0xfc
/* 8016E054  48 10 31 21 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8016E058  38 61 00 10 */	addi r3, r1, 0x10
/* 8016E05C  38 81 00 14 */	addi r4, r1, 0x14
/* 8016E060  38 A1 01 20 */	addi r5, r1, 0x120
/* 8016E064  48 10 31 41 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8016E068  38 61 00 0C */	addi r3, r1, 0xc
/* 8016E06C  38 81 00 10 */	addi r4, r1, 0x10
/* 8016E070  C0 22 9D 94 */	lfs f1, lit_10560(r2)
/* 8016E074  48 10 31 F1 */	bl __ml__7cSAngleCFf
/* 8016E078  38 61 00 08 */	addi r3, r1, 8
/* 8016E07C  38 81 00 0C */	addi r4, r1, 0xc
/* 8016E080  FC 20 70 90 */	fmr f1, f14
/* 8016E084  48 10 31 E1 */	bl __ml__7cSAngleCFf
/* 8016E088  38 61 01 20 */	addi r3, r1, 0x120
/* 8016E08C  38 81 00 08 */	addi r4, r1, 8
/* 8016E090  48 10 31 45 */	bl __apl__7cSAngleFRC7cSAngle
/* 8016E094  38 61 00 08 */	addi r3, r1, 8
/* 8016E098  38 80 FF FF */	li r4, -1
/* 8016E09C  4B EC 24 75 */	bl __dt__7cSAngleFv
/* 8016E0A0  38 61 00 0C */	addi r3, r1, 0xc
/* 8016E0A4  38 80 FF FF */	li r4, -1
/* 8016E0A8  4B EC 24 69 */	bl __dt__7cSAngleFv
/* 8016E0AC  38 61 00 10 */	addi r3, r1, 0x10
/* 8016E0B0  38 80 FF FF */	li r4, -1
/* 8016E0B4  4B EC 24 5D */	bl __dt__7cSAngleFv
/* 8016E0B8  38 61 00 14 */	addi r3, r1, 0x14
/* 8016E0BC  38 80 FF FF */	li r4, -1
/* 8016E0C0  4B EC 24 51 */	bl __dt__7cSAngleFv
/* 8016E0C4  38 61 00 FC */	addi r3, r1, 0xfc
/* 8016E0C8  38 80 FF FF */	li r4, -1
/* 8016E0CC  4B EC 24 45 */	bl __dt__7cSAngleFv
/* 8016E0D0  38 61 01 00 */	addi r3, r1, 0x100
/* 8016E0D4  38 80 FF FF */	li r4, -1
/* 8016E0D8  4B EC 24 39 */	bl __dt__7cSAngleFv
lbl_8016E0DC:
/* 8016E0DC  A8 01 01 20 */	lha r0, 0x120(r1)
/* 8016E0E0  B0 01 00 F8 */	sth r0, 0xf8(r1)
/* 8016E0E4  38 7E 09 70 */	addi r3, r30, 0x970
/* 8016E0E8  38 81 00 F8 */	addi r4, r1, 0xf8
/* 8016E0EC  4B F1 A8 2D */	bl CheckLatitudeRange__11dCamSetup_cFPs
/* 8016E0F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016E0F4  40 82 00 10 */	bne lbl_8016E104
/* 8016E0F8  38 61 01 20 */	addi r3, r1, 0x120
/* 8016E0FC  A8 81 00 F8 */	lha r4, 0xf8(r1)
/* 8016E100  48 10 2F 05 */	bl Val__7cSAngleFs
lbl_8016E104:
/* 8016E104  56 80 06 3F */	clrlwi. r0, r20, 0x18
/* 8016E108  41 82 00 1C */	beq lbl_8016E124
/* 8016E10C  C0 22 9C E8 */	lfs f1, lit_6630(r2)
/* 8016E110  C0 02 9E 0C */	lfs f0, lit_11174(r2)
/* 8016E114  EC 00 98 28 */	fsubs f0, f0, f19
/* 8016E118  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016E11C  EC 33 00 2A */	fadds f1, f19, f0
/* 8016E120  48 00 00 64 */	b lbl_8016E184
lbl_8016E124:
/* 8016E124  C0 01 01 58 */	lfs f0, 0x158(r1)
/* 8016E128  D0 01 01 54 */	stfs f0, 0x154(r1)
/* 8016E12C  FC 20 88 90 */	fmr f1, f17
/* 8016E130  FC 40 80 90 */	fmr f2, f16
/* 8016E134  38 61 01 54 */	addi r3, r1, 0x154
/* 8016E138  4B FF 19 A5 */	bl func_8015FADC
/* 8016E13C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016E140  41 82 00 2C */	beq lbl_8016E16C
/* 8016E144  C2 41 01 54 */	lfs f18, 0x154(r1)
/* 8016E148  FC 20 88 90 */	fmr f1, f17
/* 8016E14C  FC 40 80 90 */	fmr f2, f16
/* 8016E150  FC 60 78 90 */	fmr f3, f15
/* 8016E154  48 00 02 BD */	bl func_8016E410
/* 8016E158  EC 21 90 28 */	fsubs f1, f1, f18
/* 8016E15C  C0 02 9E 10 */	lfs f0, lit_11175(r2)
/* 8016E160  EC 00 00 72 */	fmuls f0, f0, f1
/* 8016E164  EC 32 00 2A */	fadds f1, f18, f0
/* 8016E168  48 00 00 1C */	b lbl_8016E184
lbl_8016E16C:
/* 8016E16C  C0 22 9D D8 */	lfs f1, lit_10577(r2)
/* 8016E170  C0 01 01 54 */	lfs f0, 0x154(r1)
/* 8016E174  EC 00 98 28 */	fsubs f0, f0, f19
/* 8016E178  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016E17C  EC 0E 00 32 */	fmuls f0, f14, f0
/* 8016E180  EC 33 00 2A */	fadds f1, f19, f0
lbl_8016E184:
/* 8016E184  38 7E 00 5C */	addi r3, r30, 0x5c
/* 8016E188  38 81 01 20 */	addi r4, r1, 0x120
/* 8016E18C  38 A1 01 24 */	addi r5, r1, 0x124
/* 8016E190  48 10 38 79 */	bl Val__7cSGlobeFfRC7cSAngleRC7cSAngle
/* 8016E194  38 61 01 74 */	addi r3, r1, 0x174
/* 8016E198  38 9E 00 5C */	addi r4, r30, 0x5c
/* 8016E19C  48 10 39 19 */	bl Xyz__7cSGlobeCFv
/* 8016E1A0  38 61 01 68 */	addi r3, r1, 0x168
/* 8016E1A4  38 9E 00 64 */	addi r4, r30, 0x64
/* 8016E1A8  38 A1 01 74 */	addi r5, r1, 0x174
/* 8016E1AC  48 0F 89 39 */	bl __pl__4cXyzCFRC3Vec
/* 8016E1B0  38 7E 00 70 */	addi r3, r30, 0x70
/* 8016E1B4  38 81 01 68 */	addi r4, r1, 0x168
/* 8016E1B8  4B F2 96 21 */	bl __as__4cXyzFRC4cXyz
/* 8016E1BC  38 61 01 68 */	addi r3, r1, 0x168
/* 8016E1C0  38 80 FF FF */	li r4, -1
/* 8016E1C4  4B E9 AF C1 */	bl __dt__4cXyzFv
/* 8016E1C8  38 61 01 74 */	addi r3, r1, 0x174
/* 8016E1CC  38 80 FF FF */	li r4, -1
/* 8016E1D0  4B E9 AF B5 */	bl __dt__4cXyzFv
/* 8016E1D4  C0 21 03 DC */	lfs f1, 0x3dc(r1)
/* 8016E1D8  C0 41 03 D8 */	lfs f2, 0x3d8(r1)
/* 8016E1DC  FC 60 78 90 */	fmr f3, f15
/* 8016E1E0  48 00 02 31 */	bl func_8016E410
/* 8016E1E4  C0 5E 00 80 */	lfs f2, 0x80(r30)
/* 8016E1E8  EC 21 10 28 */	fsubs f1, f1, f2
/* 8016E1EC  C0 02 9D 94 */	lfs f0, lit_10560(r2)
/* 8016E1F0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8016E1F4  EC 0E 00 32 */	fmuls f0, f14, f0
/* 8016E1F8  EC 02 00 2A */	fadds f0, f2, f0
/* 8016E1FC  D0 1E 00 80 */	stfs f0, 0x80(r30)
/* 8016E200  80 1E 01 84 */	lwz r0, 0x184(r30)
/* 8016E204  28 00 00 00 */	cmplwi r0, 0
/* 8016E208  41 82 00 4C */	beq lbl_8016E254
/* 8016E20C  7F C3 F3 78 */	mr r3, r30
/* 8016E210  38 80 20 00 */	li r4, 0x2000
/* 8016E214  4B F2 95 65 */	bl setFlag__9dCamera_cFUl
/* 8016E218  80 1E 01 84 */	lwz r0, 0x184(r30)
/* 8016E21C  90 1E 01 88 */	stw r0, 0x188(r30)
/* 8016E220  80 1C 03 D8 */	lwz r0, 0x3d8(r28)
/* 8016E224  2C 00 00 02 */	cmpwi r0, 2
/* 8016E228  41 80 00 2C */	blt lbl_8016E254
/* 8016E22C  38 7E 0A EC */	addi r3, r30, 0xaec
/* 8016E230  7F E4 FB 78 */	mr r4, r31
/* 8016E234  38 A0 10 00 */	li r5, 0x1000
/* 8016E238  48 01 4A 55 */	bl Flag__11dCamParam_cFlUs
/* 8016E23C  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8016E240  41 82 00 14 */	beq lbl_8016E254
/* 8016E244  7F 83 E3 78 */	mr r3, r28
/* 8016E248  38 80 00 01 */	li r4, 1
/* 8016E24C  4B F0 52 F1 */	bl LockonTarget__12dAttention_cFl
/* 8016E250  90 7E 01 8C */	stw r3, 0x18c(r30)
lbl_8016E254:
/* 8016E254  7F 63 DB 78 */	mr r3, r27
/* 8016E258  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 8016E25C  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8016E260  7D 89 03 A6 */	mtctr r12
/* 8016E264  4E 80 04 21 */	bctrl 
/* 8016E268  28 03 00 00 */	cmplwi r3, 0
/* 8016E26C  41 82 00 44 */	beq lbl_8016E2B0
/* 8016E270  4B FD 32 69 */	bl dComIfGp_getHorseActor__Fv
/* 8016E274  28 03 00 00 */	cmplwi r3, 0
/* 8016E278  41 82 00 24 */	beq lbl_8016E29C
/* 8016E27C  48 01 4A 89 */	bl getLashDashStart__9daHorse_cCFv
/* 8016E280  28 03 00 00 */	cmplwi r3, 0
/* 8016E284  41 82 00 18 */	beq lbl_8016E29C
/* 8016E288  7F C3 F3 78 */	mr r3, r30
/* 8016E28C  48 01 32 05 */	bl onHorseDush__9dCamera_cFv
/* 8016E290  38 00 00 10 */	li r0, 0x10
/* 8016E294  90 1E 04 2C */	stw r0, 0x42c(r30)
/* 8016E298  48 00 00 18 */	b lbl_8016E2B0
lbl_8016E29C:
/* 8016E29C  80 7E 04 2C */	lwz r3, 0x42c(r30)
/* 8016E2A0  2C 03 00 00 */	cmpwi r3, 0
/* 8016E2A4  41 82 00 0C */	beq lbl_8016E2B0
/* 8016E2A8  38 03 FF FF */	addi r0, r3, -1
/* 8016E2AC  90 1E 04 2C */	stw r0, 0x42c(r30)
lbl_8016E2B0:
/* 8016E2B0  38 61 01 1C */	addi r3, r1, 0x11c
/* 8016E2B4  38 80 FF FF */	li r4, -1
/* 8016E2B8  4B EC 22 59 */	bl __dt__7cSAngleFv
/* 8016E2BC  38 61 01 20 */	addi r3, r1, 0x120
/* 8016E2C0  38 80 FF FF */	li r4, -1
/* 8016E2C4  4B EC 22 4D */	bl __dt__7cSAngleFv
/* 8016E2C8  38 61 01 24 */	addi r3, r1, 0x124
/* 8016E2CC  38 80 FF FF */	li r4, -1
/* 8016E2D0  4B EC 22 41 */	bl __dt__7cSAngleFv
/* 8016E2D4  38 61 01 58 */	addi r3, r1, 0x158
/* 8016E2D8  38 80 FF FF */	li r4, -1
/* 8016E2DC  4B F0 33 A1 */	bl __dt__7cSGlobeFv
/* 8016E2E0  38 61 03 54 */	addi r3, r1, 0x354
/* 8016E2E4  38 80 FF FF */	li r4, -1
/* 8016E2E8  4B F0 9B 19 */	bl __dt__14dBgS_CamLinChkFv
/* 8016E2EC  38 61 01 28 */	addi r3, r1, 0x128
/* 8016E2F0  38 80 FF FF */	li r4, -1
/* 8016E2F4  4B EC 22 1D */	bl __dt__7cSAngleFv
/* 8016E2F8  38 61 01 2C */	addi r3, r1, 0x12c
/* 8016E2FC  38 80 FF FF */	li r4, -1
/* 8016E300  4B EC 22 11 */	bl __dt__7cSAngleFv
/* 8016E304  38 61 01 30 */	addi r3, r1, 0x130
/* 8016E308  38 80 FF FF */	li r4, -1
/* 8016E30C  4B EC 22 05 */	bl __dt__7cSAngleFv
/* 8016E310  38 61 01 34 */	addi r3, r1, 0x134
/* 8016E314  38 80 FF FF */	li r4, -1
/* 8016E318  4B EC 21 F9 */	bl __dt__7cSAngleFv
/* 8016E31C  38 61 02 94 */	addi r3, r1, 0x294
/* 8016E320  38 80 FF FF */	li r4, -1
/* 8016E324  4B E9 AE 61 */	bl __dt__4cXyzFv
/* 8016E328  38 61 01 38 */	addi r3, r1, 0x138
/* 8016E32C  38 80 FF FF */	li r4, -1
/* 8016E330  4B EC 21 E1 */	bl __dt__7cSAngleFv
/* 8016E334  38 61 01 3C */	addi r3, r1, 0x13c
/* 8016E338  38 80 FF FF */	li r4, -1
/* 8016E33C  4B EC 21 D5 */	bl __dt__7cSAngleFv
/* 8016E340  38 61 01 40 */	addi r3, r1, 0x140
/* 8016E344  38 80 FF FF */	li r4, -1
/* 8016E348  4B EC 21 C9 */	bl __dt__7cSAngleFv
/* 8016E34C  38 61 01 60 */	addi r3, r1, 0x160
/* 8016E350  38 80 FF FF */	li r4, -1
/* 8016E354  4B F0 33 29 */	bl __dt__7cSGlobeFv
/* 8016E358  38 61 01 48 */	addi r3, r1, 0x148
/* 8016E35C  38 80 FF FF */	li r4, -1
/* 8016E360  4B EC 21 B1 */	bl __dt__7cSAngleFv
/* 8016E364  38 60 00 01 */	li r3, 1
/* 8016E368  E3 E1 05 48 */	psq_l f31, 1352(r1), 0, 0 /* qr0 */
/* 8016E36C  CB E1 05 40 */	lfd f31, 0x540(r1)
/* 8016E370  E3 C1 05 38 */	psq_l f30, 1336(r1), 0, 0 /* qr0 */
/* 8016E374  CB C1 05 30 */	lfd f30, 0x530(r1)
/* 8016E378  E3 A1 05 28 */	psq_l f29, 1320(r1), 0, 0 /* qr0 */
/* 8016E37C  CB A1 05 20 */	lfd f29, 0x520(r1)
/* 8016E380  E3 81 05 18 */	psq_l f28, 1304(r1), 0, 0 /* qr0 */
/* 8016E384  CB 81 05 10 */	lfd f28, 0x510(r1)
/* 8016E388  E3 61 05 08 */	psq_l f27, 1288(r1), 0, 0 /* qr0 */
/* 8016E38C  CB 61 05 00 */	lfd f27, 0x500(r1)
/* 8016E390  E3 41 04 F8 */	psq_l f26, 1272(r1), 0, 0 /* qr0 */
/* 8016E394  CB 41 04 F0 */	lfd f26, 0x4f0(r1)
/* 8016E398  E3 21 04 E8 */	psq_l f25, 1256(r1), 0, 0 /* qr0 */
/* 8016E39C  CB 21 04 E0 */	lfd f25, 0x4e0(r1)
/* 8016E3A0  E3 01 04 D8 */	psq_l f24, 1240(r1), 0, 0 /* qr0 */
/* 8016E3A4  CB 01 04 D0 */	lfd f24, 0x4d0(r1)
/* 8016E3A8  E2 E1 04 C8 */	psq_l f23, 1224(r1), 0, 0 /* qr0 */
/* 8016E3AC  CA E1 04 C0 */	lfd f23, 0x4c0(r1)
/* 8016E3B0  E2 C1 04 B8 */	psq_l f22, 1208(r1), 0, 0 /* qr0 */
/* 8016E3B4  CA C1 04 B0 */	lfd f22, 0x4b0(r1)
/* 8016E3B8  E2 A1 04 A8 */	psq_l f21, 1192(r1), 0, 0 /* qr0 */
/* 8016E3BC  CA A1 04 A0 */	lfd f21, 0x4a0(r1)
/* 8016E3C0  E2 81 04 98 */	psq_l f20, 1176(r1), 0, 0 /* qr0 */
/* 8016E3C4  CA 81 04 90 */	lfd f20, 0x490(r1)
/* 8016E3C8  E2 61 04 88 */	psq_l f19, 1160(r1), 0, 0 /* qr0 */
/* 8016E3CC  CA 61 04 80 */	lfd f19, 0x480(r1)
/* 8016E3D0  E2 41 04 78 */	psq_l f18, 1144(r1), 0, 0 /* qr0 */
/* 8016E3D4  CA 41 04 70 */	lfd f18, 0x470(r1)
/* 8016E3D8  E2 21 04 68 */	psq_l f17, 1128(r1), 0, 0 /* qr0 */
/* 8016E3DC  CA 21 04 60 */	lfd f17, 0x460(r1)
/* 8016E3E0  E2 01 04 58 */	psq_l f16, 1112(r1), 0, 0 /* qr0 */
/* 8016E3E4  CA 01 04 50 */	lfd f16, 0x450(r1)
/* 8016E3E8  E1 E1 04 48 */	psq_l f15, 1096(r1), 0, 0 /* qr0 */
/* 8016E3EC  C9 E1 04 40 */	lfd f15, 0x440(r1)
/* 8016E3F0  E1 C1 04 38 */	psq_l f14, 1080(r1), 0, 0 /* qr0 */
/* 8016E3F4  C9 C1 04 30 */	lfd f14, 0x430(r1)
/* 8016E3F8  39 61 04 30 */	addi r11, r1, 0x430
/* 8016E3FC  48 1F 3E 01 */	bl _restgpr_18
/* 8016E400  80 01 05 54 */	lwz r0, 0x554(r1)
/* 8016E404  7C 08 03 A6 */	mtlr r0
/* 8016E408  38 21 05 50 */	addi r1, r1, 0x550
/* 8016E40C  4E 80 00 20 */	blr 

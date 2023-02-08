lbl_806D80E0:
/* 806D80E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806D80E4  7C 08 02 A6 */	mflr r0
/* 806D80E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 806D80EC  39 61 00 20 */	addi r11, r1, 0x20
/* 806D80F0  4B C8 A0 E5 */	bl _savegpr_27
/* 806D80F4  2C 04 00 00 */	cmpwi r4, 0
/* 806D80F8  40 82 03 18 */	bne lbl_806D8410
/* 806D80FC  A3 E3 00 14 */	lhz r31, 0x14(r3)
/* 806D8100  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 806D8104  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 806D8108  83 C3 00 38 */	lwz r30, 0x38(r3)
/* 806D810C  83 9E 00 14 */	lwz r28, 0x14(r30)
/* 806D8110  28 1C 00 00 */	cmplwi r28, 0
/* 806D8114  41 82 02 FC */	beq lbl_806D8410
/* 806D8118  2C 1F 00 16 */	cmpwi r31, 0x16
/* 806D811C  41 82 00 0C */	beq lbl_806D8128
/* 806D8120  2C 1F 00 17 */	cmpwi r31, 0x17
/* 806D8124  40 82 00 84 */	bne lbl_806D81A8
lbl_806D8128:
/* 806D8128  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 806D812C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 806D8130  1F BF 00 30 */	mulli r29, r31, 0x30
/* 806D8134  7C 60 EA 14 */	add r3, r0, r29
/* 806D8138  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 806D813C  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 806D8140  80 84 00 00 */	lwz r4, 0(r4)
/* 806D8144  4B C6 E3 6D */	bl PSMTXCopy
/* 806D8148  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806D814C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806D8150  80 63 00 00 */	lwz r3, 0(r3)
/* 806D8154  A8 9C 06 AE */	lha r4, 0x6ae(r28)
/* 806D8158  4B 93 42 DD */	bl mDoMtx_YrotM__FPA4_fs
/* 806D815C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806D8160  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806D8164  80 63 00 00 */	lwz r3, 0(r3)
/* 806D8168  A8 9C 06 B0 */	lha r4, 0x6b0(r28)
/* 806D816C  4B 93 43 61 */	bl mDoMtx_ZrotM__FPA4_fs
/* 806D8170  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806D8174  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806D8178  80 63 00 00 */	lwz r3, 0(r3)
/* 806D817C  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 806D8180  80 04 00 0C */	lwz r0, 0xc(r4)
/* 806D8184  7C 80 EA 14 */	add r4, r0, r29
/* 806D8188  4B C6 E3 29 */	bl PSMTXCopy
/* 806D818C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806D8190  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806D8194  80 63 00 00 */	lwz r3, 0(r3)
/* 806D8198  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 806D819C  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 806D81A0  4B C6 E3 11 */	bl PSMTXCopy
/* 806D81A4  48 00 00 90 */	b lbl_806D8234
lbl_806D81A8:
/* 806D81A8  2C 1F 00 01 */	cmpwi r31, 1
/* 806D81AC  41 82 00 0C */	beq lbl_806D81B8
/* 806D81B0  2C 1F 00 02 */	cmpwi r31, 2
/* 806D81B4  40 82 00 80 */	bne lbl_806D8234
lbl_806D81B8:
/* 806D81B8  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 806D81BC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 806D81C0  1F BF 00 30 */	mulli r29, r31, 0x30
/* 806D81C4  7C 60 EA 14 */	add r3, r0, r29
/* 806D81C8  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 806D81CC  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 806D81D0  80 84 00 00 */	lwz r4, 0(r4)
/* 806D81D4  4B C6 E2 DD */	bl PSMTXCopy
/* 806D81D8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806D81DC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806D81E0  80 63 00 00 */	lwz r3, 0(r3)
/* 806D81E4  A8 9C 06 A6 */	lha r4, 0x6a6(r28)
/* 806D81E8  4B 93 42 4D */	bl mDoMtx_YrotM__FPA4_fs
/* 806D81EC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806D81F0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806D81F4  80 63 00 00 */	lwz r3, 0(r3)
/* 806D81F8  A8 9C 06 A4 */	lha r4, 0x6a4(r28)
/* 806D81FC  4B 93 42 D1 */	bl mDoMtx_ZrotM__FPA4_fs
/* 806D8200  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806D8204  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806D8208  80 63 00 00 */	lwz r3, 0(r3)
/* 806D820C  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 806D8210  80 04 00 0C */	lwz r0, 0xc(r4)
/* 806D8214  7C 80 EA 14 */	add r4, r0, r29
/* 806D8218  4B C6 E2 99 */	bl PSMTXCopy
/* 806D821C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806D8220  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806D8224  80 63 00 00 */	lwz r3, 0(r3)
/* 806D8228  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 806D822C  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 806D8230  4B C6 E2 81 */	bl PSMTXCopy
lbl_806D8234:
/* 806D8234  38 1F FF FF */	addi r0, r31, -1
/* 806D8238  28 00 00 05 */	cmplwi r0, 5
/* 806D823C  40 81 00 18 */	ble lbl_806D8254
/* 806D8240  38 1F FF F3 */	addi r0, r31, -13
/* 806D8244  28 00 00 01 */	cmplwi r0, 1
/* 806D8248  40 81 00 0C */	ble lbl_806D8254
/* 806D824C  2C 1F 00 0F */	cmpwi r31, 0xf
/* 806D8250  40 82 00 90 */	bne lbl_806D82E0
lbl_806D8254:
/* 806D8254  57 FB 07 BE */	clrlwi r27, r31, 0x1e
/* 806D8258  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 806D825C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 806D8260  1F BF 00 30 */	mulli r29, r31, 0x30
/* 806D8264  7C 60 EA 14 */	add r3, r0, r29
/* 806D8268  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 806D826C  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 806D8270  80 84 00 00 */	lwz r4, 0(r4)
/* 806D8274  4B C6 E2 3D */	bl PSMTXCopy
/* 806D8278  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806D827C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806D8280  80 63 00 00 */	lwz r3, 0(r3)
/* 806D8284  57 7B 08 3C */	slwi r27, r27, 1
/* 806D8288  7C 9C DA 14 */	add r4, r28, r27
/* 806D828C  A8 84 06 C6 */	lha r4, 0x6c6(r4)
/* 806D8290  4B 93 41 A5 */	bl mDoMtx_YrotM__FPA4_fs
/* 806D8294  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806D8298  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806D829C  80 63 00 00 */	lwz r3, 0(r3)
/* 806D82A0  7C 9C DA 14 */	add r4, r28, r27
/* 806D82A4  A8 84 06 CE */	lha r4, 0x6ce(r4)
/* 806D82A8  4B 93 42 25 */	bl mDoMtx_ZrotM__FPA4_fs
/* 806D82AC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806D82B0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806D82B4  80 63 00 00 */	lwz r3, 0(r3)
/* 806D82B8  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 806D82BC  80 04 00 0C */	lwz r0, 0xc(r4)
/* 806D82C0  7C 80 EA 14 */	add r4, r0, r29
/* 806D82C4  4B C6 E1 ED */	bl PSMTXCopy
/* 806D82C8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806D82CC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806D82D0  80 63 00 00 */	lwz r3, 0(r3)
/* 806D82D4  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 806D82D8  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 806D82DC  4B C6 E1 D5 */	bl PSMTXCopy
lbl_806D82E0:
/* 806D82E0  2C 1F 00 00 */	cmpwi r31, 0
/* 806D82E4  40 82 00 94 */	bne lbl_806D8378
/* 806D82E8  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 806D82EC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 806D82F0  1F 7F 00 30 */	mulli r27, r31, 0x30
/* 806D82F4  7C 60 DA 14 */	add r3, r0, r27
/* 806D82F8  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 806D82FC  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 806D8300  80 84 00 00 */	lwz r4, 0(r4)
/* 806D8304  4B C6 E1 AD */	bl PSMTXCopy
/* 806D8308  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806D830C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806D8310  80 63 00 00 */	lwz r3, 0(r3)
/* 806D8314  38 80 00 00 */	li r4, 0
/* 806D8318  4B 93 41 1D */	bl mDoMtx_YrotM__FPA4_fs
/* 806D831C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806D8320  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806D8324  80 63 00 00 */	lwz r3, 0(r3)
/* 806D8328  38 80 00 00 */	li r4, 0
/* 806D832C  4B 93 40 71 */	bl mDoMtx_XrotM__FPA4_fs
/* 806D8330  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806D8334  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806D8338  80 63 00 00 */	lwz r3, 0(r3)
/* 806D833C  38 80 00 00 */	li r4, 0
/* 806D8340  4B 93 41 8D */	bl mDoMtx_ZrotM__FPA4_fs
/* 806D8344  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806D8348  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806D834C  80 63 00 00 */	lwz r3, 0(r3)
/* 806D8350  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 806D8354  80 04 00 0C */	lwz r0, 0xc(r4)
/* 806D8358  7C 80 DA 14 */	add r4, r0, r27
/* 806D835C  4B C6 E1 55 */	bl PSMTXCopy
/* 806D8360  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806D8364  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806D8368  80 63 00 00 */	lwz r3, 0(r3)
/* 806D836C  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 806D8370  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 806D8374  4B C6 E1 3D */	bl PSMTXCopy
lbl_806D8378:
/* 806D8378  2C 1F 00 00 */	cmpwi r31, 0
/* 806D837C  40 82 00 94 */	bne lbl_806D8410
/* 806D8380  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 806D8384  80 03 00 0C */	lwz r0, 0xc(r3)
/* 806D8388  1F 7F 00 30 */	mulli r27, r31, 0x30
/* 806D838C  7C 60 DA 14 */	add r3, r0, r27
/* 806D8390  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 806D8394  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 806D8398  80 84 00 00 */	lwz r4, 0(r4)
/* 806D839C  4B C6 E1 15 */	bl PSMTXCopy
/* 806D83A0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806D83A4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806D83A8  80 63 00 00 */	lwz r3, 0(r3)
/* 806D83AC  38 80 00 00 */	li r4, 0
/* 806D83B0  4B 93 40 85 */	bl mDoMtx_YrotM__FPA4_fs
/* 806D83B4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806D83B8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806D83BC  80 63 00 00 */	lwz r3, 0(r3)
/* 806D83C0  38 80 00 00 */	li r4, 0
/* 806D83C4  4B 93 3F D9 */	bl mDoMtx_XrotM__FPA4_fs
/* 806D83C8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806D83CC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806D83D0  80 63 00 00 */	lwz r3, 0(r3)
/* 806D83D4  38 80 00 00 */	li r4, 0
/* 806D83D8  4B 93 40 F5 */	bl mDoMtx_ZrotM__FPA4_fs
/* 806D83DC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806D83E0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806D83E4  80 63 00 00 */	lwz r3, 0(r3)
/* 806D83E8  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 806D83EC  80 04 00 0C */	lwz r0, 0xc(r4)
/* 806D83F0  7C 80 DA 14 */	add r4, r0, r27
/* 806D83F4  4B C6 E0 BD */	bl PSMTXCopy
/* 806D83F8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806D83FC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806D8400  80 63 00 00 */	lwz r3, 0(r3)
/* 806D8404  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 806D8408  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 806D840C  4B C6 E0 A5 */	bl PSMTXCopy
lbl_806D8410:
/* 806D8410  38 60 00 01 */	li r3, 1
/* 806D8414  39 61 00 20 */	addi r11, r1, 0x20
/* 806D8418  4B C8 9E 09 */	bl _restgpr_27
/* 806D841C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806D8420  7C 08 03 A6 */	mtlr r0
/* 806D8424  38 21 00 20 */	addi r1, r1, 0x20
/* 806D8428  4E 80 00 20 */	blr 

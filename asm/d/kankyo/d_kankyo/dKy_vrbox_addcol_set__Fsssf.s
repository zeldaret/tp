lbl_801A8060:
/* 801A8060  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801A8064  7C 08 02 A6 */	mflr r0
/* 801A8068  90 01 00 24 */	stw r0, 0x24(r1)
/* 801A806C  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 801A8070  39 61 00 18 */	addi r11, r1, 0x18
/* 801A8074  48 1B A1 69 */	bl _savegpr_29
/* 801A8078  7C 7D 1B 78 */	mr r29, r3
/* 801A807C  7C 9E 23 78 */	mr r30, r4
/* 801A8080  7C BF 2B 78 */	mr r31, r5
/* 801A8084  FF E0 08 90 */	fmr f31, f1
/* 801A8088  4B FF FE 99 */	bl dKy_vrbox_addcol_sky0_set__Fsssf
/* 801A808C  7F A3 EB 78 */	mr r3, r29
/* 801A8090  7F C4 F3 78 */	mr r4, r30
/* 801A8094  7F E5 FB 78 */	mr r5, r31
/* 801A8098  FC 20 F8 90 */	fmr f1, f31
/* 801A809C  4B FF FF 25 */	bl dKy_vrbox_addcol_kasumi_set__Fsssf
/* 801A80A0  7F A3 EB 78 */	mr r3, r29
/* 801A80A4  7F C4 F3 78 */	mr r4, r30
/* 801A80A8  7F E5 FB 78 */	mr r5, r31
/* 801A80AC  FC 20 F8 90 */	fmr f1, f31
/* 801A80B0  4B FF FD 39 */	bl dKy_addcol_fog_set__Fsssf
/* 801A80B4  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 801A80B8  39 61 00 18 */	addi r11, r1, 0x18
/* 801A80BC  48 1B A1 6D */	bl _restgpr_29
/* 801A80C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801A80C4  7C 08 03 A6 */	mtlr r0
/* 801A80C8  38 21 00 20 */	addi r1, r1, 0x20
/* 801A80CC  4E 80 00 20 */	blr 

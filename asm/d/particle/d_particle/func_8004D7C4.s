lbl_8004D7C4:
/* 8004D7C4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8004D7C8  7C 08 02 A6 */	mflr r0
/* 8004D7CC  90 01 00 74 */	stw r0, 0x74(r1)
/* 8004D7D0  39 61 00 70 */	addi r11, r1, 0x70
/* 8004D7D4  48 31 49 E1 */	bl _savegpr_19
/* 8004D7D8  7C 7E 1B 78 */	mr r30, r3
/* 8004D7DC  7C 9C 23 78 */	mr r28, r4
/* 8004D7E0  7C BF 2B 78 */	mr r31, r5
/* 8004D7E4  7C D3 33 78 */	mr r19, r6
/* 8004D7E8  7C F4 3B 78 */	mr r20, r7
/* 8004D7EC  7D 15 43 78 */	mr r21, r8
/* 8004D7F0  7D 3B 4B 78 */	mr r27, r9
/* 8004D7F4  7D 56 53 78 */	mr r22, r10
/* 8004D7F8  82 E1 00 78 */	lwz r23, 0x78(r1)
/* 8004D7FC  83 01 00 7C */	lwz r24, 0x7c(r1)
/* 8004D800  8B 21 00 83 */	lbz r25, 0x83(r1)
/* 8004D804  83 41 00 84 */	lwz r26, 0x84(r1)
/* 8004D808  7E 63 9B 78 */	mr r3, r19
/* 8004D80C  38 80 00 00 */	li r4, 0
/* 8004D810  38 A1 00 28 */	addi r5, r1, 0x28
/* 8004D814  38 C1 00 24 */	addi r6, r1, 0x24
/* 8004D818  38 E1 00 20 */	addi r7, r1, 0x20
/* 8004D81C  39 01 00 2C */	addi r8, r1, 0x2c
/* 8004D820  4B FF F7 71 */	bl getPolyColor__13dPa_control_cFR13cBgS_PolyInfoiP8_GXColorP8_GXColorPUcPf
/* 8004D824  2C 03 00 00 */	cmpwi r3, 0
/* 8004D828  40 82 00 0C */	bne lbl_8004D834
/* 8004D82C  38 60 00 00 */	li r3, 0
/* 8004D830  48 00 01 40 */	b lbl_8004D970
lbl_8004D834:
/* 8004D834  7E 63 9B 78 */	mr r3, r19
/* 8004D838  48 15 DA 59 */	bl dKy_pol_efftype_get__FPC13cBgS_PolyInfo
/* 8004D83C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8004D840  28 00 00 06 */	cmplwi r0, 6
/* 8004D844  41 80 00 0C */	blt lbl_8004D850
/* 8004D848  38 60 00 00 */	li r3, 0
/* 8004D84C  48 00 01 24 */	b lbl_8004D970
lbl_8004D850:
/* 8004D850  54 64 15 BA */	rlwinm r4, r3, 2, 0x16, 0x1d
/* 8004D854  3C 60 80 3B */	lis r3, effectIDTable@ha /* 0x803A8314@ha */
/* 8004D858  38 03 83 14 */	addi r0, r3, effectIDTable@l /* 0x803A8314@l */
/* 8004D85C  7C 60 22 14 */	add r3, r0, r4
/* 8004D860  57 7B 08 3C */	slwi r27, r27, 1
/* 8004D864  7C C3 DA 2E */	lhzx r6, r3, r27
/* 8004D868  88 01 00 20 */	lbz r0, 0x20(r1)
/* 8004D86C  90 01 00 08 */	stw r0, 8(r1)
/* 8004D870  93 01 00 0C */	stw r24, 0xc(r1)
/* 8004D874  93 21 00 10 */	stw r25, 0x10(r1)
/* 8004D878  38 01 00 28 */	addi r0, r1, 0x28
/* 8004D87C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004D880  38 01 00 24 */	addi r0, r1, 0x24
/* 8004D884  90 01 00 18 */	stw r0, 0x18(r1)
/* 8004D888  93 41 00 1C */	stw r26, 0x1c(r1)
/* 8004D88C  7F C3 F3 78 */	mr r3, r30
/* 8004D890  7F 84 E3 78 */	mr r4, r28
/* 8004D894  38 A0 00 00 */	li r5, 0
/* 8004D898  7E 87 A3 78 */	mr r7, r20
/* 8004D89C  7E A8 AB 78 */	mr r8, r21
/* 8004D8A0  7E C9 B3 78 */	mr r9, r22
/* 8004D8A4  7E EA BB 78 */	mr r10, r23
/* 8004D8A8  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8004D8AC  4B FF FC 21 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8004D8B0  7C 7C 1B 78 */	mr r28, r3
/* 8004D8B4  7E 63 9B 78 */	mr r3, r19
/* 8004D8B8  48 15 DA F1 */	bl dKy_pol_efftype2_get__FPC13cBgS_PolyInfo
/* 8004D8BC  7C 7D 1B 78 */	mr r29, r3
/* 8004D8C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8004D8C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8004D8C8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8004D8CC  7E 64 9B 78 */	mr r4, r19
/* 8004D8D0  48 02 75 81 */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 8004D8D4  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 8004D8D8  28 00 00 06 */	cmplwi r0, 6
/* 8004D8DC  40 80 00 90 */	bge lbl_8004D96C
/* 8004D8E0  2C 03 00 01 */	cmpwi r3, 1
/* 8004D8E4  40 82 00 0C */	bne lbl_8004D8F0
/* 8004D8E8  2C 03 00 03 */	cmpwi r3, 3
/* 8004D8EC  41 82 00 80 */	beq lbl_8004D96C
lbl_8004D8F0:
/* 8004D8F0  7E 63 9B 78 */	mr r3, r19
/* 8004D8F4  38 80 00 01 */	li r4, 1
/* 8004D8F8  38 A1 00 28 */	addi r5, r1, 0x28
/* 8004D8FC  38 C1 00 24 */	addi r6, r1, 0x24
/* 8004D900  38 E1 00 20 */	addi r7, r1, 0x20
/* 8004D904  39 01 00 2C */	addi r8, r1, 0x2c
/* 8004D908  4B FF F6 89 */	bl getPolyColor__13dPa_control_cFR13cBgS_PolyInfoiP8_GXColorP8_GXColorPUcPf
/* 8004D90C  80 9F 00 00 */	lwz r4, 0(r31)
/* 8004D910  88 01 00 20 */	lbz r0, 0x20(r1)
/* 8004D914  90 01 00 08 */	stw r0, 8(r1)
/* 8004D918  93 01 00 0C */	stw r24, 0xc(r1)
/* 8004D91C  93 21 00 10 */	stw r25, 0x10(r1)
/* 8004D920  38 01 00 28 */	addi r0, r1, 0x28
/* 8004D924  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004D928  38 01 00 24 */	addi r0, r1, 0x24
/* 8004D92C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8004D930  93 41 00 1C */	stw r26, 0x1c(r1)
/* 8004D934  7F C3 F3 78 */	mr r3, r30
/* 8004D938  38 A0 00 00 */	li r5, 0
/* 8004D93C  57 A7 15 BA */	rlwinm r7, r29, 2, 0x16, 0x1d
/* 8004D940  3C C0 80 3B */	lis r6, effectIDTable@ha /* 0x803A8314@ha */
/* 8004D944  38 06 83 14 */	addi r0, r6, effectIDTable@l /* 0x803A8314@l */
/* 8004D948  7C C0 3A 14 */	add r6, r0, r7
/* 8004D94C  7C C6 DA 2E */	lhzx r6, r6, r27
/* 8004D950  7E 87 A3 78 */	mr r7, r20
/* 8004D954  7E A8 AB 78 */	mr r8, r21
/* 8004D958  7E C9 B3 78 */	mr r9, r22
/* 8004D95C  7E EA BB 78 */	mr r10, r23
/* 8004D960  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8004D964  4B FF FB 69 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8004D968  90 7F 00 00 */	stw r3, 0(r31)
lbl_8004D96C:
/* 8004D96C  7F 83 E3 78 */	mr r3, r28
lbl_8004D970:
/* 8004D970  39 61 00 70 */	addi r11, r1, 0x70
/* 8004D974  48 31 48 8D */	bl _restgpr_19
/* 8004D978  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8004D97C  7C 08 03 A6 */	mtlr r0
/* 8004D980  38 21 00 70 */	addi r1, r1, 0x70
/* 8004D984  4E 80 00 20 */	blr 
